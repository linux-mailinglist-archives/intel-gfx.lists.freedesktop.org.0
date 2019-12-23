Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F1D129BB4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 00:04:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 248576E4E8;
	Mon, 23 Dec 2019 23:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EA0B6E4E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 23:04:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 15:04:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="229464808"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga002.jf.intel.com with ESMTP; 23 Dec 2019 15:04:06 -0800
Date: Mon, 23 Dec 2019 15:04:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191223230406.GN2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223173244.30742-1-lucas.demarchi@intel.com>
 <20191223173244.30742-6-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223173244.30742-6-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v3 05/10] drm/i915: prefer 3-letter acronym
 for cannonlake
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 23, 2019 at 09:32:39AM -0800, Lucas De Marchi wrote:
> We are currently using a mix of platform name and acronym to name the
> functions. Let's prefer the acronym as it should be clear what platform
> it's about and it's shorter, so it doesn't go over 80 columns in a few
> cases. This converts cannonlake to cnl where appropriate.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Acked-by: Jani Nikula <jani.nikula@linux.intel.com>
> Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 18ac15df91c7..98d6bcb4c761 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10440,9 +10440,8 @@ static int hsw_crtc_compute_clock(struct intel_cr=
tc *crtc,
>  	return 0;
>  }
>  =

> -static void cannonlake_get_ddi_pll(struct drm_i915_private *dev_priv,
> -				   enum port port,
> -				   struct intel_crtc_state *pipe_config)
> +static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> +			    struct intel_crtc_state *pipe_config)
>  {
>  	enum intel_dpll_id id;
>  	u32 temp;
> @@ -10744,7 +10743,7 @@ static void hsw_get_ddi_port_state(struct intel_c=
rtc *crtc,
>  	if (INTEL_GEN(dev_priv) >=3D 11)
>  		icelake_get_ddi_pll(dev_priv, port, pipe_config);
>  	else if (IS_CANNONLAKE(dev_priv))
> -		cannonlake_get_ddi_pll(dev_priv, port, pipe_config);
> +		cnl_get_ddi_pll(dev_priv, port, pipe_config);
>  	else if (IS_GEN9_BC(dev_priv))
>  		skl_get_ddi_pll(dev_priv, port, pipe_config);
>  	else if (IS_GEN9_LP(dev_priv))
> -- =

> 2.24.0
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
