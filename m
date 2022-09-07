Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AE95B0CB0
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 20:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9AC310E833;
	Wed,  7 Sep 2022 18:47:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1723F10E682;
 Wed,  7 Sep 2022 18:47:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0CCA3AADD1;
 Wed,  7 Sep 2022 18:47:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 07 Sep 2022 18:47:51 -0000
Message-ID: <166257647102.19839.14669977060385517431@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220907155813.1427526-1-tomas.winkler@intel.com>
In-Reply-To: <20220907155813.1427526-1-tomas.winkler@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GSC_support_for_XeHP_SDV_and_DG2_=28rev4=29?=
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

Series: GSC support for XeHP SDV and DG2 (rev4)
URL   : https://patchwork.freedesktop.org/series/106638/
State : warning

== Summary ==

Error: dim checkpatch failed
a6d157c243b5 drm/i915/gsc: skip irq initialization if using polling
f33aa591ecde mei: add kdoc for struct mei_aux_device
8dec02344065 mei: add slow_firmware flag to the mei auxiliary device
55dd4dfeed6b drm/i915/gsc: add slow_firmware flag to the gsc device definition
604fed434ce9 drm/i915/gsc: add GSC XeHP SDV platform definition
d3e659f047ae mei: gsc: use polling instead of interrupts
032acd9005c3 mei: gsc: wait for reset thread on stop
1438bdcfd1cb mei: extend timeouts on slow devices.
4a69d0b86e86 mei: bus: export common mkhi definitions into a separate header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:71: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#71: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 106 lines checked
f5fbdd916a5e mei: mkhi: add memory ready command
25250fb00f7a mei: gsc: setup gsc extended operational memory
e9c85b31d6bf mei: gsc: add transition to PXP mode in resume flow
af40f92c8c90 mei: drop ready bits check after start
8393a31429b0 mei: debugfs: add pxp mode to devstate in debugfs
-:34: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#34: FILE: drivers/misc/mei/debugfs.c:91:
+#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state

total: 1 errors, 0 warnings, 0 checks, 36 lines checked
db50a0d373af drm/i915/gsc: allocate extended operational memory in LMEM
4e58910c7f4e HAX: drm/i915: force INTEL_MEI_GSC on for CI


