Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBD7148E31
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 20:05:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FED72B73;
	Fri, 24 Jan 2020 19:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA2E172B73
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 19:05:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 11:05:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="216676126"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by orsmga007.jf.intel.com with ESMTP; 24 Jan 2020 11:05:03 -0800
Date: Fri, 24 Jan 2020 10:54:18 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200124185418.GE4253@nvishwa1-DESK.sc.intel.com>
References: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC 0/8] drm/i915/svm: [WIP] SVM runtime allocator
 support
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com, chris.p.wilson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 24, 2020 at 12:53:54AM -0800, Niranjana Vishwanathapura wrote:
>This patch series is WIP and not submission ready.
>It needs more clarity on locking strategy, synchronization between
>VM_BIND and execbuff paths, endless batch buffer support among other things.
>This patch series is in continuation of runtime allocator support in
>earlier posted series
>https://lists.freedesktop.org/archives/intel-gfx/2019-December/223480.html
>It is an initial dig to address (partially) some feedback received in patch
>[02/12] in above RFC series.
>Posting it for early feedback.
>
>Shared Virtual Memory (SVM) allows the programmer to use a single virtual
>address space which will be shared between threads executing on CPUs and GPUs.
>It abstracts away from the user the location of the backing memory, and hence
>simplifies the user programming model.
>
>This series supports SVM Runtime allocator that requires the driver to provide
>memory allocation and management interface through GEM buffer object (BO) interface.
>
>No change is done to execbuff command submission interface.
>The newly added ability to partial bind BOs is only supported via VM_BIND ioctl.
>

Forgot to add the point that any synchronization between objects involving bindings
added via VM_BIND should be explicitly handled by the user.

>The patch series includes
>- Support to partially bind gem buffer objects in ppgtt including aliasing
>- Support to mark VMs as active and wait for them to become idle
>- VM_BIND ioctl to bind an array of BO fragments to specified GPU VAs
>- Handle persistent vmas created through VM_BIND in the execbuff path
>- Support for user to enable/disable SVM support on a per VM basis
>- Initial dig at handling endless batch buffer
>
>Niranjana Vishwanathapura (8):
>  drm/i915/svm: Support partial binding in ppgtt
>  drm/i915/svm: Add support to mark VMs as active
>  drm/i915/svm: Introduce VM_BIND ioctl
>  drm/i915/svm: Manage SVM bindings added using VM_BIND
>  drm/i915/svm: Handle persistent vmas
>  drm/i915/svm: Skip vma_lookup for persistent vmas
>  drm/i915/svm: Add support to en/disable SVM
>  drm/i915/svm: VM_BIND for endless batch buffer
>
> drivers/gpu/drm/i915/Kconfig                  |  11 ++
> drivers/gpu/drm/i915/Makefile                 |   3 +
> drivers/gpu/drm/i915/gem/i915_gem_context.c   | 100 ++++++++++++++++++
> drivers/gpu/drm/i915/gem/i915_gem_context.h   |   4 +
> .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  36 +++++++
> drivers/gpu/drm/i915/gem/i915_gem_svm.c       |  94 ++++++++++++++++
> drivers/gpu/drm/i915/gem/i915_gem_svm.h       |  22 ++++
> drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  37 ++++---
> drivers/gpu/drm/i915/gt/intel_gtt.c           |  43 ++++++++
> drivers/gpu/drm/i915/gt/intel_gtt.h           |  41 ++++++-
> drivers/gpu/drm/i915/i915_drv.c               |  50 ++++++++-
> drivers/gpu/drm/i915/i915_drv.h               |  32 ++++++
> drivers/gpu/drm/i915/i915_gem_gtt.h           |  14 +++
> drivers/gpu/drm/i915/i915_getparam.c          |   3 +
> drivers/gpu/drm/i915/i915_vma.c               |  27 +++--
> drivers/gpu/drm/i915/i915_vma.h               |  17 ++-
> drivers/gpu/drm/i915/i915_vma_types.h         |   7 ++
> include/uapi/drm/i915_drm.h                   |  70 ++++++++++++
> 18 files changed, 583 insertions(+), 28 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_svm.c
> create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_svm.h
>
>-- 
>2.21.0.rc0.32.g243a4c7e27
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
