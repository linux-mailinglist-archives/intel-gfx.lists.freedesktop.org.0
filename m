Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FD57D8356
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 15:12:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 204F710E7D7;
	Thu, 26 Oct 2023 13:12:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31EF210E7DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 13:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698325964; x=1729861964;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0cItn7Fbefqyd4XVR6KaPlTgroUZuzh40i5YvFXpk/M=;
 b=hrw97MZavbrpWxcs0IGI0WPPcz3gRc0q7zUHBpeZD7bbIY+diADoQEQt
 uEvlBYBbOfjb/gXlK45BLDWj4kiEdXjAMzm5dKcaZI5uJ/aP+K8md/7pq
 LPj/6CX+qGvxYg8zbOdJTIO9NE8s+FOcgLIFCw+nnJtqCpxHHyGdyQTHs
 mDCVCLYJO7LkSsYNmDFwSNdIxYOr9L0wN5roefi+hjaYzsDt2AvH7XVri
 yog1qFNzKxOwAKVskz3j+UpevW/X1IVnD+eRsAXuimdrVtzk8ZQbLJADl
 CGk6bpWvOoRemYqGC6bNKmHhGxIVDWlzbX1lmUkCw4tyvTS11ZMBG2E26 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="353124"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="353124"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 06:10:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="759191376"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="759191376"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 06:09:13 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 14:56:36 +0200
Message-ID: <20231026125636.5080-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/tc: Fix -Wformat-truncation in
 intel_tc_port_init
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix below compiler warning:

intel_tc.c:1879:11: error: ‘%d’ directive output may be truncated
writing between 1 and 11 bytes into a region of size 3
[-Werror=format-truncation=]
"%c/TC#%d", port_name(port), tc_port + 1);
           ^~
intel_tc.c:1878:2: note: ‘snprintf’ output between 7 and 17 bytes
into a destination of size 8
  snprintf(tc->port_name, sizeof(tc->port_name),
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    "%c/TC#%d", port_name(port), tc_port + 1);
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

v2: use kasprintf(Imre)
v3: use const for port_name, and fix tc mem leak(Imre)

Fixes: 3eafcddf766b ("drm/i915/tc: Move TC port fields to a new intel_tc_port struct")
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 37b0f8529b4f..f64d348a969e 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -58,7 +58,7 @@ struct intel_tc_port {
 	struct delayed_work link_reset_work;
 	int link_refcount;
 	bool legacy_port:1;
-	char port_name[8];
+	const char *port_name;
 	enum tc_port_mode mode;
 	enum tc_port_mode init_mode;
 	enum phy_fia phy_fia;
@@ -1875,8 +1875,12 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 	else
 		tc->phy_ops = &icl_tc_phy_ops;
 
-	snprintf(tc->port_name, sizeof(tc->port_name),
-		 "%c/TC#%d", port_name(port), tc_port + 1);
+	tc->port_name = kasprintf(GFP_KERNEL, "%c/TC#%d", port_name(port),
+				  tc_port + 1);
+	if (!tc->port_name) {
+		kfree(tc);
+		return -ENOMEM;
+	}
 
 	mutex_init(&tc->lock);
 	/* TODO: Combine the two works */
@@ -1897,6 +1901,7 @@ void intel_tc_port_cleanup(struct intel_digital_port *dig_port)
 {
 	intel_tc_port_suspend(dig_port);
 
+	kfree(dig_port->tc->port_name);
 	kfree(dig_port->tc);
 	dig_port->tc = NULL;
 }
-- 
2.42.0

