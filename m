Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B4543F590
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 05:54:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 531F86E9BD;
	Fri, 29 Oct 2021 03:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A56A86E9BA;
 Fri, 29 Oct 2021 03:54:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9DCE4AAA91;
 Fri, 29 Oct 2021 03:54:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Oct 2021 03:54:26 -0000
Message-ID: <163547966661.1911.4900016529435617414@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211029032817.3747750-1-matthew.d.roper@intel.com>
In-Reply-To: <20211029032817.3747750-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Initial_multi-tile_support_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: i915: Initial multi-tile support (rev3)
URL   : https://patchwork.freedesktop.org/series/95631/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1705fd0a9784 drm/i915: rework some irq functions to take intel_gt as argument
-:17: WARNING:BAD_SIGN_OFF: Non-standard signature: Co-authored-by:
#17: 
Co-authored-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
d1ad37e3e59f drm/i915: split general MMIO setup from per-GT uncore init
4e2ff0a014f1 drm/i915: Restructure probe to handle multi-tile platforms
aaf60d368b8d drm/i915: Store backpointer to GT in uncore
563ae5d397db drm/i915: Prepare for multiple gts
-:157: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id__' - possible side-effects?
#157: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:91:
+#define for_each_gt(i915__, id__, gt__) \
+	for ((id__) = 0; \
+	     (id__) < I915_MAX_TILES; \
+	     (id__)++) \
+		for_each_if(((gt__) = (i915__)->gts[(id__)]))

total: 0 errors, 0 warnings, 1 checks, 206 lines checked
bc3dd39b8aba drm/i915: Initial support for per-tile uncore
01e6c40393ac drm/i915/xehp: Determine which tile raised an interrupt
18b82f7a6cad drm/i915/xehp: Make IRQ reset and postinstall multi-tile aware
92457e660ec4 drm/i915/guc: Update CT debug macro for multi-tile
c69ad9b4c31f drm/i915/xehpsdv: Initialize multi-tiles
-:23: WARNING:BAD_SIGN_OFF: Non-standard signature: Co-authored-by:
#23: 
Co-authored-by: Matt Roper <matthew.d.roper@intel.com>

-:263: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#263: FILE: drivers/gpu/drm/i915/i915_pci.c:1012:
+#define XE_HP_SDV_ENGINES \
+	BIT(BCS0) | \
+	BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) | \
+	BIT(VCS0) | BIT(VCS1) | BIT(VCS2) | BIT(VCS3) | \
+	BIT(VCS4) | BIT(VCS5) | BIT(VCS6) | BIT(VCS7)

total: 1 errors, 1 warnings, 0 checks, 284 lines checked


