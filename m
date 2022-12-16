Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 422AB64E57A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:57:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BBEF10E112;
	Fri, 16 Dec 2022 00:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9CCF010E027;
 Fri, 16 Dec 2022 00:57:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 951DBA8830;
 Fri, 16 Dec 2022 00:57:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 16 Dec 2022 00:57:18 -0000
Message-ID: <167115223857.5852.10124115039416316057@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsb=3A_DSB_fixes/cleanups?=
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

Series: drm/i915/dsb: DSB fixes/cleanups
URL   : https://patchwork.freedesktop.org/series/111997/
State : warning

== Summary ==

Error: dim checkpatch failed
5051d5d03037 drm/i915/dsb: Stop with the RMW
a5525d4aab22 drm/i915/dsb: Inline DSB_CTRL writes into intel_dsb_commit()
ecb9ca56c2fc drm/i915/dsb: Align DSB register writes to 8 bytes
bd96caebe2ba drm/i915/dsb: Fix DSB command buffer size checks
4106472e980c drm/i915/dsb: Extract assert_dsb_has_room()
8da6747f2c2f drm/i915/dsb: Extract intel_dsb_emit()
85956ab12e9a drm/i915/dsb: Improve the indexed reg write checks
3f0ff8f03ef7 drm/i915/dsb: Handle the indexed vs. not inside the DSB code
40a70b0d9cbb drm/i915/dsb: Introduce intel_dsb_align_tail()
dfb4ea142837 drm/i915/dsb: Allow the caller to pass in the DSB buffer size
3faa7075e220 drm/i915/dsb: Add mode DSB opcodes
551e52e82eb0 drm/i915/dsb: Define more DSB registers
-:62: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#62: FILE: drivers/gpu/drm/i915/i915_reg.h:8144:
+#define   DSB_RM_CLAIM_TIMEOUT_COUNT(x)	REG_FIELD_PREP(DSB_RM_CLAIM_TIMEOUT_COUNT_MASK, (x)) /* clocks */

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
492da2cad714 drm/i915/dsb: Pimp debug/error prints


