Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA69B52BEE1
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 18:04:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101EF10F3C3;
	Wed, 18 May 2022 16:04:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 994CC10F3C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 16:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652889878; x=1684425878;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Fm5uPVNvhDGTJFejQhYaTrq/GezuMKNko39rvGikRUU=;
 b=dKmSPuok4R0NXA2u80uxUKbiOz59kpTBQ+wEsuRyKfmvcPWoHw3fUDzt
 luyTZZOdcPgJmH9kezHu4Jp7neNx3ys2omUWhwHZ8XrQx6Tzb/a2YsR7Q
 +JfQ6OIZxUsX/Vu89h5F8gnp1HSE3foZS0johi63Lay39c7tuOqR5uMDO
 iCb/5Mlty0/NGVOL5Ax5nf7ra+4InvubctLxuUB70uCJSWag9tLbMY8dR
 YpE+NDks6i7zMb6Kpuzk8ItRsfetuLBRkY6lTQ8Zz/kvPjjnOu5V8iT9c
 ApPAM6DLKhUgA0QRpSwfIzufUZoMI0SkOfioPNyZ2vpskhMZHdlOvPLP2 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="332365008"
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="332365008"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 09:03:57 -0700
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="597876753"
Received: from lfurlonx-mobl.ger.corp.intel.com (HELO [10.213.226.64])
 ([10.213.226.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 09:03:55 -0700
Message-ID: <acf55efc-a4f4-47b8-fd5a-84dd563df7c2@linux.intel.com>
Date: Wed, 18 May 2022 17:03:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1652405421.git.ashutosh.dixit@intel.com>
 <99f86f6e0c520a571f4dd4ab8a7b6dfdbb50bad3.1652405421.git.ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <99f86f6e0c520a571f4dd4ab8a7b6dfdbb50bad3.1652405421.git.ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/pcode: Init pcode on different
 gt's
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


On 13/05/2022 02:36, Ashutosh Dixit wrote:
> Extend pcode initialization to pcode on different gt's.
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_driver.c | 20 ++++++++++++++++++--
>   1 file changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 0e9763868d68..e137bcf021ee 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -520,6 +520,22 @@ static int i915_set_dma_info(struct drm_i915_private *i915)
>   	return ret;
>   }
>   
> +static int i915_pcode_init(struct drm_i915_private *i915)
> +{
> +	struct intel_gt *gt;
> +	int id, ret;
> +
> +	for_each_gt(gt, i915, id) {
> +		ret = intel_pcode_init(gt->uncore);
> +		if (ret) {
> +			drm_err(&gt->i915->drm, "gt%d: intel_pcode_init failed %d\n", id, ret);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>   /**
>    * i915_driver_hw_probe - setup state requiring device access
>    * @dev_priv: device private
> @@ -629,7 +645,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>   
>   	intel_opregion_setup(dev_priv);
>   
> -	ret = intel_pcode_init(&dev_priv->uncore);
> +	ret = i915_pcode_init(dev_priv);
>   	if (ret)
>   		goto err_msi;
>   
> @@ -1251,7 +1267,7 @@ static int i915_drm_resume(struct drm_device *dev)
>   
>   	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>   
> -	ret = intel_pcode_init(&dev_priv->uncore);
> +	ret = i915_pcode_init(dev_priv);
>   	if (ret)
>   		return ret;
>   

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
