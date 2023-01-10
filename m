Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1F3663FAA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 13:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC7210E5AE;
	Tue, 10 Jan 2023 12:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E65A10E5AB;
 Tue, 10 Jan 2023 12:03:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 578A2A00E6;
 Tue, 10 Jan 2023 12:03:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Tue, 10 Jan 2023 12:03:02 -0000
Message-ID: <167335218232.5201.14709129036585618381@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230110105732.1390596-1-suraj.kandpal@intel.com>
In-Reply-To: <20230110105732.1390596-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_HDCP2=2Ex_via_GSC_CS_=28rev7=29?=
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

Series: Enable HDCP2.x via GSC CS (rev7)
URL   : https://patchwork.freedesktop.org/series/111876/
State : warning

== Summary ==

Error: dim checkpatch failed
022d1c517e43 drm/i915/gsc: Create GSC request submission mechanism
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:57: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#57: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 159 lines checked
7e22230a1f49 drm/i915/hdcp: Keep hdcp agonstic naming convention
-:540: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#540: 
rename from include/drm/i915_mei_hdcp_interface.h

total: 0 errors, 1 warnings, 0 checks, 590 lines checked
5b2b6ae1270e i915/hdcp: HDCP2.x Refactoring to agnostic hdcp
b1e632c2d197 drm/i915/hdcp: Refactor HDCP API structures
05f62eacacd3 drm/i915/mtl: Add function to send command to GSC CS
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:44: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#44: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 267 lines checked
7a6299842317 drm/i915/mtl: Add HDCP GSC interface
-:724: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*data)...) over kzalloc(sizeof(struct i915_hdcp_master)...)
#724: FILE: drivers/gpu/drm/i915/display/intel_hdcp_gsc.c:626:
+	data = kzalloc(sizeof(struct i915_hdcp_master), GFP_KERNEL);

total: 0 errors, 0 warnings, 1 checks, 725 lines checked


