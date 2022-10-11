Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DB35FAF48
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 11:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6004C10E4E9;
	Tue, 11 Oct 2022 09:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8836D10E4E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 09:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665480354; x=1697016354;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I5KbHbSRNxJ5dSLkfvIrMcGuD3Dkc9D1nnoQA+nac2Y=;
 b=S+21oPoA7ywMxiT1ePn4Z7ohm/vJFX+P8tRaVvKVfOGsANOw89LMOp+Q
 gNqTD4iP0iFc47pYxZ1dGaTgwa8py+RM9EdLJ+o/ihe331cMkWMklrh8S
 M51vsNXaIGXamShn/PXMmczeFfvVpqSnG9PuFipKBFJbKvmAnwX/aZ56r
 x29V1uCghxp/F+2xAa0wv/4NJZ4JSoyOk3vcca67/krSURWcfAXyP64tM
 Ve56TOaTXYCz9s6BzkRkGm00AqSOsYfMj/GyG17kyFinO7mQTcqVwAfYD
 iXWQhm0bWmz86YTAuVDo2NQx9OwWqrOAD0xb/1uC1VDcz9PJH52ztvJcU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="330932400"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="330932400"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 02:25:33 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="730908310"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="730908310"
Received: from mlankhor-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.41.37])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 02:25:30 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 12:25:07 +0300
Message-Id: <20221011092508.445966-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221011092508.445966-1-vinod.govindapillai@intel.com>
References: <20221011092508.445966-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/display: ignore long HPDs based
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some panels generate long HPD events even while connected to
the port. This cause some unexpected CI execution issues. A
new flag is added to track if such spurious long HPDs can be
ignored and are not processed further if the flag is set.

v2: Address patch styling comments (Jani Nikula)

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

