Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4334505EFB
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 22:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD4B110E14B;
	Mon, 18 Apr 2022 20:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA23889E05
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 20:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650315046; x=1681851046;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H+XVjoD/W+hg3VRVTEzVGEZLgjuTRceV9i2FUQ0WgK0=;
 b=CdSK7ZozyAwkjr1zbXKZDu3z0o+BynblTspIrqZdvDrD1GmNlw5xkDdM
 wvbnLBsIAjorjvT1T09lG1mYqAyDPcufaq3YF4Zl4tD7cf4XDr/grE2RN
 Mv1NNuKT1wyB/wsT/P7c1BuhFbrYUgNGc3YSxGI6nR3tzuhS+u2W4091S
 3IN3goHrrlcVYNayZFTH6Kfqbrh02zhOa1BOgtOeA3pMj7pk9tYcQ75ar
 v09OWxxgImwmKiUxDm+HJpA1aUXkTU6gzHYRXms0crg3evz1ahek9IZ3b
 m8l6yZA2EWq/hZI7FabuPzomvwDS98k/L2+aJ3BrC+GUEJvNmLw/JSGiR Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="245500924"
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; d="scan'208";a="245500924"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 13:50:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; d="scan'208";a="726783105"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.139])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 13:50:45 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Apr 2022 13:52:21 -0700
Message-Id: <20220418205221.291891-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220418205221.291891-1-jose.souza@intel.com>
References: <20220418205221.291891-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display/drrs: Remove repeated DRRS
 in i915_drrs_status
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

User-space parsing of i915_drrs_status is already broken so lets
use this oportunity to drop those repeated "DRRS".
It is the DRRS status debugfs so all of this information is related to
DRRS and there is no need to mention it each time.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 0d7d2e750a4c7..799b0d2bbba18 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1074,7 +1074,7 @@ static int intel_drrs_status(struct seq_file *m, struct drm_connector *connector
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_crtc *crtc;
 
-	seq_printf(m, "DRRS type: %s\n",
+	seq_printf(m, "Type: %s\n",
 		   intel_drrs_type_str(intel_panel_drrs_type(intel_connector)));
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
@@ -1087,16 +1087,16 @@ static int intel_drrs_status(struct seq_file *m, struct drm_connector *connector
 		mutex_lock(&crtc->drrs.mutex);
 
 		/* DRRS Supported */
-		seq_printf(m, "DRRS Enabled: %s\n",
+		seq_printf(m, "Enabled: %s\n",
 			   str_yes_no(crtc_state->has_drrs));
 
-		seq_printf(m, "DRRS Active: %s\n",
+		seq_printf(m, "Active: %s\n",
 			   str_yes_no(intel_drrs_is_active(crtc)));
 
 		seq_printf(m, "Busy_frontbuffer_bits: 0x%X\n",
 			   crtc->drrs.busy_frontbuffer_bits);
 
-		seq_printf(m, "DRRS refresh rate: %s\n",
+		seq_printf(m, "Refresh rate: %s\n",
 			   crtc->drrs.refresh_rate == DRRS_REFRESH_RATE_LOW ?
 			   "low" : "high");
 
-- 
2.35.3

