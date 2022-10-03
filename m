Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9690B5F2FB4
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:33:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7671E10E347;
	Mon,  3 Oct 2022 11:33:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06A5E10E32A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664796803; x=1696332803;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cLeMyq6Y9w6iLkkHio7+BDff16t+2v6Oh/QE7KsHna8=;
 b=GIqS8IxYkl4kahVZzqnOozaLg9iuDZjiiyb799iAJss2fc902mHOH4Nd
 dvJuEvEMzotZr8AHKuk1WEY4KPMbp7t1YQTL/EWVbUAkrLLgBACLtP6DJ
 NzP7Ok3PNRKHNhZgzJjtuCzJX1IpqkXFO2MohTSwQZr671gl/fNqzC8VV
 9iF8A8DahkMSywXWLRpQD06WEvAhisCzZ6J0T83VVIA1D9V1ur4SFuf32
 /oFvh75DtrcrCZzUPzJ0/9ZbXODV0XhIOOB3bdQpytXj6VLA62m7VaRyv
 trET2ep7Gd8zAkvGf2cDnnIVn4t0fita8xRr8d0XZixGb6VTkp3FkwAyi Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="364455153"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="364455153"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:33:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="618701123"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="618701123"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 03 Oct 2022 04:33:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 14:33:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 14:32:49 +0300
Message-Id: <20221003113249.16213-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
References: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/6] drm/i915: Setup final panel drrs_type
 already during init
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

Now that we track the VBT drrs type per-panel we can move the
has_drrs_modes() check to the panel init rather than doing it
for every intel_panel_drrs_type() call.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index d18c56cf957d..2b4b359b8342 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -165,9 +165,6 @@ static bool has_drrs_modes(struct intel_connector *connector)
 
 enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
 {
-	if (!has_drrs_modes(connector))
-		return DRRS_TYPE_NONE;
-
 	return connector->panel.vbt.drrs_type;
 }
 
@@ -668,6 +665,9 @@ int intel_panel_init(struct intel_connector *connector)
 
 	intel_backlight_init_funcs(panel);
 
+	if (!has_drrs_modes(connector))
+		connector->panel.vbt.drrs_type = DRRS_TYPE_NONE;
+
 	drm_dbg_kms(connector->base.dev,
 		    "[CONNECTOR:%d:%s] DRRS type: %s\n",
 		    connector->base.base.id, connector->base.name,
-- 
2.35.1

