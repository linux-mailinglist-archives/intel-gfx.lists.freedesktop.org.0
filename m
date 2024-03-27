Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F7088D584
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 05:47:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6F4910F7EE;
	Wed, 27 Mar 2024 04:47:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M4mJEu8K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31C5A10F7ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 04:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711514820; x=1743050820;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9PM0sRPZDEK+2TTJknbOw2X+SgI7ZJ8N3Hh3c+P+CTw=;
 b=M4mJEu8K0i7bs8VyhH8N+iJOETkWJ7diLgC8Z8LDEr07kYXFdPqNz7J7
 Ik+lxFCmFlY7qi19bnDGuKADQc5VvlIK7SqaovW0hedbEBtdap2NoVGZN
 qOrygnNsNhIUnlsbcmoSeUUwQmIe2Mfxl4Dbvyd3WzHxJaQS0r0Q4OO3Z
 iF8KbyCrVpLio5zjBMl3EZ9FQ9Cv95bgyiclC8vDtIAmvvfZz/laSc8A+
 5Tkz80m/bt0fmhmtxJEr4+fGpoQdmqPCWhSNzWwxipY7kZSdvC+wukQi5
 WhOhZLbOpm9X9VnXC1iWJxZMQQevZdXj36A5hQdbKsnXBYkv0HKtYgC+1 Q==;
X-CSE-ConnectionGUID: RDUfMgnnTZCKMkx0ewaOBA==
X-CSE-MsgGUID: +QBVLdufSEydXTnqIAUNBQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="29072756"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="29072756"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 21:47:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="47363388"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 26 Mar 2024 21:46:59 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/display: Initialize capability variables
Date: Wed, 27 Mar 2024 10:14:22 +0530
Message-ID: <20240327044422.240398-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327044422.240398-2-suraj.kandpal@intel.com>
References: <20240327044422.240398-2-suraj.kandpal@intel.com>
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

--v2
-Fix Typo [Chaitanya]

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

