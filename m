Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05684680D47
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 13:13:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D25210E224;
	Mon, 30 Jan 2023 12:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9830C10E224;
 Mon, 30 Jan 2023 12:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675080779; x=1706616779;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=r5fuBKucQpueV9aTUTFKU6nl5IROkfJ4Vm3pjdfrQBo=;
 b=AiU5YgIgSMQthEe50koGfkpe7YaumnaTpvQWqgfvld6FTxMGgu1MQf9l
 QAiRLwVwbrbQwb7+WvnOg79MIoP8h1Sneo7neHScvXE3Oj9yUn6JRlQ7S
 0QvhU8DtVWr5fimNqfn1DD2SjL6zAjh4Yvob2jo/WCH74JgqQuEA+qP7Y
 T81rUeXRdAJWF5sODtpAkBHp4UTCwGSwBAeKUm5iqIJl8o6D8ChI9Hl0C
 2IRhhYBKB2dFyD7ZxtQSUck3rvLWmzBMSsw1Hds1tMnDaYJCYIKVsy4wY
 Bdr7uu+p6Jp3DZsnqJsp9ScVZLrelTCqpiaMKPmILYG7fUKeCBUmaE9Ba A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="392089561"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="392089561"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 04:12:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="694541343"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="694541343"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.209.222])
 ([10.251.209.222])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 04:12:57 -0800
Message-ID: <16bec5c9-ae61-7d0f-72d5-9831aa75e148@linux.intel.com>
Date: Mon, 30 Jan 2023 13:12:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230130120636.63765-1-matthew.auld@intel.com>
 <20230130120636.63765-3-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230130120636.63765-3-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/ttm: clear the ttm_tt when
 bo->resource is NULL
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
Cc: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/30/2023 1:06 PM, Matthew Auld wrote:
> In the next few patches, when initially creating a ttm BO, the
> bo->resource is NULL, and the driver is then expected to handle the
> initial dummy move.  However, if this is created as a system resource
> the first ttm_tt we create will always have the clear value set to
> false. Previously the initial ttm_tt would be created in
> ttm_bo_validate() with the clear parameter always set to true.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Christian König <ckoenig.leichtzumerken@gmail.com>
> Reviewed-by: Christian König <ckoenig.leichtzumerken@gmail.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/ttm/ttm_bo.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
> index 326a3d13a829..773080f48864 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -120,8 +120,7 @@ static int ttm_bo_handle_move_mem(struct ttm_buffer_object *bo,
>   	bool old_use_tt, new_use_tt;
>   	int ret;
>   
> -	old_use_tt = bo->resource &&
> -		ttm_manager_type(bdev, bo->resource->mem_type)->use_tt;
> +	old_use_tt = !bo->resource || ttm_manager_type(bdev, bo->resource->mem_type)->use_tt;
>   	new_use_tt = ttm_manager_type(bdev, mem->mem_type)->use_tt;
>   
>   	ttm_bo_unmap_virtual(bo);
