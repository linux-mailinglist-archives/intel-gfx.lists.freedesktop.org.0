Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DAA8C3F29
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 12:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D2EC10E631;
	Mon, 13 May 2024 10:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TI9uvuRg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E3D310E631
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 10:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715596837; x=1747132837;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=SF6GC2bN4H9SEW3sXZ8ejGtutEwrTPim5jI0VJuBiCw=;
 b=TI9uvuRgRltBO5KnRtWgGERLBZmJOAKnrKHbSZY++AyrirzoCmN/tdNh
 Us6Hybg7BjrT9k1rMmmS3fI8u3S65pxcvtSuFhHG3Pd+mB5kY9+JqRf4S
 dGHzl9svEQl4uG+EbNrlFxX05QVsY8Dtt/sC37WtL8lkvrGWlyd7bl6Ec
 7Bck3aFzufaO6cAePzR85WC15REnc5oyDY2bsey3wat9VDMQrxUF+9hle
 A6ecaiGItADHcXHYs5oSrImIsVU7zTBMm3nedyPFAe/dlCbY+v+K2jcV9
 4oU6zy5o+A1kWyJN0xxNuUonZAcHmMjTpk4f3J5W8yONT3V5CrHZXwOOK g==;
X-CSE-ConnectionGUID: yHVeQTw1TIq0C7E51TFjDA==
X-CSE-MsgGUID: LqRcmbn4To6ofU1llYeLKg==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="15335291"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="15335291"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:40:36 -0700
X-CSE-ConnectionGUID: Mtx1LKY2Toq/zQnx9AaQkw==
X-CSE-MsgGUID: LN5Nv38xRCWQREmm4AFpYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="35169150"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:40:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 12/16] drm/i915: Drop a few unwanted tabs from skl+
 plane reg defines
In-Reply-To: <20240510152329.24098-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-13-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 13:40:31 +0300
Message-ID: <87cypqf10g.fsf@intel.com>
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

On Fri, 10 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> A few extra tabs have snuck into the skl+ plane register bit
> definitions. Remove them.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane_regs.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/dr=
ivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index 8ef9bd50d021..18dbe717ea21 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -199,17 +199,17 @@
>=20=20
>  #define _PLANE_CUS_CTL_1_A			0x701c8
>  #define   PLANE_CUS_ENABLE			REG_BIT(31)
> -#define   PLANE_CUS_Y_PLANE_MASK			REG_BIT(30)
> +#define   PLANE_CUS_Y_PLANE_MASK		REG_BIT(30)
>  #define   PLANE_CUS_Y_PLANE_4_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 0)
>  #define   PLANE_CUS_Y_PLANE_5_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 1)
>  #define   PLANE_CUS_Y_PLANE_6_ICL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 0)
>  #define   PLANE_CUS_Y_PLANE_7_ICL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK=
, 1)
> -#define   PLANE_CUS_HPHASE_SIGN_NEGATIVE		REG_BIT(19)
> +#define   PLANE_CUS_HPHASE_SIGN_NEGATIVE	REG_BIT(19)
>  #define   PLANE_CUS_HPHASE_MASK			REG_GENMASK(17, 16)
>  #define   PLANE_CUS_HPHASE_0			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 0)
>  #define   PLANE_CUS_HPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, =
1)
>  #define   PLANE_CUS_HPHASE_0_5			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 2)
> -#define   PLANE_CUS_VPHASE_SIGN_NEGATIVE		REG_BIT(15)
> +#define   PLANE_CUS_VPHASE_SIGN_NEGATIVE	REG_BIT(15)
>  #define   PLANE_CUS_VPHASE_MASK			REG_GENMASK(13, 12)
>  #define   PLANE_CUS_VPHASE_0			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 0)
>  #define   PLANE_CUS_VPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, =
1)

--=20
Jani Nikula, Intel
