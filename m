Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C22829C0832
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 14:55:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC4010E84B;
	Thu,  7 Nov 2024 13:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D77610E84B;
 Thu,  7 Nov 2024 13:55:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_mtd=3A_add_driver_fo?=
 =?utf-8?q?r_Intel_discrete_graphics_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Nov 2024 13:55:32 -0000
Message-ID: <173098773250.1422418.17937635323007681959@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241107131356.2796969-1-alexander.usyskin@intel.com>
In-Reply-To: <20241107131356.2796969-1-alexander.usyskin@intel.com>
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

Series: mtd: add driver for Intel discrete graphics (rev2)
URL   : https://patchwork.freedesktop.org/series/140306/
State : warning

== Summary ==

Error: dim checkpatch failed
4dbf595660af mtd: add driver for intel graphics non-volatile memory device
-:68: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#68: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 203 lines checked
db9c38023ba6 mtd: intel-dg: implement region enumeration
c37a37a75f5f mtd: intel-dg: implement access functions
ffc48470e381 mtd: intel-dg: register with mtd
ce21c4d404fc mtd: intel-dg: align 64bit read and write
424987281c73 mtd: intel-dg: wake card on operations
dadbf17b895d drm/i915/nvm: add nvm device for discrete graphics
-:96: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#96: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 165 lines checked
81bd11916054 drm/i915/nvm: add support for access mode
499a8e4fd1e1 drm/xe/nvm: add on-die non-volatile memory device
-:94: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#94: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 217 lines checked
801339245a82 drm/xe/nvm: add support for access mode


