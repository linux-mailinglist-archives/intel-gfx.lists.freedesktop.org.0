Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 341F16C21A7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 20:36:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BABC10E2FF;
	Mon, 20 Mar 2023 19:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3978A10E2FF;
 Mon, 20 Mar 2023 19:36:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35977AA3D8;
 Mon, 20 Mar 2023 19:36:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Mon, 20 Mar 2023 19:36:54 -0000
Message-ID: <167934101421.26306.7865550523221753075@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230320100903.23588-1-nirmoy.das@intel.com>
In-Reply-To: <20230320100903.23588-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=3A=2C1/3=5D_drm/i915=3A_Add_a_fu?=
 =?utf-8?q?nction_to_mmap_framebuffer_obj?=
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

Series: series starting with [v2:,1/3] drm/i915: Add a function to mmap framebuffer obj
URL   : https://patchwork.freedesktop.org/series/115383/
State : warning

== Summary ==

Error: dim checkpatch failed
0d99170722bf drm/i915: Add a function to mmap framebuffer obj
-:132: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#132: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:1040:
+			GEM_BUG_ON(obj && obj->ops->mmap_ops);

-:138: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#138: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:1046:
+			GEM_BUG_ON(obj && !obj->ops->mmap_ops);

total: 0 errors, 2 warnings, 0 checks, 154 lines checked
6016bf427aed drm/i915/display: Add helper func to get intel_fbdev from drm_fb_helper
257f58fca939 drm/i915/display: Implement fb_mmap callback function


