Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6324AD577A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 15:44:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 206CC10E67B;
	Wed, 11 Jun 2025 13:44:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GnOeDmaM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CBF210E679;
 Wed, 11 Jun 2025 13:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749649487; x=1781185487;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uYU430DsQHxrd8nliKxpieF6c45jxwyHHqKqiBs1W80=;
 b=GnOeDmaMWYDXu2egS+RJO8UgCNke4un6rb/Uw7Uzql+4GUfEY3S9Tbat
 e1Xip3gzYVEV/6RJ50h4ijhgMlFirQ+WKoc3jTxUK+GllZCmXfDJPmiem
 G5Pry4ViCerzrrdOPDVkT8FFRMBuOFPJ5wIo2DGACw1Y8HpWFrksGH9+I
 DVbu5dxKIILMUqzn2iipXisWUzFjU39BYsZMos42D+nWVPI5w7ryknIai
 KXwnNMxl7D9d693tfrVGFiLc8k5fasgLdGFn/v5rWgiOSPGwGao1tuSsC
 V8jdy/Bq4L9k6eXHCQLpof+q18nQmaj5WMie2JVC+HGIayIux3LJgNykX g==;
X-CSE-ConnectionGUID: gWoTyUyCR7KgjVwaAVzbqA==
X-CSE-MsgGUID: DV2xzij8QHW6CwgXJDtAEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51505819"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51505819"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:44:47 -0700
X-CSE-ConnectionGUID: DcMVhiMYTWOqLUkSe9hPkQ==
X-CSE-MsgGUID: Q4LtiWD1Ry+UsiFJoJARLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152360348"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2025 06:44:45 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v4 7/9] drm/i915/xe3lpd: Extend DMC path for display version
 30.02
Date: Wed, 11 Jun 2025 19:14:29 +0530
Message-Id: <20250611134431.2761487-8-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
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

Display version 30.02 should be treated the same as other Xe3 IP.
So exteding DMC load path the condition for it.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a10e56e7cf31..1295d8245a2e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -179,7 +179,8 @@ static const char *dmc_firmware_default(struct intel_display *display, u32 *size
 	const char *fw_path = NULL;
 	u32 max_fw_size = 0;
 
-	if (DISPLAY_VERx100(display) == 3000) {
+	if (DISPLAY_VERx100(display) == 3002 ||
+	    DISPLAY_VERx100(display) == 3000) {
 		fw_path = XE3LPD_DMC_PATH;
 		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
 	} else if (DISPLAY_VERx100(display) == 2000) {
-- 
2.34.1

