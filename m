Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB91F822BBE
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 12:00:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D98610E286;
	Wed,  3 Jan 2024 11:00:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFD1110E286
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 11:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704279627; x=1735815627;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K9T4O7Gkk85bKxOCHL5qLntvCWmilOKDpYe8XPUEuSw=;
 b=ZnLHmAZ6oGzFpDwxTDN3hG9NtPfNQzIFnx0fHYmLP7nnG1bYJZoOdmXK
 Kx5m2GZ2VQQtB9kflNJCoVW49njAFHVvBIowFll808keHI/rNcMXgg592
 ghbRZkjD5QiQxRSMAf+nTUCN5emOWk9k55HP66JRXR4qfpNCOxdP4UzvA
 BykXsNW5JtFy8k1Ar8lLWeXUcWV2rsqYNTgmynVnkpCOpidMsz0SZbIGX
 r5Tggkoo9hqRp+TllAwIQf7pUZyyOEOnAzaF/W3asd8dYku6/rfcxEo8u
 kYukGx8jTG6YyrXvpvMJAVJGJO6i0FYGVQbnrc6nIMHxACw/zmXgV9W/8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="381958532"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="381958532"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 03:00:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="22063535"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 03:00:17 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/dp: Fix the PSR debugfs entries wrt. MST connectors
Date: Wed,  3 Jan 2024 13:00:29 +0200
Message-Id: <20240103110029.2408342-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
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

MST connectors don't have a static attached encoder, as their encoder
can change depending on the pipe they use; so the encoder for an MST
connector can't be retrieved using intel_dp_attached_encoder() (which
may return NULL for MST). Most of the PSR debugfs entries depend on a
static connector -> encoder mapping which is only true for eDP and SST
DP connectors and not for MST. These debugfs entries were enabled for
MST connectors as well recently to provide PR information for them, but
handling MST connectors needs more changes. Fix this by re-disabling for
now the PSR entries on MST connectors.

Fixes: ef75c25e8fed ("drm/i915/panelreplay: Debugfs support for panel replay")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9850
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 494d08817d71e..b5b9340e505e3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3310,11 +3310,8 @@ void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct dentry *root = connector->base.debugfs_entry;
 
-	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP) {
-		if (!(HAS_DP20(i915) &&
-		      connector->base.connector_type == DRM_MODE_CONNECTOR_DisplayPort))
-			return;
-	}
+	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
+		return;
 
 	debugfs_create_file("i915_psr_sink_status", 0444, root,
 			    connector, &i915_psr_sink_status_fops);
-- 
2.39.2

