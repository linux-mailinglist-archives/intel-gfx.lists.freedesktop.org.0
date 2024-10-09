Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B032996039
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 09:00:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6B4910E65D;
	Wed,  9 Oct 2024 07:00:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lPvfAWKP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FDE510E65D;
 Wed,  9 Oct 2024 07:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728457202; x=1759993202;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HB2ek0G1m7JGPQEKjgHknTKpa9k8la5WlnHx9PoOhtc=;
 b=lPvfAWKPXl/AXGWFSKdCLaAxkyqDd2JHtmcR3HaCfG/Hv4EcV/H/3vj9
 4GTK6IFFQwx9OHVsAkvXLbOXe7f4rkmpQwoi6ZS3dZW2BWOXkb4BRtLuO
 uTvZn91RDKhtsVCjgz5KEcxnKb7cwH0we3g0dct/XJyQf8yH6FSaqwyGv
 Yug6691cFOd9mtfBR9RI5pKfrgYFj7E7nu8oEYWPGgUjlAH9ZXyL4mtp0
 jl5lS32V8Cp/UW4rZDY5xAic4Mi9KzoGSkQO8C0LDfHRAg9RNZb0DHZ1N
 LjPJ0484ujwDNzTi8FQJHd9Fjd5LtuoaaHlC7XMlMqq7HIiDX3rXPNEJN w==;
X-CSE-ConnectionGUID: ke4qfrNCSeGAWuT4pA35tg==
X-CSE-MsgGUID: 89SMGp5cT/y61S8SYMtJVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27682852"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27682852"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 00:00:02 -0700
X-CSE-ConnectionGUID: okaVMFyZTnWYGWDGXYjDsw==
X-CSE-MsgGUID: dUhBy/ZfSdWySYRW3NwDpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76378859"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa006.jf.intel.com with ESMTP; 09 Oct 2024 00:00:00 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dmc: Add dmc null check
Date: Wed,  9 Oct 2024 12:24:34 +0530
Message-ID: <20241009065434.1799459-2-suraj.kandpal@intel.com>
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

Add dmc null check before dereferncing to get the major and minor
version.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 48bbbf8f312c..8c193de0e253 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1263,8 +1263,9 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	if (!intel_dmc_has_payload(display))
 		goto out;
 
-	seq_printf(m, "version: %d.%d\n", DMC_VERSION_MAJOR(dmc->version),
-		   DMC_VERSION_MINOR(dmc->version));
+	if (dmc)
+		seq_printf(m, "version: %d.%d\n", DMC_VERSION_MAJOR(dmc->version),
+			   DMC_VERSION_MINOR(dmc->version));
 
 	if (DISPLAY_VER(display) >= 12) {
 		i915_reg_t dc3co_reg;
-- 
2.43.2

