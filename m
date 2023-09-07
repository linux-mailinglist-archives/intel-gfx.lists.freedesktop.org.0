Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E08797D75
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 22:39:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04D4410E249;
	Thu,  7 Sep 2023 20:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B30410E09F;
 Thu,  7 Sep 2023 20:39:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50779AADF3;
 Thu,  7 Sep 2023 20:39:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Thu, 07 Sep 2023 20:39:01 -0000
Message-ID: <169411914129.17901.5809429352327227272@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230907173710.1574458-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230907173710.1574458-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Apply_Wa=5F16018031267_/_Wa=5F16018063123?=
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

Series: Apply Wa_16018031267 / Wa_16018063123
URL   : https://patchwork.freedesktop.org/series/123402/
State : warning

== Summary ==

Error: dim checkpatch failed
4dab503c0baa drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
-:10: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match
#10: 
Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

-:35: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'engine' - possible side-effects?
#35: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:86:
+#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
+	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 55), IP_VER(12, 71)) && \
+	engine->class == COPY_ENGINE_CLASS)

-:35: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'engine' may be better as '(engine)' to avoid precedence issues
#35: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:86:
+#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
+	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 55), IP_VER(12, 71)) && \
+	engine->class == COPY_ENGINE_CLASS)

-:68: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#68: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:836:
+	GEM_BUG_ON(lrc_ring_wa_bb_per_ctx(engine) == -1);

-:185: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#185: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1463:
+	GEM_BUG_ON(cs - start > I915_GTT_PAGE_SIZE / sizeof(*cs));

total: 0 errors, 3 warnings, 2 checks, 318 lines checked
a2dec98e3163 drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123


