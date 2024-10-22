Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0A79AA28F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 14:57:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C110410E166;
	Tue, 22 Oct 2024 12:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC65310E166;
 Tue, 22 Oct 2024 12:57:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_mtd=3A_add_driver_fo?=
 =?utf-8?q?r_Intel_discrete_graphics?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2024 12:57:14 -0000
Message-ID: <172960183496.1309961.7257042960633839757@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241022104119.3149051-1-alexander.usyskin@intel.com>
In-Reply-To: <20241022104119.3149051-1-alexander.usyskin@intel.com>
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

Series: mtd: add driver for Intel discrete graphics
URL   : https://patchwork.freedesktop.org/series/140306/
State : warning

== Summary ==

Error: dim checkpatch failed
65e51895699b mtd: add driver for intel graphics non-volatile memory device
-:68: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#68: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 203 lines checked
1012d1bb669e mtd: intel-dg: implement region enumeration
a3a074e4e356 mtd: intel-dg: implement access functions
-:158: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#158: FILE: drivers/mtd/devices/mtd-intel-dg.c:263:
+		ret = idg_nvm_rewrite_partial(nvm, to + i, 0, len4,
+					  (uint32_t *)&buf[i]);

total: 0 errors, 0 warnings, 1 checks, 224 lines checked
fc8d5b407cfb mtd: intel-dg: register with mtd
1209056b8df8 mtd: intel-dg: align 64bit read and write
1ac7ba6caf13 mtd: intel-dg: wake card on operations
9823d5c4c246 drm/i915/nvm: add nvm device for discrete graphics
-:96: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#96: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 166 lines checked
0b43a830c8e6 drm/i915/nvm: add support for access mode
72a0e475d830 drm/xe/nvm: add on-die non-volatile memory device
-:93: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#93: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 210 lines checked
e0dee19e9793 drm/xe/nvm: add support for access mode


