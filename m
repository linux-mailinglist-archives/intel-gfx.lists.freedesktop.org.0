Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yfvgGNzk5WlkpAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:33:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C93E84282D7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:33:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E4E710E349;
	Mon, 20 Apr 2026 08:33:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="L6gJLej4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C544210E112;
 Mon, 20 Apr 2026 08:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1776674006;
 bh=0V+s06oPYxs120RoE2hplvvqSVMu3C/CU9Gel4Jtg/4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L6gJLej4cj1XsxDJmEEyl9wbUSXfWHe1heTnWIQ2vQMIJoC6WSaa+Zm75ajOB5o/d
 XOIQx3oYhfabzcw7CweguDDdB+v2GZezSwSFtKqQXo80FBCfcgVi/E2cGWGMjV2LQ/
 7Lfs2Wki/R40h3xNLp0qRzeXjzGcxGtVEPiUlJjDtJEsFjfo+nxVnEBUvgMced5gPz
 WcW95KuC55tc5q/85KlVSZDLVVlyZp7WePoJ8JHpIO4TD+YSxndAe1wdKlIHO2fgoI
 oEVQzNWlih6zFW77X03S8ZSWfKfsNwX2HFSDYLGMTEXIshnTMZDSobK/MUAQ93LNKW
 FhfMphYrRdGhg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 2/4] drm/doc/rfc: Remove i915_vm_bind.
Date: Mon, 20 Apr 2026 10:33:20 +0200
Message-ID: <20260420083318.92038-8-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420083318.92038-6-dev@lankhorst.se>
References: <20260420083318.92038-6-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[patchwork.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:email,lankhorst.se:dkim,lankhorst.se:mid,lwn.net:url];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Queue-Id: C93E84282D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

i915 supports soft pinning, and the xe driver
has been created to properly support VM_BIND instead.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 Documentation/gpu/rfc/i915_vm_bind.h   | 290 -------------------------
 Documentation/gpu/rfc/i915_vm_bind.rst | 245 ---------------------
 Documentation/gpu/rfc/index.rst        |   4 -
 3 files changed, 539 deletions(-)
 delete mode 100644 Documentation/gpu/rfc/i915_vm_bind.h
 delete mode 100644 Documentation/gpu/rfc/i915_vm_bind.rst

diff --git a/Documentation/gpu/rfc/i915_vm_bind.h b/Documentation/gpu/rfc/i915_vm_bind.h
deleted file mode 100644
index bc26dc1261041..0000000000000
--- a/Documentation/gpu/rfc/i915_vm_bind.h
+++ /dev/null
@@ -1,290 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2022 Intel Corporation
- */
-
-/**
- * DOC: I915_PARAM_VM_BIND_VERSION
- *
- * VM_BIND feature version supported.
- * See typedef drm_i915_getparam_t param.
- *
- * Specifies the VM_BIND feature version supported.
- * The following versions of VM_BIND have been defined:
- *
- * 0: No VM_BIND support.
- *
- * 1: In VM_UNBIND calls, the UMD must specify the exact mappings created
- *    previously with VM_BIND, the ioctl will not support unbinding multiple
- *    mappings or splitting them. Similarly, VM_BIND calls will not replace
- *    any existing mappings.
- *
- * 2: The restrictions on unbinding partial or multiple mappings is
- *    lifted, Similarly, binding will replace any mappings in the given range.
- *
- * See struct drm_i915_gem_vm_bind and struct drm_i915_gem_vm_unbind.
- */
-#define I915_PARAM_VM_BIND_VERSION	57
-
-/**
- * DOC: I915_VM_CREATE_FLAGS_USE_VM_BIND
- *
- * Flag to opt-in for VM_BIND mode of binding during VM creation.
- * See struct drm_i915_gem_vm_control flags.
- *
- * The older execbuf2 ioctl will not support VM_BIND mode of operation.
- * For VM_BIND mode, we have new execbuf3 ioctl which will not accept any
- * execlist (See struct drm_i915_gem_execbuffer3 for more details).
- */
-#define I915_VM_CREATE_FLAGS_USE_VM_BIND	(1 << 0)
-
-/* VM_BIND related ioctls */
-#define DRM_I915_GEM_VM_BIND		0x3d
-#define DRM_I915_GEM_VM_UNBIND		0x3e
-#define DRM_I915_GEM_EXECBUFFER3	0x3f
-
-#define DRM_IOCTL_I915_GEM_VM_BIND		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct drm_i915_gem_vm_bind)
-#define DRM_IOCTL_I915_GEM_VM_UNBIND		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_UNBIND, struct drm_i915_gem_vm_bind)
-#define DRM_IOCTL_I915_GEM_EXECBUFFER3		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_EXECBUFFER3, struct drm_i915_gem_execbuffer3)
-
-/**
- * struct drm_i915_gem_timeline_fence - An input or output timeline fence.
- *
- * The operation will wait for input fence to signal.
- *
- * The returned output fence will be signaled after the completion of the
- * operation.
- */
-struct drm_i915_gem_timeline_fence {
-	/** @handle: User's handle for a drm_syncobj to wait on or signal. */
-	__u32 handle;
-
-	/**
-	 * @flags: Supported flags are:
-	 *
-	 * I915_TIMELINE_FENCE_WAIT:
-	 * Wait for the input fence before the operation.
-	 *
-	 * I915_TIMELINE_FENCE_SIGNAL:
-	 * Return operation completion fence as output.
-	 */
-	__u32 flags;
-#define I915_TIMELINE_FENCE_WAIT            (1 << 0)
-#define I915_TIMELINE_FENCE_SIGNAL          (1 << 1)
-#define __I915_TIMELINE_FENCE_UNKNOWN_FLAGS (-(I915_TIMELINE_FENCE_SIGNAL << 1))
-
-	/**
-	 * @value: A point in the timeline.
-	 * Value must be 0 for a binary drm_syncobj. A Value of 0 for a
-	 * timeline drm_syncobj is invalid as it turns a drm_syncobj into a
-	 * binary one.
-	 */
-	__u64 value;
-};
-
-/**
- * struct drm_i915_gem_vm_bind - VA to object mapping to bind.
- *
- * This structure is passed to VM_BIND ioctl and specifies the mapping of GPU
- * virtual address (VA) range to the section of an object that should be bound
- * in the device page table of the specified address space (VM).
- * The VA range specified must be unique (ie., not currently bound) and can
- * be mapped to whole object or a section of the object (partial binding).
- * Multiple VA mappings can be created to the same section of the object
- * (aliasing).
- *
- * The @start, @offset and @length must be 4K page aligned. However the DG2 has
- * 64K page size for device local memory and has compact page table. On that
- * platform, for binding device local-memory objects, the @start, @offset and
- * @length must be 64K aligned. Also, UMDs should not mix the local memory 64K
- * page and the system memory 4K page bindings in the same 2M range.
- *
- * Error code -EINVAL will be returned if @start, @offset and @length are not
- * properly aligned. In version 1 (See I915_PARAM_VM_BIND_VERSION), error code
- * -ENOSPC will be returned if the VA range specified can't be reserved.
- *
- * VM_BIND/UNBIND ioctl calls executed on different CPU threads concurrently
- * are not ordered. Furthermore, parts of the VM_BIND operation can be done
- * asynchronously, if valid @fence is specified.
- */
-struct drm_i915_gem_vm_bind {
-	/** @vm_id: VM (address space) id to bind */
-	__u32 vm_id;
-
-	/** @handle: Object handle */
-	__u32 handle;
-
-	/** @start: Virtual Address start to bind */
-	__u64 start;
-
-	/** @offset: Offset in object to bind */
-	__u64 offset;
-
-	/** @length: Length of mapping to bind */
-	__u64 length;
-
-	/**
-	 * @flags: Supported flags are:
-	 *
-	 * I915_GEM_VM_BIND_CAPTURE:
-	 * Capture this mapping in the dump upon GPU error.
-	 *
-	 * Note that @fence carries its own flags.
-	 */
-	__u64 flags;
-#define I915_GEM_VM_BIND_CAPTURE	(1 << 0)
-
-	/**
-	 * @fence: Timeline fence for bind completion signaling.
-	 *
-	 * Timeline fence is of format struct drm_i915_gem_timeline_fence.
-	 *
-	 * It is an out fence, hence using I915_TIMELINE_FENCE_WAIT flag
-	 * is invalid, and an error will be returned.
-	 *
-	 * If I915_TIMELINE_FENCE_SIGNAL flag is not set, then out fence
-	 * is not requested and binding is completed synchronously.
-	 */
-	struct drm_i915_gem_timeline_fence fence;
-
-	/**
-	 * @extensions: Zero-terminated chain of extensions.
-	 *
-	 * For future extensions. See struct i915_user_extension.
-	 */
-	__u64 extensions;
-};
-
-/**
- * struct drm_i915_gem_vm_unbind - VA to object mapping to unbind.
- *
- * This structure is passed to VM_UNBIND ioctl and specifies the GPU virtual
- * address (VA) range that should be unbound from the device page table of the
- * specified address space (VM). VM_UNBIND will force unbind the specified
- * range from device page table without waiting for any GPU job to complete.
- * It is UMDs responsibility to ensure the mapping is no longer in use before
- * calling VM_UNBIND.
- *
- * If the specified mapping is not found, the ioctl will simply return without
- * any error.
- *
- * VM_BIND/UNBIND ioctl calls executed on different CPU threads concurrently
- * are not ordered. Furthermore, parts of the VM_UNBIND operation can be done
- * asynchronously, if valid @fence is specified.
- */
-struct drm_i915_gem_vm_unbind {
-	/** @vm_id: VM (address space) id to bind */
-	__u32 vm_id;
-
-	/** @rsvd: Reserved, MBZ */
-	__u32 rsvd;
-
-	/** @start: Virtual Address start to unbind */
-	__u64 start;
-
-	/** @length: Length of mapping to unbind */
-	__u64 length;
-
-	/**
-	 * @flags: Currently reserved, MBZ.
-	 *
-	 * Note that @fence carries its own flags.
-	 */
-	__u64 flags;
-
-	/**
-	 * @fence: Timeline fence for unbind completion signaling.
-	 *
-	 * Timeline fence is of format struct drm_i915_gem_timeline_fence.
-	 *
-	 * It is an out fence, hence using I915_TIMELINE_FENCE_WAIT flag
-	 * is invalid, and an error will be returned.
-	 *
-	 * If I915_TIMELINE_FENCE_SIGNAL flag is not set, then out fence
-	 * is not requested and unbinding is completed synchronously.
-	 */
-	struct drm_i915_gem_timeline_fence fence;
-
-	/**
-	 * @extensions: Zero-terminated chain of extensions.
-	 *
-	 * For future extensions. See struct i915_user_extension.
-	 */
-	__u64 extensions;
-};
-
-/**
- * struct drm_i915_gem_execbuffer3 - Structure for DRM_I915_GEM_EXECBUFFER3
- * ioctl.
- *
- * DRM_I915_GEM_EXECBUFFER3 ioctl only works in VM_BIND mode and VM_BIND mode
- * only works with this ioctl for submission.
- * See I915_VM_CREATE_FLAGS_USE_VM_BIND.
- */
-struct drm_i915_gem_execbuffer3 {
-	/**
-	 * @ctx_id: Context id
-	 *
-	 * Only contexts with user engine map are allowed.
-	 */
-	__u32 ctx_id;
-
-	/**
-	 * @engine_idx: Engine index
-	 *
-	 * An index in the user engine map of the context specified by @ctx_id.
-	 */
-	__u32 engine_idx;
-
-	/**
-	 * @batch_address: Batch gpu virtual address/es.
-	 *
-	 * For normal submission, it is the gpu virtual address of the batch
-	 * buffer. For parallel submission, it is a pointer to an array of
-	 * batch buffer gpu virtual addresses with array size equal to the
-	 * number of (parallel) engines involved in that submission (See
-	 * struct i915_context_engines_parallel_submit).
-	 */
-	__u64 batch_address;
-
-	/** @flags: Currently reserved, MBZ */
-	__u64 flags;
-
-	/** @rsvd1: Reserved, MBZ */
-	__u32 rsvd1;
-
-	/** @fence_count: Number of fences in @timeline_fences array. */
-	__u32 fence_count;
-
-	/**
-	 * @timeline_fences: Pointer to an array of timeline fences.
-	 *
-	 * Timeline fences are of format struct drm_i915_gem_timeline_fence.
-	 */
-	__u64 timeline_fences;
-
-	/** @rsvd2: Reserved, MBZ */
-	__u64 rsvd2;
-
-	/**
-	 * @extensions: Zero-terminated chain of extensions.
-	 *
-	 * For future extensions. See struct i915_user_extension.
-	 */
-	__u64 extensions;
-};
-
-/**
- * struct drm_i915_gem_create_ext_vm_private - Extension to make the object
- * private to the specified VM.
- *
- * See struct drm_i915_gem_create_ext.
- */
-struct drm_i915_gem_create_ext_vm_private {
-#define I915_GEM_CREATE_EXT_VM_PRIVATE		2
-	/** @base: Extension link. See struct i915_user_extension. */
-	struct i915_user_extension base;
-
-	/** @vm_id: Id of the VM to which the object is private */
-	__u32 vm_id;
-};
diff --git a/Documentation/gpu/rfc/i915_vm_bind.rst b/Documentation/gpu/rfc/i915_vm_bind.rst
deleted file mode 100644
index 0b3b525ac6200..0000000000000
--- a/Documentation/gpu/rfc/i915_vm_bind.rst
+++ /dev/null
@@ -1,245 +0,0 @@
-==========================================
-I915 VM_BIND feature design and use cases
-==========================================
-
-VM_BIND feature
-================
-DRM_I915_GEM_VM_BIND/UNBIND ioctls allows UMD to bind/unbind GEM buffer
-objects (BOs) or sections of a BOs at specified GPU virtual addresses on a
-specified address space (VM). These mappings (also referred to as persistent
-mappings) will be persistent across multiple GPU submissions (execbuf calls)
-issued by the UMD, without user having to provide a list of all required
-mappings during each submission (as required by older execbuf mode).
-
-The VM_BIND/UNBIND calls allow UMDs to request a timeline out fence for
-signaling the completion of bind/unbind operation.
-
-VM_BIND feature is advertised to user via I915_PARAM_VM_BIND_VERSION.
-User has to opt-in for VM_BIND mode of binding for an address space (VM)
-during VM creation time via I915_VM_CREATE_FLAGS_USE_VM_BIND extension.
-
-VM_BIND/UNBIND ioctl calls executed on different CPU threads concurrently are
-not ordered. Furthermore, parts of the VM_BIND/UNBIND operations can be done
-asynchronously, when valid out fence is specified.
-
-VM_BIND features include:
-
-* Multiple Virtual Address (VA) mappings can map to the same physical pages
-  of an object (aliasing).
-* VA mapping can map to a partial section of the BO (partial binding).
-* Support capture of persistent mappings in the dump upon GPU error.
-* Support for userptr gem objects (no special uapi is required for this).
-
-TLB flush consideration
-------------------------
-The i915 driver flushes the TLB for each submission and when an object's
-pages are released. The VM_BIND/UNBIND operation will not do any additional
-TLB flush. Any VM_BIND mapping added will be in the working set for subsequent
-submissions on that VM and will not be in the working set for currently running
-batches (which would require additional TLB flushes, which is not supported).
-
-Execbuf ioctl in VM_BIND mode
--------------------------------
-A VM in VM_BIND mode will not support older execbuf mode of binding.
-The execbuf ioctl handling in VM_BIND mode differs significantly from the
-older execbuf2 ioctl (See struct drm_i915_gem_execbuffer2).
-Hence, a new execbuf3 ioctl has been added to support VM_BIND mode. (See
-struct drm_i915_gem_execbuffer3). The execbuf3 ioctl will not accept any
-execlist. Hence, no support for implicit sync. It is expected that the below
-work will be able to support requirements of object dependency setting in all
-use cases:
-
-"dma-buf: Add an API for exporting sync files"
-(https://lwn.net/Articles/859290/)
-
-The new execbuf3 ioctl only works in VM_BIND mode and the VM_BIND mode only
-works with execbuf3 ioctl for submission. All BOs mapped on that VM (through
-VM_BIND call) at the time of execbuf3 call are deemed required for that
-submission.
-
-The execbuf3 ioctl directly specifies the batch addresses instead of as
-object handles as in execbuf2 ioctl. The execbuf3 ioctl will also not
-support many of the older features like in/out/submit fences, fence array,
-default gem context and many more (See struct drm_i915_gem_execbuffer3).
-
-In VM_BIND mode, VA allocation is completely managed by the user instead of
-the i915 driver. Hence all VA assignment, eviction are not applicable in
-VM_BIND mode. Also, for determining object activeness, VM_BIND mode will not
-be using the i915_vma active reference tracking. It will instead use dma-resv
-object for that (See `VM_BIND dma_resv usage`_).
-
-So, a lot of existing code supporting execbuf2 ioctl, like relocations, VA
-evictions, vma lookup table, implicit sync, vma active reference tracking etc.,
-are not applicable for execbuf3 ioctl. Hence, all execbuf3 specific handling
-should be in a separate file and only functionalities common to these ioctls
-can be the shared code where possible.
-
-VM_PRIVATE objects
--------------------
-By default, BOs can be mapped on multiple VMs and can also be dma-buf
-exported. Hence these BOs are referred to as Shared BOs.
-During each execbuf submission, the request fence must be added to the
-dma-resv fence list of all shared BOs mapped on the VM.
-
-VM_BIND feature introduces an optimization where user can create BO which
-is private to a specified VM via I915_GEM_CREATE_EXT_VM_PRIVATE flag during
-BO creation. Unlike Shared BOs, these VM private BOs can only be mapped on
-the VM they are private to and can't be dma-buf exported.
-All private BOs of a VM share the dma-resv object. Hence during each execbuf
-submission, they need only one dma-resv fence list updated. Thus, the fast
-path (where required mappings are already bound) submission latency is O(1)
-w.r.t the number of VM private BOs.
-
-VM_BIND locking hierarchy
--------------------------
-The locking design here supports the older (execlist based) execbuf mode, the
-newer VM_BIND mode, the VM_BIND mode with GPU page faults and possible future
-system allocator support (See `Shared Virtual Memory (SVM) support`_).
-The older execbuf mode and the newer VM_BIND mode without page faults manages
-residency of backing storage using dma_fence. The VM_BIND mode with page faults
-and the system allocator support do not use any dma_fence at all.
-
-VM_BIND locking order is as below.
-
-1) Lock-A: A vm_bind mutex will protect vm_bind lists. This lock is taken in
-   vm_bind/vm_unbind ioctl calls, in the execbuf path and while releasing the
-   mapping.
-
-   In future, when GPU page faults are supported, we can potentially use a
-   rwsem instead, so that multiple page fault handlers can take the read side
-   lock to lookup the mapping and hence can run in parallel.
-   The older execbuf mode of binding do not need this lock.
-
-2) Lock-B: The object's dma-resv lock will protect i915_vma state and needs to
-   be held while binding/unbinding a vma in the async worker and while updating
-   dma-resv fence list of an object. Note that private BOs of a VM will all
-   share a dma-resv object.
-
-   The future system allocator support will use the HMM prescribed locking
-   instead.
-
-3) Lock-C: Spinlock/s to protect some of the VM's lists like the list of
-   invalidated vmas (due to eviction and userptr invalidation) etc.
-
-When GPU page faults are supported, the execbuf path do not take any of these
-locks. There we will simply smash the new batch buffer address into the ring and
-then tell the scheduler run that. The lock taking only happens from the page
-fault handler, where we take lock-A in read mode, whichever lock-B we need to
-find the backing storage (dma_resv lock for gem objects, and hmm/core mm for
-system allocator) and some additional locks (lock-D) for taking care of page
-table races. Page fault mode should not need to ever manipulate the vm lists,
-so won't ever need lock-C.
-
-VM_BIND LRU handling
----------------------
-We need to ensure VM_BIND mapped objects are properly LRU tagged to avoid
-performance degradation. We will also need support for bulk LRU movement of
-VM_BIND objects to avoid additional latencies in execbuf path.
-
-The page table pages are similar to VM_BIND mapped objects (See
-`Evictable page table allocations`_) and are maintained per VM and needs to
-be pinned in memory when VM is made active (ie., upon an execbuf call with
-that VM). So, bulk LRU movement of page table pages is also needed.
-
-VM_BIND dma_resv usage
------------------------
-Fences needs to be added to all VM_BIND mapped objects. During each execbuf
-submission, they are added with DMA_RESV_USAGE_BOOKKEEP usage to prevent
-over sync (See enum dma_resv_usage). One can override it with either
-DMA_RESV_USAGE_READ or DMA_RESV_USAGE_WRITE usage during explicit object
-dependency setting.
-
-Note that DRM_I915_GEM_WAIT and DRM_I915_GEM_BUSY ioctls do not check for
-DMA_RESV_USAGE_BOOKKEEP usage and hence should not be used for end of batch
-check. Instead, the execbuf3 out fence should be used for end of batch check
-(See struct drm_i915_gem_execbuffer3).
-
-Also, in VM_BIND mode, use dma-resv apis for determining object activeness
-(See dma_resv_test_signaled() and dma_resv_wait_timeout()) and do not use the
-older i915_vma active reference tracking which is deprecated. This should be
-easier to get it working with the current TTM backend.
-
-Mesa use case
---------------
-VM_BIND can potentially reduce the CPU overhead in Mesa (both Vulkan and Iris),
-hence improving performance of CPU-bound applications. It also allows us to
-implement Vulkan's Sparse Resources. With increasing GPU hardware performance,
-reducing CPU overhead becomes more impactful.
-
-
-Other VM_BIND use cases
-========================
-
-Long running Compute contexts
-------------------------------
-Usage of dma-fence expects that they complete in reasonable amount of time.
-Compute on the other hand can be long running. Hence it is appropriate for
-compute to use user/memory fence (See `User/Memory Fence`_) and dma-fence usage
-must be limited to in-kernel consumption only.
-
-Where GPU page faults are not available, kernel driver upon buffer invalidation
-will initiate a suspend (preemption) of long running context, finish the
-invalidation, revalidate the BO and then resume the compute context. This is
-done by having a per-context preempt fence which is enabled when someone tries
-to wait on it and triggers the context preemption.
-
-User/Memory Fence
-~~~~~~~~~~~~~~~~~~
-User/Memory fence is a <address, value> pair. To signal the user fence, the
-specified value will be written at the specified virtual address and wakeup the
-waiting process. User fence can be signaled either by the GPU or kernel async
-worker (like upon bind completion). User can wait on a user fence with a new
-user fence wait ioctl.
-
-Here is some prior work on this:
-https://patchwork.freedesktop.org/patch/349417/
-
-Low Latency Submission
-~~~~~~~~~~~~~~~~~~~~~~~
-Allows compute UMD to directly submit GPU jobs instead of through execbuf
-ioctl. This is made possible by VM_BIND is not being synchronized against
-execbuf. VM_BIND allows bind/unbind of mappings required for the directly
-submitted jobs.
-
-Debugger
----------
-With debug event interface user space process (debugger) is able to keep track
-of and act upon resources created by another process (debugged) and attached
-to GPU via vm_bind interface.
-
-GPU page faults
-----------------
-GPU page faults when supported (in future), will only be supported in the
-VM_BIND mode. While both the older execbuf mode and the newer VM_BIND mode of
-binding will require using dma-fence to ensure residency, the GPU page faults
-mode when supported, will not use any dma-fence as residency is purely managed
-by installing and removing/invalidating page table entries.
-
-Page level hints settings
---------------------------
-VM_BIND allows any hints setting per mapping instead of per BO. Possible hints
-include placement and atomicity. Sub-BO level placement hint will be even more
-relevant with upcoming GPU on-demand page fault support.
-
-Page level Cache/CLOS settings
--------------------------------
-VM_BIND allows cache/CLOS settings per mapping instead of per BO.
-
-Evictable page table allocations
----------------------------------
-Make pagetable allocations evictable and manage them similar to VM_BIND
-mapped objects. Page table pages are similar to persistent mappings of a
-VM (difference here are that the page table pages will not have an i915_vma
-structure and after swapping pages back in, parent page link needs to be
-updated).
-
-Shared Virtual Memory (SVM) support
-------------------------------------
-VM_BIND interface can be used to map system memory directly (without gem BO
-abstraction) using the HMM interface. SVM is only supported with GPU page
-faults enabled.
-
-VM_BIND UAPI
-=============
-
-.. kernel-doc:: Documentation/gpu/rfc/i915_vm_bind.h
diff --git a/Documentation/gpu/rfc/index.rst b/Documentation/gpu/rfc/index.rst
index 8313194af0683..1256dde0fb3b1 100644
--- a/Documentation/gpu/rfc/index.rst
+++ b/Documentation/gpu/rfc/index.rst
@@ -28,9 +28,5 @@ host such documentation:
 
     i915_small_bar.rst
 
-.. toctree::
-
-    i915_vm_bind.rst
-
 .. toctree::
     color_pipeline.rst
-- 
2.53.0

