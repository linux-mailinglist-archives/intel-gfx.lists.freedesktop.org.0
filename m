Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 610B4896D86
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:59:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C40621129ED;
	Wed,  3 Apr 2024 10:59:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f/SjaP4g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB5571129EB;
 Wed,  3 Apr 2024 10:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141987; x=1743677987;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tOJI/D13MF8ctyDp9p6TM4/zWdzeUe+BarTDcrEw5vQ=;
 b=f/SjaP4gg00e7zRbyq869MwfQjduzIsjcTABD0MW39iR64qJwCP9e75H
 os2iW86hqK+psPSHBybsewSSEboXDdRfISfsz4vlFawocd7PomxP0z9wI
 ycX4Ko8AMewE1Fm7QKlUCPosPjIHZf92sVvu4ZvTHOCmOUW/NCMAtCJ4C
 pu4iN1OoEQGxFMOCbYtw5zFxPKXw43DTVr4/RvibWGbkMGbTkGNP0KdMG
 qkwgnk2HjoSYnZQ2oIE1n6iwx3bgL2jz0i/1x/5kuskMeOQDJRqxzlN9Q
 rB/f3mvmPLVsjx5/aJV3q9xK7CvwL9RcvQgk5ZVZxGEoMQ372rgPqTLZ/ g==;
X-CSE-ConnectionGUID: R91IPW8ITA2dmPvrcgOoPQ==
X-CSE-MsgGUID: lS53L22rQa+Y3rdidlYXhw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7228469"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7228469"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:59:46 -0700
X-CSE-ConnectionGUID: s+n/KoPoR/qhHlENKFX0Sw==
X-CSE-MsgGUID: gRVz4LVNSSuW9Ax063TRFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18840848"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.36.15])
 ([10.246.36.15])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:59:44 -0700
Message-ID: <005c1f7f-5f00-4210-9686-a49be620c186@linux.intel.com>
Date: Wed, 3 Apr 2024 12:59:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 23/25] drm/xe/device: implement transient flush
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Nirmoy Das
 <nirmoy.das@intel.com>, Matthew Auld <matthew.auld@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
 <20240403105123.1327669-24-balasubramani.vivekanandan@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240403105123.1327669-24-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

There is new fixup patch(PR#630) which modifies this patch. Could you 
please bring that in as well.


Regards,

Nirmoy

On 4/3/2024 12:51 PM, Balasubramani Vivekanandan wrote:
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
>   drivers/gpu/drm/xe/xe_device.c       | 49 ++++++++++++++++++++++++++++
>   drivers/gpu/drm/xe/xe_device.h       |  2 ++
>   3 files changed, 54 insertions(+)
>
> diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> index d5b21f03beaa..9c6549830e24 100644
> --- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> +++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> @@ -305,6 +305,9 @@
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
> index 01bd5ccf05ca..66182220e663 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -641,6 +641,55 @@ void xe_device_wmb(struct xe_device *xe)
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
> +	u8 id;
> +
> +	if (!IS_DGFX(xe) || GRAPHICS_VER(xe) < 20)
> +		return;
> +
> +	for_each_gt(gt, xe, id) {
> +		if (xe_gt_is_media_type(gt))
> +			continue;
> +
> +		xe_force_wake_get(gt_to_fw(gt), XE_FW_GT);
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
