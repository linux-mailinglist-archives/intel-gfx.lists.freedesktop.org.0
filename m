Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A0D4D24F5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 00:52:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C9BD10E2F5;
	Tue,  8 Mar 2022 23:52:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03F0C10E2F5;
 Tue,  8 Mar 2022 23:52:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03BDEA9932;
 Tue,  8 Mar 2022 23:52:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Tue, 08 Mar 2022 23:52:26 -0000
Message-ID: <164678354601.13384.8362528730061493679@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220308163654.942820-1-alexander.usyskin@intel.com>
In-Reply-To: <20220308163654.942820-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_driver_for_GSC_controller_=28rev10=29?=
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

Series: Add driver for GSC controller (rev10)
URL   : https://patchwork.freedesktop.org/series/98066/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
44fdb8f68777 drm/i915/gsc: add gsc as a mei auxiliary device
-:63: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#63: 
new file mode 100644

-:457: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#457: FILE: drivers/gpu/drm/i915/i915_drv.h:1336:
+#define HAS_HECI_GSC(dev_priv) (HAS_HECI_PXP(dev_priv) || HAS_HECI_GSCFI(dev_priv))

total: 0 errors, 1 warnings, 1 checks, 418 lines checked
0b4bf38bb00a mei: add support for graphics system controller (gsc) devices
-:56: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#56: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 289 lines checked
d9a701cdc237 mei: gsc: setup char driver alive in spite of firmware handshake failure
7ecb588c9d45 mei: gsc: add runtime pm handlers
7730f74cd2e4 mei: gsc: retrieve the firmware version


