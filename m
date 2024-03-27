Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EC988ECF2
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 18:46:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C17510FECA;
	Wed, 27 Mar 2024 17:46:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DcqDDiLt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0896010FEC9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 17:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711561586; x=1743097586;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kn1HeGPTIN3c2Yx4GPqHKu1QJEt0gtNAQ7UdZnBIMs4=;
 b=DcqDDiLtCEvwmwXNwqIHChyGyEs4sNFiyJxXuZS6FzohMBDLgO3BN6ae
 ogB6ILxBk0N0V8FMgg2Hw+xuFCAzrBdsfWat6pE2FABLp9vzLenVlA3s8
 UQsPak5L9E1rknASX1AJgzMTwmDbk93siBe5oqa9GD9nc9HpvgKgNdG2K
 N2aCExmEPXWQtV2QuwspkqRHYlr1unl0XYZLTx5n196eo65NDYX6fWMII
 4DIuD0Y7EkF3B6yM3Rl/cRBCqKzguWQbNCR1z+WbwuBzzHZqjdZ+vAoKZ
 c5+4uPbvvjpbO1Tn4WZBBGG9fzTcVv1WWPEl32Au6yZRA8X5o4m2GIqxe Q==;
X-CSE-ConnectionGUID: 0rjGrDc3Sw+9xgmnbviJiQ==
X-CSE-MsgGUID: g6LuZmw5RK6eR173MBqOyA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6795492"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6795492"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 10:46:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785916"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785916"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 10:46:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 19:46:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/13] drm/i915: Optimize out redundant dbuf slice updates
Date: Wed, 27 Mar 2024 19:45:44 +0200
Message-ID: <20240327174544.983-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327174544.983-1-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

if the new dbuf slices are a superset of the old
dbuf slices then we don't have to do anything in
intel_dbuf_post_plane_update(). Restructure the code
to skip such redundant dbuf slice updates. The main
benefit is slightly less confusing logs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 27 +++++++++++++-------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1b48009efe2b..50ec51065118 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3788,16 +3788,20 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_new_dbuf_state(state);
 	const struct intel_dbuf_state *old_dbuf_state =
 		intel_atomic_get_old_dbuf_state(state);
+	u8 old_slices, new_slices;
 
-	if (!new_dbuf_state ||
-	    new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices)
+	if (!new_dbuf_state)
+		return;
+
+	old_slices = old_dbuf_state->enabled_slices;
+	new_slices = old_dbuf_state->enabled_slices | new_dbuf_state->enabled_slices;
+
+	if (old_slices == new_slices)
 		return;
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	gen9_dbuf_slices_update(i915,
-				old_dbuf_state->enabled_slices |
-				new_dbuf_state->enabled_slices);
+	gen9_dbuf_slices_update(i915, new_slices);
 }
 
 void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
@@ -3807,15 +3811,20 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_new_dbuf_state(state);
 	const struct intel_dbuf_state *old_dbuf_state =
 		intel_atomic_get_old_dbuf_state(state);
+	u8 old_slices, new_slices;
 
-	if (!new_dbuf_state ||
-	    new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices)
+	if (!new_dbuf_state)
+		return;
+
+	old_slices = old_dbuf_state->enabled_slices | new_dbuf_state->enabled_slices;
+	new_slices = new_dbuf_state->enabled_slices;
+
+	if (old_slices == new_slices)
 		return;
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	gen9_dbuf_slices_update(i915,
-				new_dbuf_state->enabled_slices);
+	gen9_dbuf_slices_update(i915, new_slices);
 }
 
 static int skl_watermark_ipc_status_show(struct seq_file *m, void *data)
-- 
2.43.2

