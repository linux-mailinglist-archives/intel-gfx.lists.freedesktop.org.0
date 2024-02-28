Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B4C86B9F4
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 22:34:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B611410E272;
	Wed, 28 Feb 2024 21:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hGU6fwCE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 308D510E272
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709156048; x=1740692048;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=07JAZBsgzmaPPJ0m7ApvyNPuPFcrdTk0nvEUDIIe18g=;
 b=hGU6fwCEkLOR81Sop0exRowggIypqSR2D3I8Zae8aBEXMRpXZk67KmMh
 doeOd5yvrk+w+vEUQMdzElNgPgG2UHmFxi6bPHz/y0xcR7Ie3e8JfBmxp
 4SzYQz0zpnv2DQnReneCSb00jf/38//3JwsgJvKfkBSxIR77vsIvf+xBB
 LmIqPcOEE8NRyxsTD/AdPoFe9ShxAHWPUzxYN3dwXBZqcrBVyBFN5syH1
 tjqjh4VoU+YHVVo1fK9kh89o+2x/f9T+1wo58GebZ9qPhXt0TNFsZx1W6
 A87HGJk4LzKHoaaSO9DXY9yNvHlYzcVOhca1fNDCuJx9nxZr728GcUCHT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3753124"
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="3753124"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="7623729"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:07 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 2/6] drm/i915: Pass size to spi_oprom_get_vbt
Date: Wed, 28 Feb 2024 13:32:31 -0800
Message-Id: <20240228213235.2495611-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
References: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
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

spi_oprom_get_vbt will later be used to show the contents of vbt for
which the size of vbt is needed.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 8ff0fdd5a828..2723f4319b5f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2957,7 +2957,8 @@ static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
 	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
 }
 
-static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
+static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915,
+					    size_t *size)
 {
 	u32 count, data, found, store = 0;
 	u32 static_region, oprom_offset;
@@ -3000,6 +3001,9 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 
 	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
 
+	if (size)
+		*size = vbt_size;
+
 	return (struct vbt_header *)vbt;
 
 err_free_vbt:
@@ -3105,7 +3109,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	 * PCI mapping
 	 */
 	if (!vbt && IS_DGFX(i915)) {
-		oprom_vbt = spi_oprom_get_vbt(i915);
+		oprom_vbt = spi_oprom_get_vbt(i915, NULL);
 		vbt = oprom_vbt;
 	}
 
-- 
2.34.1

