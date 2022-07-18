Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88312577E43
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 11:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E8AADFB4;
	Mon, 18 Jul 2022 09:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2825CADFAB;
 Mon, 18 Jul 2022 09:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658135058; x=1689671058;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rpknwztLRCHiBPBGu5Spiho1sRdoIA+FxG1VRqaZjJI=;
 b=F3mARjkIxcMEtaICDCEqPmz3b4OL/9nvRmABw3PbD2WbDlKS4bgrxH4f
 jnqk4iZ5BMIIF3jLBO5D/fKZUDm1YlyyNbwvDDh3/NvaeBLBvF9oA4fLm
 WFr0eV55pqnmj6udnlsGHjruZXTU6lovKDAwTKMEiRnJK02GBymksk4vG
 OReab4K9kVykBPv0ZKvL7M5IFzHCfThG3VT44pDby9kRkiSwuysYuVdfy
 FSgJYFDJaZcNSvOiZfC91klvpRYLm1vn1bVurRQnH1a2zzx6+TNpVC69X
 SqOCWBM7LvTGNC1jkhay7YerjIBzcRMtEo9wU/38pzK0McHcRo+ul1HNw A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="269196621"
X-IronPort-AV: E=Sophos;i="5.92,280,1650956400"; d="scan'208";a="269196621"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 02:04:17 -0700
X-IronPort-AV: E=Sophos;i="5.92,280,1650956400"; d="scan'208";a="624643136"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.5.190])
 ([10.252.5.190])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 02:04:16 -0700
Message-ID: <b45b9801-fd41-a78f-e7fa-1c56f7557da0@linux.intel.com>
Date: Mon, 18 Jul 2022 11:04:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220715111937.1245586-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220715111937.1245586-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_create: use 48b
 addressing
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 7/15/2022 1:19 PM, Matthew Auld wrote:
> The object here could be very large (8G+), so make sure we allow using
> the entire address space, to avoid sometimes hitting -ENOSPC.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6446
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> ---
>   tests/i915/gem_create.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/tests/i915/gem_create.c b/tests/i915/gem_create.c
> index 1b694c6a..ff022713 100644
> --- a/tests/i915/gem_create.c
> +++ b/tests/i915/gem_create.c
> @@ -538,7 +538,9 @@ static int upload(int fd, uint32_t handle)
>   	 * for sure placed in one of requested regions.
>   	 */
>   	exec[0].handle = handle;
> +	exec[0].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
>   	exec[1].handle = batch_create_size(fd, PAGE_SIZE);
> +	exec[1].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
>   
>   	return __gem_execbuf(fd, &execbuf);
>   }
