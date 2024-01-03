Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F6582307F
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 16:26:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC35C10E2CA;
	Wed,  3 Jan 2024 15:26:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5847610E2CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 15:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704295560; x=1735831560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LHQIFrxGfqx/3l6iBSBykIzib40A2KS/i7LNQto6h1Y=;
 b=eEX6TL8Jry2ZwoMhmairlYyHvtjSGjBb3gn/+hoBX/HB7eQOdcedF+JT
 vu9KBQMKMfwsiF4y2RF0bHvpTCkll7dVggc9dfdh4sXe9lasee9kCM0n+
 pnf80hbdG8/PI2ggLahjOuJpktEZ1t/69FJAXe2A7Vbl/IBq9HuGtn43+
 4l1pqy8bwhEYf7dk/+Fqet6Ps2cg6iCgLTyp67WPcegGjveSe+1G4bgAB
 vqD93/3F14USL2gASaBzgFKum/9Dr3eft1GR8rsd8se0zk3QJnFtnxgCf
 qvR68CuBT2TRu5iF8vYoL+pkU2lgn+qcD1ZmewWZsyOSoRCImnMnIB4Vw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="400834327"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="400834327"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 07:26:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="814287314"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="814287314"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 07:25:58 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2] drm/i915/dp: Fix the PSR debugfs entries wrt. MST
 connectors
Date: Wed,  3 Jan 2024 17:26:09 +0200
Message-Id: <20240103152609.2434100-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103110029.2408342-1-imre.deak@intel.com>
References: <20240103110029.2408342-1-imre.deak@intel.com>
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
handling MST connectors needs more changes.

Fix this by not adding for now the PSR entries on MST connectors. To
make things more uniform add the entries for SST connectors on all
platforms, not just on platforms supporting DP2.0.

v2:
- Keep adding the entries for SST connectors. (Jouni)
- Add a TODO: comment for MST support.

Fixes: ef75c25e8fed ("drm/i915/panelreplay: Debugfs support for panel replay")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9850
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 494d08817d71e..54120b45958b0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3310,11 +3310,11 @@ void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct dentry *root = connector->base.debugfs_entry;
 
-	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP) {
-		if (!(HAS_DP20(i915) &&
-		      connector->base.connector_type == DRM_MODE_CONNECTOR_DisplayPort))
-			return;
-	}
+	/* TODO: Add support for MST connectors as well. */
+	if ((connector->base.connector_type != DRM_MODE_CONNECTOR_eDP &&
+	     connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort) ||
+	    connector->mst_port)
+		return;
 
 	debugfs_create_file("i915_psr_sink_status", 0444, root,
 			    connector, &i915_psr_sink_status_fops);
-- 
2.39.2

