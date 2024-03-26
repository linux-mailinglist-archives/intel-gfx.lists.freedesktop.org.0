Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1B588B9B9
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 06:17:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B2B10ECA0;
	Tue, 26 Mar 2024 05:17:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mJa4e7mW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2A210ECA0
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 05:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711430270; x=1742966270;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JKC98BRl3dw998x9hCTsOj0E3Sf+8jzw70lNSYU+bGI=;
 b=mJa4e7mWE17jB2J9TEMh735y72oi165HgcOEX8ZVWWS62J8adbo7zXQ/
 KajpEQDgCcquWGls8qg8RAjtEUDl1539N8KFOo1G4Be2qTHu9fw4nFYd/
 GLI7vcs7V6gJe9x/Gjm7KelI/L1VlVPyGuW9xBxdoVx/3TVHIfroqG7T0
 ohaXN6lhS2ujc/+gh4NSifqOux9p6JbGp3VUOJUC60CBV/0fK8qHDZG6p
 e3Oq265oyXvgBn5GdC9S53nFS9gOjzmJELKTgxmy6plO2joNWqDiUTDuV
 1k7cDngAT8DjtZqjcXkC0b9Y/ovsxfnKnEinlVLQYdipWKKw+dGwjGVHC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6399239"
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; 
   d="scan'208";a="6399239"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 22:17:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; d="scan'208";a="20327555"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa005.fm.intel.com with ESMTP; 25 Mar 2024 22:17:48 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/display: Initalizalize capability variables
Date: Tue, 26 Mar 2024 10:44:55 +0530
Message-ID: <20240326051454.193181-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
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

Initialize HDCP capability variables to false to avoid UBSAN
warning in boolean value.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index b99c024b0934..95d14dab089e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -191,7 +191,7 @@ static void intel_hdcp_info(struct seq_file *m,
 			    struct intel_connector *intel_connector,
 			    bool remote_req)
 {
-	bool hdcp_cap, hdcp2_cap;
+	bool hdcp_cap = false, hdcp2_cap = false;
 
 	if (!intel_connector->hdcp.shim) {
 		seq_puts(m, "No Connector Support");
-- 
2.43.2

