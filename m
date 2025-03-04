Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92504A4D67A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:32:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3287910E534;
	Tue,  4 Mar 2025 08:32:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P5GxEWZy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C10810E533;
 Tue,  4 Mar 2025 08:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077144; x=1772613144;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UrOstT9nDIP1gH0abZ36+tZpxYJVMX0d0gj77KPUHn0=;
 b=P5GxEWZyQSq549JlCmRwEbaDE1PjtHJu0IJQhcnFaGx0sGLlZGrYzQyj
 LDP9RAPsBKWXOyTW5hbiV137OxpX8H6dV+iISX/4RAfu6xcpcURc88ia+
 10ioZltj7m1lYhJPQl2g3h+kYMvuQjkhtnzgHVlH62tDkgV35peXN2gnf
 YX/QGgMQ19BfWY9GN4Pj1nkisoR+UIedgBq4F6rZHOfQtdh2UQGN4iJi2
 O74LEbdrFyPNku3zFu1JRfl1lJ1iP7X6dKU80hLpqm6jEW+XDlAWBkOLZ
 ADAgo/VqASBwtjSiWv1CZnBvGqo6n0JYbDknQnEdvXoGiUOuAwzEKcJ+K w==;
X-CSE-ConnectionGUID: ru1WhOPpRDuMlPgsipC+iQ==
X-CSE-MsgGUID: Ajr4+vrzSgy12TAzr6IO8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="45910186"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="45910186"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:24 -0800
X-CSE-ConnectionGUID: 0KtR4JZ3Si60jyt4FMZKgQ==
X-CSE-MsgGUID: c49/xGA/TvKEYtU89APvVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155492242"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:22 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 14/22] drm/i915/vrr: Always set vrr vmax/vmin/flipline in
 vrr_{enable/disable}
Date: Tue,  4 Mar 2025 13:49:40 +0530
Message-ID: <20250304081948.3177034-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

For platforms for which vrr timing generator is always set, VRR_CTL
enable bit does not need to toggle, so modify the vrr_{enable/disable}
for this.
At the moment the helper intel_vrr_always_use_vrr_tg() return false for
all cases. This will be set later when all other bits are in place.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 40 ++++++++++++++++--------
 1 file changed, 27 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index fbb8a5a5f444..c1387d3f60b2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -554,6 +554,16 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
 }
 
+static
+bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
+{
+	if (!HAS_VRR(display))
+		return false;
+
+	/* #TODO return true for platforms supporting fixed_rr */
+	return false;
+}
+
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -572,13 +582,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
-	if (crtc_state->cmrr.enable) {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
-			       trans_vrr_ctl(crtc_state));
-	} else {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	if (!intel_vrr_always_use_vrr_tg(display)) {
+		if (crtc_state->cmrr.enable) {
+			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
+				       trans_vrr_ctl(crtc_state));
+		} else {
+			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+		}
 	}
 }
 
@@ -590,12 +602,14 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-		       trans_vrr_ctl(old_crtc_state));
-	intel_de_wait_for_clear(display,
-				TRANS_VRR_STATUS(display, cpu_transcoder),
-				VRR_STATUS_VRR_EN_LIVE, 1000);
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+	if (!intel_vrr_always_use_vrr_tg(display)) {
+		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+			       trans_vrr_ctl(old_crtc_state));
+		intel_de_wait_for_clear(display,
+					TRANS_VRR_STATUS(display, cpu_transcoder),
+					VRR_STATUS_VRR_EN_LIVE, 1000);
+		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+	}
 
 	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
-- 
2.45.2

