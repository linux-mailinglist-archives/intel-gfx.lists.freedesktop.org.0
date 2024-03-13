Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B863E87A9B5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 15:44:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC5A110E0B5;
	Wed, 13 Mar 2024 14:44:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mE9zN3kq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6253010E0B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710341093; x=1741877093;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RL9bTwxh87p1BFhOleCOR6kb5G77CnHygSQb03Xs8G4=;
 b=mE9zN3kq0PwK0pFxuCVfH136i7uSxGwX9n/2ydRDdIYk4VexS+6/GKFH
 jBHna3PmDHXMiNbqnUtWUtGFlYEDEjtyA05rwJ2GlL3semztVLzuLFhjm
 O6T3iBxLA3/zXh5WoY1BNmoibAaCLHUH4iYhkKB3lpXOY0kba6pFiJ0YH
 8zOVg0egKhAnXOYMVWey1UETTCsA3cDO3YCAuYc12qplo62hsNwG9H5rD
 UIyPmMSBZlTcoPWOogrGEJkf2mtdekf3IiH3ndJCVZATftLc11r7yQXkz
 EousCYLDeqCU1C8UTk5aKoEDbqBsXSmUucQ39XDyuUBOOnZ9dYwUMB6Zd Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8050936"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="8050936"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 07:44:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="42947881"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 07:44:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH] drm/i915/scaler: Update Pipe src size check in
 skl_update_scaler
Date: Wed, 13 Mar 2024 20:08:25 +0530
Message-Id: <20240313143825.3461208-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
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

For Earlier platforms, the Pipe source size is 12-bits so
max pipe source width and height is 4096. For newer platforms it is
13-bits so theoretically max width/height is 8192. For few of the
earlier platforms the scaler did not use all bits of the PIPESRC,
so max scaler source size was used to make that the pipe source
size is programmed within limits, before using scaler.

This creates a problem, for MTL where scaler source size is 4096, but
max pipe source width can theroretically be 8192.

Switch the check to use the max scaler destination size, which closely
match the limits.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 8a934bada624..baa601d27815 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -213,10 +213,11 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	 * The pipe scaler does not use all the bits of PIPESRC, at least
 	 * on the earlier platforms. So even when we're scaling a plane
 	 * the *pipe* source size must not be too large. For simplicity
-	 * we assume the limits match the scaler source size limits. Might
-	 * not be 100% accurate on all platforms, but good enough for now.
+	 * we assume the limits match the scaler destination size limits.
+	 * Might not be 100% accurate on all platforms, but good enough for
+	 * now.
 	 */
-	if (pipe_src_w > max_src_w || pipe_src_h > max_src_h) {
+	if (pipe_src_w > max_dst_w || pipe_src_h > max_dst_h) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "scaler_user index %u.%u: pipe src size %ux%u "
 			    "is out of scaler range\n",
-- 
2.40.1

