Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E01EF64AB4C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 00:16:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E13E10E2B4;
	Mon, 12 Dec 2022 23:15:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D2B310E2AA;
 Mon, 12 Dec 2022 23:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670886933; x=1702422933;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9jaKakhZjOscH/lS+piTWtOw8TOs8Fq++9F+3vk8uNA=;
 b=HzfUxWOrRtq6LiIzpqC7hH4HA/SZDYwigk7LWOC+l0ioousmWVKJDujd
 pFLJ88hAPsFlboSAkMh4Z3YVghE6maNBplggCC5tcuQdBg9OC7v7seEn7
 EdcCdcMqF6qodmawU+uLMU0P9ICpV++yuH9vdiT1Tq0jA036nOZMKeRC7
 Jn5cAsGSPBZ4UVc0xVYcivU/fKyYPR6zEce9wzHAPikD1cs3PRSgeJUSD
 z/1qatSOkha0SZOr8nGZI89nk9DF7FyiVZbCcbz1AiBImDNyIdFb8AbCj
 nnX9T9UeICLInU0TNIhnTwe1d0htyAkse1TwzlwoFY2jbqxPFEAgX9muz Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="380196336"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="380196336"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 15:15:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="679090292"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="679090292"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 15:15:32 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 12 Dec 2022 15:15:04 -0800
Message-Id: <20221212231527.2384-1-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 00/23] drm/i915/vm_bind: Add VM_BIND
 functionality
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

DRM_I915_GEM_VM_BIND/UNBIND ioctls allows UMD to bind/unbind GEM
buffer objects (BOs) or sections of a BOs at specified GPU virtual
addresses on a specified address space (VM). Multiple mappings can map
to the same physical pages of an object (aliasing). These mappings (also
referred to as persistent mappings) will be persistent across multiple
GPU submissions (execbuf calls) issued by the UMD, without user having
to provide a list of all required mappings during each submission (as
required by older execbuf mode).

This patch series support VM_BIND version 1, as described by the param
I915_PARAM_VM_BIND_VERSION.

Add new execbuf3 ioctl (I915_GEM_EXECBUFFER3) which only works in
vm_bind mode. The vm_bind mode only works with this new execbuf3 ioctl.
The new execbuf3 ioctl will not have any execlist support and all the
legacy support like relocations etc., are removed.

NOTEs:
* It is based on below VM_BIND design+uapi rfc.
  Documentation/gpu/rfc/i915_vm_bind.rst

* The IGT RFC series is posted as,
  [PATCH i-g-t v9 0/19] vm_bind: Add VM_BIND validation support

v2: Address various review comments
v3: Address review comments and other fixes
v4: Remove vm_unbind out fence uapi which is not supported yet,
    replace vm->vm_bind_mode check with i915_gem_vm_is_vm_bind_mode()
v5: Render kernel-doc, use PIN_NOEVICT, limit vm_bind support to
    non-recoverable faults
v6: Rebased, minor fixes, add reserved fields to drm_i915_gem_vm_bind,
    add new patch for async vm_unbind support
v7: Rebased, minor cleanups as per review feedback
v8: Rebased, add capture support
v9: Address capture support feedback from v8

Test-with: 20221212231254.2303-1-niranjana.vishwanathapura@intel.com

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

Niranjana Vishwanathapura (23):
  drm/i915/vm_bind: Expose vm lookup function
  drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()
  drm/i915/vm_bind: Expose i915_gem_object_max_page_size()
  drm/i915/vm_bind: Support partially mapped vma resource
  drm/i915/vm_bind: Add support to create persistent vma
  drm/i915/vm_bind: Implement bind and unbind of object
  drm/i915/vm_bind: Support for VM private BOs
  drm/i915/vm_bind: Add support to handle object evictions
  drm/i915/vm_bind: Support persistent vma activeness tracking
  drm/i915/vm_bind: Add out fence support
  drm/i915/vm_bind: Abstract out common execbuf functions
  drm/i915/vm_bind: Use common execbuf functions in execbuf path
  drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
  drm/i915/vm_bind: Update i915_vma_verify_bind_complete()
  drm/i915/vm_bind: Expose i915_request_await_bind()
  drm/i915/vm_bind: Handle persistent vmas in execbuf3
  drm/i915/vm_bind: userptr dma-resv changes
  drm/i915/vm_bind: Limit vm_bind mode to non-recoverable contexts
  drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode
  drm/i915/vm_bind: Render VM_BIND documentation
  drm/i915/vm_bind: Async vm_unbind support
  drm/i915/vm_bind: Properly build persistent map sg table
  drm/i915/vm_bind: Support capture of persistent mappings

 Documentation/gpu/i915.rst                    |  78 +-
 drivers/gpu/drm/i915/Makefile                 |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  43 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  17 +
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  72 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |   6 +
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 522 +----------
 .../gpu/drm/i915/gem/i915_gem_execbuffer3.c   | 872 ++++++++++++++++++
 .../drm/i915/gem/i915_gem_execbuffer_common.c | 671 ++++++++++++++
 .../drm/i915/gem/i915_gem_execbuffer_common.h |  76 ++
 drivers/gpu/drm/i915/gem/i915_gem_ioctls.h    |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   2 +
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   6 +
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |  19 +
 drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h   |  30 +
 .../drm/i915/gem/i915_gem_vm_bind_object.c    | 463 ++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  22 +
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  28 +
 drivers/gpu/drm/i915/i915_driver.c            |   4 +
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_gem_gtt.c           |  39 +
 drivers/gpu/drm/i915/i915_gem_gtt.h           |   3 +
 drivers/gpu/drm/i915/i915_getparam.c          |   3 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |  18 +-
 drivers/gpu/drm/i915/i915_sw_fence.c          |  28 +-
 drivers/gpu/drm/i915/i915_sw_fence.h          |  23 +-
 drivers/gpu/drm/i915/i915_vma.c               | 308 ++++++-
 drivers/gpu/drm/i915/i915_vma.h               |  70 +-
 drivers/gpu/drm/i915/i915_vma_types.h         |  43 +
 include/uapi/drm/i915_drm.h                   | 281 +++++-
 31 files changed, 3205 insertions(+), 552 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_execbuffer_common.c
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_execbuffer_common.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c

-- 
2.21.0.rc0.32.g243a4c7e27

