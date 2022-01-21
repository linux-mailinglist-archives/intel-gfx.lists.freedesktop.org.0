Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C656495F5A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:01:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98DFC10EA10;
	Fri, 21 Jan 2022 13:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA31210EA17
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770064; x=1674306064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CHPyJxUw3LI3OvxtI86yQ3i3jvmweUbGhA4UiDp93es=;
 b=W8fURwXwrDhEKhzcGa4PdZfb6lR/4shSmUEgjHZyRrl6kqSvNB+BVirW
 VqS70U5HtnjCV5hNqvXgDm4yeqDiYby4Ql8KNxxhadvnrhP9aWoOf6JGm
 4CCo6sJPjUOdx6GtivdGsps31+N4PL/t86G+zWvFAdPVimmNGDhnSGsei
 TEqwMCLsyWR0GCtYXSnplzKG4MtaVxT7NjioctMXYM9oHW1KWrMEpqvWC
 jVbRQNNsX2LLUKdEZZ+sux+5+OxZCmD45pO52PCKqqqylnjjMVlr7j4yn
 eGqQJo/cGIdE6A86Keamsff1F9LncugTcZ2QwOz181It7K/K0b5jzHxrS g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="233005230"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="233005230"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:03 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="519064666"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:00:32 +0200
Message-Id: <a8276434c0a899009be05cb987fdbf80d25fd175.1642769982.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642769982.git.jani.nikula@intel.com>
References: <cover.1642769982.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/9] drm/i915/hotplug: convert to drm device
 based logging
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

Prefer drm device based logging.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 955f6d07b0e1..912b7003dcfa 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -281,13 +281,13 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
 		ret = true;
 
 	if (ret) {
-		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] status updated from %s to %s (epoch counter %llu->%llu)\n",
-			      connector->base.base.id,
-			      connector->base.name,
-			      drm_get_connector_status_name(old_status),
-			      drm_get_connector_status_name(connector->base.status),
-			      old_epoch_counter,
-			      connector->base.epoch_counter);
+		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] status updated from %s to %s (epoch counter %llu->%llu)\n",
+			    connector->base.base.id,
+			    connector->base.name,
+			    drm_get_connector_status_name(old_status),
+			    drm_get_connector_status_name(connector->base.status),
+			    old_epoch_counter,
+			    connector->base.epoch_counter);
 		return INTEL_HOTPLUG_CHANGED;
 	}
 	return INTEL_HOTPLUG_UNCHANGED;
-- 
2.30.2

