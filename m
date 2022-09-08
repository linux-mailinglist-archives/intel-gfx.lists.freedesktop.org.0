Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 756BA5B1A3E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 12:42:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55CEA10EA8E;
	Thu,  8 Sep 2022 10:42:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C598410EA8E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 10:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662633753; x=1694169753;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+ucBU887TIw48rs0nrzNlnjVITol8vI2zLM4Ok2Rj4M=;
 b=fvw16SRLi50CZOyfD3TIcYAMi5/erxBfL8fcGlsuNtpfqoupIERkjHtq
 COrvXc/CAfTCaN3hvWAXf8u8AgPZ1Hfbi3MW9vnzPpL1mdbXGWj6R2veC
 M/wwLuNA8MIVgHBJ1msAGv0+Y6ADU+OtVN9ZvP8zyYg8Nvm/5F9huXKkT
 9gNg/Dmy+7zoqu7Vw0Yxu49LHfwIafDjtHhTocAVOkdm34ZBQ3kC0vnjr
 fnIUHCdHgrQ2ya5+Z5jWrlVm73EqCUQuPitc/8fr5fkGsuFaRo3r3+Zdo
 wL0apWbGMlKb+b9j5pijsGoPMbEYE+4cEvvZIQA5Mpb9XHzcKC6D6EJs/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="277522164"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="277522164"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 03:42:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="676631682"
Received: from igranath-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.46.171])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 03:42:32 -0700
Date: Thu, 8 Sep 2022 12:42:29 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YxnHFXN+w4IUfWXg@alfio.lan>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
 <e653fabb0b41552f988fbe38ae1d14b7db7f99b8.1662613377.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e653fabb0b41552f988fbe38ae1d14b7db7f99b8.1662613377.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/gt: Fix perf limit reasons bit
 positions
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, Sep 07, 2022 at 10:21:53PM -0700, Ashutosh Dixit wrote:
> Perf limit reasons bit positions were off by one.
> 
> Fixes: fa68bff7cf27 ("drm/i915/gt: Add sysfs throttle frequency interfaces")
> Cc: stable@vger.kernel.org # v5.18+
> Cc: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Thanks Ashutosh!

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c413eec3373f..24009786f88b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1794,14 +1794,14 @@
>  
>  #define GT0_PERF_LIMIT_REASONS		_MMIO(0x1381a8)
>  #define   GT0_PERF_LIMIT_REASONS_MASK	0xde3
> -#define   PROCHOT_MASK			REG_BIT(1)
> -#define   THERMAL_LIMIT_MASK		REG_BIT(2)
> -#define   RATL_MASK			REG_BIT(6)
> -#define   VR_THERMALERT_MASK		REG_BIT(7)
> -#define   VR_TDC_MASK			REG_BIT(8)
> -#define   POWER_LIMIT_4_MASK		REG_BIT(9)
> -#define   POWER_LIMIT_1_MASK		REG_BIT(11)
> -#define   POWER_LIMIT_2_MASK		REG_BIT(12)
> +#define   PROCHOT_MASK			REG_BIT(0)
> +#define   THERMAL_LIMIT_MASK		REG_BIT(1)
> +#define   RATL_MASK			REG_BIT(5)
> +#define   VR_THERMALERT_MASK		REG_BIT(6)
> +#define   VR_TDC_MASK			REG_BIT(7)
> +#define   POWER_LIMIT_4_MASK		REG_BIT(8)
> +#define   POWER_LIMIT_1_MASK		REG_BIT(10)
> +#define   POWER_LIMIT_2_MASK		REG_BIT(11)

Sujaritha, could you please check and r-b this one?

Thanks,
Andi
