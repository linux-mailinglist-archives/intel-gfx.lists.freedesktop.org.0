Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 427F64F50C3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 04:25:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA3210E418;
	Wed,  6 Apr 2022 02:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38EC310E418;
 Wed,  6 Apr 2022 02:25:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34FBBA66C8;
 Wed,  6 Apr 2022 02:25:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 06 Apr 2022 02:25:08 -0000
Message-ID: <164921190821.5449.9987467888100489005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220404181706.3523646-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220404181706.3523646-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GSC_support_=28rev4=29?=
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

Series: GSC support (rev4)
URL   : https://patchwork.freedesktop.org/series/102160/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ba37d4d833f3 drm/i915/gsc: add gsc as a mei auxiliary device
-:65: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#65: 
new file mode 100644

-:459: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#459: FILE: drivers/gpu/drm/i915/i915_drv.h:1316:
+#define HAS_HECI_GSC(dev_priv) (HAS_HECI_PXP(dev_priv) || HAS_HECI_GSCFI(dev_priv))

total: 0 errors, 1 warnings, 1 checks, 418 lines checked
fd6e2cd2c6d8 mei: add support for graphics system controller (gsc) devices
-:57: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#57: 
new file mode 100644

-:255: WARNING:MODULE_LICENSE: Prefer "GPL" over "GPL v2" - see commit bf7fbeeae6db ("module: Cure the MODULE_LICENSE "GPL" vs. "GPL v2" bogosity")
#255: FILE: drivers/misc/mei/gsc-me.c:194:
+MODULE_LICENSE("GPL v2");

total: 0 errors, 2 warnings, 0 checks, 297 lines checked
265cc847a301 mei: gsc: setup char driver alive in spite of firmware handshake failure
a9824da225e6 mei: gsc: add runtime pm handlers
31f70028ed70 mei: gsc: retrieve the firmware version
45b48dd2e6d3 HAX: drm/i915: force INTEL_MEI_GSC on for CI


