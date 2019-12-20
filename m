Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 199F9127251
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 01:19:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A7A6EBB6;
	Fri, 20 Dec 2019 00:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFAF46EBB6
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 00:19:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 16:19:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,333,1571727600"; d="scan'208";a="298871542"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga001.jf.intel.com with ESMTP; 19 Dec 2019 16:19:33 -0800
Date: Thu, 19 Dec 2019 16:19:33 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20191220001933.GI2712252@mdroper-desk1.amr.corp.intel.com>
References: <20191219233305.28080-1-manasi.d.navare@intel.com>
 <20191219233305.28080-3-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219233305.28080-3-manasi.d.navare@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/dp: Disable Port sync mode
 correctly on teardown
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 19, 2019 at 03:33:05PM -0800, Manasi Navare wrote:
> While clearing the Ports ync mode enable and master select bits
> we need to clear the register completely instead of using disable masks
> =

> v2:
> * Just write 0 to the reg (Ville)
> * Rebase
> =

> Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Fixes: 51528afe7c5e ("drm/i915/display/icl: Disable transcoder port sync =
as part of crtc_disable() sequence")
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index c9ba7d7f3787..c484f6df5d87 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3861,7 +3861,6 @@ static void icl_disable_transcoder_port_sync(const =
struct intel_crtc_state *old_
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	i915_reg_t reg;
> -	u32 trans_ddi_func_ctl2_val;
>  =

>  	if (old_crtc_state->master_transcoder =3D=3D INVALID_TRANSCODER)
>  		return;
> @@ -3870,9 +3869,7 @@ static void icl_disable_transcoder_port_sync(const =
struct intel_crtc_state *old_
>  		      transcoder_name(old_crtc_state->cpu_transcoder));
>  =

>  	reg =3D TRANS_DDI_FUNC_CTL2(old_crtc_state->cpu_transcoder);
> -	trans_ddi_func_ctl2_val =3D ~(PORT_SYNC_MODE_ENABLE |
> -				    PORT_SYNC_MODE_MASTER_SELECT_MASK);
> -	I915_WRITE(reg, trans_ddi_func_ctl2_val);
> +	I915_WRITE(reg, 0);

Could probably get rid of 'reg' now too and just
        I915_WRITE(TRANS_DDI_FUNC_CTL2(...), 0)

Up to you.  Either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


>  }
>  =

>  static void intel_ddi_post_disable(struct intel_encoder *encoder,
> -- =

> 2.19.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
