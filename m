Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6614259FD
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 19:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04A146F37F;
	Thu,  7 Oct 2021 17:52:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28D06F37F
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 17:52:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226274086"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="226274086"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 10:52:13 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="489105674"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 10:52:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: gwan-gyeong.mun@intel.com, mika.kahola@intel.com, manasi.d.navare@intel.com,
 jose.souza@intel.com, Animesh Manna <animesh.manna@intel.com>
In-Reply-To: <20211007155729.27812-5-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211007155729.27812-1-animesh.manna@intel.com>
 <20211007155729.27812-5-animesh.manna@intel.com>
Date: Thu, 07 Oct 2021 20:52:05 +0300
Message-ID: <87ily8yb7e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/panelreplay: Added state
 checker for panel replay state
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
> has_panel_replay flag is used to check panel replay state
> which is part of crtc_state structure.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 1 +
>  drivers/gpu/drm/i915/display/intel_psr.c     | 2 ++
>  2 files changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4f0badb11bbb..a30b6fe87dfc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8136,6 +8136,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			PIPE_CONF_CHECK_BOOL(has_psr);
>  			PIPE_CONF_CHECK_BOOL(has_psr2);
>  			PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
> +			PIPE_CONF_CHECK_BOOL(has_panel_replay);
>  			PIPE_CONF_CHECK_I(dc3co_exitline);
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 197cab7551c6..756f3c775e71 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1050,6 +1050,8 @@ void intel_psr_get_config(struct intel_encoder *encoder,
>  	 */
>  	pipe_config->has_psr = true;
>  	pipe_config->has_psr2 = intel_dp->psr.psr2_enabled;
> +	pipe_config->has_panel_replay = intel_dp->psr.enabled &&
> +					intel_dp_is_edp(intel_dp);

Get config is supposed to read the config from hardware, and then the
state checker compares sw and hw states. This seems off.

BR,
Jani.

>  	pipe_config->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
>  
>  	if (!intel_dp->psr.psr2_enabled)

-- 
Jani Nikula, Intel Open Source Graphics Center
