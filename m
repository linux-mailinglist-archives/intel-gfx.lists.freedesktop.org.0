Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A43A56589
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 11:37:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6AC10EB34;
	Fri,  7 Mar 2025 10:36:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dS1g8k8S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67AC010EB34
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 10:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741343817; x=1772879817;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=rVVO1zJhCH4bnQdgjdQvLrOrmPGFzMRAoYMhjvyDaKc=;
 b=dS1g8k8SZFSn70PYpuX2kv2vI6W000NChxWFuPeBQNr9ylDPVpHTEexY
 29FQMuhEZgKB7BOy7oYdemRANr+QabzZIquH+BrwnrcWz9cHjZTQK+FXK
 Aldj63u4IR1F3jPuHByC5jpPW3YcJSHVJcZODlhyJ9b+pidulsvZ2IjHb
 f7ZxdOpvnpudYNHtQ2YTzK+A6R+FFprAznOLKjER5hcfrMwxFDq998OK+
 fuGgtXGAM+27ZDb/uoHSzNEKnAFv6PBaghMhyXpFtQdVXqlBIjN3KCscH
 Ab13yYpP35o7yEj3/8aGHAA3WuiTVvnPsci/PVeK1HNixhv5eQK5JnGCM w==;
X-CSE-ConnectionGUID: doSkSVWRSxSz3kab2QwFbA==
X-CSE-MsgGUID: 3XD7Sk6FRPOBRFceqCi2qg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41642291"
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="41642291"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:36:57 -0800
X-CSE-ConnectionGUID: xXIGgWzmQ2iKI8Uij3oY3g==
X-CSE-MsgGUID: QnPrQ8qaTsCg6W3xUyNJ4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="119795925"
Received: from dev-409.igk.intel.com (HELO localhost) ([10.211.128.109])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:36:55 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250214155712.2849848-2-juhapekka.heikkila@gmail.com>
References: <20250214155712.2849848-1-juhapekka.heikkila@gmail.com>
 <20250214155712.2849848-2-juhapekka.heikkila@gmail.com>
Subject: Re: [PATCH v2 1/1] drm/i915/xehp: add wait on depth stall done bit
 handling
From: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>, andi.shyti@intel.com
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 07 Mar 2025 11:33:11 +0100
Message-ID: <174134359113.784355.2932820900396562370@DEV-409>
User-Agent: alot/0.10
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

Quoting Juha-Pekka Heikkila (2025-02-14 16:57:11)
> Add writing of WAIT_ON_DEPTH_STALL_DONE_DISABLE for gen12, this
> is performance optimization.
>=20
> Bspec: 46132
>=20
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12411
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
>  2 files changed, 9 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i9=
15/gt/intel_gt_regs.h
> index 6dba65e54cdb..a6e50af44b46 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -409,6 +409,9 @@
>  #define GEN7_SO_PRIM_STORAGE_NEEDED(n)         _MMIO(0x5240 + (n) * 8)
>  #define GEN7_SO_PRIM_STORAGE_NEEDED_UDW(n)     _MMIO(0x5240 + (n) * 8 + =
4)
> =20
> +#define GEN8_WM_CHICKEN2                       MCR_REG(0x5584)
> +#define   WAIT_ON_DEPTH_STALL_DONE_DISABLE     REG_BIT(5)
> +
>  #define GEN9_WM_CHICKEN3                       _MMIO(0x5588)
>  #define   GEN9_FACTOR_IN_CLR_VAL_HIZ           (1 << 9)
> =20
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index db04c3ee02e2..116683ebe074 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -742,6 +742,12 @@ static void gen12_ctx_workarounds_init(struct intel_=
engine_cs *engine,
>                 /* Wa_1606376872 */
>                 wa_masked_en(wal, COMMON_SLICE_CHICKEN4, DISABLE_TDC_LOAD=
_BALANCING_CALC);
>         }

Do we not have an "optional" tuning section?

> +
> +       /*
> +        * This bit must be set to enable performance optimization for fa=
st
> +        * clears.
> +        */
> +       wa_mcr_write_or(wal, GEN8_WM_CHICKEN2, WAIT_ON_DEPTH_STALL_DONE_D=
ISABLE);

This should only be applied to rcs contexts, not all.
-Chris
