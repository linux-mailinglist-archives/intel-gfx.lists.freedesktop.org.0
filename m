Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 753C611DC84
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 04:14:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFAD16E261;
	Fri, 13 Dec 2019 03:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 534206E261
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 03:14:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 19:14:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,308,1571727600"; d="scan'208";a="211269546"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga007.fm.intel.com with ESMTP; 12 Dec 2019 19:14:38 -0800
Date: Thu, 12 Dec 2019 19:14:38 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20191213031438.GU85422@mdroper-desk1.amr.corp.intel.com>
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
 <20191211211425.17821-4-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211211425.17821-4-manasi.d.navare@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/dp: Disable Port sync mode
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

On Wed, Dec 11, 2019 at 01:14:25PM -0800, Manasi Navare wrote:
> While clearing the Ports ync mode enable and master select bits
> we need to make sure that we perform a RMW for disable else
> it sets the other bits casuing unwanted sideeffects.
> =

> Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Fixes: 51528afe7c5e ("drm/i915/display/icl: Disable transcoder port sync =
as part of crtc_disable() sequence")
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c0a2dab3fe67..3fccda0f1f36 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4599,7 +4599,8 @@ static void icl_disable_transcoder_port_sync(const =
struct intel_crtc_state *old_
>  		      transcoder_name(old_crtc_state->cpu_transcoder));
>  =

>  	reg =3D TRANS_DDI_FUNC_CTL2(old_crtc_state->cpu_transcoder);
> -	trans_ddi_func_ctl2_val =3D ~(PORT_SYNC_MODE_ENABLE |
> +	trans_ddi_func_ctl2_val =3D I915_READ(reg);
> +	trans_ddi_func_ctl2_val &=3D ~(PORT_SYNC_MODE_ENABLE |
>  				    PORT_SYNC_MODE_MASTER_SELECT_MASK);
>  	I915_WRITE(reg, trans_ddi_func_ctl2_val);
>  }
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
