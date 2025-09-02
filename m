Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8858EB40B1C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 18:52:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA1F310E7F0;
	Tue,  2 Sep 2025 16:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kMr3dJSk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9F8F10E7F0;
 Tue,  2 Sep 2025 16:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756831927; x=1788367927;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=WyukVqRbJ+sxPeQF/hGObWwd7oBeWuVS/OQPxdaWmFc=;
 b=kMr3dJSkQv93dmUVSnRt9Nb29TnxR1YhQcA5wlI6zKXLtjb2rNvD2MPz
 qvaaDaZ6nhaP9z4IiNGqKN35B+zhrU78TBlR/T/TtAL+iJFyYXW4RoF4H
 GGUbpXBtqSGlk0C19PskQlvZveEAnIlc3rSd0yRrNwTIduyR6Oaa1xJId
 thb/ujJP5D+5vUzG552a+IzDZS+jcHghl/nrhQdYnylizJuXM6NZ8CLf+
 SbIU9VH1VrIyyH9+OfXkzzxs9cgR7FREkSdVxDi5hBBlaferrU7nPHGzM
 4lvhW7SvRYoEq7Fg/8r7dwE55rA3zhC6Ktr7EhH0jae9O6ekja79SAYVT w==;
X-CSE-ConnectionGUID: GqIYBzVKSE6irwpUL4BBJw==
X-CSE-MsgGUID: X1+jwUEgSCaFd3nHUqINAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="84539189"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="84539189"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 09:52:04 -0700
X-CSE-ConnectionGUID: rYqfXI5fS5yAruusKtwDSg==
X-CSE-MsgGUID: xaoGv4dIRRW+3E/q374qKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="170893024"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 09:52:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/hpd: Fix mtp_tc_hpd_enable_detection()
In-Reply-To: <20250902153915.4423-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250902153915.4423-1-ville.syrjala@linux.intel.com>
Date: Tue, 02 Sep 2025 19:51:56 +0300
Message-ID: <e5c501e1a01485d1db0a8a9d97d57af858dc1574@intel.com>
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

On Tue, 02 Sep 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Set the MTP TC hotplug bits in the correct register.
>
> Shouldn't matter really as this only gets used for eDP
> detection and there should be never eDP on TC ports on
> current hw.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Yeah, spotted this a few weeks back, thanks for fixing.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/g=
pu/drm/i915/display/intel_hotplug_irq.c
> index 43aee70597bf..4f72f3fb9af5 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -1025,7 +1025,7 @@ static void mtp_tc_hpd_enable_detection(struct inte=
l_encoder *encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>=20=20
> -	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
> +	intel_de_rmw(display, SHOTPLUG_CTL_TC,
>  		     mtp_tc_hotplug_mask(encoder->hpd_pin),
>  		     mtp_tc_hotplug_enables(encoder));
>  }

--=20
Jani Nikula, Intel
