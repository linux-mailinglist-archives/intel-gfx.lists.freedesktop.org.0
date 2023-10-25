Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F1C7D7220
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 19:09:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A969410E6B0;
	Wed, 25 Oct 2023 17:09:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8670210E6BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 17:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698253750; x=1729789750;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Q+C7gLWq6gRr7nd8vYrHzVwB0fnhzbN5hWVz/Sep7Kw=;
 b=cdfs8Ne6mnrwF90V6+8MKc2ak6ddZGDlNQMqV+g5IJkufA0MZyWaO151
 femoBpBUMcfjZBMt7eATTBxqLtMWqYsWA+kdCZ6/b24cIQRkPYcZCf9zg
 FZaqqBCbPXZsp9tiaTKLL/yPHafyLifQPE10Hga1BFC6umfBCMWKrCbSt
 2TAbnEFFYx9UXmjhz4MZv9ErgqjRKBveaAQLLu4JVxoIazHV79Vg1E7Jw
 l5RPop1YQoDYVlFf4vQWjlcAyMcJEl0/4G1E05VyqU6Muz8P05Z6UfN2J
 GmA3K4wSJXNrX+867ZTGsoFZaqukHsnuWebCKyNz83CpzFUXE5BOv00vI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="387175124"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="387175124"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 10:08:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="849596785"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="849596785"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 10:08:40 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Oct 2023 19:08:34 +0200
Message-ID: <20231025170834.22691-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/tc: Fix -Wformat-truncation in
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
Cc: Jani Nikula <jani.nikula@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
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

Fixes: 3eafcddf766b ("drm/i915/tc: Move TC port fields to a new intel_tc_port struct")
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 37b0f8529b4f..0fa54450d51b 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -58,7 +58,7 @@ struct intel_tc_port {
 	struct delayed_work link_reset_work;
 	int link_refcount;
 	bool legacy_port:1;
-	char port_name[8];
+	char *port_name;
 	enum tc_port_mode mode;
 	enum tc_port_mode init_mode;
 	enum phy_fia phy_fia;
@@ -1875,8 +1875,10 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 	else
 		tc->phy_ops = &icl_tc_phy_ops;
 
-	snprintf(tc->port_name, sizeof(tc->port_name),
-		 "%c/TC#%d", port_name(port), tc_port + 1);
+	tc->port_name = kasprintf(GFP_KERNEL, "%c/TC#%d", port_name(port),
+				  tc_port + 1);
+	if (!tc->port_name)
+		return -ENOMEM;
 
 	mutex_init(&tc->lock);
 	/* TODO: Combine the two works */
@@ -1897,6 +1899,7 @@ void intel_tc_port_cleanup(struct intel_digital_port *dig_port)
 {
 	intel_tc_port_suspend(dig_port);
 
+	kfree(dig_port->tc->port_name);
 	kfree(dig_port->tc);
 	dig_port->tc = NULL;
 }
-- 
2.41.0

