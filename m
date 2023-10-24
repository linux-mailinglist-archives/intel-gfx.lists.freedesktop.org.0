Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AE67D5BC5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 21:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F0110E4A6;
	Tue, 24 Oct 2023 19:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D693710E4A6;
 Tue, 24 Oct 2023 19:48:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2A45A7DFF;
 Tue, 24 Oct 2023 19:48:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Tue, 24 Oct 2023 19:48:02 -0000
Message-ID: <169817688283.18362.3383462716579188419@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
In-Reply-To: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/125474/
State : warning

== Summary ==

Error: dim checkpatch failed
b452e380d134 drm/i915: Reserve some kernel space per vm
6e92436440f6 drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
-:11: WARNING:BAD_SIGN_OFF: Co-developed-by: must be immediately followed by Signed-off-by:
#11: 
Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
Co-developed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

-:12: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match
#12: 
Co-developed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'engine' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:85:
+#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
+	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 55), IP_VER(12, 71)) && \
+	engine->class == COPY_ENGINE_CLASS && engine->instance == 0)

-:40: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'engine' may be better as '(engine)' to avoid precedence issues
#40: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:85:
+#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
+	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 55), IP_VER(12, 71)) && \
+	engine->class == COPY_ENGINE_CLASS && engine->instance == 0)

-:60: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#60: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:836:
+	GEM_BUG_ON(lrc_ring_wa_bb_per_ctx(engine) == -1);

-:175: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#175: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1498:
+	GEM_BUG_ON(cs - start > I915_GTT_PAGE_SIZE / sizeof(*cs));

total: 0 errors, 4 warnings, 2 checks, 160 lines checked
70ab11ffb280 drm/i915/gt: add selftest to exercise WABB
-:8: WARNING:BAD_SIGN_OFF: Co-developed-by: must be immediately followed by Signed-off-by:
#8: 
Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
Co-developed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

-:9: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match
#9: 
Co-developed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

total: 0 errors, 2 warnings, 0 checks, 148 lines checked
c975fe64e42c drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123


