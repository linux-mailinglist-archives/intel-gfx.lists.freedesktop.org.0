Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9255B3264
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 10:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C0C010EC22;
	Fri,  9 Sep 2022 08:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7807F10EC22
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 08:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662713738; x=1694249738;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tOuNEAQ/FPAVopJr1iQMurHaJ9qTcvjPKttTF6BLwmg=;
 b=Q5qh8eGySrA9t39L3qNjYuapVZlTaEQrzWFPAwvJUfy5p1rtq7i29KZ+
 6atA3LMNgtB49pfTYyIM1m39l3X8OhsApZIrWmFLNq3rHAV/EKm91KnTq
 w49QYJ5nnzK3NjEFzNK9Xia7VEXjZP46EejBX1ty/87cLOxSUO5DlOdM/
 N49kent1y//cfsx9IbcObA6QadiQrOTd2ry7MbJo5G+Qn7fIla3xeHxWz
 Um6sspAwDyocssOJwOiM4VEmP3BVUkdDAcYQwOwPNyG7xy7sPXJmV+qlc
 05YVIylY/BCxGckdJqtyuYbDdE8NbpIrc4hd8R6hPmlZK+sghJxTfJAyu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="277164056"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="277164056"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 01:55:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="566299441"
Received: from brownmi2-mobl.amr.corp.intel.com (HELO [10.212.126.198])
 ([10.212.126.198])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 01:55:35 -0700
Message-ID: <2cd5568f-e63c-1ae3-6aa9-809be360a397@linux.intel.com>
Date: Fri, 9 Sep 2022 09:55:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220908200706.25773-1-nirmoy.das@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220908200706.25773-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix a potential UAF at device
 unload
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 08/09/2022 21:07, Nirmoy Das wrote:
> i915_gem_drain_freed_objects() might not be enough to
> free all the objects and RCU delayed work might get
> scheduled after the i915 device struct gets freed.
> 
> Call i915_gem_drain_workqueue() to catch all RCU delayed work.
> 
> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_gem.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 0f49ec9d494a..e8a053eaaa89 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1254,7 +1254,7 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
>   
>   void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>   {
> -	i915_gem_drain_freed_objects(dev_priv);
> +	i915_gem_drain_workqueue(dev_priv);
>   	GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>   	GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>   	drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);


Help me spot the place where RCU free worker schedules itself back to 
free more objects - if I got the rationale here right?

Regards,

Tvrtko
