Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E31C1627A1C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 11:12:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBF0D10E054;
	Mon, 14 Nov 2022 10:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 544E610E097;
 Mon, 14 Nov 2022 10:12:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B520A0BCB;
 Mon, 14 Nov 2022 10:12:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Mon, 14 Nov 2022 10:12:03 -0000
Message-ID: <166842072330.32752.11158953759152007391@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221114061019.1444353-1-suraj.kandpal@intel.com>
In-Reply-To: <20221114061019.1444353-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_Pipewriteback_=28rev10=29?=
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

Series: Enable Pipewriteback (rev10)
URL   : https://patchwork.freedesktop.org/series/107440/
State : warning

== Summary ==

Error: dim checkpatch failed
57f061c81cc8 drm/i915: Define WD trancoder for i915
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:49: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#49: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 187 lines checked
a6ade94ee536 drm/i915: Change intel_connector iterators
-:60: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#60: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1512:
+#define to_intel_connector(x) ((((x)->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)) ?\
+				NULL : container_of(x, struct intel_connector, base))

total: 0 errors, 0 warnings, 1 checks, 65 lines checked
8c4a56b51531 drm/i915: Enable WD Transcoder
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:568: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#568: 
new file mode 100644

-:985: WARNING:RETURN_VOID: void function return statements are not generally useful
#985: FILE: drivers/gpu/drm/i915/display/intel_wb.c:413:
+	return;
+}

total: 0 errors, 2 warnings, 0 checks, 1290 lines checked


