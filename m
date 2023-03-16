Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5766BD10D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69A910E230;
	Thu, 16 Mar 2023 13:40:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D615210E212
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974035; x=1710510035;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ENqni64pueszcUb/0ykB9zhbd2JLlZ+8pK+QjCWJeJI=;
 b=i7yuQDzCg9gMsZS8EZMFgTcrFUqiAV7qW2JnvO7nmOYXMk2G//y1mrZk
 gM4YlSQ+quNFygFm3ThJYQJFn4S0YzJmAU4gWlw7WRkeWfUiO1EFK1lHp
 6ULz0CSCjxuM5tnJOivQNzNKBzFk5EkG4i/xXo7/0kc+WbjAOQdb8T3e4
 tdghExdW/cNL73kRcFaK62bRwaOyBxrmj+WPDc8u5rJ6pPkcdGCZpTuUq
 GMzUMYPglnlZhOnXX28vgwxrJO65bqmq45FbNiMyz+uoFwuo6D+jNnRZh
 Sn8MwtaTMuenZsiqX7RWIexCou/LoH6NjI9tVKFu9GA6HaohQ65ANkFvI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524735"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524735"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171280"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171280"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:34 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:18 +0200
Message-Id: <20230316131724.359612-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/14] drm/i915/tc: Fix TC mode for a legacy
 port if the PHY is not ready
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

A legacy TC port can't be switched to TBT mode, even if the PHY
initialization wasn't ready yet for some reason, so prevent this.

This shouldn't normally happen as the driver waits for the IOM/TCSS
PHY initialization during driver loading and system resume.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index e39c8a870df06..f66129494cc40 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -482,7 +482,8 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 	u32 live_status_mask;
 	int max_lanes;
 
-	if (!tc_phy_status_complete(dig_port)) {
+	if (!tc_phy_status_complete(dig_port) &&
+	    !drm_WARN_ON(&i915->drm, dig_port->tc_legacy_port)) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
 			    dig_port->tc_port_name);
 		goto out_set_tbt_alt_mode;
-- 
2.37.1

