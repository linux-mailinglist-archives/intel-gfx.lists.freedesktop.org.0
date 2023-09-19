Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D847A5EE5
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 11:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C759D10E363;
	Tue, 19 Sep 2023 09:57:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F1210E363
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 09:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695117422; x=1726653422;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OvOkhfPlutGLFOGAjnkEhXq+DFgXpZeiB69PdjHHLTI=;
 b=cSsr/exGbm3BpwXSux6chWPObWyQmP27SyDxQorSQBFU1bkA1U5qxYcN
 Ls47i/7O6GxWu6xD4+WKmb3OHqNB7ZpzGUfk86elMlIC9utQUO+FrEjGX
 N8g7MwYHpC3cQxZJWNoKQHyDbvtxxxeMuVf8iAyAfq3FHliqlXhhUy7gL
 +ktrEKdEEdl6Z/0W0QlzDe6oAjH53dfNOw7roYt6U18fQjorlauyRZkId
 YjONgguNnFbX7xRkmd5LDJjS4x6C5MQaoJF1KUmOs1bQ/F5LWkDTV3KjR
 n1ACgKl4bnto+uouxPUlGRdGyH9+9gzFxz+DqK7Eta763YPNGk8leJfrl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="466228337"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="466228337"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 02:57:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="889444734"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="889444734"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 19 Sep 2023 02:56:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Sep 2023 12:56:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 12:56:59 +0300
Message-ID: <20230919095659.10742-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "drm/i915/mst: Populate connector->ddc"
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

This reverts commit 959fb1a686528df1b8fb0cc7bec8ff851b1594a5.

Looks like the core MST code might not call i2c_adapter() for us
in time, and thus creating the ddc symlink will fail. This will
in fact fail the entire connector registration, but the MST code
doesn't really seem to care about that and blindly plows ahead.
All we may get in the logs is a nearly back to back
register+unregister debug messages:
 [drm:drm_dp_mst_connector_late_register [drm_display_helper]] registering DPMST remote bus for card0-DP-7
 [drm:intel_dp_hpd_pulse [i915]] DPRX ESI: 42 00 00 02
 [drm:drm_dp_mst_connector_early_unregister [drm_display_helper]] unregistering DPMST remote bus for card0-DP-7

Untangling the initialization order may take some real work,
so let's just revert the ddc symlink addition for now...

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9357
Fixes: 959fb1a68652 ("drm/i915/mst: Populate connector->ddc")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 80411ce85fc0..ff3accebf0a8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1110,10 +1110,8 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	drm_dp_mst_get_port_malloc(port);
 
 	connector = &intel_connector->base;
-	ret = drm_connector_init_with_ddc(dev, connector,
-					  &intel_dp_mst_connector_funcs,
-					  DRM_MODE_CONNECTOR_DisplayPort,
-					  &port->aux.ddc);
+	ret = drm_connector_init(dev, connector, &intel_dp_mst_connector_funcs,
+				 DRM_MODE_CONNECTOR_DisplayPort);
 	if (ret) {
 		drm_dp_mst_put_port_malloc(port);
 		intel_connector_free(intel_connector);
-- 
2.41.0

