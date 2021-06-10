Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2963A24E2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 08:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2856E5A2;
	Thu, 10 Jun 2021 06:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEA886E5A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 06:58:40 +0000 (UTC)
IronPort-SDR: YEYHfRFIm8BBh2UTiio0ir7uBG6H1LGA5VSnJZnGOLL7WE6MinfiO7uHViprNurj+e0uZ1dWpt
 6kGJJqRE8YNw==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="290869832"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="290869832"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 23:58:34 -0700
IronPort-SDR: xxxDuAMdStZdVepEj+rC6uwV3wgLoVhClVtgYnV48QeaK1AhlieqVWzc2j5XBd1U3RTHqiaaXr
 5rDGpSC45UHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="402738704"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.91])
 by orsmga003.jf.intel.com with ESMTP; 09 Jun 2021 23:58:31 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Jun 2021 10:02:13 +0300
Message-Id: <20210610070213.24764-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix parenthesis and dbuf condition
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Removed excessive parenthesis and placed && on
previous line in DBUF state checker.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 97d9cde64e26..ded0fb8ed817 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -8324,8 +8324,8 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_dbuf_state(state);
 
 	if (!new_dbuf_state ||
-	    ((new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices)
-	    && (new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus)))
+	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
+	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
 		return;
 
 	WARN_ON(!new_dbuf_state->base.changed);
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
