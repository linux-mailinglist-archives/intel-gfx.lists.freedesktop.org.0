Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CF56A1FAE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 17:32:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FF6410E197;
	Fri, 24 Feb 2023 16:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B415310E197
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 16:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677256333; x=1708792333;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bw743oOM8cefVIUjyXPOEKqzjBqO+pIGSf25ESPlupM=;
 b=VNiiNSOoHL0Jg1Or9gFC5OkCejYjQoC6OyiDs0qiq6wQWCZYhjMK/JCl
 X+af1EI9TuQc0nUdqOxhNopEtLgEM9mj4sdSY6l+bHnFMR15pwjyIFsiW
 XVKo7MAcHYRdlwd94k/B9DIBXRRpdjh0eiq8wBpJLv8cgUkJ4A6x+8M5Z
 w8z+FsYk62f0OkHIb+WOlp72FY/uZT9lkd2eSSRrQCBlGluKityM4Xx6h
 +qX5EBPqfVMJW0WY/8V8YJHyZZsue9zAQmOZwdsBBgZpFVUlsM6OiRFKQ
 49qQfFbzYQ3AjCHHBxzRDx1TzkV1xGqD/nhP3B2lIoDEKPXkngnU6pe+x Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="317274898"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="317274898"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:32:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="705327441"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="705327441"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.7.163])
 ([10.213.7.163])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:32:11 -0800
Message-ID: <d187005f-b10e-2d1c-3da5-514585717a8a@intel.com>
Date: Fri, 24 Feb 2023 17:32:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221220112736.161642-1-matthew.auld@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221220112736.161642-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: remove the virtualized start
 hack
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 20.12.2022 12:27, Matthew Auld wrote:
> This was mostly needed to differentiate between mappable and
> non-mappable lmem, such that ttm would understand non-mappable ->
> mappable moves (or vice versa), and not just turn them into noops. We
> have since gained proper .intersects() and .compatible() hooks for the
> resource manager, which takes care of this for us.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 7 -------
>   1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> index a72698a2dbc8..a1bc804cfa15 100644
> --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> @@ -139,13 +139,6 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
>   
>   	mutex_unlock(&bman->lock);
>   
> -	if (place->lpfn - place->fpfn == n_pages)
> -		bman_res->base.start = place->fpfn;
> -	else if (lpfn <= bman->visible_size)
> -		bman_res->base.start = 0;
> -	else
> -		bman_res->base.start = bman->visible_size;
> -
>   	*res = &bman_res->base;
>   	return 0;
>   

