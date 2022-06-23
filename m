Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF35B55879D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 20:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A23810E180;
	Thu, 23 Jun 2022 18:34:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4D5310E180
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 18:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656009262; x=1687545262;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=IzyuPtuKi992580BS5cZS9ZM5Gs0D5/8geaZen+uE1w=;
 b=MHjoHmndu9PG7m04Z2UEeeoNpAaX675nfmi/ZQylwJWYAU+9MQ0uIDoF
 YvqruNmurSgEmiBRvZMAlfzhpYHsi28XLoJLEQxPz/F73dez37Eq03As2
 a0zRqzIbubY5kiuAzD/X/GiiDU5ekOx4LzLSZJZmYwPVJVxrpE8HunH/V
 6U7QvVcTgVzWel9oJ4HCShnDESPfkkVFCfKLl8xPawIkoqm6Ge4TMV8Ep
 zzUi0Ix55wdcRhctbv8lwIvHpcGIbvJ/Lb96Sda9q0qsY8qRRCsecAsrm
 VoDhauBBx7erb3H6QXWofFJeLQKoxAVTUyaeTidUCYV8hnT2TOz2WgIz3 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="263839071"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="263839071"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 11:34:22 -0700
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="644874224"
Received: from anefedov-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.38.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 11:34:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220622155452.32587-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
 <20220622155452.32587-10-ville.syrjala@linux.intel.com>
Date: Thu, 23 Jun 2022 21:34:17 +0300
Message-ID: <87k097mdp2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 9/9] drm/i915: Enable atomic by default
 on ctg/elk
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

On Wed, 22 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The watermark code for ctg/elk has been atomic ready for a long time
> so let's just flip the switch now that some of the last CxSR issues
> have been sorted out (which granted was a problem for vlv/chv as well
> despite them already having atomic enabled by default).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 0e224761d0ed..d4e544d6b28f 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -841,8 +841,11 @@ int i915_driver_probe(struct pci_dev *pdev, const st=
ruct pci_device_id *ent)
>  	if (IS_ERR(i915))
>  		return PTR_ERR(i915);
>=20=20
> -	/* Disable nuclear pageflip by default on pre-ILK */
> -	if (!i915->params.nuclear_pageflip && match_info->graphics.ver < 5)
> +	/* Disable nuclear pageflip by default on pre-CTG/ELK */
> +	if (!i915->params.nuclear_pageflip &&
> +	    match_info->display.ver < 5 &&
> +	    match_info->platform !=3D INTEL_G45 &&
> +	    match_info->platform !=3D INTEL_GM45)

There's no reason to use match_info here, at all. See [1]. So this could
just be IS_G4X(i915).

BR,
Jani.


[1] https://lore.kernel.org/r/473e9c4d9c5a21d742b72dad27cca87402796abb.1655=
712106.git.jani.nikula@intel.com

>  		i915->drm.driver_features &=3D ~DRIVER_ATOMIC;
>=20=20
>  	ret =3D pci_enable_device(pdev);

--=20
Jani Nikula, Intel Open Source Graphics Center
