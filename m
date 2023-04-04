Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 899AB6D67D4
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 17:47:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B514E10E1E5;
	Tue,  4 Apr 2023 15:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B939610E6DA;
 Tue,  4 Apr 2023 15:47:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AFEA3A0078;
 Tue,  4 Apr 2023 15:47:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Tue, 04 Apr 2023 15:47:52 -0000
Message-ID: <168062327271.18900.11617567254763009421@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230404143100.10452-1-nirmoy.das@intel.com>
In-Reply-To: <20230404143100.10452-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/i915/ttm=3A_Add_I915=5FB?=
 =?utf-8?q?O=5FPREALLOC?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/5] drm/i915/ttm: Add I915_BO_PREALLOC
URL   : https://patchwork.freedesktop.org/series/116093/
State : warning

== Summary ==

Error: dim checkpatch failed
6d227bf78d21 drm/i915/ttm: Add I915_BO_PREALLOC
0afb53513af0 drm/i915/display: Set I915_BO_ALLOC_USER for fb
238ea32be324 drm/i915: Add a function to mmap framebuffer obj
-:131: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#131: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:1040:
+			GEM_BUG_ON(obj && obj->ops->mmap_ops);

-:137: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#137: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:1046:
+			GEM_BUG_ON(obj && !obj->ops->mmap_ops);

total: 0 errors, 2 warnings, 0 checks, 164 lines checked
ee0620d0ce67 drm/i915/display: Add helper func to get intel_fbdev from drm_fb_helper
062c04b1867c drm/i915/display: Implement fb_mmap callback function


