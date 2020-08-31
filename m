Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2876B257589
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Aug 2020 10:37:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BCC289D42;
	Mon, 31 Aug 2020 08:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A011B89D42
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Aug 2020 08:37:14 +0000 (UTC)
IronPort-SDR: ngD1PxIxlETULfLgfWqVcKh01X6ZpAGqvjk3MWSat8AMkHGkrw9w+cEddPtL1BCr5BB8kvKh2u
 +89rE+N5ufVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9729"; a="221166794"
X-IronPort-AV: E=Sophos;i="5.76,375,1592895600"; d="scan'208";a="221166794"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 01:37:13 -0700
IronPort-SDR: ZZH6qiwV8x/6sE0NbgH9j42k+jf/dmAlHvgr8IWrN8+0Ykqlk+CmGqCeYwC1h+Vo9PSmYej7M+
 TdOLue3fs/5w==
X-IronPort-AV: E=Sophos;i="5.76,375,1592895600"; d="scan'208";a="501777552"
Received: from ngbradon-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.94.237])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 01:37:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Aug 2020 11:36:57 +0300
Message-Id: <20200831083657.15600-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200831083657.15600-1-jani.nikula@intel.com>
References: <20200831083657.15600-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/dp: use opregion mailbox #5
 EDID for eDP, if available
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If a panel's EDID is broken, there may be an override EDID set in the
ACPI OpRegion mailbox #5. Use it if available.

Cc: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c57ac83bf563..d1307be196a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -8114,6 +8114,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		goto out_vdd_off;
 	}
 
+	/* Set up override EDID, if any, from ACPI OpRegion */
+	intel_opregion_edid_override(intel_connector);
+
 	mutex_lock(&dev->mode_config.mutex);
 	edid = drm_get_edid(connector, &intel_dp->aux.ddc);
 	if (edid) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
