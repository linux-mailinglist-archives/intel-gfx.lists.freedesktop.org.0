Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CC251D2D1
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 10:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC16F10E6DD;
	Fri,  6 May 2022 08:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5367010E6DD;
 Fri,  6 May 2022 08:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651824536; x=1683360536;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UomkzKLap10+6cV2j8PZE1NwHs8rrur9oxMPmv8zByM=;
 b=hUg3Sd1l+edEt8MxPlrj8MFdylpijk5OUxGzHklXwHBZ9J8hQny03/iO
 EZw1jmkLr6xkEffwE404v9RH92NXCP6MI2aZu41lilQkmaGaC1Z0F0d9Q
 My2Wxx5rDcnZLh7ugyQQR2Q78P0GjTWknnEr9RtvNnmn4zNfjMlN6Lag1
 YZwyHmY4YqfoIluvlleEiNiaFFSRDijKPPwkaCGNA4a+L/aR3QmkMrEgi
 M3vsQGo/2kedEUt1JziFZ3jvKoenOFgkdA4TW93xTlef9swExR3FOE1wI
 iDwFiXROzeYIjGIlX+TVJxXwdt06DJDiw+ygNQuyMu1nQaUsy6e6EJz95 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="255871692"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="255871692"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 01:08:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="585845577"
Received: from blaesing-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.218.207])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 01:08:49 -0700
Date: Fri, 6 May 2022 10:08:46 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: YueHaibing <yuehaibing@huawei.com>
Message-ID: <YnTXjmbqBjPxxaFS@intel.intel>
References: <20220506032652.1856-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220506032652.1856-1-yuehaibing@huawei.com>
Subject: Re: [Intel-gfx] [PATCH -next] drm/i915/gt: Fix build error without
 CONFIG_PM
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
Cc: dri-devel@lists.freedesktop.org, airlied@linux.ie,
 intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 linux-kernel@vger.kernel.org, andrzej.hajda@intel.com, matthew.auld@intel.com,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi YueHaibing,

On Fri, May 06, 2022 at 11:26:52AM +0800, YueHaibing wrote:
> drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c: In function ‘act_freq_mhz_show’:
> drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:276:20: error: implicit declaration of function ‘sysfs_gt_attribute_r_max_func’ [-Werror=implicit-function-declaration]
>   276 |  u32 actual_freq = sysfs_gt_attribute_r_max_func(dev, attr,
>       |                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Move sysfs_gt_attribute_* macros out of #ifdef block to fix this.
> 
> Fixes: 56a709cf7746 ("drm/i915/gt: Create per-tile RPS sysfs interfaces")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> index 26cbfa6477d1..e92990d514b2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> @@ -17,7 +17,6 @@
>  #include "intel_rc6.h"
>  #include "intel_rps.h"
>  
> -#ifdef CONFIG_PM
>  enum intel_gt_sysfs_op {
>  	INTEL_GT_SYSFS_MIN = 0,
>  	INTEL_GT_SYSFS_MAX,
> @@ -92,6 +91,7 @@ sysfs_gt_attribute_r_func(struct device *dev, struct device_attribute *attr,
>  #define sysfs_gt_attribute_r_max_func(d, a, f) \
>  		sysfs_gt_attribute_r_func(d, a, f, INTEL_GT_SYSFS_MAX)
>  
> +#ifdef CONFIG_PM
>  static u32 get_residency(struct intel_gt *gt, i915_reg_t reg)
>  {
>  	intel_wakeref_t wakeref;
> -- 
> 2.17.1
