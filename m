Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B4539D4C5
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 08:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AB106E158;
	Mon,  7 Jun 2021 06:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 28C7E6E158;
 Mon,  7 Jun 2021 06:16:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2029FA47E2;
 Mon,  7 Jun 2021 06:16:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Mon, 07 Jun 2021 06:16:05 -0000
Message-ID: <162304656510.2772.8469229307900620465@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210606045050.103862-1-lucas.demarchi@intel.com>
In-Reply-To: <20210606045050.103862-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Finish_conversion_to_GRAPHICS=5FVER_=28rev2=29?=
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

Series: drm/i915: Finish conversion to GRAPHICS_VER (rev2)
URL   : https://patchwork.freedesktop.org/series/91064/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
692bcf92f50c drm/i915: replace IS_GEN and friends with GRAPHICS_VER
-:154: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#154: FILE: drivers/gpu/drm/i915/i915_debugfs.c:500:
+			   (gt_perf_status & (GRAPHICS_VER(dev_priv) >= 9 ? 0x1ff00 : 0xff00)) >> 8);

total: 0 errors, 1 warnings, 0 checks, 1336 lines checked
421b02ce1bd7 drm/i915: Add remaining conversions to GRAPHICS_VER
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_drv.h:1556:
+#define IS_GEN9_LP(dev_priv)	(GRAPHICS_VER(dev_priv) == 9 && IS_LP(dev_priv))

-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#26: FILE: drivers/gpu/drm/i915/i915_drv.h:1557:
+#define IS_GEN9_BC(dev_priv)	(GRAPHICS_VER(dev_priv) == 9 && !IS_LP(dev_priv))

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/i915_drv.h:1624:
+#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 10 || \
 					IS_GEMINILAKE(dev_priv) || \
 					IS_KABYLAKE(dev_priv))

-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#71: FILE: drivers/gpu/drm/i915/i915_drv.h:1631:
+#define HAS_128_BYTE_Y_TILING(dev_priv) (GRAPHICS_VER(dev_priv) != 2 && \
+					 !(IS_I915G(dev_priv) || IS_I915GM(dev_priv)))

-:80: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#80: FILE: drivers/gpu/drm/i915/i915_drv.h:1638:
+#define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && GRAPHICS_VER(dev_priv) >= 7)

total: 0 errors, 0 warnings, 5 checks, 215 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
