Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE05896EC5
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 14:16:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99597112A77;
	Wed,  3 Apr 2024 12:16:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bm7GJmbr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2CE4112A75;
 Wed,  3 Apr 2024 12:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712146572; x=1743682572;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=n5unL+q/jC/BgY4rxI+yEJSYCuW3F0iOgdxqXBMUhno=;
 b=Bm7GJmbroW/WapQmiDNE2d4W/1MPKKQNjqeaJosq75+blrtgdG0ca3u1
 CsCV2xvey74sBhPEJ2lrAU0jNR83fSRrdkni5vHwMP1c6oBM3/WLHFIo6
 mTkp1uZIjn6LiwUuVIz+ZAkCfpLOI0++A5LOoAqXFM3fudrUJzl/B/HWp
 Fv4dj2JUdjF+Bv8IcykKn7E0soCjT/9KvlQbhrEEuCUWZ28HQCbkN2qTJ
 1wMuA5kB6OkC9DGpjBzedgfyYsYD/jD/YhLAR9Q8cZGsul5EokcEH8vJ8
 aQWIikZUw9Lvz2ezFkVklto97MavmKQU41TPXQlawnrQ+t7iyDLElf0YU g==;
X-CSE-ConnectionGUID: Cryg223PRjy3CH5DsAjG3A==
X-CSE-MsgGUID: w5qDJs9eQFi5/oEZ9bCASQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24872829"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24872829"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 05:13:57 -0700
X-CSE-ConnectionGUID: XoIYtLXpR4K064It0q3FdQ==
X-CSE-MsgGUID: B8ONsV0gS+OIPUYZgxzipg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="49392573"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.36.15])
 ([10.246.36.15])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 05:13:54 -0700
Message-ID: <41cfd78f-7884-4e10-8432-999d804c9d99@linux.intel.com>
Date: Wed, 3 Apr 2024 14:13:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 23/25] drm/xe/device: implement transient flush
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Nirmoy Das
 <nirmoy.das@intel.com>, Matthew Auld <matthew.auld@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-24-balasubramani.vivekanandan@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240403112253.1432390-24-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

Hi Bala,

On 4/3/2024 1:22 PM, Balasubramani Vivekanandan wrote:
> From: Nirmoy Das <nirmoy.das@intel.com>
>
> Display surfaces can be tagged as transient by mapping it using one of
> the various L3:XD PAT index modes on Xe2. The expectation is that KMD
> needs to request transient data flush at the start of flip sequence to
> ensure all transient data in L3 cache is flushed to memory. Add a
> routine for this which we can then call from the display code.
>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Co-developed-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>   drivers/gpu/drm/xe/regs/xe_gt_regs.h |  3 ++
>   drivers/gpu/drm/xe/xe_device.c       | 52 ++++++++++++++++++++++++++++
>   drivers/gpu/drm/xe/xe_device.h       |  2 ++
>   3 files changed, 57 insertions(+)
>
> diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> index 6617c86a096b..7afe810b3441 100644
> --- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> +++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> @@ -306,6 +306,9 @@
>   
>   #define XE2LPM_L3SQCREG5			XE_REG_MCR(0xb658)
>   
> +#define XE2_TDF_CTRL				XE_REG(0xb418)
> +#define   TRANSIENT_FLUSH_REQUEST		REG_BIT(0)
> +
>   #define XEHP_MERT_MOD_CTRL			XE_REG_MCR(0xcf28)
>   #define RENDER_MOD_CTRL				XE_REG_MCR(0xcf2c)
>   #define COMP_MOD_CTRL				XE_REG_MCR(0xcf30)
> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
> index 01bd5ccf05ca..0c9769fe04f6 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -641,6 +641,58 @@ void xe_device_wmb(struct xe_device *xe)
>   		xe_mmio_write32(gt, SOFTWARE_FLAGS_SPR33, 0);
>   }
>   
> +/**
> + * xe_device_td_flush() - Flush transient L3 cache entries
> + * @xe: The device
> + *
> + * Display engine has direct access to memory and is never coherent with L3/L4
> + * caches (or CPU caches), however KMD is responsible for specifically flushing
> + * transient L3 GPU cache entries prior to the flip sequence to ensure scanout
> + * can happen from such a surface without seeing corruption.
> + *
> + * Display surfaces can be tagged as transient by mapping it using one of the
> + * various L3:XD PAT index modes on Xe2.
> + *
> + * Note: On non-discrete xe2 platforms, like LNL, the entire L3 cache is flushed
> + * at the end of each submission via PIPE_CONTROL for compute/render, since SA
> + * Media is not coherent with L3 and we want to support render-vs-media
> + * usescases. For other engines like copy/blt the HW internally forces uncached
> + * behaviour, hence why we can skip the TDF on such platforms.
> + */
> +void xe_device_td_flush(struct xe_device *xe)
> +{
> +	struct xe_gt *gt;
> +	int err;
> +	u8 id;
> +
> +	if (!IS_DGFX(xe) || GRAPHICS_VER(xe) < 20)
> +		return;
> +
> +	for_each_gt(gt, xe, id) {
> +		if (xe_gt_is_media_type(gt))
> +			continue;
> +
> +		err = xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
> +		if (err)
> +			return;

This can be if (xe_force_wake_get()..) without needing the err variable. 
Sorry, this was my oversight  from this morning.


Regards,

Nirmoy

> +
> +		xe_mmio_write32(gt, XE2_TDF_CTRL, TRANSIENT_FLUSH_REQUEST);
> +		/*
> +		 * FIXME: We can likely do better here with our choice of
> +		 * timeout.  Currently we just assume the worst case, but really
> +		 * we should make this dependent on how much actual L3 there is
> +		 * for this system. Recomendation is to allow ~64us in the worst
> +		 * case for 8M of L3 (assumes all entries are transient and need
> +		 * to be flushed).
> +		 */
> +		if (xe_mmio_wait32(gt, XE2_TDF_CTRL, TRANSIENT_FLUSH_REQUEST, 0,
> +				   150, NULL, false))
> +			xe_gt_err_once(gt, "TD flush timeout\n");
> +
> +		xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
> +	}
> +}
> +
>   u32 xe_device_ccs_bytes(struct xe_device *xe, u64 size)
>   {
>   	return xe_device_has_flat_ccs(xe) ?
> diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
> index d413bc2c6be5..d3430f4b820a 100644
> --- a/drivers/gpu/drm/xe/xe_device.h
> +++ b/drivers/gpu/drm/xe/xe_device.h
> @@ -176,4 +176,6 @@ void xe_device_snapshot_print(struct xe_device *xe, struct drm_printer *p);
>   u64 xe_device_canonicalize_addr(struct xe_device *xe, u64 address);
>   u64 xe_device_uncanonicalize_addr(struct xe_device *xe, u64 address);
>   
> +void xe_device_td_flush(struct xe_device *xe);
> +
>   #endif
