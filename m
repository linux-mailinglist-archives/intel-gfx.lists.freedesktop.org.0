Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90825968D21
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 20:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A3610E39B;
	Mon,  2 Sep 2024 18:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C1E10E39B;
 Mon,  2 Sep 2024 18:14:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915_=26_drm/xe?=
 =?utf-8?q?=3A_shared_PCI_ID_macros?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 02 Sep 2024 18:14:47 -0000
Message-ID: <172530088798.908043.12950300186856357161@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1725297097.git.jani.nikula@intel.com>
In-Reply-To: <cover.1725297097.git.jani.nikula@intel.com>
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

Series: drm/i915 & drm/xe: shared PCI ID macros
URL   : https://patchwork.freedesktop.org/series/138110/
State : warning

== Summary ==

Error: dim checkpatch failed
4c49328848e5 drm/i915/pciids: use designated initializers in INTEL_VGA_DEVICE()
ecd7fe3734dc drm/i915/pciids: separate ARL and MTL PCI IDs
b8a2ec141598 drm/xe/pciids: add some missing ADL-N PCI IDs
3c67ba95d657 drm/xe/pciids: separate RPL-U and RPL-P PCI IDs
dd8ac12f2756 drm/xe/pciids: separate ARL and MTL PCI IDs
-:34: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#34: FILE: include/drm/intel/xe_pciids.h:180:
+#define XE_ARL_IDS(MACRO__, ...)		\
+	MACRO__(0x7D41, ## __VA_ARGS__),	\
+	MACRO__(0x7D51, ## __VA_ARGS__),        \
+	MACRO__(0x7D67, ## __VA_ARGS__),	\
+	MACRO__(0x7DD1, ## __VA_ARGS__)

-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#34: FILE: include/drm/intel/xe_pciids.h:180:
+#define XE_ARL_IDS(MACRO__, ...)		\
+	MACRO__(0x7D41, ## __VA_ARGS__),	\
+	MACRO__(0x7D51, ## __VA_ARGS__),        \
+	MACRO__(0x7D67, ## __VA_ARGS__),	\
+	MACRO__(0x7DD1, ## __VA_ARGS__)

total: 1 errors, 0 warnings, 1 checks, 31 lines checked
bdcf19eb1d20 drm/i915/pciids: add PVC PCI ID macros
-:22: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#22: FILE: include/drm/intel/i915_pciids.h:783:
+#define INTEL_PVC_IDS(MACRO__, ...) \
+	MACRO__(0x0B69, ## __VA_ARGS__), \
+	MACRO__(0x0B6E, ## __VA_ARGS__), \
+	MACRO__(0x0BD4, ## __VA_ARGS__), \
+	MACRO__(0x0BD5, ## __VA_ARGS__), \
+	MACRO__(0x0BD6, ## __VA_ARGS__), \
+	MACRO__(0x0BD7, ## __VA_ARGS__), \
+	MACRO__(0x0BD8, ## __VA_ARGS__), \
+	MACRO__(0x0BD9, ## __VA_ARGS__), \
+	MACRO__(0x0BDA, ## __VA_ARGS__), \
+	MACRO__(0x0BDB, ## __VA_ARGS__), \
+	MACRO__(0x0BE0, ## __VA_ARGS__), \
+	MACRO__(0x0BE1, ## __VA_ARGS__), \
+	MACRO__(0x0BE5, ## __VA_ARGS__)

-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'MACRO__' - possible side-effects?
#22: FILE: include/drm/intel/i915_pciids.h:783:
+#define INTEL_PVC_IDS(MACRO__, ...) \
+	MACRO__(0x0B69, ## __VA_ARGS__), \
+	MACRO__(0x0B6E, ## __VA_ARGS__), \
+	MACRO__(0x0BD4, ## __VA_ARGS__), \
+	MACRO__(0x0BD5, ## __VA_ARGS__), \
+	MACRO__(0x0BD6, ## __VA_ARGS__), \
+	MACRO__(0x0BD7, ## __VA_ARGS__), \
+	MACRO__(0x0BD8, ## __VA_ARGS__), \
+	MACRO__(0x0BD9, ## __VA_ARGS__), \
+	MACRO__(0x0BDA, ## __VA_ARGS__), \
+	MACRO__(0x0BDB, ## __VA_ARGS__), \
+	MACRO__(0x0BE0, ## __VA_ARGS__), \
+	MACRO__(0x0BE1, ## __VA_ARGS__), \
+	MACRO__(0x0BE5, ## __VA_ARGS__)

total: 1 errors, 0 warnings, 1 checks, 22 lines checked
678e3b189426 drm/intel/pciids: rename i915_pciids.h to just pciids.h
-:65: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#65: 
rename from include/drm/intel/i915_pciids.h

total: 0 errors, 1 warnings, 0 checks, 47 lines checked
09326813e26b drm/xe: switch to common PCI ID macros
-:113: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#113: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 91 lines checked


