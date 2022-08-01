Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9759D586D7F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Aug 2022 17:16:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 650DF8E5D8;
	Mon,  1 Aug 2022 15:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C89348F3B6
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Aug 2022 15:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659366981; x=1690902981;
 h=from:to:cc:subject:date:message-id;
 bh=GrvNYL8Vu3e96CFmCE+JH45uH44ezu1z6dRO9CKx1zk=;
 b=YDSG2nYuF9IEyblisoqPyHXXDaTtD1VUFUlNwURJ/IAWYMvKlzELvX1U
 sHjNX3t1S6ZhMHHw1pYOZWA4QMi7qbHzFfPvcwDev4sLW6KciHkhLvJIk
 Z5MJuGOW4OXkP1vgKuf0KwNOF3Y/n2/I3SYQUgCA5Cqlsz6v5CGXQKv1i
 epMPbw3RtzJbWaBJl5bKqp9G/O0JKqJsTIC9l7oKwuesacnOxK/bCXEVd
 oniTpJ8KFb0RGt8UNY6BU57dR4/+eQZbKRNaI3UQrQASDU7J8lN6T65Cj
 OXylBskvPdr/8goAhYACvaEdFvGVare0PaPzpe7x0SyFsFVn8amMjBCSG w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="375471000"
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="375471000"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 08:16:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="744293352"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by fmsmga001.fm.intel.com with ESMTP; 01 Aug 2022 08:16:20 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Aug 2022 23:16:16 +0800
Message-Id: <20220801151616.12644-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/display: clear plane color control
 register when turn plane off
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

Customer report abnormal display output while switch eDP off sometimes.
In current display disable flow, plane will be off at first. Then turn
eDP off and disable HW pipe line. We found the abnormal pixel comes
after turn plane off. Clear plane color ctl register when driver disable
plane can solve this symptom.

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

