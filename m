Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF8F896E22
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:23:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99AD8112A2C;
	Wed,  3 Apr 2024 11:23:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hbS0mCKq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D793F112A2B;
 Wed,  3 Apr 2024 11:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143422; x=1743679422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X5psOW3+DG3J+Z8E/fTdepp0ymRcfHHCHtwseMR06to=;
 b=hbS0mCKqlFCKxlxHNWL4Nw74hVpAzuQCy6KA7rQk0OOwscWedDB5SsD5
 5/5Uc3z1WimcM0/XxJEbV+OV4AM2h7jObxfYf1bAOt/5VrjE4i9+CEUaI
 wSlHyRMmaP0/uaHUIg+frVPX32YzVwXZjdBq7q6ovEUE1PDua5hOBvvzT
 WrOpygEgHM6EM+e4Jw2jbNBaucE4WWikUKxrQ2nOoXx+FA2rJsc/KPbH4
 V3nmIsVoDkge3qhhyIYGrOSMQlm9kNHtmEHDb5NXq0kcQJ4sofSYHuUAk
 H3On4BTPj9E0VPGv8nvZmDjvE/7CDQdS7hdymL/Ol595wfpzGmMgFWQkm Q==;
X-CSE-ConnectionGUID: nr9my5BgSeGnCLn1gJm9NQ==
X-CSE-MsgGUID: WVNjA4uoSNiwTy1U58rJlQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824178"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824178"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:42 -0700
X-CSE-ConnectionGUID: urEXMhJmSUSV4JW7kdJtWg==
X-CSE-MsgGUID: Gc1+PZUpRB21/PfvOZj9Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358632"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:41 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 25/25] drm/xe/bmg: Enable the display support
Date: Wed,  3 Apr 2024 16:52:53 +0530
Message-Id: <20240403112253.1432390-26-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

Enable the display support for Battlemage

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index b3158053baee..835c18ec8fb9 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -340,6 +340,7 @@ static const struct xe_device_desc lnl_desc = {
 static const struct xe_device_desc bmg_desc = {
 	DGFX_FEATURES,
 	PLATFORM(XE_BATTLEMAGE),
+	.has_display = true,
 	.require_force_probe = true,
 };
 
-- 
2.25.1

