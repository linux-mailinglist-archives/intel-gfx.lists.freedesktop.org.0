Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3BB543144
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 15:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6007D10FF97;
	Wed,  8 Jun 2022 13:25:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E22010FF90;
 Wed,  8 Jun 2022 13:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654694732; x=1686230732;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=NksET9eNBD2QBAzfjJNqJDWe9V5/X64uJYu20L6thuk=;
 b=JrImoyczzmn2lZ+tf7eukd/5Xog+YSm0mlxj5yzUAyu3tXobqjpq14W+
 Kk801h25o8jMOuTPPydHPgjYUyPAVBvYMCmy0JkAMI2P1PwLn9HGWUHMb
 oGm/p77O4mj1Tn0Tmv6tx637ee+dAtW6McHUCNrtnVgK4V00rUIcKwbcH
 OkzrACnkZf++emUOg4sU8XvDML8MDLSsLvqCg6bA2EDSNJ75ipLz6b83q
 Af+s2IW74hA1jeucEY739WW051e7fYf6dzGEPz+dxlK52wuaiVbpSuL3U
 BexCsEessYBqDVXxU4wANg8BCijWSZdRANJgOLJJx+n3R5Il9hrIVy7qd A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="265696774"
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="265696774"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 06:25:31 -0700
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="584890328"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.57.39])
 ([10.252.57.39])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 06:25:29 -0700
Message-ID: <cb36f370-6b21-c825-b06f-04b66b720612@linux.intel.com>
Date: Wed, 8 Jun 2022 15:25:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220525183702.490989-1-matthew.auld@intel.com>
 <20220525183702.490989-10-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220525183702.490989-10-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 9/9] lib/i915: request CPU_ACCESS for
 fb objects
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Patch 6 is missing commit message, with that and the GitLab.Pipeline 
warning fix the series LGTM

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 5/25/2022 8:37 PM, Matthew Auld wrote:
> kms_frontbuffer_tracking@basic falls over if the fb needs to be migrated
> from non-mappable device memory, to the mappable part, due to being
> temporarily pinned for scanout, when hitting the CPU fault handler,
> which just gives us SIGBUS. If the device has a small BAR let's attempt
> to use the mappable portion, if possible.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> ---
>   lib/ioctl_wrappers.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/lib/ioctl_wrappers.c b/lib/ioctl_wrappers.c
> index 09eb3ce7..7713e78b 100644
> --- a/lib/ioctl_wrappers.c
> +++ b/lib/ioctl_wrappers.c
> @@ -635,7 +635,8 @@ uint32_t gem_buffer_create_fb_obj(int fd, uint64_t size)
>   	uint32_t handle;
>   
>   	if (gem_has_lmem(fd))
> -		handle = gem_create_in_memory_regions(fd, size, REGION_LMEM(0));
> +		handle = gem_create_with_cpu_access_in_memory_regions(fd, size,
> +								      REGION_LMEM(0));
>   	else
>   		handle = gem_create(fd, size);
>   
