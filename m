Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DE0304966
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 20:59:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31CAB6E41B;
	Tue, 26 Jan 2021 19:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05C0B6E41B;
 Tue, 26 Jan 2021 19:59:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E05A7AA916;
 Tue, 26 Jan 2021 19:59:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 26 Jan 2021 19:59:39 -0000
Message-ID: <161169117989.9812.8334907364030421600@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210126151259.253885-1-matthew.auld@intel.com>
In-Reply-To: <20210126151259.253885-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/8=5D_drm/i915=3A_make_local-?=
 =?utf-8?q?memory_probing_a_GT_operation?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [v2,1/8] drm/i915: make local-memory probing a GT operation
URL   : https://patchwork.freedesktop.org/series/86302/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4f36bd19aa5a drm/i915: make local-memory probing a GT operation
593235259519 drm/i915: setup the LMEM region
f029688cf4c2 drm/i915: reserve stolen for LMEM region
9ada9ccfa20b drm/i915: introduce mem->reserved
-:75: WARNING:LINE_SPACING: Missing a blank line after declarations
#75: FILE: drivers/gpu/drm/i915/selftests/intel_memory_region.c:167:
+	resource_size_t avail = resource_size(&mem->region);
+	I915_RND_STATE(prng);

total: 0 errors, 1 warnings, 0 checks, 123 lines checked
4c99ba37b47c drm/i915/dg1: Reserve first 1MB of local memory
8129c8335a23 drm/i915: allocate context from LMEM
497696b8f294 drm/i915: move engine scratch to LMEM
950c2dcb8f80 drm/i915: allocate cmd ring in lmem


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
