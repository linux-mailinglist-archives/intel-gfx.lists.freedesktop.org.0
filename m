Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F65B5B0A04
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 18:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2466010E7D2;
	Wed,  7 Sep 2022 16:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A4F8610E7C5;
 Wed,  7 Sep 2022 16:26:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D390A0078;
 Wed,  7 Sep 2022 16:26:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tomas Winkler" <tomas.winkler@intel.com>
Date: Wed, 07 Sep 2022 16:26:46 -0000
Message-ID: <166256800661.19837.17252282038328291367@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220907155813.1427526-1-tomas.winkler@intel.com>
In-Reply-To: <20220907155813.1427526-1-tomas.winkler@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GSC_support_for_XeHP_SDV_and_DG2_=28rev3=29?=
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

Series: GSC support for XeHP SDV and DG2 (rev3)
URL   : https://patchwork.freedesktop.org/series/106638/
State : warning

== Summary ==

Error: dim checkpatch failed
2cec6e0ccdb3 drm/i915/gsc: skip irq initialization if using polling
462345d7d500 mei: add kdoc for struct mei_aux_device
180677d87c5f mei: add slow_firmware flag to the mei auxiliary device
f76e236a7b82 drm/i915/gsc: add slow_firmware flag to the gsc device definition
bed8fb3fe056 drm/i915/gsc: add GSC XeHP SDV platform definition
e038240b0aed mei: gsc: use polling instead of interrupts
d0475dfb439d mei: gsc: wait for reset thread on stop
b75c6b7dc112 mei: extend timeouts on slow devices.
3b62a7648045 mei: bus: export common mkhi definitions into a separate header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:71: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#71: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 106 lines checked
97d845c769dd mei: mkhi: add memory ready command
0cc5b86bdf17 mei: gsc: setup gsc extended operational memory
500ee81e39ca mei: gsc: add transition to PXP mode in resume flow
0f0b4cb9a375 mei: drop ready bits check after start
84a43d5ba8d1 mei: debugfs: add pxp mode to devstate in debugfs
-:34: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#34: FILE: drivers/misc/mei/debugfs.c:91:
+#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state

total: 1 errors, 0 warnings, 0 checks, 36 lines checked
d97bbeb30447 drm/i915/gsc: allocate extended operational memory in LMEM
105d8cee5eaf HAX: drm/i915: force INTEL_MEI_GSC on for CI


