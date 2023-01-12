Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63644666E74
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 10:41:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D14BA10E189;
	Thu, 12 Jan 2023 09:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D16010E189
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 09:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673516499; x=1705052499;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1KvO3JI+JSHHoEwDY1UyD1Lf43DdoDcogQ/Ohvl6MDo=;
 b=PUaUIlWDIDAxbDBfgLfpNfZCQNb/S0iEaTT1h2y+Z+Fe8zPFYP4VQeKP
 aBc9YzqaitnCByh7t5OyjGcRJSCc49B2pss0qoTgt+6K+ctoPmm52Sxh3
 QaWyDOy+wG8JPd3rK2J6/jaPpPaVx9sCm/BUIbAP6wRk4xHeQyhOmn2y9
 iSOMlPbWq6qVfQc+Gdob6Cpv4Fob8RWpamAUCX4BqtXZ/BLI24sDTIzfH
 f8xr2taTI4YeF6llvSoO0ukUqnjw4uewVR2xt8enWVG75CjCkK+rGZGA9
 qLWHquEs3KvQqFtLuacWoEmn/PXmAocBWgw0dQu40Vg/mLVPLqioZLtgb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="325684106"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="325684106"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 01:41:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="746493569"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="746493569"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jan 2023 01:41:37 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jan 2023 15:11:31 +0530
Message-Id: <20230112094131.550252-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference clock
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

Fix typo for reference clock from 24400 to 24000

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0c107a38f9d0..7e16b655c833 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1319,7 +1319,7 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
 	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
 	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
 	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
-	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
+	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
 
 	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
 	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
-- 
2.25.1

