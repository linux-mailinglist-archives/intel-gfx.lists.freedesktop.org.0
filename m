Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB83573269
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 11:27:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4266898A38;
	Wed, 13 Jul 2022 09:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E20898A37
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jul 2022 09:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657704434; x=1689240434;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=beHbXi/BPJnd0GpqxwdSiVkFCxkyOJSabwZFFPHqilA=;
 b=T9EcpD3Bz5gMey9ZPeAxnqO8D9uPM1vcR0StohxePlPuvBPfQS2OzpXZ
 og+/02H+MzDhtMl2yYyoFQHST0vcT2DdpdDq7TpGpSlaVmVsDaUsJZ7Ds
 EFZ/s5CJXOdP+whzYmDjsPJ6emBxPekkGjL/gIX1j1Mpdb9M+DohRHN7v
 V+A4XugLCOXfS5Cy3KiZ7q6sxqfLp5Z2Bg9oTttEJg2OaJhVxIhN3xxji
 CZtY20yczdthQ+rxmHSN1Aq9iOhtp5KtWHu4S8i3e0/264qPIOTlghp6L
 ilDtM9e30TzsrLqQWkh5DvZwpqdotnT2jgdjvZjVn8kue8NaZUGjScMB+ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="349134443"
X-IronPort-AV: E=Sophos;i="5.92,267,1650956400"; d="scan'208";a="349134443"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 02:27:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,267,1650956400"; d="scan'208";a="592932230"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by orsmga007.jf.intel.com with ESMTP; 13 Jul 2022 02:27:12 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jul 2022 17:27:02 +0800
Message-Id: <20220713092702.28946-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: clear plane color ctl setting when
 turn full plane off
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
Cc: William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Customer report abnormal display output while switch eDP off sometimes.
In current display disable flow, plane will be off at first. Then turn
eDP off and disable HW pipe line. We found the abnormal pixel comes
after turn plane off. Clear plane color ctl register when driver disable
plane can solve this symptom.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Shankar Uma <uma.shankar@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index caa03324a733..90977cfb7ebb 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -620,6 +620,8 @@ skl_plane_disable_arm(struct intel_plane *plane,
 
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
+	if (DISPLAY_VER(dev_priv) >= 10)
+		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), 0);
 }
 
 static void
@@ -638,6 +640,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
 	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
+	intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), 0);
 }
 
 static bool
-- 
2.17.1

