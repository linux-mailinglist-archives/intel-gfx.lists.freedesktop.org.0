Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C044259B2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 19:44:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80B3F6ED64;
	Thu,  7 Oct 2021 17:44:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A34156ED64
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 17:44:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226221199"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="226221199"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 10:44:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="489102776"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 10:44:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: gwan-gyeong.mun@intel.com, mika.kahola@intel.com, manasi.d.navare@intel.com,
 jose.souza@intel.com, Animesh Manna <animesh.manna@intel.com>
In-Reply-To: <20211007155729.27812-4-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211007155729.27812-1-animesh.manna@intel.com>
 <20211007155729.27812-4-animesh.manna@intel.com>
Date: Thu, 07 Oct 2021 20:44:24 +0300
Message-ID: <87lf34ybk7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/panelreplay: enable/disable
 panel replay
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 07 Oct 2021, Animesh Manna <animesh.manna@intel.com> wrote:
> TRANS_DP2_CTL register is programmed to enable panel replay from source
> and sink is enabled through panel replay dpcd configuration address.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 30 ++++++++++++++++++++----
>  drivers/gpu/drm/i915/i915_reg.h          |  1 +
>  include/drm/drm_dp_helper.h              |  3 +++
>  3 files changed, 30 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 935ea1c434ac..197cab7551c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -370,8 +370,14 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	u8 dpcd_val = DP_PSR_ENABLE;
>  
> -	/* Enable ALPM at sink for psr2 */
> +	if (intel_dp->psr.enabled && !intel_dp_is_edp(intel_dp)) {
> +		drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG,
> +				   PANEL_REPLAY_ENABLE);
> +		return;
> +	}
> +
>  	if (intel_dp->psr.psr2_enabled) {
> +		/* Enable ALPM at sink for psr2 */
>  		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG,
>  				   DP_ALPM_ENABLE |
>  				   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
> @@ -498,6 +504,17 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
>  	return val;
>  }
>  
> +static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +
> +	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
> +		       ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE);
> +
> +	intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> +		     TRANS_DP2_PANEL_REPLAY_ENABLE);
> +}
> +
>  static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> @@ -1067,8 +1084,10 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
>  	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.active);
>  	lockdep_assert_held(&intel_dp->psr.lock);
>  
> -	/* psr1 and psr2 are mutually exclusive.*/
> -	if (intel_dp->psr.psr2_enabled)
> +	/* psr1, psr2 and panel-replay are mutually exclusive.*/
> +	if (intel_dp->psr.enabled && !intel_dp_is_edp(intel_dp))
> +		dg2_activate_panel_replay(intel_dp);
> +	else if (intel_dp->psr.psr2_enabled)
>  		hsw_activate_psr2(intel_dp);
>  	else
>  		hsw_activate_psr1(intel_dp);
> @@ -1241,7 +1260,10 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
>  		return;
>  	}
>  
> -	if (intel_dp->psr.psr2_enabled) {
> +	if (intel_dp->psr.enabled && !intel_dp_is_edp(intel_dp)) {
> +		intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder),
> +			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
> +	} else if (intel_dp->psr.psr2_enabled) {
>  		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
>  		val = intel_de_read(dev_priv,
>  				    EDP_PSR2_CTL(intel_dp->psr.transcoder));
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index a897f4abea0c..6cc6ebcd3bdb 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4725,6 +4725,7 @@ enum {
>  #define  PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME			REG_BIT(3)
>  #define  PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(2)
>  #define  PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE		REG_BIT(1)
> +#define  ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE		REG_BIT(31)
>  #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK	REG_GENMASK(28, 16)
>  #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
>  #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK		REG_GENMASK(12, 0)
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> index d18340cbf8ac..4b95289e6edf 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -712,6 +712,9 @@ struct drm_panel;
>  #define DP_BRANCH_DEVICE_CTRL		    0x1a1
>  # define DP_BRANCH_DEVICE_IRQ_HPD	    (1 << 0)
>  
> +#define PANEL_REPLAY_CONFIG                 0x1b0
> +# define PANEL_REPLAY_ENABLE                (1 << 0)
> +

Previous patch has:

 +#define DP_PANEL_REPLAY_SUPPORT             0x0b0
 +# define PANEL_REPLAY_SUPPORT               (1 << 0)
 +

Also, it's called "PANEL REPLAY CAPABILITY SUPPORTED" in the spec, so
DP_PANEL_REPLAY_CAP or something sounds more like it.


>  #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
>  #define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
>  #define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2

-- 
Jani Nikula, Intel Open Source Graphics Center
