Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 509904273C8
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Oct 2021 00:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9786B6E88E;
	Fri,  8 Oct 2021 22:30:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 78B6C6E88E;
 Fri,  8 Oct 2021 22:30:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70652A363C;
 Fri,  8 Oct 2021 22:30:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 08 Oct 2021 22:30:47 -0000
Message-ID: <163373224742.16848.11043445970877416178@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211008215635.2026385-1-matthew.d.roper@intel.com>
In-Reply-To: <20211008215635.2026385-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Initial_multi-tile_support?=
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

Series: i915: Initial multi-tile support
URL   : https://patchwork.freedesktop.org/series/95631/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
21a66c454734 drm/i915: rework some irq functions to take intel_gt as argument
-:17: WARNING:BAD_SIGN_OFF: Non-standard signature: Co-authored-by:
#17: 
Co-authored-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
7c75c8977d8b drm/i915: split general MMIO setup from per-GT uncore init
447d1a2a3ab0 drm/i915: Restructure probe to handle multi-tile platforms
d21c03706792 drm/i915: Store backpointer to GT in uncore
b22d545fdf95 drm/i915: Prepare for multiple gts
-:179: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#179: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:91:
+#define for_each_gt(i915__, id__, gt__) \
+	for ((id__) = 0; \
+	     (id__) < I915_MAX_TILES; \
+	     (id__)++) \
+		for_each_if (((gt__) = (i915__)->gts[(id__)]))

-:179: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id__' - possible side-effects?
#179: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:91:
+#define for_each_gt(i915__, id__, gt__) \
+	for ((id__) = 0; \
+	     (id__) < I915_MAX_TILES; \
+	     (id__)++) \
+		for_each_if (((gt__) = (i915__)->gts[(id__)]))

-:183: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#183: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:95:
+		for_each_if (((gt__) = (i915__)->gts[(id__)]))

total: 1 errors, 1 warnings, 1 checks, 192 lines checked
b38b62d5cc6c drm/i915: Initial support for per-tile uncore
1b3ebba48401 drm/i915/xehp: Determine which tile raised an interrupt
72823afccad4 drm/i915/xehp: Make IRQ reset and postinstall multi-tile aware
c0b1bf330072 drm/i915/guc: Update CT debug macro for multi-tile
1d9f14f403bd drm/i915: Release per-gt resources allocated
a0d4d7f898b5 drm/i915/xehpsdv: Initialize multi-tiles


