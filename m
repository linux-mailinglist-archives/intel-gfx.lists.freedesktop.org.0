Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8550486B9F6
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 22:34:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A0A610E36D;
	Wed, 28 Feb 2024 21:34:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wvo/Rb6d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C4F110E284
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709156048; x=1740692048;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+ACsMrM6XCjy13Tos0R3Pp75Uipg06AsnDFL1Afx9Po=;
 b=Wvo/Rb6dc83YpOhua7KctSqMMEzqBQpsf2vtMoF6Ge8RaW3uwmdYCPjA
 ucFSixRiYpWJ3ZDUbDmUkUXWRJMnWA1I4IGAerUIQwAjmIayQo7gvlRLD
 hRnZATPlsAZgl3kkCWV060kSBg3q2gxnTwUSsoVCv7+pIGjoCE8cyZ50q
 aIuAaP8sd/i8Qayw2LkLKHl5N3F18t1C9+W+Q6w3LURtdxlLP8ZoAQ08h
 dn+JPOzOkWJfpJohCNO6ajQopCzj2Q9ZoXCCrk4MFvOA2eg3k2yRVLrcO
 xNp9jUc0hoWRkDSV+FdcGkykS+o7eo2G7khBC46m8GNfxqm4BcOpBRpfA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3753123"
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="3753123"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="7623726"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:07 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 1/6] drm/i915: Pass size to oprom_get_vbt
Date: Wed, 28 Feb 2024 13:32:30 -0800
Message-Id: <20240228213235.2495611-2-radhakrishna.sripada@intel.com>
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

oprom_get_vbt will later be used to show the contents of vbt for which
the size of vbt is needed.

v2: Avoid overuse of *size and remove dummy size variable in
    intel_bios_init(Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index fe52c06271ef..8ff0fdd5a828 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3008,7 +3008,8 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 	return NULL;
 }
 
-static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
+static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
+					size_t *sizep)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	void __iomem *p = NULL, *oprom;
@@ -3057,6 +3058,9 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 
 	pci_unmap_rom(pdev, oprom);
 
+	if (sizep)
+		*sizep = vbt_size;
+
 	drm_dbg_kms(&i915->drm, "Found valid VBT in PCI ROM\n");
 
 	return vbt;
@@ -3106,7 +3110,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	}
 
 	if (!vbt) {
-		oprom_vbt = oprom_get_vbt(i915);
+		oprom_vbt = oprom_get_vbt(i915, NULL);
 		vbt = oprom_vbt;
 	}
 
-- 
2.34.1

