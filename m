Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 053D457F424
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jul 2022 10:40:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B623BFDE3;
	Sun, 24 Jul 2022 08:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61A28BFDE7;
 Sun, 24 Jul 2022 08:40:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5AA03A0003;
 Sun, 24 Jul 2022 08:40:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tomas Winkler" <tomas.winkler@intel.com>
Date: Sun, 24 Jul 2022 08:40:17 -0000
Message-ID: <165865201734.23992.11025418174949260135@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220724082428.218628-1-tomas.winkler@intel.com>
In-Reply-To: <20220724082428.218628-1-tomas.winkler@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GSC_support_for_XeHP_SDV_and_DG2?=
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

Series: GSC support for XeHP SDV and DG2
URL   : https://patchwork.freedesktop.org/series/106638/
State : warning

== Summary ==

Error: dim checkpatch failed
98beb37f122a drm/i915/gsc: skip irq initialization if using polling
9d0a0b0b2d9d mei: add slow_fw flag to the mei auxiliary device
16b7a65ba755 drm/i915/gsc: add slow_fw flag to the gsc device definition
9bfde0aa6b7f drm/i915/gsc: add GSC XeHP SDV platform definition
3daf7578b65b mei: gsc: use polling instead of interrupts
ff2531d50823 mei: gsc: wait for reset thread on stop
c09e308cb4b5 mei: extend timeouts on slow devices.
6ec7fba29fec mei: bus: export common mkhi definitions into a separate header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:71: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#71: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 94 lines checked
d5e1de013086 mei: mkhi: add memory ready command
2d4813d6388a mei: gsc: setup gsc extended operational memory
de4aaeed7a37 mei: gsc: add transition to PXP mode in resume flow
665c3f73a4c4 mei: debugfs: add pxp mode to devstate in debugfs
-:26: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#26: FILE: drivers/misc/mei/debugfs.c:91:
+#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state

total: 1 errors, 0 warnings, 0 checks, 29 lines checked
a3d86df47b64 drm/i915/gsc: allocate extended operational memory in LMEM
fef5bb745f02 HAX: drm/i915: force INTEL_MEI_GSC on for CI


