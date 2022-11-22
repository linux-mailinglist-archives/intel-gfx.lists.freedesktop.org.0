Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4036348AD
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 21:48:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E1410E474;
	Tue, 22 Nov 2022 20:47:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C9FA10E474;
 Tue, 22 Nov 2022 20:47:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 881EBA00CC;
 Tue, 22 Nov 2022 20:47:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Tue, 22 Nov 2022 20:47:53 -0000
Message-ID: <166915007355.2184.6925851997956778376@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221122183306.140921-1-matthew.s.atwood@intel.com>
In-Reply-To: <20221122183306.140921-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/2=5D_drm/i915/dg2=3A_Introdu?=
 =?utf-8?q?ce_Wa=5F18018764978?=
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

Series: series starting with [v3,1/2] drm/i915/dg2: Introduce Wa_18018764978
URL   : https://patchwork.freedesktop.org/series/111213/
State : warning

== Summary ==

Error: dim checkpatch failed
334ba5339553 drm/i915/dg2: Introduce Wa_18018764978
-:34: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 33)
#34: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:773:
 	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
[...]
+				 wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);

-:38: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:775:
+				 wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);

-:41: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 33)
#41: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:778:
+	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
[...]
+				 wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);

-:42: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#42: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:779:
+	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
+				 IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))

total: 0 errors, 3 warnings, 1 checks, 24 lines checked
2abed76522bc drm/i915/dg2: Introduce Wa_18019271663


