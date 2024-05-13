Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 976108C3E5F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 11:50:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF0A10E030;
	Mon, 13 May 2024 09:50:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FeN337Nd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE92410E030
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 09:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715593837; x=1747129837;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=WwFtFo0o+1tjQlQWfCibtm5xsHZ72ie1kQC5SimJpyA=;
 b=FeN337NdNJ14vm9CY51CgQSpr1IjRc42y4OdZL1WOFuNeEIMgIXtJFvm
 Lv+uuRDjRhVkKuzxenBHX3brYo6HQt8hG3ukpBaOoDO2Hyqbi55T2s6AL
 pJfkWS400Z57iMIF8pCmORnlUGkkrH1C5kF3l4DOdRBCcvulp1MD1DaKp
 hkt81vR5NI7VQ0GV9yUCOx/TFFYB9AXeiZEp8zJwtjNaQTyqxGMjtE1x6
 cRhrdmDkYvNzIW+O/okEIrHR7fp+UVCjDLHiAIuXsXLYnkanUYnYQBnpA
 oVdiP/oTRYWWy1ioAFUwm+4HoNQi9MCkYpepKVrJ9PqRe5Ju4imq2HZXm A==;
X-CSE-ConnectionGUID: nKHi1vpaTQG82vNq/Nd14A==
X-CSE-MsgGUID: uSZcuKV4TvW5yRNmJv3uOg==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="11496503"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="11496503"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 02:50:36 -0700
X-CSE-ConnectionGUID: J3ziqZTCT3KaZJ+QLxgAOg==
X-CSE-MsgGUID: WMfMc6TKRE2OOeqSnTRLSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30856767"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 02:50:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/16] drm/i915: Nuke _MMIO_PLANE_GAMC()
In-Reply-To: <20240510152329.24098-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-2-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 12:50:31 +0300
Message-ID: <877cfyghw8.fsf@intel.com>
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
> _MMIO_PLANE_GAMC() is some leftover macro that is never used.
> Get rid of it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 256d73c25701..0f4a2d542d81 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5151,8 +5151,6 @@ enum skl_power_gate {
>  #define  WM_DBG_DISALLOW_MAXFIFO	(1 << 1)
>  #define  WM_DBG_DISALLOW_SPRITE		(1 << 2)
>=20=20
> -#define _MMIO_PLANE_GAMC(plane, i, a, b)  _MMIO(_PIPE(plane, a, b) + (i)=
 * 4)
> -
>  /* Plane CSC Registers */
>  #define _PLANE_CSC_RY_GY_1_A	0x70210
>  #define _PLANE_CSC_RY_GY_2_A	0x70310

--=20
Jani Nikula, Intel
