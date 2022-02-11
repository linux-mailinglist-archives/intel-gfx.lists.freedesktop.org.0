Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A3A4B22BC
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 11:06:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F7C610EA66;
	Fri, 11 Feb 2022 10:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0667010EA66;
 Fri, 11 Feb 2022 10:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644573971; x=1676109971;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=3fkysBDq/oUKj6FutX0T1/Nwdt1MJ+ALDYMkaBxZGIg=;
 b=kMSv+ZI1DXINd9a1++h0nITvtkxnQfEvq4zX/59K9aybv83kNQVjLdGg
 0FlHxEJidPtscEm3Ny+BgJoqs3YCN3stMhYYJNleJQXDeKfPlA3Lo2rIT
 Hh7tgM/6w3W7jnH3lgldmBuQM8cfa19jQWn48kj/Mvuw/a0LWG7MxFwxq
 VrxjGYsX194eneiTPrz1/qTIGXOEnDecLTz6mIUgPZ1THuslbsBWzAPWE
 hMrscN86SYPQ2vJl3yticw9RtMD3wb/f2QggJPOwNZv98gehiOOiSBZCG
 DeSbVFWV4IvywpiakkhTTBnxq1UoL5aOi6K2Je2sRe0M0ygt5dncw8DpP w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249454606"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="249454606"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 02:06:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="774202104"
Received: from olindum-mobl1.ger.corp.intel.com (HELO [10.249.254.193])
 ([10.249.254.193])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 02:06:09 -0800
Message-ID: <8a14e72b-776a-a7c3-0080-926a3b879c04@linux.intel.com>
Date: Fri, 11 Feb 2022 11:06:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220210121313.701004-1-matthew.auld@intel.com>
 <20220210121313.701004-15-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220210121313.701004-15-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 14/15] drm/i915/uapi: forbid
 ALLOC_GPU_ONLY for error capture
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/10/22 13:13, Matthew Auld wrote:
> On platforms where there might be non-mappable LMEM, force userspace to
> mark the buffers with the correct hint. When dumping the BO contents
> during capture we need CPU access. Note this only applies to buffers
> that can be placed in LMEM, and also doesn't impact DG1.
>
> v2(Reported-by: kernel test robot <lkp@intel.com>):
>    - Also update the function signature on !CONFIG_DRM_I915_CAPTURE_ERROR
>      builds.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 13 ++++++++++---
>   1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 498b458fd784..017f928cbcaf 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1965,7 +1965,7 @@ eb_find_first_request_added(struct i915_execbuffer *eb)
>   #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
>   
>   /* Stage with GFP_KERNEL allocations before we enter the signaling critical path */
> -static void eb_capture_stage(struct i915_execbuffer *eb)
> +static int eb_capture_stage(struct i915_execbuffer *eb)
>   {
>   	const unsigned int count = eb->buffer_count;
>   	unsigned int i = count, j;
> @@ -1978,6 +1978,9 @@ static void eb_capture_stage(struct i915_execbuffer *eb)
>   		if (!(flags & EXEC_OBJECT_CAPTURE))
>   			continue;
>   
> +		if (vma->obj->flags & I915_BO_ALLOC_GPU_ONLY)
> +			return -EINVAL;

With suitable adjustment regarding how we define the ALLOC_GPU_ONLY flag..

/Thomas


