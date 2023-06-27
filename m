Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB8E73FA9E
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 12:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D1A10E2DB;
	Tue, 27 Jun 2023 10:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 492E010E2DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 10:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687863548; x=1719399548;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MUU/mpkau8OBEHkRy5EKuL9KlwUKB+V2Qq6Xx2kR6FQ=;
 b=Qsk/Gghe8EDt6BaPBy+FTSSoo4HkrF++tCf1u2VTe/05SI0w0YHn8tbT
 PtL74cfIJ3mACuJKopY7gSiXtFQ/qcO5krTMyZCQmmfQSObFxq0EbyywH
 9pQvuJmhjQ/6ae2naZ/viWB6OQKbrbkZsNavx86WE84Ex9m0VhLbrC0OZ
 5yCg8necF7Hl6hrH0pbht0RrGUtqbDbR0qmEuaN2u4GJ46Ywb0iCF9SBV
 0BDRvvl+EgOJmBgH03j6pGRgINc+mFUrJxXEPRQAayUioa2GxRCURXqOe
 k7cqZzLsXk9EaW7Mgj4/UUvhFmj8dxvdK5hQa4jXL+dsq92tx3Vt8u99O Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="351322671"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="351322671"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 03:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="666650837"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="666650837"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.48])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 03:59:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jun 2023 13:58:49 +0300
Message-Id: <20230627105849.274263-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dram: replace __raw_uncore_read32()
 with intel_uncore_read_fw()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The __raw_uncore_* interface is supposed to be intel_uncore.[ch]
internal only. Replace the remaining outside user with
intel_uncore_read_fw(), which is essentially the same thing.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 9f0651d48d41..15492b69f698 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -704,7 +704,7 @@ void intel_dram_edram_detect(struct drm_i915_private *i915)
 	if (!(IS_HASWELL(i915) || IS_BROADWELL(i915) || GRAPHICS_VER(i915) >= 9))
 		return;
 
-	edram_cap = __raw_uncore_read32(&i915->uncore, HSW_EDRAM_CAP);
+	edram_cap = intel_uncore_read_fw(&i915->uncore, HSW_EDRAM_CAP);
 
 	/* NB: We can't write IDICR yet because we don't have gt funcs set up */
 
-- 
2.39.2

