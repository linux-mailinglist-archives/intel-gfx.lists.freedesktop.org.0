Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0380386CCBB
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 16:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880CC10E495;
	Thu, 29 Feb 2024 15:20:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MPdY+G5T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5003710E491
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 15:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709220037; x=1740756037;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=w2QlPC1JSAmXkFd0DhwpcrZMX5S58XfyMPxXVmT1LnM=;
 b=MPdY+G5Tw0PxKX3OccWyYMLYGVNMIAIZhe3X47mJDsxttTpxCrrHG7ym
 cwJX+0BxgTtg3NeWMabeZne8JhniIf1X2iorU8SiJYoKO2bxl4ZEVCpVD
 +HITZETIq3uGdMV3sn0/wUE7eUocnNakDxYDV91ZAyinNFxsuLWzMZpoZ
 c8wBAIRVcuAHmdTNESJ+6LVlGBxT9lzpI5v+PkCO0GaIac//Dfwt4RjhK
 TMT6H387yuilZwthCNN5kRyI/pZ9UDcJuqwd2JhRi0AkY6P8USogaiap8
 5wc+nblzDEAZBLYgsNsRr2B3gPtFvG2c8eTfweq96nXS5NiXUKbzd9+ri A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="21151824"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="21151824"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:20:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="8205246"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:20:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/12] drm/i915: Skip intel_crtc_state_dump() if debugs
 aren't enabled
In-Reply-To: <20240215164055.30585-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-10-ville.syrjala@linux.intel.com>
Date: Thu, 29 Feb 2024 17:20:31 +0200
Message-ID: <87ttlr70w0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 15 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_crtc_state_dump() does a whole boatload of string formatting
> which is all wasted energy if the debugs aren't even enabled. Skip
> the whole thing in that case.

I wonder how something like this would work to skip it in a more generic
fashion:

index 9cc473e5d353..0adc8020ae4f 100644
--- a/include/drm/drm_print.h
+++ b/include/drm/drm_print.h
@@ -206,7 +206,8 @@ drm_vprintf(struct drm_printer *p, const char *fmt, va_=
list *va)
 {
        struct va_format vaf =3D { .fmt =3D fmt, .va =3D va };
=20
-       p->printfn(p, &vaf);
+       if (p->printfn)
+               p->printfn(p, &vaf);
 }
=20
 /**
@@ -330,7 +331,7 @@ static inline struct drm_printer drm_dbg_printer(struct=
 drm_device *drm,
                                                 const char *prefix)
 {
        struct drm_printer p =3D {
-               .printfn =3D __drm_printfn_dbg,
+               .printfn =3D drm_debug_enabled(category) ? __drm_printfn_db=
g : NULL,
                .arg =3D drm,
                .prefix =3D prefix,
                .category =3D category,

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drive=
rs/gpu/drm/i915/display/intel_crtc_state_dump.c
> index b5b9b99213cf..cd78c200d483 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -192,6 +192,9 @@ void intel_crtc_state_dump(const struct intel_crtc_st=
ate *pipe_config,
>  	char buf[64];
>  	int i;
>=20=20
> +	if (!drm_debug_enabled(DRM_UT_KMS))
> +		return;
> +
>  	p =3D drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
>=20=20
>  	drm_printf(&p, "[CRTC:%d:%s] enable: %s [%s]\n",

--=20
Jani Nikula, Intel
