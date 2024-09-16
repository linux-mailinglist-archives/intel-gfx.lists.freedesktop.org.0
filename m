Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E3797A7C0
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 21:21:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E7E110E133;
	Mon, 16 Sep 2024 19:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0AE410E133;
 Mon, 16 Sep 2024 19:21:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_spi=3A_add_driver_fo?=
 =?utf-8?q?r_Intel_discrete_graphics_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Sep 2024 19:21:09 -0000
Message-ID: <172651446963.1019500.13420435913803618492@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240916134928.3654054-1-alexander.usyskin@intel.com>
In-Reply-To: <20240916134928.3654054-1-alexander.usyskin@intel.com>
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

Series: spi: add driver for Intel discrete graphics (rev6)
URL   : https://patchwork.freedesktop.org/series/131763/
State : warning

== Summary ==

Error: dim checkpatch failed
d45399ca7db7 spi: add driver for intel graphics on-die spi device
-:67: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#67: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 206 lines checked
bdd4299b331d spi: intel-dg: implement region enumeration
2667919f92ee spi: intel-dg: implement spi access functions
3c6046e1a4ff spi: intel-dg: spi register with mtd
60e23291f685 spi: intel-dg: implement mtd access handlers
353ab3c404dc spi: intel-dg: align 64bit read and write
c8c585d51174 spi: intel-dg: wake card on operations
275d54de6370 drm/i915/spi: add spi device for discrete graphics
-:95: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#95: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 140 lines checked
2d21b7e5af74 drm/i915/spi: add intel_spi_region map
ff1986ec7281 drm/i915/spi: add support for access mode
45343fe9e3e4 drm/xe/spi: add on-die spi device
-:137: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#137: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 192 lines checked
f3466f74ba9e drm/xe/spi: add support for access mode


