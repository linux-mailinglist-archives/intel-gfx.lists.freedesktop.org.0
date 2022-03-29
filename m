Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F296C4EAFEB
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 17:08:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC07410F0BB;
	Tue, 29 Mar 2022 15:08:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7468710F0B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 15:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648566498; x=1680102498;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=N45I0Oj11Fw92hL3aerFd55twJ+Tn8QC1bV8Po5RY50=;
 b=F3xdw3FZdM7OOYnf9qhM8aA6YjapABVtGkyG6t6AH+dcwxKtlCAL49t2
 2hMQeGsEVI2xMbZNvGLGSxDlWBZnXfjpmRiMyVt6gzyOcO1VPMYcdYV3M
 9Q73zWYggQfsNV/ndfje7rcFLNuqXvySZ2tN3NpE8SQCJWkXVgKRihptP
 2hh/FKb10WN0eJYX0Cq///ayZ/s8lkohNQnhswCG5Db/AIFI5TzLFo3+a
 d921JY1XAg3xInLjWBBO+QH9Gl8xCEmFX2Ky8e6h54aMkNYKkHklaH6zA
 3XelRVItoYBrdagcUwBCyMz93dRgU+7oVdUa2lDGuCeZvMTFkT6LC7BZC g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="345707247"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="345707247"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 08:08:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="694739856"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 29 Mar 2022 08:08:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Mar 2022 18:08:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 18:07:42 +0300
Message-Id: <20220329150742.31783-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
References: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915: Allow static DRRS on LVDS
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

Nothing special about static DRRS on LVDS, it's just your
bog standard modeset. Let's allow it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 73129d21f5e5..e8478161f8b9 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -968,7 +968,8 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_connector->edid = edid;
 
 	/* Try EDID first */
-	intel_panel_add_edid_fixed_modes(intel_connector, false);
+	intel_panel_add_edid_fixed_modes(intel_connector,
+					 dev_priv->vbt.drrs_type != DRRS_TYPE_NONE);
 
 	/* Failed to get EDID, what about VBT? */
 	if (!intel_panel_preferred_fixed_mode(intel_connector))
-- 
2.34.1

