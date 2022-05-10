Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD235224BF
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 21:29:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52FD810E344;
	Tue, 10 May 2022 19:29:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15E1D10E344;
 Tue, 10 May 2022 19:29:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C093A66C9;
 Tue, 10 May 2022 19:29:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 10 May 2022 19:29:39 -0000
Message-ID: <165221097902.26419.14979194617010756336@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220510183313.1046628-1-jouni.hogander@intel.com>
In-Reply-To: <20220510183313.1046628-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fixes_for_selective_fetch_area_calculation_=28rev3=29?=
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

Series: Fixes for selective fetch area calculation (rev3)
URL   : https://patchwork.freedesktop.org/series/103659/
State : warning

== Summary ==

Error: dim checkpatch failed
ece060bdc2d4 drm/print: Add drm_debug_once* macros
-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#34: FILE: include/drm/drm_print.h:488:
+#define drm_dbg_once_core(drm, fmt, ...)					\
+	drm_dev_dbg_once((drm) ? (drm)->dev : NULL, DRM_UT_CORE, fmt, ##__VA_ARGS__)

-:36: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#36: FILE: include/drm/drm_print.h:490:
+#define drm_dbg_once(drm, fmt, ...)						\
+	drm_dev_dbg_once((drm) ? (drm)->dev : NULL, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)

-:38: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#38: FILE: include/drm/drm_print.h:492:
+#define drm_dbg_once_kms(drm, fmt, ...)					\
+	drm_dev_dbg_once((drm) ? (drm)->dev : NULL, DRM_UT_KMS, fmt, ##__VA_ARGS__)

-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#40: FILE: include/drm/drm_print.h:494:
+#define drm_dbg_once_prime(drm, fmt, ...)					\
+	drm_dev_dbg_once((drm) ? (drm)->dev : NULL, DRM_UT_PRIME, fmt, ##__VA_ARGS__)

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#42: FILE: include/drm/drm_print.h:496:
+#define drm_dbg_once_atomic(drm, fmt, ...)					\
+	drm_dev_dbg_once((drm) ? (drm)->dev : NULL, DRM_UT_ATOMIC, fmt, ##__VA_ARGS__)

-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#44: FILE: include/drm/drm_print.h:498:
+#define drm_dbg_once_vbl(drm, fmt, ...)					\
+	drm_dev_dbg_once((drm) ? (drm)->dev : NULL, DRM_UT_VBL, fmt, ##__VA_ARGS__)

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#46: FILE: include/drm/drm_print.h:500:
+#define drm_dbg_once_state(drm, fmt, ...)					\
+	drm_dev_dbg_once((drm) ? (drm)->dev : NULL, DRM_UT_STATE, fmt, ##__VA_ARGS__)

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#48: FILE: include/drm/drm_print.h:502:
+#define drm_dbg_once_lease(drm, fmt, ...)					\
+	drm_dev_dbg_once((drm) ? (drm)->dev : NULL, DRM_UT_LEASE, fmt, ##__VA_ARGS__)

-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#50: FILE: include/drm/drm_print.h:504:
+#define drm_dbg_once_dp(drm, fmt, ...)					\
+	drm_dev_dbg_once((drm) ? (drm)->dev : NULL, DRM_UT_DP, fmt, ##__VA_ARGS__)

-:52: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm' - possible side-effects?
#52: FILE: include/drm/drm_print.h:506:
+#define drm_dbg_once_drmres(drm, fmt, ...)					\
+	drm_dev_dbg_once((drm) ? (drm)->dev : NULL, DRM_UT_DRMRES, fmt, ##__VA_ARGS__)

total: 0 errors, 0 warnings, 10 checks, 35 lines checked
cbb0b0954a2a drm/i915/psr: Use full update In case of area calculation fails
41e31dcdd4be drm/i915: Ensure damage clip area is within pipe area


