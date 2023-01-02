Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F084765AD6E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 07:20:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426FE10E18A;
	Mon,  2 Jan 2023 06:20:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA4010E0CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 06:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672640413; x=1704176413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z+ofmlmt/BsCW8VCe6+BRYbH5eHuR/1UMtdZJnGjrwo=;
 b=VQaPRZeV2KAUa+eAQjQnltuAX3dIcY5hzRLkiMWByPx3ZiK1eigkXLRd
 MDiVV1ph1Iw1gINFqjGXJpyMe1PlEeopEC+wO+y2rx46CaJf5N5ZagfNz
 vfGFEa2CIT5CDls6h6lvI/NGeLb6d7DG4Qr5/TDcRjXIdwTlmni7MWKS7
 CAbO6v/rj/2RVW880TEC+nOe3ZDeWhW//1qdCr1iA41/7tzo7wxapBtNm
 2SyTyIaeG/vlONOhpBIShUaFMc9Jwe/oIiNCQPVdcv6VoCq9MuWS6nrCw
 GDrK1lQWH16r89tzZeKHnbEQykI0zUpHLguE65U2e2G6CokMbX95GS9KM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="348657600"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="348657600"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 22:20:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="647840548"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="647840548"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga007.jf.intel.com with ESMTP; 01 Jan 2023 22:20:11 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Jan 2023 11:50:02 +0530
Message-Id: <20230102062005.720964-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
References: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/4] drm/i915/quirks: Add quirk for 480MHz CDCLK
 step
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A new CDCLK step of 480MHz has been added on SKUs that has a
RPL-U device id. This is done to support 120Hz displays with
more efficiency.

RPL-U device ids are currently added within the RPL-P sub
platform. It seems to be an overkill to add a separate sub
platform just to support this change. Therefore, quirks
are a good way to achieve the same.

BSpec: 55409

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_quirks.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 6e48d3bcdfec..0a30499835b3 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -65,6 +65,16 @@ static void quirk_no_pps_backlight_power_hook(struct drm_i915_private *i915)
 	drm_info(&i915->drm, "Applying no pps backlight power quirk\n");
 }
 
+/*
+ * A new step of 480MHz has been added on SKUs that have a RPL-U device id.
+ * This particular step is to better support 120Hz panels.
+ */
+static void quirk_480mhz_cdclk_step_hook(struct drm_i915_private *i915)
+{
+	intel_set_quirk(i915, QUIRK_480MHZ_CDCLK_STEP);
+	drm_info(&i915->drm, "Applying 480MHz CDCLK step quirk\n");
+}
+
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
@@ -199,6 +209,10 @@ static struct intel_quirk intel_quirks[] = {
 	/* ECS Liva Q2 */
 	{ 0x3185, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
 	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
+	/* RPL-U */
+	{ 0xA7A1, PCI_ANY_ID, PCI_ANY_ID, quirk_480mhz_cdclk_step_hook },
+	{ 0xA721, PCI_ANY_ID, PCI_ANY_ID, quirk_480mhz_cdclk_step_hook },
+	{ 0xA7A9, PCI_ANY_ID, PCI_ANY_ID, quirk_480mhz_cdclk_step_hook },
 };
 
 void intel_init_quirks(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index 10a4d163149f..71e05684f5f4 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -17,6 +17,7 @@ enum intel_quirk_id {
 	QUIRK_INVERT_BRIGHTNESS,
 	QUIRK_LVDS_SSC_DISABLE,
 	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
+	QUIRK_480MHZ_CDCLK_STEP,
 };
 
 void intel_init_quirks(struct drm_i915_private *i915);
-- 
2.25.1

