Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB31FC3C0F1
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:32:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19D9210E926;
	Thu,  6 Nov 2025 15:32:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W5fl1oia";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555BB10E916;
 Thu,  6 Nov 2025 15:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762443147; x=1793979147;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=QnqCNiLthrhMgXn60DDwgomjWnVLRAhcLUrontKF2Mk=;
 b=W5fl1oiaX2uTqWBP/ofjJyO8LW1HHvyU0Od0qzPQBqSfRQQfele9hU6P
 HYegiXLKQJkW74PU1DqN3/sydOnO/KGkUa+HNNoAEUfg0UHCZJ8NF6VWY
 q2K1BFmHu+rYbHQUhZleuxUrbc5qNYZF9nWX6n5Xf3tABiG4tIhN6woIb
 2q5HrtuxidxlHGaZxEw6MdiXzDbaFv5fGEW/c9eneZaiUhlF6FtMaytbq
 S8e6wMxl55inFb9j/ArB1y8xkt7Jyk9Py87Zp2zfsC0IQVEidmBCIdWLX
 x3Laz11k0+2O6/S4+CeYAx6/5/8kbhe+ol/oZZTxKJUbL+Lv0NsG9fAlq Q==;
X-CSE-ConnectionGUID: nsnUP4v3T4Wc3iuSWVOMJg==
X-CSE-MsgGUID: rMXfqbiMQoiqP0tJOQ+ytQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="67194009"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="67194009"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:32:27 -0800
X-CSE-ConnectionGUID: h7WSi0G8SAayBpLYfCaM3g==
X-CSE-MsgGUID: tY+1+BtKSLi3B1Dm+UVplg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="192953645"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:32:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 01/10] drm/i915/cx0: Print the correct timeout
In-Reply-To: <20251106152049.21115-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
 <20251106152049.21115-2-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 17:32:22 +0200
Message-ID: <bad3dd77a9c33d941b9112b1e75305cd5e4a4823@intel.com>
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

On Thu, 06 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_cx0_powerdown_change_sequence() uses one timeout,
> and the pritns another one. Use the same one in both.

*prints

A bit silly considering the next one nukes the whole thing.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index b3b506d0e040..21f046576ee3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2833,7 +2833,7 @@ void intel_cx0_powerdown_change_sequence(struct int=
el_encoder *encoder,
>  				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 2, NULL))
>  		drm_warn(display->drm,
>  			 "PHY %c failed to bring out of Lane reset after %dus.\n",
> -			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
> +			 phy_name(phy), XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US);
>  }
>=20=20
>  void intel_cx0_setup_powerdown(struct intel_encoder *encoder)

--=20
Jani Nikula, Intel
