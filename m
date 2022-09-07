Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 939275B0FBB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 00:18:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF5D10E8ED;
	Wed,  7 Sep 2022 22:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 11C0310E8ED;
 Wed,  7 Sep 2022 22:18:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08E54A00A0;
 Wed,  7 Sep 2022 22:18:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Date: Wed, 07 Sep 2022 22:18:30 -0000
Message-ID: <166258911003.19838.6295502618963588366@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220907215113.1596567-1-tomas.winkler@intel.com>
In-Reply-To: <20220907215113.1596567-1-tomas.winkler@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GSC_support_for_XeHP_SDV_and_DG2_=28rev5=29?=
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

Series: GSC support for XeHP SDV and DG2 (rev5)
URL   : https://patchwork.freedesktop.org/series/106638/
State : warning

== Summary ==

Error: dim checkpatch failed
7c7d317c2214 drm/i915/gsc: skip irq initialization if using polling
f704e2c4045b mei: add kdoc for struct mei_aux_device
a48d8453e36b mei: add slow_firmware flag to the mei auxiliary device
3b70304d1d8f drm/i915/gsc: add slow_firmware flag to the gsc device definition
845780516c12 drm/i915/gsc: add GSC XeHP SDV platform definition
189bf1bbb32e mei: gsc: use polling instead of interrupts
f3e9a50271ef mei: gsc: wait for reset thread on stop
b978dbd357db mei: extend timeouts on slow devices
cf23d51175bf mei: bus: export common mkhi definitions into a separate header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:71: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#71: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 92 lines checked
747d3b74de77 mei: mkhi: add memory ready command
743555c95965 mei: gsc: setup gsc extended operational memory
d800090ab1ff mei: gsc: add transition to PXP mode in resume flow
e16d72283cd2 mei: drop ready bits check after start
814624d7616d mei: debugfs: add pxp mode to devstate in debugfs
-:35: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#35: FILE: drivers/misc/mei/debugfs.c:91:
+#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state

total: 1 errors, 0 warnings, 0 checks, 36 lines checked
612c537b0421 drm/i915/gsc: allocate extended operational memory in LMEM
a0d43c9feac4 HAX: drm/i915: force INTEL_MEI_GSC on for CI


