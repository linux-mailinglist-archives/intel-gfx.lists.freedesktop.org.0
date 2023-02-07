Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B32468DD8E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 17:04:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6852410E547;
	Tue,  7 Feb 2023 16:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 416C410E53D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 16:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675785866; x=1707321866;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lJX0GejQ41L+IhlIJyVRvXpHLOH7zp13lnow4TvywMQ=;
 b=nlCeoPJwbXw3BpFcWRly5bZCveEBu8UcMnSHCovkjAXkMEdmkyUbiy4b
 E2uzcOKHd8fT/0ieZWvrLfvlbuhV7HkPWHgTcyY/pq8przwTqyfwWXwY8
 olXyVT/Ft/McwQCZSK4LEOE8QQBnxbhQptqqYy7Si+I35RlQ7Sv7yQdG7
 ZC3bxNr6ZUYaXxkyipv4q8TbuGI5uQVNwJyLmDNQKVSj7UHNn/MBIR/Nl
 a91GChpWYe1hVvzjy8WOfz7mS8u3hYF7OTYlG7zyIi5EC5PHEWEOplQGO
 FUwoeRTl7eMAZxknXX8dxry/1Hgv4vOQF5t/6vMWMbxEJ12BXRf/qZChL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="356915838"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="356915838"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 08:03:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="840821366"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="840821366"
Received: from kfurnanz-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.48.81])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 08:03:25 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 18:03:09 +0200
Message-Id: <20230207160311.930772-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207160311.930772-1-vinod.govindapillai@intel.com>
References: <20230207160311.930772-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: ignore long HPDs based
 on a flag
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

Some panels generate long HPD events even while connected to
the port. This cause some unexpected CI execution issues. A
new flag is added to track if such spurious long HPDs can be
ignored and are not processed further if the flag is set.

v2: Address patch styling comments (Jani Nikula)

v3: Ignoring the HPD moved to hotplug handler and now applies
    to all types of outputs (Imre Deak)

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_hotplug.c      |  7 +++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index fb8670aa2932..251f774bd590 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -182,6 +182,17 @@ struct intel_hotplug {
 	 * blocked behind the non-DP one.
 	 */
 	struct workqueue_struct *dp_wq;
+
+	/*
+	 * Flag to track if long HPDs need not to be processed
+	 *
+	 * Some panels generate long HPDs while keep connected to the port.
+	 * This can cause issues with CI tests results. In CI systems we
+	 * don't expect to disconnect the panels and could ignore the long
+	 * HPDs generated from the faulty panels. This flag can be used as
+	 * cue to ignore the long HPDs and can be set / unset using debugfs.
+	 */
+	bool ignore_long_hpd;
 };
 
 struct intel_vbt_data {
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 907ab7526cb4..f0a2aa648bb8 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -389,6 +389,13 @@ static void i915_hotplug_work_func(struct work_struct *work)
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 
+	/* Skip calling encode hotplug handlers if ignore long HPD set*/
+	if (dev_priv->display.hotplug.ignore_long_hpd) {
+		drm_dbg_kms(&dev_priv->drm, "Ignore HPD flag on - skip encoder hotplug handlers\n");
+		mutex_unlock(&dev_priv->drm.mode_config.mutex);
+		return;
+	}
+
 	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		enum hpd_pin pin;
-- 
2.34.1

