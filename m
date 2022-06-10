Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 791CF546090
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 10:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C9C113242;
	Fri, 10 Jun 2022 08:55:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A7F911A306
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 08:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654851303; x=1686387303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tVAVLQGPK4D4x/rfdieo3QLGhnrvuVt5pBpmYLIceG4=;
 b=LUfXI+ut/yZpI1sdH2SrrIepF7MtES9vlPuA4PvnFT/msyb/oRmYOWjG
 TzX6VOadibqHAtKH85+31GTMizPu2Qwbep40Lqx5TJY32clkGO4XRF+yK
 y1uI2tMSJrKE0Zk7PEEjOogY4Erc9haID9o51Fk6ofoHsu5nTmj6dpbeP
 42JUzbEoCvhtp7fJG4Tkx5UlgTw3/t27Lhx6aHRab7Tdwz0WA+pyCU+/4
 En7xmiCxcAhOCU/aWQWXu1Iryq/3lumXANXDo3kTFomFsRVx0AIv7L/eB
 sKFDqnJCp7NTLYEnfe9FSfrAyFCJ/5LbfONZc6FJbgYGTsibrJgBgRxnm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="278367859"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="278367859"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 01:55:03 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="586105757"
Received: from seamusk-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.39.102])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 01:55:01 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 11:54:29 +0300
Message-Id: <20220610085429.52935-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220610085429.52935-1-jouni.hogander@intel.com>
References: <20220610085429.52935-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915: Do not start connector polling
 on headless sku
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Connector polling is waking up the polled device. Polling
is unnecessary if our device is known to not have display.

Fix this and save some power by disabling starting connector
polling when we are having headless sku. Use information from
opregion.

v2: Move headless sku check into INTEL_DISPLAY_ENABLED macro

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9805c6e6d4da..a5bc6a774c5a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1342,7 +1342,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 /* Only valid when HAS_DISPLAY() is true */
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
-	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
+	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)),		\
+	 !(dev_priv)->params.disable_display &&				\
+	 !intel_opregion_headless_sku(dev_priv))
 
 #define HAS_GUC_DEPRIVILEGE(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_guc_deprivilege)
-- 
2.25.1

