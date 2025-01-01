Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 808C09FF483
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2025 17:17:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D834510E218;
	Wed,  1 Jan 2025 16:17:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0728110E218;
 Wed,  1 Jan 2025 16:17:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_mtd=3A_add_driver_fo?=
 =?utf-8?q?r_Intel_discrete_graphics_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 01 Jan 2025 16:17:33 -0000
Message-ID: <173574825302.1690645.9589769937420940332@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250101153925.865703-1-alexander.usyskin@intel.com>
In-Reply-To: <20250101153925.865703-1-alexander.usyskin@intel.com>
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

Series: mtd: add driver for Intel discrete graphics (rev4)
URL   : https://patchwork.freedesktop.org/series/140306/
State : warning

== Summary ==

Error: dim checkpatch failed
dbe03a6f690c mtd: core: always create master device
-:91: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'master == mtd'
#91: FILE: drivers/mtd/mtdcore.c:681:
+	if ((master == mtd) && !IS_ENABLED(CONFIG_MTD_PARTITIONED_MASTER)) {

total: 0 errors, 0 warnings, 1 checks, 258 lines checked
542ef48347fc mtd: add driver for intel graphics non-volatile memory device
-:69: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#69: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 203 lines checked
374af226dbc5 mtd: intel-dg: implement region enumeration
e4e3839538d7 mtd: intel-dg: implement access functions
aa04b4d2bff6 mtd: intel-dg: register with mtd
78e50c240548 mtd: intel-dg: align 64bit read and write
ae338dad3dc5 mtd: intel-dg: wake card on operations
40fde2c987cb drm/i915/nvm: add nvm device for discrete graphics
-:96: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#96: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 163 lines checked
71ed773fdf69 drm/i915/nvm: add support for access mode
aa3aa3e81bce drm/xe/nvm: add on-die non-volatile memory device
-:86: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#86: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 210 lines checked
515950b70d82 drm/xe/nvm: add support for access mode


