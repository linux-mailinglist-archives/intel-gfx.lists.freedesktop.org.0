Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9584F93F37F
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 13:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D3210E38E;
	Mon, 29 Jul 2024 11:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B72F10E387;
 Mon, 29 Jul 2024 11:03:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_spi=3A_add_driver_fo?=
 =?utf-8?q?r_Intel_discrete_graphics_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2024 11:03:51 -0000
Message-ID: <172225103103.407401.10465038194860489553@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240729084326.2278014-1-alexander.usyskin@intel.com>
In-Reply-To: <20240729084326.2278014-1-alexander.usyskin@intel.com>
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

Series: spi: add driver for Intel discrete graphics (rev5)
URL   : https://patchwork.freedesktop.org/series/131763/
State : warning

== Summary ==

Error: dim checkpatch failed
a2bb1c0c3bb4 spi: add driver for intel graphics on-die spi device
-:67: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#67: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 206 lines checked
4890fc2da082 spi: intel-dg: implement region enumeration
1fcd84405b6a spi: intel-dg: implement spi access functions
8781a82a7eee spi: intel-dg: spi register with mtd
cda2262f9c98 spi: intel-dg: implement mtd access handlers
7a1912876323 spi: intel-dg: align 64bit read and write
12a26babca09 spi: intel-dg: wake card on operations
15e3e020d33b drm/i915/spi: add spi device for discrete graphics
-:95: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#95: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 140 lines checked
d37594e01eff drm/i915/spi: add intel_spi_region map
c8309e39bd15 drm/i915/spi: add support for access mode
a97499ff867a drm/xe/spi: add on-die spi device
-:137: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#137: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 192 lines checked
c83645982ed4 drm/xe/spi: add support for access mode


