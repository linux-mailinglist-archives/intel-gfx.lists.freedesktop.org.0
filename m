Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C3D37FDE3
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 21:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34AB6ED9F;
	Thu, 13 May 2021 19:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89F726ED9F
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 May 2021 19:09:54 +0000 (UTC)
IronPort-SDR: p0b2CKigzmz6PCuaiWYlMkD1yiXxIOzw+Ib/yT94fEb1vGtU9QApIDcgDKVXlmUPEE10j4nzc6
 5zGy/+cdk1Tg==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="199713158"
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="199713158"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 12:09:54 -0700
IronPort-SDR: M2wArLHDX4VPRYGjWqJPMq/Y4fz9sVLSdoJp7BzHBoXhZi4HNxtNamFtD/SDnuv3LY6nLvdfM1
 dbBy7ZcOY2Dg==
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="626352379"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 12:09:53 -0700
Date: Thu, 13 May 2021 12:17:42 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210513191742.GD23292@labuser-Z97X-UD5H>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-42-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508022820.780227-42-matthew.d.roper@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 41/48] drm/i915/bigjoiner: atomic commit
 changes for uncompressed joiner
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 07, 2021 at 07:28:13PM -0700, Matt Roper wrote:
> From: Animesh Manna <animesh.manna@intel.com>
> 
> Respective bit for master or slave to be set for uncompressed
> bigjoiner in dss_ctl1 register.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Looks good to me :

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  6 +++
>  drivers/gpu/drm/i915/display/intel_vdsc.c    | 40 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_vdsc.h    |  2 +
>  drivers/gpu/drm/i915/i915_reg.h              |  2 +
>  4 files changed, 49 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7ae1e3a53dc9..44aabb3ec2b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3411,6 +3411,7 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
>  					 const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *master = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(master->base.dev);
>  	struct intel_crtc_state *master_crtc_state;
>  	struct drm_connector_state *conn_state;
>  	struct drm_connector *conn;
> @@ -3444,6 +3445,9 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
>  		/* and DSC on slave */
>  		intel_dsc_enable(NULL, crtc_state);
>  	}
> +
> +	if (DISPLAY_VER(dev_priv) >= 13)
> +		intel_uncompressed_joiner_enable(crtc_state);
>  }
>  
>  static void hsw_crtc_enable(struct intel_atomic_state *state,
> @@ -6252,6 +6256,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  	}
>  
>  	intel_dsc_get_config(pipe_config);
> +	if (DISPLAY_VER(dev_priv) >= 13 && !pipe_config->dsc.compression_enable)
> +		intel_uncompressed_joiner_get_config(pipe_config);
>  
>  	if (!active) {
>  		/* bigjoiner slave doesn't enable transcoder */
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index afaf6187e255..19cd9531c115 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -1106,6 +1106,22 @@ static i915_reg_t dss_ctl2_reg(const struct intel_crtc_state *crtc_state)
>  	return is_pipe_dsc(crtc_state) ? ICL_PIPE_DSS_CTL2(pipe) : DSS_CTL2;
>  }
>  
> +void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	u32 dss_ctl1_val = 0;
> +
> +	if (crtc_state->bigjoiner && !crtc_state->dsc.compression_enable) {
> +		if (crtc_state->bigjoiner_slave)
> +			dss_ctl1_val |= UNCOMPRESSED_JOINER_SLAVE;
> +		else
> +			dss_ctl1_val |= UNCOMPRESSED_JOINER_MASTER;
> +
> +		intel_de_write(dev_priv, dss_ctl1_reg(crtc_state), dss_ctl1_val);
> +	}
> +}
> +
>  void intel_dsc_enable(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state)
>  {
> @@ -1145,13 +1161,35 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  
> -	if (!old_crtc_state->dsc.compression_enable)
> +	if (!(old_crtc_state->dsc.compression_enable &&
> +	      old_crtc_state->bigjoiner))
>  		return;
>  
>  	intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
>  	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
>  }
>  
> +void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	u32 dss_ctl1;
> +
> +	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc_state));
> +	if (dss_ctl1 & UNCOMPRESSED_JOINER_MASTER) {
> +		crtc_state->bigjoiner = true;
> +		if (!WARN_ON(INTEL_NUM_PIPES(dev_priv) == crtc->pipe + 1))
> +			crtc_state->bigjoiner_linked_crtc =
> +				intel_get_crtc_for_pipe(dev_priv, crtc->pipe + 1);
> +	} else if (dss_ctl1 & UNCOMPRESSED_JOINER_SLAVE) {
> +		crtc_state->bigjoiner = true;
> +		crtc_state->bigjoiner_slave = true;
> +		if (!WARN_ON(crtc->pipe == PIPE_A))
> +			crtc_state->bigjoiner_linked_crtc =
> +				intel_get_crtc_for_pipe(dev_priv, crtc->pipe - 1);
> +	}
> +}
> +
>  void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index 65d301c23580..fe4d45561253 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -12,11 +12,13 @@ struct intel_encoder;
>  struct intel_crtc_state;
>  
>  bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
> +void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
>  void intel_dsc_enable(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state);
>  void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
>  int intel_dsc_compute_params(struct intel_encoder *encoder,
>  			     struct intel_crtc_state *pipe_config);
> +void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_state);
>  void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain
>  intel_dsc_power_domain(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index f7cf3ab8db65..00505b011339 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -11570,6 +11570,8 @@ enum skl_power_gate {
>  #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
>  #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
>  #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
> +#define  UNCOMPRESSED_JOINER_MASTER		(1 << 21)
> +#define  UNCOMPRESSED_JOINER_SLAVE		(1 << 20)
>  
>  #define _ICL_PIPE_DSS_CTL2_PB			0x78204
>  #define _ICL_PIPE_DSS_CTL2_PC			0x78404
> -- 
> 2.25.4
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
