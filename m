Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D6FA3140D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 19:26:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F55F10E719;
	Tue, 11 Feb 2025 18:26:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PQHzRgH7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D371510E719
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 18:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739298369; x=1770834369;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ifYOnZHKqZg+bmOe/EKtDZjLPgbZCeqOt49qJwPHHKA=;
 b=PQHzRgH7z84lbO3j/VP5WspJ0MU5qTYrGwYELYw99tIEILZeXzCwyqT7
 j1S16fELuNEzvKyF/RiGTqm3dX234MgBHPewnxzWzrRfBmdtB/ynnMRVV
 1bOp8FgbE6EZhZhu+IUc7umX6z6+RnVgT3YGPKrzciR9rNvV5dGmTgCR+
 /8LL+/SGuSQXPVDm3W4KW6hTg18QKy8LIswMJs9DlZzXw9yg/XpIvk2WR
 aoN67UvlnDWgtCwt+2qs5K7xUfqaahqgbB/reeVMiaC3IGCQuI3d9A3NI
 OywEAaXDcLHNwjFO2qev4jr0nm2c/rqfltTRLoRqRKcOtll6hVv8UiDgF g==;
X-CSE-ConnectionGUID: V2zXAZF1SQ2stbejyyse8w==
X-CSE-MsgGUID: XKRWyw5QTXagK+PkbiqTpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51361310"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51361310"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 10:26:08 -0800
X-CSE-ConnectionGUID: YFwT5VtBS/injKnv+O/t0Q==
X-CSE-MsgGUID: OrBvgZ0MQJKQ+oCwNHsuAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112802062"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 10:26:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Feb 2025 20:26:05 +0200
Date: Tue, 11 Feb 2025 20:26:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@intel.com
Subject: Re: [PATCH 1/1] drm/i915/xehp: add wait on depth stall done bit
 handling
Message-ID: <Z6uWPZRuesM_3zSk@intel.com>
References: <20250211172431.2631083-1-juhapekka.heikkila@gmail.com>
 <20250211172431.2631083-2-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211172431.2631083-2-juhapekka.heikkila@gmail.com>
X-Patchwork-Hint: comment
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

On Tue, Feb 11, 2025 at 07:24:31PM +0200, Juha-Pekka Heikkila wrote:
> Add writing of WAIT_ON_DEPTH_STALL_DONE_DISABLE for gen12. This
> is performance optimization, writing this bit disables the wait.
> 
> Bspec: 46132
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12411
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 6dba65e54cdb..7423fdd5dcaf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1010,6 +1010,9 @@
>  #define XEHP_L3SCQREG7				MCR_REG(0xb188)
>  #define   BLEND_FILL_CACHING_OPT_DIS		REG_BIT(3)
>  
> +#define XEHP_WM_CHICKEN2			MCR_REG(0x5584)

WM_CHICKEN2/3 have existed since BDW. WM_CHICKEN1 since snb.

Looks like our already existing GEN9_WM_CHICKEN3 define
is also misnamed, and it's also missing the MCR_REG() so
wouldn't even work when used on platforms that need steering.

> +#define   WAIT_ON_DEPTH_STALL_DONE_DISABLE	REG_BIT(5)
> +
>  #define GEN11_GLBLINVL				_MMIO(0xb404)
>  #define   GEN11_BANK_HASH_ADDR_EXCL_MASK	(0x7f << 5)
>  #define   GEN11_BANK_HASH_ADDR_EXCL_BIT0	(1 << 5)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index db04c3ee02e2..affee4d4cee2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1640,6 +1640,11 @@ static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
>  		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
>  		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
>  	}
> +
> +	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 0), IP_VER(12, 70))) {
> +		wa_mcr_write_or(wal, XEHP_WM_CHICKEN2,
> +				WAIT_ON_DEPTH_STALL_DONE_DISABLE);
> +	}
>  }
>  
>  static void
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
