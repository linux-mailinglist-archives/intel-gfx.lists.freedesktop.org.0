Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 536EEA2739F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:59:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 878DF10E4CF;
	Tue,  4 Feb 2025 13:59:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CNy1MboZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10EA110E65B;
 Tue,  4 Feb 2025 13:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738677552; x=1770213552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rTNMmsgcDoHI3L3bK7pL4SmvzAgtKV0ytkPbbtkSW7E=;
 b=CNy1MboZv4NFh5e7qDXS7SL36ApJuSTrAMAqPP+H3Pab9QYZ9Rr85Y6a
 5mtT4DskKW14IKXB7KzF6LKmz+On/6XuSdC2bSWGEQu+jaszaDisrTleN
 mgxJ96X4WsqR8rbeELbKsDD7NvpLc/hsNXe67wl9UFspGgnmRaG3Dyq1l
 ky2vZfDCQPuGrNp8knluelIAUy7uXzRv5JH99sIOO9tdmJ3XKsLtjiDYB
 QfM5vF/Lyo7N+FvByGJs3Pu1RDmLtQfLJbnSLNVb0MoGJvxGe4q5ny4Gu
 uAqfvoj3dK+sMYszKJbt83rlgQmSN1YM/BpgHljNl7C1qbCuSHGjp+Xg9 A==;
X-CSE-ConnectionGUID: zrTyGA9wQ2CPLQwcYw+O+Q==
X-CSE-MsgGUID: bPsA34WPT56jzXT4XC+ezA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39359056"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39359056"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:59:12 -0800
X-CSE-ConnectionGUID: LgpiXMXiQ0aj0VjEsOqT+g==
X-CSE-MsgGUID: 32+tgqv0T4qogiGk/arN1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110484287"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:59:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 5/6] drm/i915/lspcon: remove dp_to_lspcon(),
 hide enc_to_intel_lspcon()
Date: Tue,  4 Feb 2025 15:58:42 +0200
Message-Id: <ea14ba07b88ba5ed65d832c89a3415b7a91edea9.1738677489.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738677489.git.jani.nikula@intel.com>
References: <cover.1738677489.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

There are no users left for dp_to_lspcon(), remove it. The only two
users of enc_to_intel_lspcon() are in intel_lspcon.c, so hide it there.

v2: Rebase

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 12 ------------
 drivers/gpu/drm/i915/display/intel_lspcon.c        |  5 +++++
 2 files changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index cb51b7936f93..a358620e2c09 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1982,24 +1982,12 @@ static inline bool intel_encoder_is_hdmi(struct intel_encoder *encoder)
 	}
 }
 
-static inline struct intel_lspcon *
-enc_to_intel_lspcon(struct intel_encoder *encoder)
-{
-	return &enc_to_dig_port(encoder)->lspcon;
-}
-
 static inline struct intel_digital_port *
 dp_to_dig_port(struct intel_dp *intel_dp)
 {
 	return container_of(intel_dp, struct intel_digital_port, dp);
 }
 
-static inline struct intel_lspcon *
-dp_to_lspcon(struct intel_dp *intel_dp)
-{
-	return &dp_to_dig_port(intel_dp)->lspcon;
-}
-
 static inline struct intel_digital_port *
 hdmi_to_dig_port(struct intel_hdmi *intel_hdmi)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 45b63fea3642..02c22a981fe1 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -55,6 +55,11 @@
 #define  LSPCON_PARADE_AVI_IF_KICKOFF (1 << 7)
 #define LSPCON_PARADE_AVI_IF_DATA_SIZE 32
 
+static struct intel_lspcon *enc_to_intel_lspcon(struct intel_encoder *encoder)
+{
+	return &enc_to_dig_port(encoder)->lspcon;
+}
+
 static struct intel_dp *lspcon_to_intel_dp(struct intel_lspcon *lspcon)
 {
 	struct intel_digital_port *dig_port =
-- 
2.39.5

