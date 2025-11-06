Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CCEC3A6D3
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 12:01:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9680910E89A;
	Thu,  6 Nov 2025 11:01:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VhURnruS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69CDF10E89A;
 Thu,  6 Nov 2025 11:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762426864; x=1793962864;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6vhHkR06qJvu8EXjLzDANzf/L69KfE0CZqFnvNAGB6g=;
 b=VhURnruSxwBNyzmhGcDWzUhdsVauuFNOw5CWCBXX/iVqpaJHroWgzcn4
 qZTXl8gIXL2RJMTwcCGfdR7yxm4V89UYUbaOqdWdsD1RrYvs7g5R1Sh9R
 KJhZZcXK52ePjVfZOIeCtsMe4YFF35dLeDdwm4pCjT6aXntTlOZjwMZ5j
 0ZBAPB6l3dwVFuZlHL95ZI5k+dCZEmnvarFpNrmhm9B/fJyw13f6Z3CRD
 GYl9AeB3KJVHfcMO/9i6nM3MTJ9ZfhOasUVQCJ3dwEpJn3T69kt5MXAvo
 HJUc6S8m8BI/pQu0lRWY8jo9iVGLeqeEF0ArzOyK7lk2xVeYB8Ml2+o5m Q==;
X-CSE-ConnectionGUID: 1mHdPor3TXWY/RR+rPpO4g==
X-CSE-MsgGUID: 1AlJkN2uSBGQAXTiMmshNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="68209737"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="68209737"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 03:01:03 -0800
X-CSE-ConnectionGUID: 1kJbb4XLQ+CPvy0G2mzjKQ==
X-CSE-MsgGUID: VLXnkWgSS9eVZkRrXPZi5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="211190842"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 03:01:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/7] drm/i915/hdcp: Use the default 2 usec fast polling
 timeout
In-Reply-To: <20251105190433.16434-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-7-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 13:00:59 +0200
Message-ID: <35154e902b0b4a496fd21527dce25e34b80e9ffa@intel.com>
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

On Wed, 05 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> For whatever unknown reason the HDCP code is using a custom
> 10 usec fast polling timeout instead of the normal 2 usec
> value. Switch to the standard value to get rid of the special
> case.
>
> The eventual aim is to get rid of the fast vs. slow timeout
> entirely and switch over to poll_timeout_us().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/=
i915/display/intel_hdcp.c
> index 7195e8cf671c..d01733b6460e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -412,7 +412,7 @@ static int intel_hdcp_load_keys(struct intel_display =
*display)
>  	/* Wait for the keys to load (500us) */
>  	ret =3D intel_de_wait_custom(display, HDCP_KEY_STATUS,
>  				   HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD_DONE,
> -				   10, 1, &val);
> +				   2, 1, &val);
>  	if (ret)
>  		return ret;
>  	else if (!(val & HDCP_KEY_LOAD_STATUS))

--=20
Jani Nikula, Intel
