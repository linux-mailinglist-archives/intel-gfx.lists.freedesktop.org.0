Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 122E3A9B091
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 16:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F42410E808;
	Thu, 24 Apr 2025 14:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43A6910E818;
 Thu, 24 Apr 2025 14:21:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_mtd=3A_add_driver_fo?=
 =?utf-8?q?r_Intel_discrete_graphics_=28rev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Apr 2025 14:21:44 -0000
Message-ID: <174550450427.6856.13166751179815962320@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250424132536.3043825-1-alexander.usyskin@intel.com>
In-Reply-To: <20250424132536.3043825-1-alexander.usyskin@intel.com>
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

Series: mtd: add driver for Intel discrete graphics (rev10)
URL   : https://patchwork.freedesktop.org/series/140306/
State : warning

== Summary ==

Error: dim checkpatch failed
ee5b23fc21d9 mtd: core: always create master device
7933df0bffd3 mtd: add driver for intel graphics non-volatile memory device
-:69: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#69: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 202 lines checked
d87b0668c1d3 mtd: intel-dg: implement region enumeration
2f8f14bb5547 mtd: intel-dg: implement access functions
0e6c032fe7d8 mtd: intel-dg: register with mtd
a5d4b704ac87 mtd: intel-dg: align 64bit read and write
f99804f149db mtd: intel-dg: wake card on operations
152634f81ba4 drm/i915/nvm: add nvm device for discrete graphics
-:97: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#97: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 163 lines checked
acc7d98493ab drm/i915/nvm: add support for access mode
438874e18655 drm/xe/nvm: add on-die non-volatile memory device
-:88: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#88: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 212 lines checked
00f244fc7fb0 drm/xe/nvm: add support for access mode
f8dfe67afb58 drm/xe/nvm: add support for non-posted erase
-:124: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see function description of msleep().
#124: FILE: drivers/mtd/devices/mtd_intel_dg.c:393:
+				msleep(10);

total: 0 errors, 1 warnings, 0 checks, 150 lines checked


