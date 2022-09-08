Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B815B230C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 18:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B211710EB44;
	Thu,  8 Sep 2022 16:03:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5575810EB44;
 Thu,  8 Sep 2022 16:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662653017; x=1694189017;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=wstZcmNqobfY5E6o0iMzwnvAkYb2jjkhXCD2Kat8HFc=;
 b=DC1xJG8V+eAdQ3v8ZB50WppVywfU8QlKSw+Cxft6drGD7oF8kU2B0f9S
 bT2y8/U1s1NAADBw7/HALRPYEoYGliBl8RaiTTgWLR6DWHTtuZiJMwYXo
 kgsGfHn/MZ8M/q7oQEW6O+IAbvWOYCvB0fC2ieAPkmn9u3tWy1E3rFNFG
 h9klufEEfqsPRJcz0QeEtnubyK1VIuUojXpOu437RNKKRs4Z+rbzMRs3M
 l5lgtJCHu0s8pSUNwhxIp7iZgnm+5QrbNVYqKjvrkn67n4AKOHslUXbTb
 E9u/e7i5627t3Va6D9yj1pJkg0qrwiEBEfLfy6oonyz+/0uqXbm5TAB8v w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="295966357"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="295966357"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 09:03:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="860087978"
Received: from culloa-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.161.89])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 09:03:16 -0700
Date: Thu, 08 Sep 2022 09:00:40 -0700
Message-ID: <874jxhyhxz.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20220908155821.1662110-1-ashutosh.dixit@intel.com>
References: <20220908155821.1662110-1-ashutosh.dixit@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix perf limit reasons bit
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
Cc: dri-devel@lists.freedesktop.org, stable@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 08 Sep 2022 08:58:21 -0700, Ashutosh Dixit wrote:
>
> Perf limit reasons bit positions were off by one.
>
> Fixes: fa68bff7cf27 ("drm/i915/gt: Add sysfs throttle frequency interfaces")
> Cc: stable@vger.kernel.org # v5.18+
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Acked-by: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>

I copied the A-b and R-b on this patch from:

https://patchwork.freedesktop.org/patch/501919/?series=108091&rev=2

And have also copied stable just in case. Thanks.

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
>
>  #define CHV_CLK_CTL1			_MMIO(0x101100)
>  #define VLV_CLK_CTL2			_MMIO(0x101104)
> --
> 2.34.1
>
