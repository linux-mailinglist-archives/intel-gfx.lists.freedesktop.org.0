Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E755AD8970
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 12:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DCDE10E990;
	Fri, 13 Jun 2025 10:23:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PEQYq5kz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C5A10E98D;
 Fri, 13 Jun 2025 10:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749810209; x=1781346209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1Qw/ufFaFlA7K5R0eJXMaTNFPzfulYuQsUr0fAvGOmE=;
 b=PEQYq5kztuM2dnQecuS5hSAY8Uu1ciHBtpGo0cuo547oPcipclOxymmf
 lTmxcgdwPXDXu7SsW8CDjzzJQdOySEkMZrmLkedPuKXfu69x3G7d1/IWh
 U2nvOm1CwGO+7onZYQFmQOow7/bINi8UoKCWMwQKxoikeL7bvwKCu0ZHe
 caq/76uSKve8uPWgA4Si37zGf/TgLk35vK70gbXQ85j5mfB9Bm5arLd8m
 KycUgVCFtneRMU9ZUCUgg1p6itT+Ck7gzs9u2LZD0O77xeOrx1zxEIKHd
 ffsz3EKEfoZR/V88lusg1P33QgNCwhmTt4oqHjXjL4HTiCGMtwatl2h4j A==;
X-CSE-ConnectionGUID: ubOdeGgUTkaA3VXPNQQvYA==
X-CSE-MsgGUID: 4ROm0iyCR4+tUVgcL8RA1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="62673645"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="62673645"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 03:23:29 -0700
X-CSE-ConnectionGUID: NGohnlGTRRinNdzkRvo40w==
X-CSE-MsgGUID: tIBXUnc0Tn+QdxW4GZFGZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="152758962"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa004.jf.intel.com with ESMTP; 13 Jun 2025 03:23:28 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH v6 7/9] drm/i915/xe3lpd: Extend DMC load path for display
Date: Fri, 13 Jun 2025 15:52:54 +0530
Message-Id: <20250613102256.3508267-8-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
References: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
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
Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
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

