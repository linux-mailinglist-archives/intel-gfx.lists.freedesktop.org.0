Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0295FF6C1
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Oct 2022 01:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E57D10E1A8;
	Fri, 14 Oct 2022 23:21:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2118710E1A8;
 Fri, 14 Oct 2022 23:20:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A2D2AADDA;
 Fri, 14 Oct 2022 23:20:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 14 Oct 2022 23:20:58 -0000
Message-ID: <166578965800.26453.14185374269815301979@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221014230239.1023689-1-matthew.d.roper@intel.com>
In-Reply-To: <20221014230239.1023689-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Explicit_MCR_handling_and_MTL_steering_=28rev4=29?=
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

Series: Explicit MCR handling and MTL steering (rev4)
URL   : https://patchwork.freedesktop.org/series/108755/
State : warning

== Summary ==

Error: dim checkpatch failed
830513957fa8 drm/i915/gen8: Create separate reg definitions for new MCR registers
dbdc6927367f drm/i915/xehp: Create separate reg definitions for new MCR registers
3dc14e728503 drm/i915/gt: Drop a few unused register definitions
23576fa94370 drm/i915/gt: Correct prefix on a few registers
26cd8977db65 drm/i915/gt: Add intel_gt_mcr_multicast_rmw() operation
750673516e25 drm/i915/xehp: Check for faults on primary GAM
315399c32fbf drm/i915/gt: Add intel_gt_mcr_wait_for_reg_fw()
4efa7eccaba8 drm/i915: Define MCR registers explicitly
bb995162272b drm/i915/gt: Always use MCR functions on multicast registers
009ddebe2fbc drm/i915/guc: Handle save/restore of MCR registers explicitly
b1e0f17688ac drm/i915/gt: Add MCR-specific workaround initializers
32570329efe2 drm/i915: Define multicast registers as a new type
-:615: WARNING:NEW_TYPEDEFS: do not add new typedefs
#615: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:107:
+typedef struct {

-:634: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'r' - possible side-effects?
#634: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:118:
+#define i915_mmio_reg_offset(r) \
+	_Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)

-:635: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#635: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:119:
+	_Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
 	                        ^

-:635: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#635: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:119:
+	_Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)
 	                                                 ^

-:635: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#635: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:119:
+	_Generic((r), i915_reg_t: (r).reg, i915_mcr_reg_t: (r).reg)

total: 2 errors, 1 warnings, 2 checks, 513 lines checked
93791388dccc drm/i915/xelpg: Add multicast steering
290cda2037ae drm/i915/xelpmp: Add multicast steering for media GT


