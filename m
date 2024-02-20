Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD27485CAC7
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 23:33:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D110E10E593;
	Tue, 20 Feb 2024 22:33:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lliDO3HA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A3D210E387
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 22:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708468395; x=1740004395;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wxIGuKJCVVRc7klIrzomcasDjqrtoDGFPXYyqCtVIf8=;
 b=lliDO3HA3Z61aL7Za5sz//u5OZzA31sFaWcJo1sN/UMtAbFLDrbud0DN
 1WKaMkH5ut9uVx3hRGDbJJVQMPlH2LRW/0MXHuK9TvyK/JdSiK46+v2/T
 LSCzVUZYOMJouILXPlZfiI9ET8lJbFhuyIWVYlnO2zo5Frmh7Fyf8IaxV
 DhF7ZwsfUZKOaw3DqvldU0sXobJU17OiVxCHVi2oxIbqTsIJKEzmxKpUT
 4VAostpgzxdvi7q3KoM9cuqChJ9362FDjl0wwpWSPNxU04mLdx6sHnvE9
 Oj/tBKH0vINoZPiMw5dRtaIL9M8EWA0ILK0B6hJ72CMSskSZS85KfQ5cd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="14006868"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="14006868"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 14:33:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="4869888"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 14:32:58 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 4/4] drm/i915: Show bios vbt when read from
 firmware/spi/oprom
Date: Tue, 20 Feb 2024 14:31:29 -0800
Message-Id: <20240220223129.3822480-5-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
References: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
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

Make debugfs vbt only shows valid vbt when read from ACPI opregion.
Make it work when read from firmware/spi/pci oprom cases.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 30 +++++++++++++++++------
 1 file changed, 23 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 4cd338ed362d..b9b4ebc0ecd6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3723,14 +3723,30 @@ static int intel_bios_vbt_show(struct seq_file *m, void *unused)
 	struct drm_i915_private *i915 = m->private;
 	const void *vbt;
 	size_t vbt_size;
+	bool need_cleanup = false;
 
-	/*
-	 * FIXME: VBT might originate from other places than opregion, and then
-	 * this would be incorrect.
-	 */
-	vbt = intel_opregion_get_vbt(i915, &vbt_size);
-	if (vbt)
-		seq_write(m, vbt, vbt_size);
+	vbt = firmware_get_vbt(i915, &vbt_size);
+
+	if (!vbt)
+		vbt = intel_opregion_get_vbt(i915, &vbt_size);
+
+	if (!vbt && IS_DGFX(i915)) {
+		vbt = spi_oprom_get_vbt(i915, &vbt_size);
+		need_cleanup = true;
+	}
+
+	if (!vbt) {
+		vbt = oprom_get_vbt(i915, &vbt_size);
+		need_cleanup = true;
+	}
+
+	if (!vbt)
+		return 0;
+
+	seq_write(m, vbt, vbt_size);
+
+	if (need_cleanup)
+		kfree(vbt);
 
 	return 0;
 }
-- 
2.34.1

