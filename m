Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E43A4484814
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 19:49:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 905DD10E232;
	Tue,  4 Jan 2022 18:49:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BADEA10E225;
 Tue,  4 Jan 2022 18:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641322149; x=1672858149;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FJ0Oe5d0fcKbZzQyjft0luvMtS/fFn6PocjeuNV2Je4=;
 b=c2qQ4SgPfmxX4yGmvcXK476nuF2WqF1ORpSA76R8USsLq1I7oAJlTAtg
 X4n6odhlfCwyHI0EJlGg6Gswsz8UldiHLUWct7gdLrgkMEuJZ4LrwrQoT
 e9GYqK6veMoJlx6cbsloih/R4j6JC9qK8AMaHGPNzGE8Qp+hM448LSUTI
 Sa/gZfS/737M8/BVWaOeXtgOs+61j8e1L/L1rSBH1rV5ZfsJiURHxAUlt
 MUr0wenEKg7yQT69214+1ePy5K0CcxXZOixQX9o4FypfUDb56XaO915hY
 ThPlDzbRy6HEYcgKqCEJcu2CKJejcyOsOsRfRY/kKMOGwMmpm025q2l5h Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242076314"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="242076314"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 10:49:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="688674273"
Received: from gtobin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.253])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 10:49:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue,  4 Jan 2022 20:48:57 +0200
Message-Id: <20220104184857.784563-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220104184857.784563-1-jani.nikula@intel.com>
References: <20220104184857.784563-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/mst: use DP_GET_SINK_COUNT() for sink
 count in ESI
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Take bit 7 into account when reading sink count from
DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_dp_mst_topology.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
index f3d79eda94bb..ab4372e9fe43 100644
--- a/drivers/gpu/drm/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/drm_dp_mst_topology.c
@@ -4196,7 +4196,7 @@ int drm_dp_mst_hpd_irq(struct drm_dp_mst_topology_mgr *mgr, u8 *esi, bool *handl
 	int ret = 0;
 	int sc;
 	*handled = false;
-	sc = esi[0] & 0x3f;
+	sc = DP_GET_SINK_COUNT(esi[0]);
 
 	if (sc != mgr->sink_count) {
 		mgr->sink_count = sc;
-- 
2.30.2

