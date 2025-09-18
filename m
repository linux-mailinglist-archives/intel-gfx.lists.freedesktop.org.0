Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD46FB15E10
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 12:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155F210E441;
	Wed, 30 Jul 2025 10:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E8DA10E441;
 Wed, 30 Jul 2025 10:21:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 47B7D443BC;
 Wed, 30 Jul 2025 10:21:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A40F0C4CEE7;
 Wed, 30 Jul 2025 10:21:52 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomasw@gmail.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Raag Jadav <raag.jadav@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Cc: linux-mtd@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] mtd: MTD_INTEL_DG should depend on DRM_I915 or DRM_XE
Date: Wed, 30 Jul 2025 12:21:49 +0200
Message-ID: <07f67ab8ee78f6bf2559131e193381aafff7479a.1753870424.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Intel Discrete Graphics non-volatile memory is onlt present on intel
discrete graphics devices, and its auxiliary device is instantiated by
the Intel i915 and Xe2 DRM drivers.  Hence add dependencies on DRM_I915
and DRM_XE, to prevent asking the user about this driver when
configuring a kernel without Intel graphics support.

Fixes: ceb5ab3cb6463795 ("mtd: add driver for intel graphics non-volatile memory device")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/mtd/devices/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
index 46cebde79f34b0b7..f0ab74d695347117 100644
--- a/drivers/mtd/devices/Kconfig
+++ b/drivers/mtd/devices/Kconfig
@@ -185,8 +185,8 @@ config MTD_POWERNV_FLASH
 
 config MTD_INTEL_DG
 	tristate "Intel Discrete Graphics non-volatile memory driver"
-	depends on AUXILIARY_BUS
-	depends on MTD
+	depends on AUXILIARY_BUS && MTD
+	depends on DRM_I915 || DRM_XE || COMPILE_TEST
 	help
 	  This provides an MTD device to access Intel Discrete Graphics
 	  non-volatile memory.
-- 
2.43.0

