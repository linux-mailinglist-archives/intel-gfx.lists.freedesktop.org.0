Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D88A991128
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 23:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CD010EAB3;
	Fri,  4 Oct 2024 21:08:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B6f8HlGJ";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE1010EAB3
 for <Intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2024 21:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728076101; x=1759612101;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u4bZwENy8uaabhr5KauoUOVxh+ap02TaiVJ/SPue1Jg=;
 b=B6f8HlGJkQHh7pnaOIWCO3RiwtHAeJgWkhA7e8hjpOVnpfGiUAF5mQgp
 2HcYjZOWURmMsP8riDaOiudpYgMyv/923ht0UyUku1Gg+M1Z0qsBX4kwn
 jDkUX21RuwTWgFsOLzb/4ckl3IOV/K6qyVLoXXQYCTP6FFE60YbVcObiq
 1kYchKGNdXYMBfdVcCnFWnxOI9blX7Aoup/C6BPJv3AvVacHUrn228uLI
 AE2IMm5FXajTdlXCgx7PdW6dF6IMCjrzypt0AtvVE3bp2JHuTNuD5kGfy
 uJ95BMye5aGoZ9L+QG9kWQpilXhH/9mGil6ONWmlQQ+RY1ED5cwgLt9KL A==;
X-CSE-ConnectionGUID: /MgIR7ejTPW71C04YkOY6A==
X-CSE-MsgGUID: PnMTcw4VR9mLgkP4LCl1sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11215"; a="30195823"
X-IronPort-AV: E=Sophos;i="6.11,178,1725346800"; d="scan'208";a="30195823"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 14:08:21 -0700
X-CSE-ConnectionGUID: O8WtPYl0TE6YakHhTICH3Q==
X-CSE-MsgGUID: 8w+tHVyfTimZpSem5u5gkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,178,1725346800"; d="scan'208";a="75158692"
Received: from unknown (HELO cataylo2-desk.jf.intel.com) ([10.165.21.136])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 14:08:20 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/display/dp: Reduce log level for SOURCE OUI write
 failures
Date: Fri,  4 Oct 2024 14:08:16 -0700
Message-Id: <20241004210816.3976058-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
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

Some devices NAK DPCD writes to the SOURCE OUI (0x300) DPCD registers.
Reduce the log level priority to prevent dmesg noise for these devices.

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fbb096be02ad..9920ec1f9c53 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3418,7 +3418,7 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
 	}
 
 	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
-		drm_err(&i915->drm, "Failed to write source OUI\n");
+		drm_info(&i915->drm, "Failed to write source OUI\n");
 
 	intel_dp->last_oui_write = jiffies;
 }
-- 
2.25.1

