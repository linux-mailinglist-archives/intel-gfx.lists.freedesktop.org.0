Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 821381C180C
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 16:43:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AC0B6E04A;
	Fri,  1 May 2020 14:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 565586E04A
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 14:43:06 +0000 (UTC)
IronPort-SDR: 2zb/dDxZLFVUHFyb0MXh6eXeQdKzOg0Y/HRQWmDMG12vwX2EIrWF71jpSkBSdZpWAEFDQVlPnp
 1IK/EpqL+eQg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 07:43:05 -0700
IronPort-SDR: 7NkUk9CNPL9D9sH+Zv1EmAIACGn63RRn57KUVPiBGYcU+IshKU14s1FbI0Yshcz4J9uQ7/kTve
 69bwRnHv/XJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,339,1583222400"; d="scan'208";a="337628455"
Received: from sstoeckl-mobl.ger.corp.intel.com (HELO [10.249.46.152])
 ([10.249.46.152])
 by orsmga001.jf.intel.com with ESMTP; 01 May 2020 07:43:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200501084255.5674-1-chris@chris-wilson.co.uk>
 <20200501084255.5674-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <f0edf7a8-7f1e-d618-2659-4a96c014038f@intel.com>
Date: Fri, 1 May 2020 15:43:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200501084255.5674-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Implement vm_ops->access for
 gdb access into mmaps
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
Cc: "Kristian H . Kristensen" <hoegsberg@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 01/05/2020 09:42, Chris Wilson wrote:
> gdb uses ptrace() to peek and poke bytes of the target's address space.
> The driver must implement an vm_ops->access() handler or else gdb will
> be unable to inspect the pointer and report it as out-of-bounds.
> Worse than useless as it causes immediate suspicion of the valid GTT
> pointer, distracting the poor programmer trying to find his bug.
> 
> Testcase: igt/gem_mmap_gtt/ptrace
> Testcase: igt/gem_mmap_offset/ptrace
> Suggested-by: Kristian H. Kristensen <hoegsberg@google.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Maciej Patelczyk <maciej.patelczyk@intel.com>
> Cc: Kristian H. Kristensen <hoegsberg@google.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  31 +++++
>   .../drm/i915/gem/selftests/i915_gem_mman.c    | 124 ++++++++++++++++++
>   2 files changed, 155 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index b39c24dae64e..aef917b7f168 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -396,6 +396,35 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
>   	return i915_error_to_vmf_fault(ret);
>   }
>   
> +static int
> +vm_access(struct vm_area_struct *area, unsigned long addr,
> +	  void *buf, int len, int write)
> +{
> +	struct i915_mmap_offset *mmo = area->vm_private_data;
> +	struct drm_i915_gem_object *obj = mmo->obj;
> +	void *vaddr;
> +

What's the story with object_is_readonly and write=true here? Shouldn't 
we reject, or what?

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
