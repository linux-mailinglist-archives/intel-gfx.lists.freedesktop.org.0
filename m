Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3422B7888D8
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 15:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C0C10E69C;
	Fri, 25 Aug 2023 13:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6110010E69C
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 13:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692971088; x=1724507088;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wmCm7eCUaUYDDsDa0e3OWZKPFbWcUji2Lr5B6sbBJ9Y=;
 b=Actvni8oRTzVtT/M9tOQ1MsNWy3LDulqn+lxuJJuNyU5QmgNf4ZKcRiW
 m0+DYN2mfhA+75hyYI309xxRAXAhH9FmVHPaze9ijd+xDosySIFnDbJ8N
 tuXwdzwusf6LkHLw/zRJP8iADw/sQoYT8PG3vOu7bUTgE7Y2N3yPtQ8Xm
 QWGFUK/PK7gmtkuNfcMzKiJBp1UZow4UAQKGnBmguAq8A9yLFCu5fNGK5
 LVN3byS2dFslw1bMhxMhskWvDM03gx7qd4xuXKOOowUpLCokxp41Rlem8
 DkzxSfGfQ/jS0a2CVEPhEBST8DLXlq/rr5ZEiwBvDqZn16Xf+3Mfilyem w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="461076885"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="461076885"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 06:44:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="1068246410"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="1068246410"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga005.fm.intel.com with SMTP; 25 Aug 2023 06:44:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Aug 2023 16:44:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 16:44:29 +0300
Message-ID: <20230825134431.24391-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230825134431.24391-1-ville.syrjala@linux.intel.com>
References: <20230825134431.24391-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915/sdvo: Get rid of the
 per-connector i2c symlink
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We should switch over to the standard "ddc" per-connector
symlink instead of rolling our own thing. The i2c specific
symlink is also in the way of reworking the SDVO DDC handling
(which is a mess atm) so get rid of it.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 29 ++---------------------
 1 file changed, 2 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index d536871a10a9..50a180c1a74b 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2468,31 +2468,6 @@ intel_sdvo_connector_atomic_set_property(struct drm_connector *connector,
 	return 0;
 }
 
-static int
-intel_sdvo_connector_register(struct drm_connector *connector)
-{
-	struct intel_sdvo *sdvo = intel_attached_sdvo(to_intel_connector(connector));
-	int ret;
-
-	ret = intel_connector_register(connector);
-	if (ret)
-		return ret;
-
-	return sysfs_create_link(&connector->kdev->kobj,
-				 &sdvo->ddc.dev.kobj,
-				 sdvo->ddc.dev.kobj.name);
-}
-
-static void
-intel_sdvo_connector_unregister(struct drm_connector *connector)
-{
-	struct intel_sdvo *sdvo = intel_attached_sdvo(to_intel_connector(connector));
-
-	sysfs_remove_link(&connector->kdev->kobj,
-			  sdvo->ddc.dev.kobj.name);
-	intel_connector_unregister(connector);
-}
-
 static struct drm_connector_state *
 intel_sdvo_connector_duplicate_state(struct drm_connector *connector)
 {
@@ -2511,8 +2486,8 @@ static const struct drm_connector_funcs intel_sdvo_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.atomic_get_property = intel_sdvo_connector_atomic_get_property,
 	.atomic_set_property = intel_sdvo_connector_atomic_set_property,
-	.late_register = intel_sdvo_connector_register,
-	.early_unregister = intel_sdvo_connector_unregister,
+	.late_register = intel_connector_register,
+	.early_unregister = intel_connector_unregister,
 	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = intel_sdvo_connector_duplicate_state,
-- 
2.41.0

