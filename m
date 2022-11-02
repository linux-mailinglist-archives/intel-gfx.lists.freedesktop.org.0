Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBB361609A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:09:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D169310E477;
	Wed,  2 Nov 2022 10:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5986810E477
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383772; x=1698919772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zLInpocq/Doi3riXq9uZRmGmiJ835TS03XlH91I0DkU=;
 b=GP+1scArBs+kWaWirvTa/5t8fW2zhw0zEe3x2UmbuPOlsdSsGWuVeXiq
 j3GbtwnoGveLvZVglHQTEm6+4nEKQqiVgqtmlMdKkxizCjiuxSXTqEZC2
 5KrWa5h60yMyYUbgg16fSTTkhAttkPiPEcGQeQ2CW3Pq5Gkp/FwiaZ7oM
 RKDYySmSIu9S/QFjAhNyJaUoDcmykoQSOldPBHHRJx6QtTZah+fDzCZPD
 WKrbd9FbaEzS9NKzq+ac6OQONgLIpJALtY86wIfyZ6ZUE38cN0sxI7FEh
 X+tlywEFHSMJZdnpR1WF6yI6jhP0OAmeSDbIQdlvSulqgyymiqVVKu7rJ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="309362823"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="309362823"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:31 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="809224818"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="809224818"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:24 +0200
Message-Id: <1ec10e4415cf84c51b7eb51092e81876da0bc902.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 16/16] drm/i915/display: move struct
 intel_link_m_n to intel_display_types.h
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

struct intel_crtc_state in intel_display_types.h actually needs the
struct intel_link_m_n definition, while intel_display.h only needs the
forward declaration.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h       | 10 +---------
 drivers/gpu/drm/i915/display/intel_display_types.h |  9 +++++++++
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 56a443118809..714030136b7f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -53,6 +53,7 @@ struct intel_digital_port;
 struct intel_dp;
 struct intel_encoder;
 struct intel_initial_plane_config;
+struct intel_link_m_n;
 struct intel_load_detect_pipe;
 struct intel_plane;
 struct intel_plane_state;
@@ -287,15 +288,6 @@ enum aux_ch {
 
 #define aux_ch_name(a) ((a) + 'A')
 
-/* Used by dp and fdi links */
-struct intel_link_m_n {
-	u32 tu;
-	u32 data_m;
-	u32 data_n;
-	u32 link_m;
-	u32 link_n;
-};
-
 enum phy {
 	PHY_NONE = -1,
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c6abaaa46e17..8da87cbb172b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -969,6 +969,15 @@ struct intel_mpllb_state {
 	u32 mpllb_sscstep;
 };
 
+/* Used by dp and fdi links */
+struct intel_link_m_n {
+	u32 tu;
+	u32 data_m;
+	u32 data_n;
+	u32 link_m;
+	u32 link_n;
+};
+
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.
-- 
2.34.1

