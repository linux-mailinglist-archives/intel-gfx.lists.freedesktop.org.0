Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEDD56A26E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 14:52:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAFA418A670;
	Thu,  7 Jul 2022 12:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36CF518A670;
 Thu,  7 Jul 2022 12:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657198333; x=1688734333;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=sUmpYmaViu+lemc46xSk7xcNUF62Nnomsua089pJL4w=;
 b=NM22LX4aYeFNqHnEqGjBw0JknJQiiO1teGcBEDQ1flf43+OIJCgi63Ro
 yki0mcucow2D0/GUA6uiYvD6dv1nelu+MmIPgTsbEA1aIdiN8PKCKsPtN
 a/0poTD7W6tLtc8a/tjuV7+tu4HV9dOJS+41Br8+kOIPp7XiA7J599c4D
 NUdRsj7vnL3lsFBKNHzBEnhEuhmV0eRihkauoJecxgTH78oNO3xBqlf10
 sQ8LxVCXZaBUagBONIw2Mg8S5MB+PjxmbgPUoLy7m9pxP66wZgDoZFa3k
 1mppEsE0fOPjPwRxWtUQJTckLkTbFWTRbWwRu2VM+/tt1nqSmoHQ7hcdY A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="264431338"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="264431338"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 05:52:12 -0700
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="661375986"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.2.229])
 ([10.252.2.229])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 05:52:11 -0700
Message-ID: <5487db31-4c7b-2f7a-69df-211a14e5d2d8@linux.intel.com>
Date: Thu, 7 Jul 2022 14:52:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220707122336.391524-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220707122336.391524-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] Revert "lib/i915: request
 CPU_ACCESS for fb objects"
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 7/7/2022 2:23 PM, Matthew Auld wrote:
> This reverts commit 3cf110f8dcd1f4f02cf84339664b413abdaebf7d.
>
> This is too big of a hammer it seems, since we can't really support
> flat-CCS with lmem + smem objects, and here adding the flag means we
> also attach the smem placement, which seems to break kms_ccs.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   lib/ioctl_wrappers.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/lib/ioctl_wrappers.c b/lib/ioctl_wrappers.c
> index 7713e78b..09eb3ce7 100644
> --- a/lib/ioctl_wrappers.c
> +++ b/lib/ioctl_wrappers.c
> @@ -635,8 +635,7 @@ uint32_t gem_buffer_create_fb_obj(int fd, uint64_t size)
>   	uint32_t handle;
>   
>   	if (gem_has_lmem(fd))
> -		handle = gem_create_with_cpu_access_in_memory_regions(fd, size,
> -								      REGION_LMEM(0));
> +		handle = gem_create_in_memory_regions(fd, size, REGION_LMEM(0));
>   	else
>   		handle = gem_create(fd, size);
>   
