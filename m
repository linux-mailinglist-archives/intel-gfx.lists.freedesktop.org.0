Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F88D64AB63
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 00:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A483210E2C2;
	Mon, 12 Dec 2022 23:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59C9710E2BA;
 Mon, 12 Dec 2022 23:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670886939; x=1702422939;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VOgK8mogLEfeWn1YltnIOiM6BNoUZIGr8Dhjv6JenWA=;
 b=JNsS6DNXLSIqqWz9IeeKyVIvbyC6Bqh4jfBcWZt3dAc/tQamIZ7QFaug
 eyfUvBrOTUoHIDZMjCb3MrN+68r/RIdPxnOL/+F/cQO56TMb+NCDjp3VP
 HeNdzeG8JnAJ0uGioQObhdB3zsYdm/ShxsfDn+LUZLmq4jGNQB3vZYEvs
 nIi2G5RgqGSnuDglMpJyftTwbJN2G56FWvnvm/Da9UtTlmCzqZiS4S4lS
 uwxWRVTDcXLF9Je79aLRGETDSqLQk0sijwCO0YlknbJ4FKjRwUQ6RJiIK
 8Ta6zJ61WtcgJDxM5Z6zLtRBNDLO4En0tuVQjIt2w0D+vFyz4B55VIvxv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="380196409"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="380196409"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 15:15:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="679090368"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="679090368"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 15:15:38 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 12 Dec 2022 15:15:24 -0800
Message-Id: <20221212231527.2384-21-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20221212231527.2384-1-niranjana.vishwanathapura@intel.com>
References: <20221212231527.2384-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 20/23] drm/i915/vm_bind: Render VM_BIND
 documentation
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com, thomas.hellstrom@intel.com,
 matthew.auld@intel.com, daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update i915 documentation to include VM_BIND changes
and render all VM_BIND related documentation.

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 Documentation/gpu/i915.rst | 78 ++++++++++++++++++++++++++++----------
 1 file changed, 59 insertions(+), 19 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 60ea21734902..01429a8f0d6c 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -283,15 +283,18 @@ An Intel GPU has multiple engines. There are several engine types.
 
 The Intel GPU family is a family of integrated GPU's using Unified
 Memory Access. For having the GPU "do work", user space will feed the
-GPU batch buffers via one of the ioctls `DRM_IOCTL_I915_GEM_EXECBUFFER2`
-or `DRM_IOCTL_I915_GEM_EXECBUFFER2_WR`. Most such batchbuffers will
-instruct the GPU to perform work (for example rendering) and that work
-needs memory from which to read and memory to which to write. All memory
-is encapsulated within GEM buffer objects (usually created with the ioctl
-`DRM_IOCTL_I915_GEM_CREATE`). An ioctl providing a batchbuffer for the GPU
-to create will also list all GEM buffer objects that the batchbuffer reads
-and/or writes. For implementation details of memory management see
-`GEM BO Management Implementation Details`_.
+GPU batch buffers via one of the ioctls `DRM_IOCTL_I915_GEM_EXECBUFFER2`,
+`DRM_IOCTL_I915_GEM_EXECBUFFER2_WR` or `DRM_IOCTL_I915_GEM_EXECBUFFER3`.
+Most such batchbuffers will instruct the GPU to perform work (for example
+rendering) and that work needs memory from which to read and memory to
+which to write. All memory is encapsulated within GEM buffer objects
+(usually created with the ioctl `DRM_IOCTL_I915_GEM_CREATE`). In vm_bind mode
+(see `VM_BIND mode`_), the batch buffer and all the GEM buffer objects that
+it reads and/or writes should be bound with vm_bind ioctl before submitting
+the batch buffer to GPU. In legacy (non-VM_BIND) mode, an ioctl providing a
+batchbuffer for the GPU to create will also list all GEM buffer objects that
+the batchbuffer reads and/or writes. For implementation details of memory
+management see `GEM BO Management Implementation Details`_.
 
 The i915 driver allows user space to create a context via the ioctl
 `DRM_IOCTL_I915_GEM_CONTEXT_CREATE` which is identified by a 32-bit
@@ -309,8 +312,9 @@ In addition to the ordering guarantees, the kernel will restore GPU
 state via HW context when commands are issued to a context, this saves
 user space the need to restore (most of atleast) the GPU state at the
 start of each batchbuffer. The non-deprecated ioctls to submit batchbuffer
-work can pass that ID (in the lower bits of drm_i915_gem_execbuffer2::rsvd1)
-to identify what context to use with the command.
+work can pass that ID (drm_i915_gem_execbuffer3::ctx_id, or in the lower
+bits of drm_i915_gem_execbuffer2::rsvd1) to identify what context to use
+with the command.
 
 The GPU has its own memory management and address space. The kernel
 driver maintains the memory translation table for the GPU. For older
@@ -318,14 +322,14 @@ GPUs (i.e. those before Gen8), there is a single global such translation
 table, a global Graphics Translation Table (GTT). For newer generation
 GPUs each context has its own translation table, called Per-Process
 Graphics Translation Table (PPGTT). Of important note, is that although
-PPGTT is named per-process it is actually per context. When user space
-submits a batchbuffer, the kernel walks the list of GEM buffer objects
-used by the batchbuffer and guarantees that not only is the memory of
-each such GEM buffer object resident but it is also present in the
-(PP)GTT. If the GEM buffer object is not yet placed in the (PP)GTT,
-then it is given an address. Two consequences of this are: the kernel
-needs to edit the batchbuffer submitted to write the correct value of
-the GPU address when a GEM BO is assigned a GPU address and the kernel
+PPGTT is named per-process it is actually per context. In legacy
+(non-vm_bind) mode, when user space submits a batchbuffer, the kernel walks
+the list of GEM buffer objects used by the batchbuffer and guarantees that
+not only is the memory of each such GEM buffer object resident but it is
+also present in the (PP)GTT. If the GEM buffer object is not yet placed in
+the (PP)GTT, then it is given an address. Two consequences of this are: the
+kernel needs to edit the batchbuffer submitted to write the correct value
+of the GPU address when a GEM BO is assigned a GPU address and the kernel
 might evict a different GEM BO from the (PP)GTT to make address room
 for another GEM BO. Consequently, the ioctls submitting a batchbuffer
 for execution also include a list of all locations within buffers that
@@ -407,6 +411,15 @@ objects, which has the goal to make space in gpu virtual address spaces.
 .. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
    :internal:
 
+VM_BIND mode
+------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
+   :doc: VM_BIND/UNBIND ioctls
+
+.. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
+   :internal:
+
 Batchbuffer Parsing
 -------------------
 
@@ -419,11 +432,38 @@ Batchbuffer Parsing
 User Batchbuffer Execution
 --------------------------
 
+Client state
+~~~~~~~~~~~~
+
 .. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_context_types.h
 
+User command execution
+~~~~~~~~~~~~~~~~~~~~~~
+
 .. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
    :doc: User command execution
 
+User command execution in vm_bind mode
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+.. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c
+   :doc: User command execution in vm_bind mode
+
+Common execbuff utilities
+~~~~~~~~~~~~~~~~~~~~~~~~~
+
+.. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_execbuffer_common.h
+   :internal:
+
+.. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_execbuffer_common.c
+   :internal:
+
+Execbuf3 ioctl path
+~~~~~~~~~~~~~~~~~~~
+
+.. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c
+   :internal:
+
 Scheduling
 ----------
 .. kernel-doc:: drivers/gpu/drm/i915/i915_scheduler_types.h
-- 
2.21.0.rc0.32.g243a4c7e27

