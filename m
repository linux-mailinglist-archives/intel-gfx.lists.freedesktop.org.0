Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2D258B5AA
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Aug 2022 14:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1582510F0FC;
	Sat,  6 Aug 2022 12:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B858F10F31E;
 Sat,  6 Aug 2022 12:59:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96415A0078;
 Sat,  6 Aug 2022 12:59:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tomas Winkler" <tomas.winkler@intel.com>
Date: Sat, 06 Aug 2022 12:59:18 -0000
Message-ID: <165979075858.21390.14096396560917884124@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220806122636.43068-1-tomas.winkler@intel.com>
In-Reply-To: <20220806122636.43068-1-tomas.winkler@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GSC_support_for_XeHP_SDV_and_DG2_=28rev2=29?=
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

Series: GSC support for XeHP SDV and DG2 (rev2)
URL   : https://patchwork.freedesktop.org/series/106638/
State : warning

== Summary ==

Error: dim checkpatch failed
89f677f46f19 drm/i915/gsc: skip irq initialization if using polling
1661cc7ae3df mei: add kdoc for struct mei_aux_device
3789e46cd42c mei: add slow_firmware flag to the mei auxiliary device
7b6fdec93267 drm/i915/gsc: add slow_firmware flag to the gsc device definition
5063a20d2e82 drm/i915/gsc: add GSC XeHP SDV platform definition
c7992c5b15b4 mei: gsc: use polling instead of interrupts
8ac7b6c40f09 mei: gsc: wait for reset thread on stop
b7e494f4f9f9 mei: extend timeouts on slow devices.
35a2640b531a mei: bus: export common mkhi definitions into a separate header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:71: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#71: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 94 lines checked
aa0afd915622 mei: mkhi: add memory ready command
505596c3b2b8 mei: gsc: setup gsc extended operational memory
89764c42af56 mei: gsc: add transition to PXP mode in resume flow
6b322648552f mei: debugfs: add pxp mode to devstate in debugfs
-:26: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#26: FILE: drivers/misc/mei/debugfs.c:91:
+#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state

total: 1 errors, 0 warnings, 0 checks, 29 lines checked
53fabdce7eac drm/i915/gsc: allocate extended operational memory in LMEM
7bb7c17ab324 HAX: drm/i915: force INTEL_MEI_GSC on for CI


