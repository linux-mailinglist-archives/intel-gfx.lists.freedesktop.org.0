Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C065F7794
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 13:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0BB810E950;
	Fri,  7 Oct 2022 11:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7172A10E94E
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Oct 2022 11:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665142817; x=1696678817;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A1GV6/Mnt129uW8rcmcgIFfnSn6odtfztNhv1rsFwMc=;
 b=cwWvgAG/sbQjGt7ABBRbcMz28D4afqZ8z1sn3EzoGL3oK0cXpk202UL1
 WwHEqSYYiWEazWxrVj2wCnWaTEqz0cTnSpH0JIcgC6qy707WxTqLKOV3x
 ua0JfkRqVcVqoLouXiagvmAS9+xGfQuknOdvQKZ/GljhwEHOwBbMJnYI9
 HnDD1EodU9V0D50LaZHuEPGvDFghieYzbhkTbbMqpEDHy6K4AdqFNo0FN
 ijcCtXpFBPG5OL0+OmcYa7UiXBwq2znVhr/HZGADSdkIRtw/w2XytxYG8
 yiKAoPkvCQaXjhR0uzeh4/8Gkv7eSFXUs324L2Zj8N2PXymb0FYkpA6im g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="304715018"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="304715018"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 04:40:17 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="714247891"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="714247891"
Received: from tmelzer-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.61.59])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 04:40:15 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Oct 2022 14:39:57 +0300
Message-Id: <20221007113958.1890779-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221007113958.1890779-1-vinod.govindapillai@intel.com>
References: <20221007113958.1890779-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: ignore long HPDs based on
 a flag
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

Some panels generate long HPD events even while connected to
the port. This cause some unexpected CI execution issues. A
new flag is added to track if such spurious long HPDs can be
ignored and are not processed further if the flag is set.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c           |  7 +++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 96cf994b0ad1..f84a2e760ef4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -170,6 +170,17 @@ struct intel_hotplug {
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
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 70b06806ec0d..87a0d01d8003 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5092,6 +5092,13 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 		return IRQ_HANDLED;
 	}
 
+	if (i915->display.hotplug.ignore_long_hpd && long_hpd) {
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] ignoring long hpd\n",
+			    dig_port->base.base.base.id,
+			    dig_port->base.base.name);
+		return IRQ_HANDLED;
+	}
+
 	drm_dbg_kms(&i915->drm, "got hpd irq on [ENCODER:%d:%s] - %s\n",
 		    dig_port->base.base.base.id,
 		    dig_port->base.base.name,
-- 
2.34.1

