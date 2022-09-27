Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB8C5EBBCD
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 09:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFE1B10E083;
	Tue, 27 Sep 2022 07:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC19F10E16C
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 07:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664264641; x=1695800641;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=RnmyOYCqLesCLj+Jjgv96fsI0X7fRObIiitFEozFIJc=;
 b=SB3vc9Sp+7GZZDHnLkz89GKdjXuZdP8vfkGT+PXCVTttdO1QgIFXUzRx
 EHelbaO8fLoXYm0QUmXbFdcnBXazT31bCmVD6Z5SGeG+0O+SuENXubfeX
 QMmLs4Sh+KDTnNMjloD3oyaQ6fcCODM98ytLzTFIda27D9yW+XntsRLGf
 5v6SM6tYZRkOfmu1gG9aut6j4pqyb2/wB8ymXal86sWMcuggyH6a2f0PU
 biO1HUiex1+0X9giz5Lvlx83Z501mi9NHjR5afnyIEctrLp45o7j49TCu
 +Owb2gdEoRSy5bxUCOFG+q9gK2YtPsflTnJTV02AanwFwK/TF2sQQ6vYk w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="327604037"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="327604037"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 00:44:01 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="746952619"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="746952619"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.18.240])
 ([10.213.18.240])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 00:43:59 -0700
Message-ID: <53dab03e-f4a2-f60b-48d7-d1613773658d@intel.com>
Date: Tue, 27 Sep 2022 09:43:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220923073515.23093-1-nirmoy.das@intel.com>
 <20220923073515.23093-2-nirmoy.das@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220923073515.23093-2-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: remove excessive
 i915_gem_drain_freed_objects
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
Cc: matthew.auld@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 23.09.2022 09:35, Nirmoy Das wrote:
> i915_gem_drain_workqueue() call i915_gem_drain_freed_objects()
> so no need to call that again.
> 
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/i915_gem.c                  | 2 --
>   drivers/gpu/drm/i915/selftests/mock_gem_device.c | 1 -
>   2 files changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 7541028caebd..55d605c0c55d 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1236,8 +1236,6 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
>   
>   	/* Flush any outstanding unpin_work. */
>   	i915_gem_drain_workqueue(dev_priv);
> -
> -	i915_gem_drain_freed_objects(dev_priv);
>   }
>   
>   void i915_gem_driver_release(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index fff11c90f1fa..f6a7c0bd2955 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -67,7 +67,6 @@ static void mock_device_release(struct drm_device *dev)
>   	intel_gt_driver_remove(to_gt(i915));
>   
>   	i915_gem_drain_workqueue(i915);
> -	i915_gem_drain_freed_objects(i915);
>   
>   	mock_fini_ggtt(to_gt(i915)->ggtt);
>   	destroy_workqueue(i915->wq);

