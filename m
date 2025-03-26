Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E79DBA71BC6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:25:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FD1810E72C;
	Wed, 26 Mar 2025 16:25:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oJlFXxYv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67F5910E72C;
 Wed, 26 Mar 2025 16:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006358; x=1774542358;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KBaF+iq/2lOLwX/9OcI+mklUwqDxgwIH/znAaw0sBcQ=;
 b=oJlFXxYvRiYxngGY863Bku/yXX8SK//cwVu5xn6KFjoG13/2VeD409J6
 B+MXF1A9XOC0kotTLectIG+rQmCR3PjpEfFzFI5x0X23fMyAq2eCsY7eL
 PWhDKjOogxGwyGzA2NSSK4llKNxMy97SXtW3EgWh3+NbKIaMMUxo5U2Se
 kGZD8bwjJZwjBKPVgW8SY7V4JEgWQBUDTK8KkdogN6wKLBEdGXbOvsetv
 1ynKk/x3VLOd073lMntbv06pT1S3WXC8usg0d8tv0q3xITnGvQEN6b5Iu
 GNDZ3StLFPJ12VV0eon8hHRLLkj9EEMUV98YQXFYFxKdfCWQ+Pd2u2EMY g==;
X-CSE-ConnectionGUID: ClpPrfS4Q66qZy8Eobu3nQ==
X-CSE-MsgGUID: ZsJCp/awQtCZiMlGSLS9WQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029559"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029559"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:25:58 -0700
X-CSE-ConnectionGUID: ITEPWMReRCWED5Z4WCPdJg==
X-CSE-MsgGUID: v8VJS+XYR1OMH9H+HfItBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016289"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:25:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:25:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 03/14] drm/i915: Extract intel_dbuf_bw_changed()
Date: Wed, 26 Mar 2025 18:25:33 +0200
Message-ID: <20250326162544.3642-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
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

Extract the struct intel_dbuf_bw comparison into a small
helper. We'll get more users later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index b34db55f5a7e..898ddaf7e76b 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1150,6 +1150,21 @@ static int intel_bw_check_qgv_points(struct intel_display *display,
 					   old_bw_state, new_bw_state);
 }
 
+static bool intel_dbuf_bw_changed(struct intel_display *display,
+				  const struct intel_dbuf_bw *old_dbuf_bw,
+				  const struct intel_dbuf_bw *new_dbuf_bw)
+{
+	enum dbuf_slice slice;
+
+	for_each_dbuf_slice(display, slice) {
+		if (old_dbuf_bw->max_bw[slice] != new_dbuf_bw->max_bw[slice] ||
+		    old_dbuf_bw->active_planes[slice] != new_dbuf_bw->active_planes[slice])
+			return true;
+	}
+
+	return false;
+}
+
 static bool intel_bw_state_changed(struct intel_display *display,
 				   const struct intel_bw_state *old_bw_state,
 				   const struct intel_bw_state *new_bw_state)
@@ -1161,13 +1176,9 @@ static bool intel_bw_state_changed(struct intel_display *display,
 			&old_bw_state->dbuf_bw[pipe];
 		const struct intel_dbuf_bw *new_dbuf_bw =
 			&new_bw_state->dbuf_bw[pipe];
-		enum dbuf_slice slice;
 
-		for_each_dbuf_slice(display, slice) {
-			if (old_dbuf_bw->max_bw[slice] != new_dbuf_bw->max_bw[slice] ||
-			    old_dbuf_bw->active_planes[slice] != new_dbuf_bw->active_planes[slice])
-				return true;
-		}
+		if (intel_dbuf_bw_changed(display, old_dbuf_bw, new_dbuf_bw))
+			return true;
 
 		if (intel_bw_crtc_min_cdclk(display, old_bw_state->data_rate[pipe]) !=
 		    intel_bw_crtc_min_cdclk(display, new_bw_state->data_rate[pipe]))
-- 
2.45.3

