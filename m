Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BAC7DA460
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Oct 2023 02:34:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC0AF10E05E;
	Sat, 28 Oct 2023 00:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87AC910E05E;
 Sat, 28 Oct 2023 00:34:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D5AAA882E;
 Sat, 28 Oct 2023 00:34:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Sat, 28 Oct 2023 00:34:00 -0000
Message-ID: <169845324008.21161.10731924204231969926@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
In-Reply-To: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Apply_Wa=5F16018031267_/_Wa=5F16018063123_=28rev3=29?=
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

Series: Apply Wa_16018031267 / Wa_16018063123 (rev3)
URL   : https://patchwork.freedesktop.org/series/125650/
State : warning

== Summary ==

Error: dim checkpatch failed
b1c2cbf3e4bd drm/i915: Reserve some kernel space per vm
f174d3fba54d drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'engine' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:85:
+#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
+	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 55), IP_VER(12, 71)) && \
+	engine->class == COPY_ENGINE_CLASS && engine->instance == 0)

-:39: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'engine' may be better as '(engine)' to avoid precedence issues
#39: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:85:
+#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
+	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 55), IP_VER(12, 71)) && \
+	engine->class == COPY_ENGINE_CLASS && engine->instance == 0)

-:59: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#59: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:836:
+	GEM_BUG_ON(lrc_ring_wa_bb_per_ctx(engine) == -1);

-:174: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#174: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1498:
+	GEM_BUG_ON(cs - start > I915_GTT_PAGE_SIZE / sizeof(*cs));

total: 0 errors, 2 warnings, 2 checks, 168 lines checked
b2624ab576ca drm/i915/gt: add selftest to exercise WABB
0a29d6cdb3be drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123


