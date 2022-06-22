Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C620B554559
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 12:45:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CEA010E37B;
	Wed, 22 Jun 2022 10:45:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DBA610E37B;
 Wed, 22 Jun 2022 10:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655894755; x=1687430755;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=EnIwRYdqMUiifM9lQEkNSaL0Jx7fpMpLKv6tMUllslk=;
 b=d/sZhzceDXOZtwTmjBCQqD2w30uiU9SKPYYMW3AA914aVqDkLYOZfYeV
 Ul9pAg7LlubLc/S71B4M1eYzF02OyJU336/j8jplr/RexLpO1Z/RBiLuI
 96VKUFUPebqKOQAkTnvTR1uSe+e4WQm/GPC1iFDMgUuSq1hWy6+qOMElg
 kMfJWt3EdbAiDOPKisO9zUT3w1hf+sqqafhN59kRFy8CVgvdy4vte72Th
 cKYlFu8mb7231m5b9B7BdLPsaYzANyU7jv/SNeg6GIyzyL+6tuLwKgMZ5
 wShNIwATMo5HuKHIlz0g3lbOEwxpNfjqN0w/UGUBKHcNo8pLT1heiNiUZ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="280429706"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="280429706"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 03:45:54 -0700
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="690438517"
Received: from wterliko-mobl.ger.corp.intel.com (HELO [10.249.254.201])
 ([10.249.254.201])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 03:45:52 -0700
Message-ID: <783ff8b6-0128-45e1-5705-7681f314db6c@linux.intel.com>
Date: Wed, 22 Jun 2022 12:45:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Robert Beckett <bob.beckett@collabora.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
References: <20220621200058.3536182-1-bob.beckett@collabora.com>
 <20220621200058.3536182-3-bob.beckett@collabora.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220621200058.3536182-3-bob.beckett@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v8 02/10] drm/i915: limit ttm to dma32 for
 i965G[M]
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
Cc: kernel@collabora.com, Matthew Auld <matthew.auld@intel.com>,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 6/21/22 22:00, Robert Beckett wrote:
> i965G[M] cannot relocate objects above 4GiB.
> Ensure ttm uses dma32 on these systems.
>
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>

LGTM.

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>


> ---
>   drivers/gpu/drm/i915/intel_region_ttm.c | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
> index 62ff77445b01..fd2ecfdd8fa1 100644
> --- a/drivers/gpu/drm/i915/intel_region_ttm.c
> +++ b/drivers/gpu/drm/i915/intel_region_ttm.c
> @@ -32,10 +32,15 @@
>   int intel_region_ttm_device_init(struct drm_i915_private *dev_priv)
>   {
>   	struct drm_device *drm = &dev_priv->drm;
> +	bool use_dma32 = false;
> +
> +	/* i965g[m] cannot relocate objects above 4GiB. */
> +	if (IS_I965GM(dev_priv) || IS_I965G(dev_priv))
> +		use_dma32 = true;
>   
>   	return ttm_device_init(&dev_priv->bdev, i915_ttm_driver(),
>   			       drm->dev, drm->anon_inode->i_mapping,
> -			       drm->vma_offset_manager, false, false);
> +			       drm->vma_offset_manager, false, use_dma32);
>   }
>   
>   /**
