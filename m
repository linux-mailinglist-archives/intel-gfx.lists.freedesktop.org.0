Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 771C7615D0F
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 08:39:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7CC210E0CC;
	Wed,  2 Nov 2022 07:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D438610E0CC
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 07:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667374744; x=1698910744;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to;
 bh=sp7lUYiyL/suDKpuDDTGChyPjE3zUgxmPBlQ5tLdgy8=;
 b=hlsv6kMX9HuyZp7HFcJbi9OUDNu5dt3EvcOCrNXqLIwTVQO+wsIgVmDE
 kvJAKziBz276eSjvlHnCG5y386v4P6AJwSQpgx6EuvnPYFKSK+A7Ty1Zg
 k3a/ZJprz0GC1DDfU90G8ySjUUT1DsOkE2LZDvxmLAmemRq2145nwYvdG
 QXomzPS9R1zDq17TcWNEpI4bCefQheKvAm3ryowdhoMJcOPKobdLcIgnx
 J96tlKWGzNn2SsyGkY9vrgM2OcuMWcWiUNbq7lcbV137fsVk57wtVv+o/
 1GQoUlK2MVpquTUAE/Ud2CYZAsu1rVDRPs+TqH5xQCBuy4C2sPiPnJ4Ge A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="309335488"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; 
 d="scan'208,217";a="309335488"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 00:39:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="879378762"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; 
 d="scan'208,217";a="879378762"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.41.254])
 ([10.249.41.254])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 00:39:02 -0700
Content-Type: multipart/alternative;
 boundary="------------qQFmLbQ7nKoqP6YUoJWo7lwv"
Message-ID: <7b832c2b-5a01-3027-c610-f89ae2f48737@linux.intel.com>
Date: Wed, 2 Nov 2022 08:39:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221102051416.27327-1-niranjana.vishwanathapura@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20221102051416.27327-1-niranjana.vishwanathapura@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not set cache_dirty for DGFX
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

This is a multi-part message in MIME format.
--------------qQFmLbQ7nKoqP6YUoJWo7lwv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11/2/2022 6:14 AM, Niranjana Vishwanathapura wrote:
> Currently on DG1, which do not have LLC, we hit the below
> warning while rebinding an userptr invalidated object.
>
> WARNING: CPU: 4 PID: 13008 at drivers/gpu/drm/i915/gem/i915_gem_pages.c:34 __i915_gem_object_set_pages+0x296/0x2d0 [i915]
> ...
> RIP: 0010:__i915_gem_object_set_pages+0x296/0x2d0 [i915]
> ...
> Call Trace:
>   <TASK>
>   i915_gem_userptr_get_pages+0x175/0x1a0 [i915]
>   ____i915_gem_object_get_pages+0x32/0xb0 [i915]
>   i915_gem_object_userptr_submit_init+0x286/0x470 [i915]
>   eb_lookup_vmas+0x2ff/0xcf0 [i915]
>   ? __intel_wakeref_get_first+0x55/0xb0 [i915]
>   i915_gem_do_execbuffer+0x785/0x21d0 [i915]
>   i915_gem_execbuffer2_ioctl+0xe7/0x3d0 [i915]
>
> We shouldn't be setting the obj->cache_dirty for DGFX,
> fix it.

With Fixes: |d70af57944 |("drm/i915/shmem: ensure flush during swap-in 
on non-LLC")

Acked-by: Nirmoy Das <nirmoy.das@intel.com>

> Suggested-by: Matthew Auld<matthew.auld@intel.com>
> Reported-by: Niranjana Vishwanathapura<niranjana.vishwanathapura@intel.com>
> Signed-off-by: Niranjana Vishwanathapura<niranjana.vishwanathapura@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 11125c32dd35..2f7804492cd5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -369,14 +369,14 @@ __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
>   
>   	__start_cpu_write(obj);
>   	/*
> -	 * On non-LLC platforms, force the flush-on-acquire if this is ever
> +	 * On non-LLC igfx platforms, force the flush-on-acquire if this is ever
>   	 * swapped-in. Our async flush path is not trust worthy enough yet(and
>   	 * happens in the wrong order), and with some tricks it's conceivable
>   	 * for userspace to change the cache-level to I915_CACHE_NONE after the
>   	 * pages are swapped-in, and since execbuf binds the object before doing
>   	 * the async flush, we have a race window.
>   	 */
> -	if (!HAS_LLC(i915))
> +	if (!HAS_LLC(i915) && !IS_DGFX(i915))
>   		obj->cache_dirty = true;
>   }
>   
--------------qQFmLbQ7nKoqP6YUoJWo7lwv
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/2/2022 6:14 AM, Niranjana
      Vishwanathapura wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20221102051416.27327-1-niranjana.vishwanathapura@intel.com">
      <pre class="moz-quote-pre" wrap="">Currently on DG1, which do not have LLC, we hit the below
warning while rebinding an userptr invalidated object.

WARNING: CPU: 4 PID: 13008 at drivers/gpu/drm/i915/gem/i915_gem_pages.c:34 __i915_gem_object_set_pages+0x296/0x2d0 [i915]
...
RIP: 0010:__i915_gem_object_set_pages+0x296/0x2d0 [i915]
...
Call Trace:
 &lt;TASK&gt;
 i915_gem_userptr_get_pages+0x175/0x1a0 [i915]
 ____i915_gem_object_get_pages+0x32/0xb0 [i915]
 i915_gem_object_userptr_submit_init+0x286/0x470 [i915]
 eb_lookup_vmas+0x2ff/0xcf0 [i915]
 ? __intel_wakeref_get_first+0x55/0xb0 [i915]
 i915_gem_do_execbuffer+0x785/0x21d0 [i915]
 i915_gem_execbuffer2_ioctl+0xe7/0x3d0 [i915]

We shouldn't be setting the obj-&gt;cache_dirty for DGFX,
fix it.
</pre>
    </blockquote>
    <p>With Fixes: <code>d70af57944 </code>("drm/i915/shmem: ensure
      flush during swap-in on non-LLC")<br>
    </p>
    <p>Acked-by: Nirmoy Das <a class="moz-txt-link-rfc2396E" href="mailto:nirmoy.das@intel.com">&lt;nirmoy.das@intel.com&gt;</a><br>
    </p>
    <blockquote type="cite"
      cite="mid:20221102051416.27327-1-niranjana.vishwanathapura@intel.com">
      <pre class="moz-quote-pre" wrap="">
Suggested-by: Matthew Auld <a class="moz-txt-link-rfc2396E" href="mailto:matthew.auld@intel.com">&lt;matthew.auld@intel.com&gt;</a>
Reported-by: Niranjana Vishwanathapura <a class="moz-txt-link-rfc2396E" href="mailto:niranjana.vishwanathapura@intel.com">&lt;niranjana.vishwanathapura@intel.com&gt;</a>
Signed-off-by: Niranjana Vishwanathapura <a class="moz-txt-link-rfc2396E" href="mailto:niranjana.vishwanathapura@intel.com">&lt;niranjana.vishwanathapura@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 11125c32dd35..2f7804492cd5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -369,14 +369,14 @@ __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
 
 	__start_cpu_write(obj);
 	/*
-	 * On non-LLC platforms, force the flush-on-acquire if this is ever
+	 * On non-LLC igfx platforms, force the flush-on-acquire if this is ever
 	 * swapped-in. Our async flush path is not trust worthy enough yet(and
 	 * happens in the wrong order), and with some tricks it's conceivable
 	 * for userspace to change the cache-level to I915_CACHE_NONE after the
 	 * pages are swapped-in, and since execbuf binds the object before doing
 	 * the async flush, we have a race window.
 	 */
-	if (!HAS_LLC(i915))
+	if (!HAS_LLC(i915) &amp;&amp; !IS_DGFX(i915))
 		obj-&gt;cache_dirty = true;
 }
 
</pre>
    </blockquote>
  </body>
</html>

--------------qQFmLbQ7nKoqP6YUoJWo7lwv--
