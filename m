Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6F3303A0F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 11:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E69D89DBD;
	Tue, 26 Jan 2021 10:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7352289D7F;
 Tue, 26 Jan 2021 10:20:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DCB3A9932;
 Tue, 26 Jan 2021 10:20:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 26 Jan 2021 10:20:14 -0000
Message-ID: <161165641444.9811.3762625862799134731@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210126094612.163290-1-matthew.auld@intel.com>
In-Reply-To: <20210126094612.163290-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915=3A_setup_the_LMEM_r?=
 =?utf-8?q?egion?=
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

Series: series starting with [1/7] drm/i915: setup the LMEM region
URL   : https://patchwork.freedesktop.org/series/86294/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
684488fc1838 drm/i915: setup the LMEM region
-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/gpu/drm/i915/gt/intel_region_lmem.c:164:
+		drm_dbg(&i915->drm, "Intel graphics LMEM IO start: %pa\n",
+			 &mem->io_start);

total: 0 errors, 0 warnings, 1 checks, 74 lines checked
bebbd470cc5f drm/i915: reserve stolen for LMEM region
47e9cf146fbe drm/i915: introduce mem->reserved
-:75: WARNING:LINE_SPACING: Missing a blank line after declarations
#75: FILE: drivers/gpu/drm/i915/selftests/intel_memory_region.c:167:
+	resource_size_t avail = resource_size(&mem->region);
+	I915_RND_STATE(prng);

total: 0 errors, 1 warnings, 0 checks, 123 lines checked
f8db1a26bbd9 drm/i915/dg1: Reserve first 1MB of local memory
-:48: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#48: FILE: drivers/gpu/drm/i915/gt/intel_region_lmem.c:158:
+{
+

total: 0 errors, 0 warnings, 1 checks, 65 lines checked
41cf705692f0 drm/i915: allocate context from LMEM
85f01e9f4886 drm/i915: move engine scratch to LMEM
bf5fa03c9cc5 drm/i915: allocate cmd ring in lmem


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
