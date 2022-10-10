Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E6D5F9B16
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 10:35:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E2110E4A5;
	Mon, 10 Oct 2022 08:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ED4C10E4A5
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 08:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665390912; x=1696926912;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I5KbHbSRNxJ5dSLkfvIrMcGuD3Dkc9D1nnoQA+nac2Y=;
 b=dlP0Z7UF1c9qmkam13pZnuCfrh8Rz1wntrF8nOhAgMKrxaxW9Fu4+R8u
 YMOMHdU51FjUnlmBMqyHxz8pcTVPpU0Qqdto492eSPNbndOEatONk7I0N
 HA5UagcQZA8JrFs8uOLHDefiSIADE8EAWoRUeSxxkpiPf5U14F7i+YwrB
 PFvGZL+lu2W8xMv39iZMcx3PMKIe6urAN0gCvLrhj4ffsk+h8jWvzZKW7
 ZGcu9r6/Op8/dx8AGbF5gVJMgjDhW94ekFiQWBgFNZRTkQlcm6fwcYPyL
 7qkN60Al5qa4nG/1SpjB8SnFXbBRcOVwEKKy1Ian7wPjgRoaG9tnypkH5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="284553071"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="284553071"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 01:35:11 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="954839309"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="954839309"
Received: from vgovind2-mobl3.tm.intel.com ([10.237.50.39])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 01:35:10 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Oct 2022 11:34:46 +0300
Message-Id: <20221010083447.139768-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221010083447.139768-1-vinod.govindapillai@intel.com>
References: <20221010083447.139768-1-vinod.govindapillai@intel.com>
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
Cc: jani.nikula@intel.com
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

