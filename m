Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E003883B8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 02:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B0F6E12B;
	Wed, 19 May 2021 00:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7ADFD6E114;
 Wed, 19 May 2021 00:22:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B21DA47E1;
 Wed, 19 May 2021 00:22:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 19 May 2021 00:22:30 -0000
Message-ID: <162138375040.17249.6645547206277900023@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210519000625.3184321-1-lucas.demarchi@intel.com>
In-Reply-To: <20210519000625.3184321-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_ADL-P=3A_more_reviewed_patches?=
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

Series: ADL-P: more reviewed patches
URL   : https://patchwork.freedesktop.org/series/90305/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a03b363a26c6 drm/i915/xelpd: Calculate VDSC RC parameters
7961852577ed drm/i915/xelpd: Add rc_qp_table for rcparams calculation
-:37: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#37: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 359 lines checked
562ee7cedb86 drm/i915/adl_p: Add dedicated SAGV watermarks
-:70: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#70: FILE: drivers/gpu/drm/i915/i915_drv.h:592:
+#define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))

-:134: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#134: FILE: drivers/gpu/drm/i915/i915_reg.h:6463:
+#define _PLANE_WM_BASE(pipe, plane) \
+	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))

-:142: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#142: FILE: drivers/gpu/drm/i915/i915_reg.h:6471:
+#define PLANE_WM_SAGV(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))

-:148: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#148: FILE: drivers/gpu/drm/i915/i915_reg.h:6477:
+#define PLANE_WM_SAGV_TRANS(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))

-:154: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#154: FILE: drivers/gpu/drm/i915/i915_reg.h:6483:
+#define PLANE_WM_TRANS(pipe, plane) \
 	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))

total: 0 errors, 0 warnings, 5 checks, 213 lines checked
78d955cdad9a drm/i915/adl_p: Setup ports/phys
22aacfaef99f drm/i915/adl_p: Implement TC sequences
37650f010f1a drm/i915/adl_p: Don't config MBUS and DBUF during display initialization
9457bdb14040 drm/i915/adl_p: Add ddb allocation support
-:28: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#28: FILE: drivers/gpu/drm/i915/i915_reg.h:7302:
+#define  DDB_ENTRY_MASK				0xFFF /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */

total: 0 errors, 1 warnings, 0 checks, 172 lines checked
803762341a7f drm/i915: Introduce MBUS relative dbuf offsets
f44d5b32fffc drm/i915/adl_p: MBUS programming
-:103: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#103: FILE: drivers/gpu/drm/i915/i915_reg.h:8168:
+#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */

total: 0 errors, 1 warnings, 0 checks, 236 lines checked
7b42bcdfc6e2 drm/i915/adl_p: Tx escape clock with DSI
f49882fb1151 drm/i915/display: Replace dc3co_enabled with dc3co_exitline on intel_psr struct
5298406b00ba drm/i915/display: Add PSR interrupt error check function
43accd9c0cbd drm/i915/adl_p: Define and use ADL-P specific DP translation tables
cbd6b11c9335 drm/i915/adl_p: Add PLL Support
c23f7e3c4d9d drm/i915/adl_p: Program DP/HDMI link rate to DDI_BUF_CTL
98e0e0a9fbe9 drm/i915/adlp: Add PIPE_MISC2 programming
7c81ddee3062 drm/i915/adl_p: Update memory bandwidth parameters


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
