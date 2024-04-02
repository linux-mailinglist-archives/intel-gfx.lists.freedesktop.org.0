Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D46108958CC
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE1F10FE20;
	Tue,  2 Apr 2024 15:51:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k2MOzIl5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 311CE10FE21
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 15:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073065; x=1743609065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Czlk078VQC/JrjFRlncRV52zm8diAbd6SOvtZlU3j48=;
 b=k2MOzIl5xf5/imkWvOZhb0y4rLKoWQVOJnApTd4s2BwAT+KE5XoUIO/D
 qxR6YzZbOiyxyLmH3Hql9L0QG4XOLwZZ3nArrD0LYidAXewXnNXwoSBni
 nm75JpObeDabsBVdz5IKTdP23g3kprwUQMWgNQRemBjLEPBOcuU0qSCib
 CJ578By+so6u8PTEd1PeLo77YikrydDyCpwIlA8PTip9MPqUbwR7ITTO0
 zIO9WE+7PXR0BVG9WqiQ3w7RSxpyni3smcS6bv9ML9sL5t3vHGEEQjS9O
 geFr0NiPIh1EkDXmLab7/EIMEHFM6LAPblsMTjC8WKhuZguT1i+ojwBWC Q==;
X-CSE-ConnectionGUID: FlgHp5MiQquvU2Hn9qkxHQ==
X-CSE-MsgGUID: pIQRXtjkQj2sH9pPUz8KnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17980897"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17980897"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:51:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789498"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789498"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 08:51:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 18:51:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 14/14] drm/i915: Optimize out redundant dbuf slice updates
Date: Tue,  2 Apr 2024 18:50:16 +0300
Message-ID: <20240402155016.13733-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
References: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
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

