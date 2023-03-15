Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 134776BAD01
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 11:05:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5064789D39;
	Wed, 15 Mar 2023 10:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4725F10E9A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 10:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678874750; x=1710410750;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=jlNTIndgJ+6IJ0xyY04pEo5moIZeG+rH+AmfVxoB78U=;
 b=bgSKES/oChJxx+d+zwnkBpBs6ex3Texle7pbTSMLMfVUUeoCJHd5OA5y
 pEPP9jgM9ZHcKNDbMJWliEJ4rytbAJazs7aoHg/HojNYTlrH5KqYuMKUs
 r3lPU3t7dQKKR5a0ZEJ6Vx0tSZk0waDS1yhGEfvrnAKmp3iZN/vABR9wn
 6MAwXumY/A0tpW+yAk4XgBE0EOakv+D625924eL0OB9kqae3aixX1d4ho
 Umv/afGGvfY2LfiKJ6NUGm1LH6qtk0x1psb4uv4COpuBNtIBkFmqzJdKl
 nwELIZ5ko38xpZtB2R/I0Q4ywTfYydoARzvZPNVAAbWVwqRKhubab/Rrl A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="321503642"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="321503642"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 03:05:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="656700507"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="656700507"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.62.75])
 ([10.252.62.75])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 03:05:47 -0700
Message-ID: <3958487c-1110-aa2b-2b53-56a3fe23bf9a@linux.intel.com>
Date: Wed, 15 Mar 2023 11:05:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230314151920.1065847-1-andrzej.hajda@intel.com>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230314151920.1065847-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: perform uc late init after
 probe error injection
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, chris.p.wilson@linux.intel.com,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/14/2023 4:19 PM, Andrzej Hajda wrote:
> Probe pseudo errors should be injected only in places where real errors
> can be encountered, otherwise unwinding code can be broken.
> Placing intel_uc_init_late before i915_inject_probe_error violated
> this rule, resulting in following bug:
> __intel_gt_disable:655 GEM_BUG_ON(intel_gt_pm_is_awake(gt))
>
> Fixes: 481d458caede ("drm/i915/guc: Add golden context to GuC ADS")
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 6ca944d01eb677..38c62e4ad3eba2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -736,12 +736,12 @@ int intel_gt_init(struct intel_gt *gt)
>   	if (err)
>   		goto err_gt;
>   
> -	intel_uc_init_late(&gt->uc);
> -
>   	err = i915_inject_probe_error(gt->i915, -EIO);
>   	if (err)
>   		goto err_gt;
>   
> +	intel_uc_init_late(&gt->uc);
> +
>   	intel_migrate_init(&gt->migrate, gt);
>   
>   	goto out_fw;
