Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 612E9995592
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 19:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABD310E17D;
	Tue,  8 Oct 2024 17:24:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mRTnO616";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E201B10E17D
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 17:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728408290; x=1759944290;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ZZ3ZQeUy/ot4cpt9fLL3WojdjwOUYne12JYOii7D1ks=;
 b=mRTnO616b7Ms7Hzow7V8xvXL9bQmhsQM+AtJeeHshAFjdLCasnr23LIb
 1zf+ySw35iyLSXszxS6OiASLi4CTbVA/xLVKa1XVIAUDIIcW/OQ1T0NYf
 xjFqL3FEs/0pIYTwm05LbdfsrU+CdjBdkVogzo+iydmrgwh5LhrDGnP3w
 zfZyMbweIBng3qAgLlUWHtNY+yOG2NDhyxXMgN7h4/kSnzMzpf5BU88NG
 biSAuUJPzHEEqB+Ot2Bkfi4vMB4d8VJkeFk47RFD4JwQ0U9CQnaJtOJ95
 ZSHYpkfYWi87aTiTXyCsb2wdKV/B8hevBrgQjdJAjDRXjx3tgJKhDc4E5 w==;
X-CSE-ConnectionGUID: P5jMavFuRRK+lXS312D7dQ==
X-CSE-MsgGUID: THOipunOSGCpnvrAec9bkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="30509578"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="30509578"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 10:24:49 -0700
X-CSE-ConnectionGUID: Ue5c1QsfRNWR79bbTwb4tQ==
X-CSE-MsgGUID: 2DUmV1fpQw2ypo3SyYVBQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="75593941"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.41])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 10:24:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com, Raag Jadav
 <raag.jadav@intel.com>
Subject: Re: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
In-Reply-To: <20241007122424.642796-1-raag.jadav@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241007122424.642796-1-raag.jadav@intel.com>
Date: Tue, 08 Oct 2024 20:24:42 +0300
Message-ID: <87ttdmbj8l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 07 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> Host BIOS doesn't enable G8 power mode due to an issue on DG2, so we
> enable it from kernel with Wa_14022698589. Currently it is enabled for
> all DG2 devices with the exception of a few, for which, it is enabled
> only when paired with whitelisted CPU models.

In commit messages "currently" and the present tense usually refer to
the status quo before the patch has been merged. Doesn't seem to be the
case here, and it confuses what we have now and what the patch changes.

>
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 43 +++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h             |  1 +
>  2 files changed, 44 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e539a656cfc3..b2db51377488 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -14,11 +14,30 @@
>  #include "intel_gt_mcr.h"
>  #include "intel_gt_print.h"
>  #include "intel_gt_regs.h"
> +#include "intel_pcode.h"
>  #include "intel_ring.h"
>  #include "intel_workarounds.h"
>  
>  #include "display/intel_fbc_regs.h"
>  
> +#ifdef CONFIG_X86
> +#include <asm/cpu_device_id.h>
> +#include <asm/intel-family.h>
> +
> +static const struct x86_cpu_id g8_cpu_ids[] = {
> +	X86_MATCH_VFM(INTEL_ALDERLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_ALDERLAKE_L,	NULL),
> +	X86_MATCH_VFM(INTEL_COMETLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_KABYLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_KABYLAKE_L,		NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE_S,	NULL),
> +	X86_MATCH_VFM(INTEL_ROCKETLAKE,		NULL),
> +	{}
> +};
> +#endif
> +
>  /**
>   * DOC: Hardware workarounds
>   *
> @@ -1770,9 +1789,33 @@ static void wa_list_apply(const struct i915_wa_list *wal)
>  	intel_gt_mcr_unlock(gt, flags);
>  }
>  
> +#define DG2_G8_WA_RANGE_1		0x56A0 ... 0x56AF
> +#define DG2_G8_WA_RANGE_2		0x56B0 ... 0x56B9

Absolutely not.

> +
> +/* Wa_14022698589:dg2 */
> +static void intel_enable_g8(struct intel_uncore *uncore)
> +{
> +	if (IS_DG2(uncore->i915)) {
> +		switch (INTEL_DEVID(uncore->i915)) {

Even using INTEL_DEVID() is a no-go. There are currently four users, and
even some of them are too much.

We try hard to abstract this stuff at a higher level, and there must be
zero direct PCI ID checks in code other than the table driven device
identification. Otherwise it's just impossible to figure out where we do
platform specific stuff for each platform.

I understand those ranges above are a PITA to deal with, because they
span across DG2 subplatforms.

BR,
Jani.



> +		case DG2_G8_WA_RANGE_1:
> +		case DG2_G8_WA_RANGE_2:
> +#ifdef CONFIG_X86
> +			if (!x86_match_cpu(g8_cpu_ids))
> +#endif
> +				return;
> +		}
> +
> +		snb_pcode_write_p(uncore, PCODE_POWER_SETUP,
> +				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
> +	}
> +}
> +
>  void intel_gt_apply_workarounds(struct intel_gt *gt)
>  {
>  	wa_list_apply(&gt->wa_list);
> +
> +	/* Special case for pcode mailbox which can't be on wa_list */
> +	intel_enable_g8(gt->uncore);
>  }
>  
>  static bool wa_list_verify(struct intel_gt *gt,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 41f4350a7c6c..e948b194550c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3568,6 +3568,7 @@
>  #define   PCODE_POWER_SETUP			0x7C
>  #define     POWER_SETUP_SUBCOMMAND_READ_I1	0x4
>  #define     POWER_SETUP_SUBCOMMAND_WRITE_I1	0x5
> +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
>  #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
>  #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
>  #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)

-- 
Jani Nikula, Intel
