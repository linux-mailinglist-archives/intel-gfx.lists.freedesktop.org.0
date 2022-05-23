Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CF75315A4
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 21:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EEA210EFA0;
	Mon, 23 May 2022 19:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA8C910EFA0;
 Mon, 23 May 2022 19:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653332957; x=1684868957;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FXkSQp4xhPrYRIkrDDH1MQgWhUg1Q1aXI4dCPsfhI/0=;
 b=JN9ciush1t14to5aNlH8zrWWQWL3X6JGo/xmUEl+sMAJWHXEDOXWqw0e
 X2Byzobf2ij1nNWVeQr8/6pcgtO6sQmhDWnW6exj8stntzf0t+oNkqUyN
 7bQDlcTAKgkp8Naht2gu+kbaa1nLgRMqwHVYafv40x3p+z1cSaayzXeFo
 GjizUK9kdy2gfYzBs2jDidP3o3dKuPoToXznULvRn2vop3+8ExgqSSS7Y
 S20xAH6TSK51oAxBLVCo2nHwteV62uwvokVWhMxv4rTy1NMMXjA7f8K7a
 y3axdV1cAVvCQa3Jp1NSnrx99266TawSK/b9dkqjeOOdtNpjfFKDBVbPn g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10356"; a="333971811"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="333971811"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 12:09:16 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="629535174"
Received: from nvishwa1-desk.sc.intel.com (HELO nvishwa1-DESK) ([172.25.29.76])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 12:09:16 -0700
Date: Mon, 23 May 2022 12:08:53 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>
Message-ID: <20220523190853.GG4461@nvishwa1-DESK>
References: <20220517183212.20274-1-niranjana.vishwanathapura@intel.com>
 <20220517183212.20274-2-niranjana.vishwanathapura@intel.com>
 <902e46e15e36279316b3146a6a30fb7a9ebda284.camel@intel.com>
 <20220523190503.GF4461@nvishwa1-DESK>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220523190503.GF4461@nvishwa1-DESK>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC v3 1/3] drm/doc/rfc: VM_BIND feature design
 document
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
Cc: Kenneth Graunke <kenneth.w.graunke@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>, "Hellstrom,
 Thomas" <thomas.hellstrom@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Vetter,
 Daniel" <daniel.vetter@intel.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 23, 2022 at 12:05:05PM -0700, Niranjana Vishwanathapura wrote:
>On Thu, May 19, 2022 at 03:52:01PM -0700, Zanoni, Paulo R wrote:
>>On Tue, 2022-05-17 at 11:32 -0700, Niranjana Vishwanathapura wrote:
>>>VM_BIND design document with description of intended use cases.
>>>
>>>v2: Add more documentation and format as per review comments
>>>    from Daniel.
>>>
>>>Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
>>>---
>>>
>>>diff --git a/Documentation/gpu/rfc/i915_vm_bind.rst b/Documentation/gpu/rfc/i915_vm_bind.rst
>>>new file mode 100644
>>>index 000000000000..f1be560d313c
>>>--- /dev/null
>>>+++ b/Documentation/gpu/rfc/i915_vm_bind.rst
>>>@@ -0,0 +1,304 @@
>>>+==========================================
>>>+I915 VM_BIND feature design and use cases
>>>+==========================================
>>>+
>>>+VM_BIND feature
>>>+================
>>>+DRM_I915_GEM_VM_BIND/UNBIND ioctls allows UMD to bind/unbind GEM buffer
>>>+objects (BOs) or sections of a BOs at specified GPU virtual addresses on a
>>>+specified address space (VM). These mappings (also referred to as persistent
>>>+mappings) will be persistent across multiple GPU submissions (execbuff calls)
>>>+issued by the UMD, without user having to provide a list of all required
>>>+mappings during each submission (as required by older execbuff mode).
>>>+
>>>+VM_BIND/UNBIND ioctls will support 'in' and 'out' fences to allow userpace
>>>+to specify how the binding/unbinding should sync with other operations
>>>+like the GPU job submission. These fences will be timeline 'drm_syncobj's
>>>+for non-Compute contexts (See struct drm_i915_vm_bind_ext_timeline_fences).
>>>+For Compute contexts, they will be user/memory fences (See struct
>>>+drm_i915_vm_bind_ext_user_fence).
>>>+
>>>+VM_BIND feature is advertised to user via I915_PARAM_HAS_VM_BIND.
>>>+User has to opt-in for VM_BIND mode of binding for an address space (VM)
>>>+during VM creation time via I915_VM_CREATE_FLAGS_USE_VM_BIND extension.
>>>+
>>>+VM_BIND/UNBIND ioctl will immediately start binding/unbinding the mapping in an
>>>+async worker. The binding and unbinding will work like a special GPU engine.
>>>+The binding and unbinding operations are serialized and will wait on specified
>>>+input fences before the operation and will signal the output fences upon the
>>>+completion of the operation. Due to serialization, completion of an operation
>>>+will also indicate that all previous operations are also complete.
>>>+
>>>+VM_BIND features include:
>>>+
>>>+* Multiple Virtual Address (VA) mappings can map to the same physical pages
>>>+  of an object (aliasing).
>>>+* VA mapping can map to a partial section of the BO (partial binding).
>>>+* Support capture of persistent mappings in the dump upon GPU error.
>>>+* TLB is flushed upon unbind completion. Batching of TLB flushes in some
>>>+  use cases will be helpful.
>>>+* Asynchronous vm_bind and vm_unbind support with 'in' and 'out' fences.
>>>+* Support for userptr gem objects (no special uapi is required for this).
>>>+
>>>+Execbuff ioctl in VM_BIND mode
>>>+-------------------------------
>>>+The execbuff ioctl handling in VM_BIND mode differs significantly from the
>>>+older method. A VM in VM_BIND mode will not support older execbuff mode of
>>>+binding. In VM_BIND mode, execbuff ioctl will not accept any execlist. Hence,
>>>+no support for implicit sync. It is expected that the below work will be able
>>>+to support requirements of object dependency setting in all use cases:
>>>+
>>>+"dma-buf: Add an API for exporting sync files"
>>>+(https://lwn.net/Articles/859290/)
>>
>>I would really like to have more details here. The link provided points
>>to new ioctls and we're not very familiar with those yet, so I think
>>you should really clarify the interaction between the new additions
>>here. Having some sample code would be really nice too.
>>
>>For Mesa at least (and I believe for the other drivers too) we always
>>have a few exported buffers in every execbuf call, and we rely on the
>>implicit synchronization provided by execbuf to make sure everything
>>works. The execbuf ioctl also has some code to flush caches during
>>implicit synchronization AFAIR, so I would guess we rely on it too and
>>whatever else the Kernel does. Is that covered by the new ioctls?
>>
>>In addition, as far as I remember, one of the big improvements of
>>vm_bind was that it would help reduce ioctl latency and cpu overhead.
>>But if making execbuf faster comes at the cost of requiring additional
>>ioctls calls for implicit synchronization, which is required on ever
>>execbuf call, then I wonder if we'll even get any faster at all.
>>Comparing old execbuf vs plain new execbuf without the new required
>>ioctls won't make sense.
>>
>>But maybe I'm wrong and we won't need to call these new ioctls around
>>every single execbuf ioctl we submit? Again, more clarification and
>>some code examples here would be really nice. This is a big change on
>>an important part of the API, we should clarify the new expected usage.
>>
>
>Thanks Paulo for the comments.
>
>In VM_BIND mode, the only reason we would need execlist support in
>execbuff path is for implicit synchronization. And AFAIK, this work
>from Jason is expected replace implict synchronization with new ioctls.
>Hence, VM_BIND mode will not be needing execlist support at all.
>
>Based on comments from Daniel and my offline sync with Jason, this
>new mechanism from Jason is expected work for vl. For gl, there is a
>question of whether it will be performant or not. But it is worth trying
>that first. If it is not performant for gl, then only we can consider
>adding implicit sync support back for VM_BIND mode.
>
>Daniel, Jason, Ken, any thoughts you can add here?

CC'ing Ken.

>
>>>+
>>>+This also means, we need an execbuff extension to pass in the batch
>>>+buffer addresses (See struct drm_i915_gem_execbuffer_ext_batch_addresses).
>>>+
>>>+If at all execlist support in execbuff ioctl is deemed necessary for
>>>+implicit sync in certain use cases, then support can be added later.
>>
>>IMHO we really need to sort this and check all the assumptions before
>>we commit to any interface. Again, implicit synchronization is
>>something we rely on during *every* execbuf ioctl for most workloads.
>>
>
>Daniel's earlier feedback was that it is worth Mesa trying this new
>mechanism for gl and see it that works. We want to avoid supporting
>execlist support for implicit sync in vm_bind mode from the beginning
>if it is going to be deemed not necessary.
>
>>
>>>+In VM_BIND mode, VA allocation is completely managed by the user instead of
>>>+the i915 driver. Hence all VA assignment, eviction are not applicable in
>>>+VM_BIND mode. Also, for determining object activeness, VM_BIND mode will not
>>>+be using the i915_vma active reference tracking. It will instead use dma-resv
>>>+object for that (See `VM_BIND dma_resv usage`_).
>>>+
>>>+So, a lot of existing code in the execbuff path like relocations, VA evictions,
>>>+vma lookup table, implicit sync, vma active reference tracking etc., are not
>>>+applicable in VM_BIND mode. Hence, the execbuff path needs to be cleaned up
>>>+by clearly separating out the functionalities where the VM_BIND mode differs
>>>+from older method and they should be moved to separate files.
>>
>>I seem to recall some conversations where we were told a bunch of
>>ioctls would stop working or make no sense to call when using vm_bind.
>>Can we please get a complete list of those? Bonus points if the Kernel
>>starts telling us we just called something that makes no sense.
>>
>
>Which ioctls you are talking about here?
>We do not support GEM_WAIT ioctls, but that is only for compute mode (which is
>already documented in this patch).
>
>>>+
>>>+VM_PRIVATE objects
>>>+-------------------
>>>+By default, BOs can be mapped on multiple VMs and can also be dma-buf
>>>+exported. Hence these BOs are referred to as Shared BOs.
>>>+During each execbuff submission, the request fence must be added to the
>>>+dma-resv fence list of all shared BOs mapped on the VM.
>>>+
>>>+VM_BIND feature introduces an optimization where user can create BO which
>>>+is private to a specified VM via I915_GEM_CREATE_EXT_VM_PRIVATE flag during
>>>+BO creation. Unlike Shared BOs, these VM private BOs can only be mapped on
>>>+the VM they are private to and can't be dma-buf exported.
>>>+All private BOs of a VM share the dma-resv object. Hence during each execbuff
>>>+submission, they need only one dma-resv fence list updated. Thus, the fast
>>>+path (where required mappings are already bound) submission latency is O(1)
>>>+w.r.t the number of VM private BOs.
>>
>>I know we already discussed this, but just to document it publicly: the
>>ideal case for user space would be that every BO is created as private
>>but then we'd have an ioctl to convert it to non-private (without the
>>need to have a non-private->private interface).
>>
>>An explanation on why we can't have an ioctl to mark as exported a
>>buffer that was previously vm_private would be really appreciated.
>>
>
>Ok, I can some notes on that.
>The reason being the fact that this require changing the dma-resv object
>for gem object, hence the object locking also. This will add complications
>as we have to sync with any pending operations. It might be easier for
>UMDs to do it themselves by copying the object contexts to a new object.
>
>Niranjana
>
>>Thanks,
>>Paulo
>>
>>
>>>+
>>>+VM_BIND locking hirarchy
>>>+-------------------------
>>>+The locking design here supports the older (execlist based) execbuff mode, the
>>>+newer VM_BIND mode, the VM_BIND mode with GPU page faults and possible future
>>>+system allocator support (See `Shared Virtual Memory (SVM) support`_).
>>>+The older execbuff mode and the newer VM_BIND mode without page faults manages
>>>+residency of backing storage using dma_fence. The VM_BIND mode with page faults
>>>+and the system allocator support do not use any dma_fence at all.
>>>+
>>>+VM_BIND locking order is as below.
>>>+
>>>+1) Lock-A: A vm_bind mutex will protect vm_bind lists. This lock is taken in
>>>+   vm_bind/vm_unbind ioctl calls, in the execbuff path and while releasing the
>>>+   mapping.
>>>+
>>>+   In future, when GPU page faults are supported, we can potentially use a
>>>+   rwsem instead, so that multiple page fault handlers can take the read side
>>>+   lock to lookup the mapping and hence can run in parallel.
>>>+   The older execbuff mode of binding do not need this lock.
>>>+
>>>+2) Lock-B: The object's dma-resv lock will protect i915_vma state and needs to
>>>+   be held while binding/unbinding a vma in the async worker and while updating
>>>+   dma-resv fence list of an object. Note that private BOs of a VM will all
>>>+   share a dma-resv object.
>>>+
>>>+   The future system allocator support will use the HMM prescribed locking
>>>+   instead.
>>>+
>>>+3) Lock-C: Spinlock/s to protect some of the VM's lists like the list of
>>>+   invalidated vmas (due to eviction and userptr invalidation) etc.
>>>+
>>>+When GPU page faults are supported, the execbuff path do not take any of these
>>>+locks. There we will simply smash the new batch buffer address into the ring and
>>>+then tell the scheduler run that. The lock taking only happens from the page
>>>+fault handler, where we take lock-A in read mode, whichever lock-B we need to
>>>+find the backing storage (dma_resv lock for gem objects, and hmm/core mm for
>>>+system allocator) and some additional locks (lock-D) for taking care of page
>>>+table races. Page fault mode should not need to ever manipulate the vm lists,
>>>+so won't ever need lock-C.
>>>+
>>>+VM_BIND LRU handling
>>>+---------------------
>>>+We need to ensure VM_BIND mapped objects are properly LRU tagged to avoid
>>>+performance degradation. We will also need support for bulk LRU movement of
>>>+VM_BIND objects to avoid additional latencies in execbuff path.
>>>+
>>>+The page table pages are similar to VM_BIND mapped objects (See
>>>+`Evictable page table allocations`_) and are maintained per VM and needs to
>>>+be pinned in memory when VM is made active (ie., upon an execbuff call with
>>>+that VM). So, bulk LRU movement of page table pages is also needed.
>>>+
>>>+The i915 shrinker LRU has stopped being an LRU. So, it should also be moved
>>>+over to the ttm LRU in some fashion to make sure we once again have a reasonable
>>>+and consistent memory aging and reclaim architecture.
>>>+
>>>+VM_BIND dma_resv usage
>>>+-----------------------
>>>+Fences needs to be added to all VM_BIND mapped objects. During each execbuff
>>>+submission, they are added with DMA_RESV_USAGE_BOOKKEEP usage to prevent
>>>+over sync (See enum dma_resv_usage). One can override it with either
>>>+DMA_RESV_USAGE_READ or DMA_RESV_USAGE_WRITE usage during object dependency
>>>+setting (either through explicit or implicit mechanism).
>>>+
>>>+When vm_bind is called for a non-private object while the VM is already
>>>+active, the fences need to be copied from VM's shared dma-resv object
>>>+(common to all private objects of the VM) to this non-private object.
>>>+If this results in performance degradation, then some optimization will
>>>+be needed here. This is not a problem for VM's private objects as they use
>>>+shared dma-resv object which is always updated on each execbuff submission.
>>>+
>>>+Also, in VM_BIND mode, use dma-resv apis for determining object activeness
>>>+(See dma_resv_test_signaled() and dma_resv_wait_timeout()) and do not use the
>>>+older i915_vma active reference tracking which is deprecated. This should be
>>>+easier to get it working with the current TTM backend. We can remove the
>>>+i915_vma active reference tracking fully while supporting TTM backend for igfx.
>>>+
>>>+Evictable page table allocations
>>>+---------------------------------
>>>+Make pagetable allocations evictable and manage them similar to VM_BIND
>>>+mapped objects. Page table pages are similar to persistent mappings of a
>>>+VM (difference here are that the page table pages will not have an i915_vma
>>>+structure and after swapping pages back in, parent page link needs to be
>>>+updated).
>>>+
>>>+Mesa use case
>>>+--------------
>>>+VM_BIND can potentially reduce the CPU overhead in Mesa (both Vulkan and Iris),
>>>+hence improving performance of CPU-bound applications. It also allows us to
>>>+implement Vulkan's Sparse Resources. With increasing GPU hardware performance,
>>>+reducing CPU overhead becomes more impactful.
>>>+
>>>+
>>>+VM_BIND Compute support
>>>+========================
>>>+
>>>+User/Memory Fence
>>>+------------------
>>>+The idea is to take a user specified virtual address and install an interrupt
>>>+handler to wake up the current task when the memory location passes the user
>>>+supplied filter. User/Memory fence is a <address, value> pair. To signal the
>>>+user fence, specified value will be written at the specified virtual address
>>>+and wakeup the waiting process. User can wait on a user fence with the
>>>+gem_wait_user_fence ioctl.
>>>+
>>>+It also allows the user to emit their own MI_FLUSH/PIPE_CONTROL notify
>>>+interrupt within their batches after updating the value to have sub-batch
>>>+precision on the wakeup. Each batch can signal a user fence to indicate
>>>+the completion of next level batch. The completion of very first level batch
>>>+needs to be signaled by the command streamer. The user must provide the
>>>+user/memory fence for this via the DRM_I915_GEM_EXECBUFFER_EXT_USER_FENCE
>>>+extension of execbuff ioctl, so that KMD can setup the command streamer to
>>>+signal it.
>>>+
>>>+User/Memory fence can also be supplied to the kernel driver to signal/wake up
>>>+the user process after completion of an asynchronous operation.
>>>+
>>>+When VM_BIND ioctl was provided with a user/memory fence via the
>>>+I915_VM_BIND_EXT_USER_FENCE extension, it will be signaled upon the completion
>>>+of binding of that mapping. All async binds/unbinds are serialized, hence
>>>+signaling of user/memory fence also indicate the completion of all previous
>>>+binds/unbinds.
>>>+
>>>+This feature will be derived from the below original work:
>>>+https://patchwork.freedesktop.org/patch/349417/
>>>+
>>>+Long running Compute contexts
>>>+------------------------------
>>>+Usage of dma-fence expects that they complete in reasonable amount of time.
>>>+Compute on the other hand can be long running. Hence it is appropriate for
>>>+compute to use user/memory fence and dma-fence usage will be limited to
>>>+in-kernel consumption only. This requires an execbuff uapi extension to pass
>>>+in user fence (See struct drm_i915_vm_bind_ext_user_fence). Compute must opt-in
>>>+for this mechanism with I915_CONTEXT_CREATE_FLAGS_LONG_RUNNING flag during
>>>+context creation. The dma-fence based user interfaces like gem_wait ioctl and
>>>+execbuff out fence are not allowed on long running contexts. Implicit sync is
>>>+not valid as well and is anyway not supported in VM_BIND mode.
>>>+
>>>+Where GPU page faults are not available, kernel driver upon buffer invalidation
>>>+will initiate a suspend (preemption) of long running context with a dma-fence
>>>+attached to it. And upon completion of that suspend fence, finish the
>>>+invalidation, revalidate the BO and then resume the compute context. This is
>>>+done by having a per-context preempt fence (also called suspend fence) proxying
>>>+as i915_request fence. This suspend fence is enabled when someone tries to wait
>>>+on it, which then triggers the context preemption.
>>>+
>>>+As this support for context suspension using a preempt fence and the resume work
>>>+for the compute mode contexts can get tricky to get it right, it is better to
>>>+add this support in drm scheduler so that multiple drivers can make use of it.
>>>+That means, it will have a dependency on i915 drm scheduler conversion with GuC
>>>+scheduler backend. This should be fine, as the plan is to support compute mode
>>>+contexts only with GuC scheduler backend (at least initially). This is much
>>>+easier to support with VM_BIND mode compared to the current heavier execbuff
>>>+path resource attachment.
>>>+
>>>+Low Latency Submission
>>>+-----------------------
>>>+Allows compute UMD to directly submit GPU jobs instead of through execbuff
>>>+ioctl. This is made possible by VM_BIND is not being synchronized against
>>>+execbuff. VM_BIND allows bind/unbind of mappings required for the directly
>>>+submitted jobs.
>>>+
>>>+Other VM_BIND use cases
>>>+========================
>>>+
>>>+Debugger
>>>+---------
>>>+With debug event interface user space process (debugger) is able to keep track
>>>+of and act upon resources created by another process (debugged) and attached
>>>+to GPU via vm_bind interface.
>>>+
>>>+GPU page faults
>>>+----------------
>>>+GPU page faults when supported (in future), will only be supported in the
>>>+VM_BIND mode. While both the older execbuff mode and the newer VM_BIND mode of
>>>+binding will require using dma-fence to ensure residency, the GPU page faults
>>>+mode when supported, will not use any dma-fence as residency is purely managed
>>>+by installing and removing/invalidating page table entries.
>>>+
>>>+Page level hints settings
>>>+--------------------------
>>>+VM_BIND allows any hints setting per mapping instead of per BO.
>>>+Possible hints include read-only mapping, placement and atomicity.
>>>+Sub-BO level placement hint will be even more relevant with
>>>+upcoming GPU on-demand page fault support.
>>>+
>>>+Page level Cache/CLOS settings
>>>+-------------------------------
>>>+VM_BIND allows cache/CLOS settings per mapping instead of per BO.
>>>+
>>>+Shared Virtual Memory (SVM) support
>>>+------------------------------------
>>>+VM_BIND interface can be used to map system memory directly (without gem BO
>>>+abstraction) using the HMM interface. SVM is only supported with GPU page
>>>+faults enabled.
>>>+
>>>+
>>>+Broder i915 cleanups
>>>+=====================
>>>+Supporting this whole new vm_bind mode of binding which comes with its own
>>>+use cases to support and the locking requirements requires proper integration
>>>+with the existing i915 driver. This calls for some broader i915 driver
>>>+cleanups/simplifications for maintainability of the driver going forward.
>>>+Here are few things identified and are being looked into.
>>>+
>>>+- Remove vma lookup cache (eb->gem_context->handles_vma). VM_BIND feature
>>>+  do not use it and complexity it brings in is probably more than the
>>>+  performance advantage we get in legacy execbuff case.
>>>+- Remove vma->open_count counting
>>>+- Remove i915_vma active reference tracking. VM_BIND feature will not be using
>>>+  it. Instead use underlying BO's dma-resv fence list to determine if a i915_vma
>>>+  is active or not.
>>>+
>>>+
>>>+VM_BIND UAPI
>>>+=============
>>>+
>>>+.. kernel-doc:: Documentation/gpu/rfc/i915_vm_bind.h
>>>diff --git a/Documentation/gpu/rfc/index.rst b/Documentation/gpu/rfc/index.rst
>>>index 91e93a705230..7d10c36b268d 100644
>>>--- a/Documentation/gpu/rfc/index.rst
>>>+++ b/Documentation/gpu/rfc/index.rst
>>>@@ -23,3 +23,7 @@ host such documentation:
>>> .. toctree::
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>     i915_scheduler.rst
>>>+
>>>+.. toctree::
>>>+
>>>+    i915_vm_bind.rst
>>
