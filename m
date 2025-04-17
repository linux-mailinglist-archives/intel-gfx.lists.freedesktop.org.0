Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 381D0A91CB1
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 14:46:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CF110EAF8;
	Thu, 17 Apr 2025 12:46:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ieoHIBEH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F65810EAF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 12:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744893961; x=1776429961;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=1n5ZRuTRpVoNyLSubV15t2ih8NuG9coHIt0Y08Cvprs=;
 b=ieoHIBEHXHhxrT3KIclqbkBehdkQVFzo2FPnw9DHz0B/CdQJIGaMQHvY
 eIUZ5661KJ55zQq7Qku/o5B328JGPlnphmtA5qBqB/2rqyPdEstx/Cs4Z
 brfX9s0nTau4SEMZtqMMRq9o+wI1pV5bAig30nBD8wGMaPgPGn1VUqT6b
 w/0TZhDuXmQAlRaiXQRXFKTRAD0+VqNnpt2M6nrBGVSE0vO0Erwty86Uf
 cs3+HQP3HmJeZMQmcd8iYOBgQuQ4RUH2gj1eGclG+Kc8g5y0CuAOkYmdB
 aT4JBwrUJBzNnWjby6+Vdh/UcelNNtltM+J9v1GeDc7OqLtwXc+wt1Mk8 g==;
X-CSE-ConnectionGUID: T9WbM20BQTiFfCGo5VVkTQ==
X-CSE-MsgGUID: WiiEBJXeSxqghFeeA+FraQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46362207"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="46362207"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 05:46:00 -0700
X-CSE-ConnectionGUID: X4betBadQiyosuQ7dSTb7A==
X-CSE-MsgGUID: o3urPIPKTdua8ISVKe7DBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="130649893"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 05:45:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/6] drm/i915/vga: Clean up VGACNTRL bits
In-Reply-To: <20250417114454.12836-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
 <20250417114454.12836-2-ville.syrjala@linux.intel.com>
Date: Thu, 17 Apr 2025 15:45:56 +0300
Message-ID: <87r01rnegr.fsf@intel.com>
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

On Thu, 17 Apr 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use REG_BIT() & co. for the VGACNTRL register bits.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 49beab8e324d..81765f27b258 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1814,9 +1814,10 @@
>=20=20
>  /* VBIOS regs */
>  #define VGACNTRL		_MMIO(0x71400)
> -# define VGA_DISP_DISABLE			(1 << 31)
> -# define VGA_2X_MODE				(1 << 30)
> -# define VGA_PIPE_B_SELECT			(1 << 29)
> +#define   VGA_DISP_DISABLE			REG_BIT(31)
> +#define   VGA_2X_MODE				REG_BIT(30)
> +#define   VGA_PIPE_SEL_MASK			REG_BIT(29)
> +#define   VGA_PIPE_SEL(pipe)			REG_FIELD_PREP(VGA_PIPE_SEL_MASK, (pipe))
>=20=20
>  #define VLV_VGACNTRL		_MMIO(VLV_DISPLAY_BASE + 0x71400)

--=20
Jani Nikula, Intel
