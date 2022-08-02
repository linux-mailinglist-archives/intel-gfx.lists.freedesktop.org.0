Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADA8587EFD
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 17:32:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC4711230F;
	Tue,  2 Aug 2022 15:32:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24BCF10FFE0
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 15:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659454327; x=1690990327;
 h=from:to:cc:subject:date:message-id;
 bh=+pB5VmOdIQ5UMm4TMbzbQTRCyv8kD/qYI8C44og+SsM=;
 b=lwxbKTnM5qI90TqPJYmHIb/vjfUmyUvcKzAU+UNBXn+o0N06MkfXveY2
 rv+8+B1qw6vR1A79YWD5OO6QoWL5EgIDRAuHK6Ihx5A2hPQoQIewX7JGM
 oXRa0qGbCErDUKzaQwhSXO/4HYZndYddfRRMAoBRm6ugOF7dHWFsylDUL
 703hUKiog2Is3oOjKWQFV4wpuONdh78XKnso+PckSpVRLkA9rXm2ILhOz
 1KO/0j4gF0pgKltrCAwvpjntO6RXImYkt/F/xraTSsL0PgVDoa7HjTm1l
 1uzNuOzmcrc26ebnC/hOA34WPpPt/vd185AmBmmxgseQtMD7WBziTYSJS Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="269206079"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="269206079"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 08:31:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="661670380"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by fmsmga008.fm.intel.com with ESMTP; 02 Aug 2022 08:31:08 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Aug 2022 23:31:03 +0800
Message-Id: <20220802153103.26653-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/display: avoid abnormal pixel output
 when turn eDP display off
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
eDP off and disable HW pipe line. Try to turn PLANE_SURF off before
disable PLANE_CTL. No more abnormal pixel appear on eDP with this changes.

Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 4d6a27757065..7e7d265131b2 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -618,8 +618,8 @@ skl_plane_disable_arm(struct intel_plane *plane,
 
 	skl_write_plane_wm(plane, crtc_state);
 
-	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
+	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
 }
 
 static void
@@ -636,8 +636,8 @@ icl_plane_disable_arm(struct intel_plane *plane,
 	skl_write_plane_wm(plane, crtc_state);
 
 	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
-	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
+	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
 }
 
 static bool
-- 
2.17.1

