Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E070A695796
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 04:49:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BF7210E099;
	Tue, 14 Feb 2023 03:49:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EC5410E099
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 03:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676346574; x=1707882574;
 h=date:message-id:from:to:subject:in-reply-to:references:
 mime-version; bh=I3dR7/Xx7kLJIY+ZkyFlgOezQQdXP16K7C77q9iwrSI=;
 b=iY4BnzcnufkbdrAaFDygwdjvbSuZuj4U3O3jVkYOywTOkSJgmGVaOFhz
 5j5N1+GTgTb1RWjFRbgtZzGwAy7EmwhrQXpJHM0Ck09kFuim57OuxpI+W
 LodpmlgwKuC8aynkBRxAK7h+cdkrvtjWU2JRjmivY4EUL1G7SFve1iq/z
 XiWcNp79Vqi4OYdHqQoeeDYaOIGBK6FzKSslF25Q8ERFe3yqqeWq/DI2F
 y/copexqy3LvL2UkBzofyOVv/2rXflA+dheriElci7+QvAQkOEMiROOCt
 AGfdM3MgQfuLKvq+Y3IeNjfa+j1NJDO1KLXIwPbWn1NBpUWHYUnxT2S/D A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="333206510"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="333206510"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 19:49:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="778137674"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="778137674"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.0.159])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 19:49:33 -0800
Date: Mon, 13 Feb 2023 19:49:32 -0800
Message-ID: <87o7pwykhf.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20230213210049.1900681-4-ashutosh.dixit@intel.com>
References: <20230213210049.1900681-1-ashutosh.dixit@intel.com>
 <20230213210049.1900681-4-ashutosh.dixit@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/hwmon: Use -1 to designate
 disabled PL1 power limit
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

On Mon, 13 Feb 2023 13:00:49 -0800, Ashutosh Dixit wrote:
>
> On ATSM the PL1 limit is disabled at power up. The previous uapi assumed
> that the PL1 limit is always enabled and therefore did not have a notion of
> a disabled PL1 limit. This results in erroneous PL1 limit values when the
> PL1 limit is disabled. For example at power up, the disabled ATSM PL1 limit
> was previously shown as 0 which means a low PL1 limit whereas the limit
> being disabled actually implies a high effective PL1 limit value.
>
> To get round this problem, the PL1 limit uapi is expanded to include a
> special value, -1, to designate a disabled PL1 limit.

Please don't review this patch. I have replaced this patch with a different
one in v2. Will send v2 out in a bit. Thanks!

>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  .../ABI/testing/sysfs-driver-intel-i915-hwmon |  3 ++-
>  drivers/gpu/drm/i915/i915_hwmon.c             | 24 +++++++++++++++++++
>  2 files changed, 26 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> index 2d6a472eef885..7386c39c65cd9 100644
> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> @@ -14,7 +14,8 @@ Description:	RW. Card reactive sustained  (PL1/Tau) power limit in microwatts.
>
>		The power controller will throttle the operating frequency
>		if the power averaged over a window (typically seconds)
> -		exceeds this limit.
> +		exceeds this limit. A value of -1 indicates that the PL1
> +		power limit is disabled.
>
>		Only supported for particular Intel i915 graphics platforms.
>
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 7c20a6f47b92e..e926f2feaef4b 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -345,6 +345,8 @@ hwm_power_is_visible(const struct hwm_drvdata *ddat, u32 attr, int chan)
>	}
>  }
>
> +#define PL1_DISABLE	-1
> +
>  /*
>   * HW allows arbitrary PL1 limits to be set but silently clamps these values to
>   * "typical but not guaranteed" min/max values in rg.pkg_power_sku. Follow the
> @@ -358,6 +360,14 @@ hwm_power_max_read(struct hwm_drvdata *ddat, long *val)
>	intel_wakeref_t wakeref;
>	u64 r, min, max;
>
> +	/* Check if PL1 limit is disabled */
> +	with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> +		r = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_rapl_limit);
> +	if (!(r & PKG_PWR_LIM_1_EN)) {
> +		*val = PL1_DISABLE;
> +		return 0;
> +	}
> +
>	*val = hwm_field_read_and_scale(ddat,
>					hwmon->rg.pkg_rapl_limit,
>					PKG_PWR_LIM_1,
> @@ -381,8 +391,22 @@ static int
>  hwm_power_max_write(struct hwm_drvdata *ddat, long val)
>  {
>	struct i915_hwmon *hwmon = ddat->hwmon;
> +	intel_wakeref_t wakeref;
>	u32 nval;
>
> +	if (val == PL1_DISABLE) {
> +		/* Disable PL1 limit */
> +		hwm_locked_with_pm_intel_uncore_rmw(ddat, hwmon->rg.pkg_rapl_limit,
> +						    PKG_PWR_LIM_1_EN, 0);
> +
> +		/* Verify, because PL1 limit cannot be disabled on all platforms */
> +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> +			nval = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_rapl_limit);
> +		if (nval & PKG_PWR_LIM_1_EN)
> +			return -EPERM;
> +		return 0;
> +	}
> +
>	/* Computation in 64-bits to avoid overflow. Round to nearest. */
>	nval = DIV_ROUND_CLOSEST_ULL((u64)val << hwmon->scl_shift_power, SF_POWER);
>	nval = PKG_PWR_LIM_1_EN | REG_FIELD_PREP(PKG_PWR_LIM_1, nval);
> --
> 2.38.0
>
