Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89C496B81A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 12:18:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF2010E1E0;
	Wed,  4 Sep 2024 10:18:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MUyDXSU5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB87210E1E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 10:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725445133; x=1756981133;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wxdf4HRsAaOmgMYvSqp4h+rVXJLZ0LF4qXByUW3LZgI=;
 b=MUyDXSU5Ky9cVJhAgcQs1N0eF+p0/v8hvHiHc2gDdipqaOTptcB1sjTI
 0+8ATHWwM31CtZF5oYCGc5TuUBp4saSYx8U1JKtrQFu4bmZNDzWRhkmNF
 GwBEbQ/2mUvn5IoQlsA5zJWp0Mg5ziC/Ha/4ZQlSvKrA8OIWaFqo26r/X
 Bggg4PwbA68HEIYZLgmljcc3m90jsGNwvDDTzDxgixqoMozWEGU1cTQOB
 8JKJ8EAMbLJXEPN9lL0xvpMJsPB27h+Q8t04hlXHM8p0vUBDQPQ7/P05V
 Cx9ytVKM2XF+pGNHfXUnoo2X7EbUpXd+Vnk1kWK+yMzo7eAHs3aPfPZpC w==;
X-CSE-ConnectionGUID: QHz41P5XR42VeBH5jLe6Ow==
X-CSE-MsgGUID: iMpQVGmjT9m3Wrl/YOE55g==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27982984"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27982984"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 03:18:53 -0700
X-CSE-ConnectionGUID: wCzkBtTPRnyUQ4y4nnEfUQ==
X-CSE-MsgGUID: w32XlRQtT3yC01JbpON66g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="69857810"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.245.79])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 03:18:51 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/3] drm/i915/psr: Add connector debugfs files for MST
 connector as well
Date: Wed,  4 Sep 2024 13:18:33 +0300
Message-Id: <20240904101834.2415385-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240904101834.2415385-1-jouni.hogander@intel.com>
References: <20240904101834.2415385-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Connector debugfs files are currently not add for MST connector. We
can now add them as we have taken into account possibility to have
NULL in connector->encoder in intel_attached_dp.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 257526362b39a..26af8bea05d32 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3799,9 +3799,8 @@ void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 	struct dentry *root = connector->base.debugfs_entry;
 
 	/* TODO: Add support for MST connectors as well. */
-	if ((connector->base.connector_type != DRM_MODE_CONNECTOR_eDP &&
-	     connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort) ||
-	    connector->mst_port)
+	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP &&
+	    connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort)
 		return;
 
 	debugfs_create_file("i915_psr_sink_status", 0444, root,
-- 
2.34.1

