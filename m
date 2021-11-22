Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B36A3459561
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 20:13:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA6D789B57;
	Mon, 22 Nov 2021 19:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D8189B3C
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 19:13:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="235091372"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="235091372"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 11:13:32 -0800
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="509085022"
Received: from mikolajk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.6.157])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 11:13:29 -0800
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 20:13:13 +0100
Message-Id: <20211122191314.47254-1-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Ensure zero alignment on gens < 4
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In short - we want to enforce alignment == 0 for gen4+ GEM object
settings.

Before we merge this we need to inspect all UMD we expect can use
this. My investigation was narrowed to UMD code:

1. IGT
2. Mesa
3. Media-Driver
4. NEO
5. libdrm
6. xf86-intel-video

I would like to ask subsystem developers / maintainers to confirm
my analysis.

1. IGT:
   We've already removed / fixed most of the code where alignment != 0.
   What left was few multi-card subtests I'm not able to rewrite due
   to lack of such hw (nv + intel on the board).

2. Mesa:
   gallium/drivers/iris/iris_batch.c,iris_bufmgr.c - it uses softpinning
   only with alignment handled by allocator, so drm_i915_gem_exec_object2
   alignment field == 0.

   drivers/dri/i965/brw_batch.c,brw_screen.c - it uses relocations but
   it is supported by allocator, there're no direct alignment settings
   to value != 0.

   vulcan/anv_batch_chain.c: drm_i915_gem_exec_object2 objects are
   initialized within anv_execbuf_add_bo() and .alignment field
   is set to 0 there. There's no other place where I've found vulcan
   driver touches it both for softpinning / relocations.

3. Media-Driver:
   It contains modified libdrm code and three functions which do
   allocations, all of them uses mos_gem_bo_alloc_internal():
   - mos_gem_bo_alloc() - internally uses alignment == 0, that's ok
   - mos_gem_bo_alloc_tiled() - same as mos_gem_bo_alloc()
   - mos_gem_bo_alloc_for_render() - this one passes alignment from
     the caller and it may be != 0. But I haven't found practical
     usage of this function externally (using mos_bo_alloc_for_render()
     wrapper).
   There's another userptr allocation function: mos_bo_alloc_userptr()
   but it doesn't use alignment.

4. NEO:
   Uses softpinning only with alignment == 0:
   source/os_interface/linux/drm_buffer_object.cpp: 
   void BufferObject::fillExecObject() has execObject.alignment = 0;

5. libdrm:
   Corresponding functions to Media-Driver:
   drm_intel_bo_alloc(), drm_intel_bo_alloc_for_render(), 
   drm_intel_bo_alloc_userptr() and drm_intel_bo_alloc_tiled().
   Alignment field is used in drm_intel_bo_alloc_for_render()
   so couple not rewritten IGTs may encounter issue here (alignment
   passed in IGTs which still uses libdrm == 4096).

6. xf86-intel-video:
   src/sna/kgem.c: _kgem_submit() - alignment is set to 0 so this
   shouldn't be a problem.


Cc: Petri Latvala <petri.latvala@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Cc: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
Cc: Michal Mrozek <michal.mrozek@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>

Zbigniew Kempczyński (1):
  i915/gem/i915_gem_execbuffer: Disallow passing alignment

 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

-- 
2.26.0

