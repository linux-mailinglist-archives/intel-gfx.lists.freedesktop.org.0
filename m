Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BFC8B6A9A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 08:43:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EDA910E7B8;
	Tue, 30 Apr 2024 06:42:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lDkqR6pK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DBF610E5E0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 06:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714459375; x=1745995375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bth9FCxMK1eL9xUoxNRR/PhawEvGDpN6ljfOe0vfsRg=;
 b=lDkqR6pKg26OPS8/0qEeRTJzuY9psnQ7C6475IYjrvnA4HjbHW84uUaq
 q3IVwb9oSe/sqS/Gl6XDx3xxsCoP3t6T4CBpoSh2MYS8WX/ATfL8bOE+U
 TxOBuJzePu9TDvF6kyTTg5Oazsa9w7fcAXWBgkN0Hb2rf9T5lwP7mtzaL
 UQMWdlRJF2R3Cb/Eqzb57Wvn6m4CGnagsnfA/yOGafMl0vcCrFDDp4EJY
 iYZQ1StVxq8fL4Y/aZK2cHtCp4Vz8e6VqW0GWOtnaItjdLRhvW140w63Y
 kiNoZEdOCPBsstAQRfbg+nDhrugwMaaLYkBKPT6KHpyXdTXqU+del3Iwl Q==;
X-CSE-ConnectionGUID: x+TMKKr5R6GOjb5/jbsUCg==
X-CSE-MsgGUID: hju++25qSJuoMBX5kFFOhQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="9979483"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; 
   d="scan'208";a="9979483"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 23:42:55 -0700
X-CSE-ConnectionGUID: rxwjVpsZSaaJSRzJMXTnAQ==
X-CSE-MsgGUID: U7AfgoazTTqUYDAuhN92Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="30835269"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa005.fm.intel.com with ESMTP; 29 Apr 2024 23:42:53 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hdcp: Check mst_port to determine connector type
Date: Tue, 30 Apr 2024 12:10:29 +0530
Message-ID: <20240430064030.887080-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240430064030.887080-1-suraj.kandpal@intel.com>
References: <20240430064030.887080-1-suraj.kandpal@intel.com>
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

Check mst_port field in intel_connector to check connector type
rather than rely on encoder as it may not be attached to connector
at times.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 92be53d7c81f..2edffe62f360 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -693,7 +693,7 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 
 	*hdcp_capable = false;
 	*hdcp2_capable = false;
-	if (intel_encoder_is_mst(connector->encoder))
+	if (!connector->mst_port)
 		return -EINVAL;
 
 	aux = &connector->port->aux;
-- 
2.43.2

