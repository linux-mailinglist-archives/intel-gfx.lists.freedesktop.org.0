Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D038937A6
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 05:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D007E10EE02;
	Mon,  1 Apr 2024 03:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EbVf+U5M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3475D10EE02
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 03:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711940611; x=1743476611;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0XWejXVMNTO7GmksLhs52FQAEeAFhVrViQyfkUOgZB8=;
 b=EbVf+U5Mns/AaTmnqo2YURM4C7BAb4cTTORUEqA/MGkB0wWLcvyKW6Md
 xoFEc6dKiMTjXxyQ0DKgVm2B94RQLkC1bAWChlPh6Xqn3MQ7gmIKIAKp6
 FD7orSnm9McZADyBVN+j6wXpvYS+ZqH2BDpX0oKBNYlzq2uuW9ARGdsNE
 FDCY/M4qeE0iywDpyXxUTtbslEcQ4COq3j8aJhZc/LXRF/4kYt3lMj+XN
 DCbcrE15X7KTYkxRsYtrq/5Fj9c8lLtXyZ0Ps5Gfpur0phBORsVz19WOz
 4BdsPTRt1+RUmktAw4rB3Trb42E4778z9HhzkoJJRCeeMBM3ivLM3CXg2 Q==;
X-CSE-ConnectionGUID: wLlNOVMGQzSPQ38/slGLgQ==
X-CSE-MsgGUID: YnNBIUPYQ/+VrmICcuq1XQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="10843528"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="10843528"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2024 20:03:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17972364"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa007.jf.intel.com with ESMTP; 31 Mar 2024 20:03:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/display: Initialize capability variables
Date: Mon,  1 Apr 2024 08:31:05 +0530
Message-ID: <20240401030106.274787-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240401030106.274787-1-suraj.kandpal@intel.com>
References: <20240401030106.274787-1-suraj.kandpal@intel.com>
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
warning in boolean value as some functions invoking this could
return without filling the two capability values.

--v2
-Fix Typo [Chaitanya]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
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

