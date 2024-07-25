Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 212FE93C44A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 16:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 796F610E835;
	Thu, 25 Jul 2024 14:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D055C10E835;
 Thu, 25 Jul 2024 14:36:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_spi=3A_add_driver_fo?=
 =?utf-8?q?r_Intel_discrete_graphics_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2024 14:36:02 -0000
Message-ID: <172191816284.382170.5957617144551875149@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240725135657.1061836-1-alexander.usyskin@intel.com>
In-Reply-To: <20240725135657.1061836-1-alexander.usyskin@intel.com>
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

Series: spi: add driver for Intel discrete graphics (rev3)
URL   : https://patchwork.freedesktop.org/series/131763/
State : warning

== Summary ==

Error: dim checkpatch failed
a87d20bbf604 spi: add driver for intel graphics on-die spi device
-:67: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#67: 
new file mode 100644

-:111: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#111: FILE: drivers/spi/spi-intel-dg.c:40:
+static int intel_dg_spi_probe(struct auxiliary_device *aux_dev,
+			  const struct auxiliary_device_id *aux_dev_id)

total: 0 errors, 1 warnings, 1 checks, 206 lines checked
19e973d780cf spi: intel-dg: implement region enumeration
fddfecf47ca6 spi: intel-dg: implement spi access functions
-:89: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#89: FILE: drivers/spi/spi-intel-dg.c:189:
+static ssize_t spi_rewrite_partial(struct intel_dg_spi *spi, loff_t to,
+			       loff_t offset, size_t len, const u32 *newdata)

total: 0 errors, 0 warnings, 1 checks, 224 lines checked
068ab59c423e spi: intel-dg: spi register with mtd
-:103: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#103: FILE: drivers/spi/spi-intel-dg.c:478:
+static int intel_dg_spi_init_mtd(struct intel_dg_spi *spi, struct device *device,
+			     unsigned int nparts, bool writeable_override)

total: 0 errors, 0 warnings, 1 checks, 156 lines checked
3b825b42d547 spi: intel-dg: implement mtd access handlers
e1a81d2cfb81 spi: intel-dg: align 64bit read and write
7214ac42a157 spi: intel-dg: wake card on operations
7e6683d220eb drm/i915/spi: add spi device for discrete graphics
-:95: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#95: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 136 lines checked
e4c780bf1f8e drm/i915/spi: add intel_spi_region map
10b14b8312ad drm/i915/spi: add support for access mode
d7c40e1a25ec drm/xe/spi: add on-die spi device
-:137: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#137: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 183 lines checked
af82070dad67 drm/xe/spi: add support for access mode
-:23: CHECK:LINE_SPACING: Please don't use multiple blank lines
#23: FILE: drivers/gpu/drm/xe/regs/xe_gsc_regs.h:23:
+
+

total: 0 errors, 0 warnings, 1 checks, 78 lines checked


