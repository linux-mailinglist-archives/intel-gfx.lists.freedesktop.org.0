Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC17E57DA94
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jul 2022 09:03:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A905610E2B6;
	Fri, 22 Jul 2022 07:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDFD610E032
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jul 2022 07:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658473435; x=1690009435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yUB4TeBkEEZ4AtAjbEqnajgPq0kv/qIwCjaO06FlYq4=;
 b=Ml1SF8ZDliUfMvYBHVjuobOmSn/U9chaeZUOto8xmwtiI4JepVOJjOzh
 YyonCdkyc2Tm3MFaUl55tBbTwUtZDvcJEHJhe9fvqPf5CJgj+Y+V8Q4cG
 puMTuQjxNWEr/CgnrfRNcqXygIj62J0bpOrS9guq6BOXk2lE1Z9CwBCnd
 88gfILGRct0zYzOTLq9KIrsmyoXyH7HT6aoObFeplKkyrEVVxM4BNgOM+
 eObDxylHYDOSIu8SJSZdfJvImmsU6yXDv90/XJ+A1C+0/FxByjCTUjTl3
 oTWLi6Udd+g1yTfk5N60FuXcU63vOjc93fUG7xLOOxdyl62pV9BtgFbWn A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="348955746"
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="348955746"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 00:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="598753462"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by orsmga002.jf.intel.com with ESMTP; 22 Jul 2022 00:03:49 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jul 2022 15:03:43 +0800
Message-Id: <20220722070343.10654-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220713092702.28946-1-shawn.c.lee@intel.com>
References: <20220713092702.28946-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2] drm/i915/display: clear plane color ctl setting
 when turn full plane off
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
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
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

