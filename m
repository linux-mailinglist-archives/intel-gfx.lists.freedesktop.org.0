Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4D85627BA
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 02:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D3D10E39E;
	Fri,  1 Jul 2022 00:31:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 370F910E2F1;
 Fri,  1 Jul 2022 00:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656635492; x=1688171492;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nOwjiD313tTTzO7lYhEDDWSiI/KrMw7h65FkxmalcRs=;
 b=H2VbzeIgh7jd9nE/QQR8309fnNgy7l5ixkuTX0ZL0I0zQ7vfPY/wAp8e
 LGQPcIWubX+CJSqwRgTBEjK/fqyAyh06kdnvYHjGtHsZBSKgBvBICzxHY
 M1QKI3bzT4fWPgQ1eWNcXte2M9PltmjLRukFYXpg7GkLesb5JOZC81TAR
 WWVEpaETy7g4l0j9RdP7D/K169AmIJ2SO6SfMeKigcibkW/RfZxT74gvh
 0ur1x2pDntT02TaVArv/QDQih0uwKXVowOfxDC9hlw4/c4t0L51JnTeSG
 L+62rUx5JXIc0/x4QDCS8+bIvtQbmvHuHybRI6W75Yxwp+3pOM7qZqij9 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="262307444"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="262307444"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 17:31:31 -0700
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="718432918"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 30 Jun 2022 17:31:31 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 30 Jun 2022 17:31:08 -0700
Message-Id: <20220701003110.24843-2-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20220701003110.24843-1-niranjana.vishwanathapura@intel.com>
References: <20220701003110.24843-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 1/3] drm/doc/rfc: VM_BIND feature design
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
Cc: paulo.r.zanoni@intel.com, chris.p.wilson@intel.com,
 thomas.hellstrom@intel.com, matthew.auld@intel.com, daniel.vetter@intel.com,
 christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VM_BIND design document with description of intended use cases.

v2: Reduce the scope to simple Mesa use case.
v3: Expand documentation on dma-resv usage, TLB flushing and
    execbuf3.
v4: Remove vm_bind tlb flush request support.
v5: Update TLB flushing documentation.
v6: Update out of order completion documentation.

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Acked-by: Paulo Zanoni <paulo.r.zanoni@intel.com>
---
 Documentation/gpu/rfc/i915_vm_bind.rst | 245 +++++++++++++++++++++++++
 Documentation/gpu/rfc/index.rst        |   4 +
 2 files changed, 249 insertions(+)
 create mode 100644 Documentation/gpu/rfc/i915_vm_bind.rst

diff --git a/Documentation/gpu/rfc/i915_vm_bind.rst b/Documentation/gpu/rfc/i915_vm_bind.rst
new file mode 100644
index 000000000000..9a1dcdf2799e
--- /dev/null
+++ b/Documentation/gpu/rfc/i915_vm_bind.rst
@@ -0,0 +1,245 @@
+==========================================
+I915 VM_BIND feature design and use cases
+==========================================
+
+VM_BIND feature
+================
+DRM_I915_GEM_VM_BIND/UNBIND ioctls allows UMD to bind/unbind GEM buffer
+objects (BOs) or sections of a BOs at specified GPU virtual addresses on a
+specified address space (VM). These mappings (also referred to as persistent
+mappings) will be persistent across multiple GPU submissions (execbuf calls)
+issued by the UMD, without user having to provide a list of all required
+mappings during each submission (as required by older execbuf mode).
+
+The VM_BIND/UNBIND calls allow UMDs to request a timeline out fence for
+signaling the completion of bind/unbind operation.
+
+VM_BIND feature is advertised to user via I915_PARAM_VM_BIND_VERSION.
+User has to opt-in for VM_BIND mode of binding for an address space (VM)
+during VM creation time via I915_VM_CREATE_FLAGS_USE_VM_BIND extension.
+
+VM_BIND/UNBIND ioctl calls executed on different CPU threads concurrently are
+not ordered. Furthermore, parts of the VM_BIND/UNBIND operations can be done
+asynchronously, when valid out fence is specified.
+
+VM_BIND features include:
+
+* Multiple Virtual Address (VA) mappings can map to the same physical pages
+  of an object (aliasing).
+* VA mapping can map to a partial section of the BO (partial binding).
+* Support capture of persistent mappings in the dump upon GPU error.
+* Support for userptr gem objects (no special uapi is required for this).
+
+TLB flush consideration
+------------------------
+The i915 driver flushes the TLB for each submission and when an object's
+pages are released. The VM_BIND/UNBIND operation will not do any additional
+TLB flush. Any VM_BIND mapping added will be in the working set for subsequent
+submissions on that VM and will not be in the working set for currently running
+batches (which would require additional TLB flushes, which is not supported).
+
+Execbuf ioctl in VM_BIND mode
+-------------------------------
+A VM in VM_BIND mode will not support older execbuf mode of binding.
+The execbuf ioctl handling in VM_BIND mode differs significantly from the
+older execbuf2 ioctl (See struct drm_i915_gem_execbuffer2).
+Hence, a new execbuf3 ioctl has been added to support VM_BIND mode. (See
+struct drm_i915_gem_execbuffer3). The execbuf3 ioctl will not accept any
+execlist. Hence, no support for implicit sync. It is expected that the below
+work will be able to support requirements of object dependency setting in all
+use cases:
+
+"dma-buf: Add an API for exporting sync files"
+(https://lwn.net/Articles/859290/)
+
+The new execbuf3 ioctl only works in VM_BIND mode and the VM_BIND mode only
+works with execbuf3 ioctl for submission. All BOs mapped on that VM (through
+VM_BIND call) at the time of execbuf3 call are deemed required for that
+submission.
+
+The execbuf3 ioctl directly specifies the batch addresses instead of as
+object handles as in execbuf2 ioctl. The execbuf3 ioctl will also not
+support many of the older features like in/out/submit fences, fence array,
+default gem context and many more (See struct drm_i915_gem_execbuffer3).
+
+In VM_BIND mode, VA allocation is completely managed by the user instead of
+the i915 driver. Hence all VA assignment, eviction are not applicable in
+VM_BIND mode. Also, for determining object activeness, VM_BIND mode will not
+be using the i915_vma active reference tracking. It will instead use dma-resv
+object for that (See `VM_BIND dma_resv usage`_).
+
+So, a lot of existing code supporting execbuf2 ioctl, like relocations, VA
+evictions, vma lookup table, implicit sync, vma active reference tracking etc.,
+are not applicable for execbuf3 ioctl. Hence, all execbuf3 specific handling
+should be in a separate file and only functionalities common to these ioctls
+can be the shared code where possible.
+
+VM_PRIVATE objects
+-------------------
+By default, BOs can be mapped on multiple VMs and can also be dma-buf
+exported. Hence these BOs are referred to as Shared BOs.
+During each execbuf submission, the request fence must be added to the
+dma-resv fence list of all shared BOs mapped on the VM.
+
+VM_BIND feature introduces an optimization where user can create BO which
+is private to a specified VM via I915_GEM_CREATE_EXT_VM_PRIVATE flag during
+BO creation. Unlike Shared BOs, these VM private BOs can only be mapped on
+the VM they are private to and can't be dma-buf exported.
+All private BOs of a VM share the dma-resv object. Hence during each execbuf
+submission, they need only one dma-resv fence list updated. Thus, the fast
+path (where required mappings are already bound) submission latency is O(1)
+w.r.t the number of VM private BOs.
+
+VM_BIND locking hirarchy
+-------------------------
+The locking design here supports the older (execlist based) execbuf mode, the
+newer VM_BIND mode, the VM_BIND mode with GPU page faults and possible future
+system allocator support (See `Shared Virtual Memory (SVM) support`_).
+The older execbuf mode and the newer VM_BIND mode without page faults manages
+residency of backing storage using dma_fence. The VM_BIND mode with page faults
+and the system allocator support do not use any dma_fence at all.
+
+VM_BIND locking order is as below.
+
+1) Lock-A: A vm_bind mutex will protect vm_bind lists. This lock is taken in
+   vm_bind/vm_unbind ioctl calls, in the execbuf path and while releasing the
+   mapping.
+
+   In future, when GPU page faults are supported, we can potentially use a
+   rwsem instead, so that multiple page fault handlers can take the read side
+   lock to lookup the mapping and hence can run in parallel.
+   The older execbuf mode of binding do not need this lock.
+
+2) Lock-B: The object's dma-resv lock will protect i915_vma state and needs to
+   be held while binding/unbinding a vma in the async worker and while updating
+   dma-resv fence list of an object. Note that private BOs of a VM will all
+   share a dma-resv object.
+
+   The future system allocator support will use the HMM prescribed locking
+   instead.
+
+3) Lock-C: Spinlock/s to protect some of the VM's lists like the list of
+   invalidated vmas (due to eviction and userptr invalidation) etc.
+
+When GPU page faults are supported, the execbuf path do not take any of these
+locks. There we will simply smash the new batch buffer address into the ring and
+then tell the scheduler run that. The lock taking only happens from the page
+fault handler, where we take lock-A in read mode, whichever lock-B we need to
+find the backing storage (dma_resv lock for gem objects, and hmm/core mm for
+system allocator) and some additional locks (lock-D) for taking care of page
+table races. Page fault mode should not need to ever manipulate the vm lists,
+so won't ever need lock-C.
+
+VM_BIND LRU handling
+---------------------
+We need to ensure VM_BIND mapped objects are properly LRU tagged to avoid
+performance degradation. We will also need support for bulk LRU movement of
+VM_BIND objects to avoid additional latencies in execbuf path.
+
+The page table pages are similar to VM_BIND mapped objects (See
+`Evictable page table allocations`_) and are maintained per VM and needs to
+be pinned in memory when VM is made active (ie., upon an execbuf call with
+that VM). So, bulk LRU movement of page table pages is also needed.
+
+VM_BIND dma_resv usage
+-----------------------
+Fences needs to be added to all VM_BIND mapped objects. During each execbuf
+submission, they are added with DMA_RESV_USAGE_BOOKKEEP usage to prevent
+over sync (See enum dma_resv_usage). One can override it with either
+DMA_RESV_USAGE_READ or DMA_RESV_USAGE_WRITE usage during explicit object
+dependency setting.
+
+Note that DRM_I915_GEM_WAIT and DRM_I915_GEM_BUSY ioctls do not check for
+DMA_RESV_USAGE_BOOKKEEP usage and hence should not be used for end of batch
+check. Instead, the execbuf3 out fence should be used for end of batch check
+(See struct drm_i915_gem_execbuffer3).
+
+Also, in VM_BIND mode, use dma-resv apis for determining object activeness
+(See dma_resv_test_signaled() and dma_resv_wait_timeout()) and do not use the
+older i915_vma active reference tracking which is deprecated. This should be
+easier to get it working with the current TTM backend.
+
+Mesa use case
+--------------
+VM_BIND can potentially reduce the CPU overhead in Mesa (both Vulkan and Iris),
+hence improving performance of CPU-bound applications. It also allows us to
+implement Vulkan's Sparse Resources. With increasing GPU hardware performance,
+reducing CPU overhead becomes more impactful.
+
+
+Other VM_BIND use cases
+========================
+
+Long running Compute contexts
+------------------------------
+Usage of dma-fence expects that they complete in reasonable amount of time.
+Compute on the other hand can be long running. Hence it is appropriate for
+compute to use user/memory fence (See `User/Memory Fence`_) and dma-fence usage
+must be limited to in-kernel consumption only.
+
+Where GPU page faults are not available, kernel driver upon buffer invalidation
+will initiate a suspend (preemption) of long running context, finish the
+invalidation, revalidate the BO and then resume the compute context. This is
+done by having a per-context preempt fence which is enabled when someone tries
+to wait on it and triggers the context preemption.
+
+User/Memory Fence
+~~~~~~~~~~~~~~~~~~
+User/Memory fence is a <address, value> pair. To signal the user fence, the
+specified value will be written at the specified virtual address and wakeup the
+waiting process. User fence can be signaled either by the GPU or kernel async
+worker (like upon bind completion). User can wait on a user fence with a new
+user fence wait ioctl.
+
+Here is some prior work on this:
+https://patchwork.freedesktop.org/patch/349417/
+
+Low Latency Submission
+~~~~~~~~~~~~~~~~~~~~~~~
+Allows compute UMD to directly submit GPU jobs instead of through execbuf
+ioctl. This is made possible by VM_BIND is not being synchronized against
+execbuf. VM_BIND allows bind/unbind of mappings required for the directly
+submitted jobs.
+
+Debugger
+---------
+With debug event interface user space process (debugger) is able to keep track
+of and act upon resources created by another process (debugged) and attached
+to GPU via vm_bind interface.
+
+GPU page faults
+----------------
+GPU page faults when supported (in future), will only be supported in the
+VM_BIND mode. While both the older execbuf mode and the newer VM_BIND mode of
+binding will require using dma-fence to ensure residency, the GPU page faults
+mode when supported, will not use any dma-fence as residency is purely managed
+by installing and removing/invalidating page table entries.
+
+Page level hints settings
+--------------------------
+VM_BIND allows any hints setting per mapping instead of per BO. Possible hints
+include placement and atomicity. Sub-BO level placement hint will be even more
+relevant with upcoming GPU on-demand page fault support.
+
+Page level Cache/CLOS settings
+-------------------------------
+VM_BIND allows cache/CLOS settings per mapping instead of per BO.
+
+Evictable page table allocations
+---------------------------------
+Make pagetable allocations evictable and manage them similar to VM_BIND
+mapped objects. Page table pages are similar to persistent mappings of a
+VM (difference here are that the page table pages will not have an i915_vma
+structure and after swapping pages back in, parent page link needs to be
+updated).
+
+Shared Virtual Memory (SVM) support
+------------------------------------
+VM_BIND interface can be used to map system memory directly (without gem BO
+abstraction) using the HMM interface. SVM is only supported with GPU page
+faults enabled.
+
+VM_BIND UAPI
+=============
+
+.. kernel-doc:: Documentation/gpu/rfc/i915_vm_bind.h
diff --git a/Documentation/gpu/rfc/index.rst b/Documentation/gpu/rfc/index.rst
index 91e93a705230..7d10c36b268d 100644
--- a/Documentation/gpu/rfc/index.rst
+++ b/Documentation/gpu/rfc/index.rst
@@ -23,3 +23,7 @@ host such documentation:
 .. toctree::
 
     i915_scheduler.rst
+
+.. toctree::
+
+    i915_vm_bind.rst
-- 
2.21.0.rc0.32.g243a4c7e27

