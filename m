Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 534535B5EA8
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A16610E19A;
	Mon, 12 Sep 2022 16:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D8110E448
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001719; x=1694537719;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=byAekGlPgVj6JGQ9uC4Y3s9EdS3v9xjIif8M4eC5J+Q=;
 b=Aqr7QnWnirFjOg5tJxFBcA9WyXP8ntsanAEqWFtFZbs5cbKbWmeZifCr
 FT6w18kV2Tk3bT968U/kDb/mti3eMdkkAgS/dMQs/2C1T+pvJ7fcg/Byx
 gcv0LSdWemHl3QRekW+HVLz9LRD+p9NIRrMsEJIknd9WewXiDqDjmrAUZ
 1oZeUX7sTV/75q8OP+BmCthnjAofj62eN5UlchDTfL80iBndObARJuN3B
 EFZW7r45kRze11FDULckgQE7PAyrxPtIgAQLBg6QQhQI8kMncITRyOR+3
 LSmbImVxqaYs+8DurXBKjl3eoYwewTiyZr8hGGEYAKvhPQJUsz/oX+den A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="284937337"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="284937337"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:18 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="758460644"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:31 +0300
Message-Id: <f80ad4c5cbdcb1295f3720964f82d95567be6922.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/15] drm/i915/display: reduce includes in
 intel_hdmi.h
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

Only include what's needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 93f65a917c36..774dda2376ed 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -6,20 +6,20 @@
 #ifndef __INTEL_HDMI_H__
 #define __INTEL_HDMI_H__
 
-#include <linux/hdmi.h>
 #include <linux/types.h>
 
+enum hdmi_infoframe_type;
+enum port;
 struct drm_connector;
+struct drm_connector_state;
 struct drm_encoder;
 struct drm_i915_private;
 struct intel_connector;
+struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_encoder;
-struct intel_crtc_state;
 struct intel_hdmi;
-struct drm_connector_state;
 union hdmi_infoframe;
-enum port;
 
 void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 			       struct intel_connector *intel_connector);
-- 
2.34.1

