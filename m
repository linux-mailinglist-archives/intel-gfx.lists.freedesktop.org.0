Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1426C9C1D80
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:03:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6303A10E98F;
	Fri,  8 Nov 2024 13:03:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YMoDP9rE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C6410E97C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 13:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731070982; x=1762606982;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=P9XmF5PfjIeuiV6nGfDsQ2aZ3JVfBS+SmKcX/VuNSUw=;
 b=YMoDP9rECnjC8O7A/gZY0sAqjiNedAi6Ib1I2PkQppDXI8ZFQlreuwuK
 7swusbpBVdCuZr1+ft/vi8WSOBm//jWApjN9wYUzpHAXh2pHCFLRmVkfg
 H+QKi4Ikd5DZpqWsbYbNHKijxHnSEHLoHe/V0oThSwI3BWELWxJVtF7m/
 /UvMGE9AQC7KokCDDAXPR8FeyaW+fg/dUG3V11nJXcYyoS1OV80w8t4la
 0d40pa7vymNECroG9GD7XkpORv+YJxE5icA9qPebcDCXFBZ/9aBw9NymD
 3LbJzq312qSqrgiCeDuzBUO+a+tRUlp22/PRFJQ9ETPJ7CXeiVgYC+HQ3 A==;
X-CSE-ConnectionGUID: /afiLZa0RTOw26rUzVvSug==
X-CSE-MsgGUID: uF9E5ULuTymwZ9871nGMOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53513593"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="53513593"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:02 -0800
X-CSE-ConnectionGUID: auzEmxcCTietbhki+1Sr+Q==
X-CSE-MsgGUID: GkFyICvbROOcT8lfpoU1fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85651464"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.252])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 03/10] drm/i915/crt: Drop the unused ADPA_DPMS bit
 definitions
In-Reply-To: <20241107161123.16269-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
 <20241107161123.16269-4-ville.syrjala@linux.intel.com>
Date: Fri, 08 Nov 2024 15:02:56 +0200
Message-ID: <87pln5ev3z.fsf@intel.com>
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

On Thu, 07 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The ADPA_DPMS bit definitions aer just an alias for the

*are

> sync disable bits, and unused one at that. Drop the
> pointless definitions.

Pedantic mode, there's some singular/plural asymmetry going on here. :p

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index c160e087972a..f0757c4491f1 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1188,11 +1188,6 @@
>  #define   ADPA_VSYNC_ACTIVE_LOW	0
>  #define   ADPA_HSYNC_ACTIVE_HIGH (1 << 3)
>  #define   ADPA_HSYNC_ACTIVE_LOW	0
> -#define   ADPA_DPMS_MASK	(~(3 << 10))
> -#define   ADPA_DPMS_ON		(0 << 10)
> -#define   ADPA_DPMS_SUSPEND	(1 << 10)
> -#define   ADPA_DPMS_STANDBY	(2 << 10)
> -#define   ADPA_DPMS_OFF		(3 << 10)
>=20=20
>  /* Hotplug control (945+ only) */
>  #define PORT_HOTPLUG_EN(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0=
x61110)

--=20
Jani Nikula, Intel
