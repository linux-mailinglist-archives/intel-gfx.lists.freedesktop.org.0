Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B01748ECB
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 22:22:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0225310E3C7;
	Wed,  5 Jul 2023 20:22:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06BF810E3CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 20:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688588519; x=1720124519;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EXFGMczrg+MUKBRMBN581FG4cTMMH1OqS86B3OTdo9w=;
 b=BBIJ0ZIqP7XbMGPcZgyPLYHXi1PzA0kap/InMhKKij2Xdc8Ybr4AMPgK
 iiR0F3Zvlqfe1gq+EiaC1dGFec91ycUlomhM5LLkTG0AFuUA5bpYHfQx9
 cs92E/LE+6mWt0+1V3gvziO5cKyScps7XKraWaOPwm0DhiGwfljkvtKWj
 LTkgWap/l9ssDj5hAhcXzpSJcqM8iccN3qD7KVkCSrGEW+FRkJeOUCE03
 eA6NmmJxMsB3xH8pcN4xnLSpQFEOZbxLDzgPsErWAmlQOQmZyxgw5XV6/
 GfIsSMZYDX2rHG7GswbfmfPBrxUED39hDrThIKO90biNdl1sCnrsLKdyG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353269106"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="353269106"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 13:21:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754491195"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754491195"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 13:21:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jul 2023 23:21:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 23:21:20 +0300
Message-Id: <20230705202122.17915-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/13] drm/i915/sdvo: Get rid of the
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We should switch over to the standard "ddc" per-connector
symlink instead of rolling our own thing. The i2c specific
symlink is also in the way of reworking the SDVO DDC handling
(which is a mess atm) so get rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 29 ++---------------------
 1 file changed, 2 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 383f8b1547a1..5c25417d256a 100644
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
2.39.3

