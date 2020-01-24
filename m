Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF691479BE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 09:53:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8477B6FF93;
	Fri, 24 Jan 2020 08:53:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5105F6FF93;
 Fri, 24 Jan 2020 08:53:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 00:53:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="291577401"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2020 00:53:29 -0800
Date: Fri, 24 Jan 2020 00:42:44 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200124084244.GD4253@nvishwa1-DESK.sc.intel.com>
References: <20191213215614.24558-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213215614.24558-1-niranjana.vishwanathapura@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC v2 00/12] drm/i915/svm: Add SVM support
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
Cc: kenneth.w.graunke@intel.com, sanjay.k.kumar@intel.com,
 dri-devel@lists.freedesktop.org, jason.ekstrand@intel.com,
 dave.hansen@intel.com, jglisse@redhat.com, daniel.vetter@intel.com,
 dan.j.williams@intel.com, ira.weiny@intel.com, jgg@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 13, 2019 at 01:56:02PM -0800, Niranjana Vishwanathapura wrote:
>Shared Virtual Memory (SVM) allows the programmer to use a single virtual
>address space which will be shared between threads executing on CPUs and GPUs.
>It abstracts away from the user the location of the backing memory, and hence
>simplifies the user programming model.
>SVM supports two types of virtual memory allocation methods.
>Runtime allocator requires the driver to provide memory allocation and
>management interface, like buffer object (BO) interface.
>Whereas system allocator makes use of default OS memory allocation and
>management support like malloc().
>
>This patch series adds both SVM system and runtime allocator support
>to i915 driver.
>

I will split runtime allocator and system allocator support into separate
RFC series. I will prioritize runtime allocator support to address the
feedback in patch [02] of this series.

Thanks,
Niranjana

>The patch series includes
> - SVM support for both system and runtime allocation.
> - Plugin in device memory with the Linux kernel.
> - User API advertising SVM capability and configuration by user on per
>   vm basis.
> - User API to bind an address range or a BO with a device page table.
> - User API to prefetch an address range to device memory.
> - Implicit migration by moving pages or BOs back from device to host
>   memory upon CPU access.
> - CPU copy and blitter copy support for migrating the pages/BOs.
> - Large page mapping support
> - Page table dump support.
>
>References:
>https://www.kernel.org/doc/Documentation/vm/hmm.rst
>The HMM use cases in the Linux kernel.
>Test RFC series
>   "[RFC i-g-t 0/7] tests/i915/svm: Shared Virtual Memory (SVM) test"
>
>v2:
>- Use updated HMM API
>- HMM usage changes as per review feedback
>- UAPI name change as per review feedback
>- Reformat RFC series
>- Some minor fixes
>
>Niranjana Vishwanathapura (11):
>  drm/i915/svm: Add SVM documentation
>  drm/i915/svm: Runtime (RT) allocator support
>  drm/i915/svm: Page table update support for SVM
>  drm/i915/svm: Page table mirroring support
>  drm/i915/svm: Device memory support
>  drm/i915/svm: Implicitly migrate pages upon CPU fault
>  drm/i915/svm: Page copy support during migration
>  drm/i915/svm: Add functions to blitter copy SVM buffers
>  drm/i915/svm: Use blitter copy for migration
>  drm/i915/svm: Add support to en/disable SVM
>  drm/i915/svm: Add page table dump support
>
>Venkata Sandeep Dhanalakota (1):
>  drm/i915/svm: Implicitly migrate BOs upon CPU access
>
> Documentation/gpu/i915.rst                    |  29 +
> drivers/gpu/drm/i915/Kconfig                  |  23 +
> drivers/gpu/drm/i915/Kconfig.debug            |  14 +
> drivers/gpu/drm/i915/Makefile                 |   6 +
> drivers/gpu/drm/i915/gem/i915_gem_context.c   |  95 ++-
> drivers/gpu/drm/i915/gem/i915_gem_context.h   |   2 +
> .../gpu/drm/i915/gem/i915_gem_context_types.h |   1 +
> .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  65 +-
> drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  10 +
> drivers/gpu/drm/i915/gem/i915_gem_object.c    |  43 +-
> drivers/gpu/drm/i915/gem/i915_gem_object.h    |   6 +
> drivers/gpu/drm/i915/gem/i915_gem_svm.c       |  60 ++
> drivers/gpu/drm/i915/gem/i915_gem_svm.h       |  22 +
> drivers/gpu/drm/i915/gem/i915_gem_wait.c      |   2 +-
> drivers/gpu/drm/i915/i915_buddy.h             |  12 +
> drivers/gpu/drm/i915/i915_drv.c               |  31 +-
> drivers/gpu/drm/i915/i915_drv.h               |  32 +
> drivers/gpu/drm/i915/i915_gem_gtt.c           | 158 +++-
> drivers/gpu/drm/i915/i915_gem_gtt.h           |  41 +
> drivers/gpu/drm/i915/i915_getparam.c          |   3 +
> drivers/gpu/drm/i915/i915_svm.c               | 330 ++++++++
> drivers/gpu/drm/i915/i915_svm.h               |  71 ++
> drivers/gpu/drm/i915/i915_svm_copy.c          | 172 ++++
> drivers/gpu/drm/i915/i915_svm_devmem.c        | 781 ++++++++++++++++++
> drivers/gpu/drm/i915/intel_memory_region.c    |   4 -
> drivers/gpu/drm/i915/intel_memory_region.h    |  18 +
> drivers/gpu/drm/i915/intel_region_lmem.c      |  10 +
> include/uapi/drm/i915_drm.h                   |  73 ++
> 28 files changed, 2078 insertions(+), 36 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_svm.c
> create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_svm.h
> create mode 100644 drivers/gpu/drm/i915/i915_svm.c
> create mode 100644 drivers/gpu/drm/i915/i915_svm.h
> create mode 100644 drivers/gpu/drm/i915/i915_svm_copy.c
> create mode 100644 drivers/gpu/drm/i915/i915_svm_devmem.c
>
>-- 
>2.21.0.rc0.32.g243a4c7e27
>
>_______________________________________________
>dri-devel mailing list
>dri-devel@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/dri-devel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
