Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB6E9AF56A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:31:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0830110E9B0;
	Thu, 24 Oct 2024 22:31:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mCGP30KM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF37510E9A8;
 Thu, 24 Oct 2024 22:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729809095; x=1761345095;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8Tm8t2kEZXAvSHGjZDgvrqrf38dXDVKpmO8qby0qQiw=;
 b=mCGP30KMj5yyicxok8saB2+rTv5yRVE1rPZbg/e6n9OLjUm1ZNGauLEs
 L8kNqi+QHShcW/99UhW+OxnyG0JchModTYbQmK+Rvr/6CSSoTyrNPwmhp
 LyiLIK/oH+pgUqW2E9tohfkA2bn5aVFQl+4NuhJlhyll6KSqEWCLLCDo7
 FaPMUzbN7YljjOuGd7n12rAn39jzYMi62PfXyP7mDYHf4EQbDykCz5q6a
 kLj8G+ksr2GKg/RJ9d9ZzPqKZmXkooew8hDpjCNppyRi5gXarBZU9Vc9T
 OoZ0qAEDjglj6kaOV+5m+x04hyY334xGn65J6+486bwfy1xByC6oXwVxx Q==;
X-CSE-ConnectionGUID: D8ckg79VSDqDAUEFXwYpnQ==
X-CSE-MsgGUID: 8ctkE8WzSWKieJmUIQ6nFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46950805"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="46950805"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:20 -0700
X-CSE-ConnectionGUID: gOw1l/bbRDK6QJakM3X5QA==
X-CSE-MsgGUID: t4nAmJh6SxqyT6U3RHTC7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80838670"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:19 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v4 06/11] drm/i915/cx0: Remove bus reset after every c10
 transaction
Date: Thu, 24 Oct 2024 15:31:09 -0700
Message-Id: <20241024223114.785209-7-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024223114.785209-1-clinton.a.taylor@intel.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
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

C10 phy timeouts occur on xe3lpd if the c10 bus is reset every
transaction. Starting with xe3lpd this is bus reset not necessary

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 4d6e1c135bdc..c6e0cbff5201 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -224,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(encoder, lane);
+	if (DISPLAY_VER(i915) < 30)
+		intel_cx0_bus_reset(encoder, lane);
 
 	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
 }
@@ -313,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(encoder, lane);
+	if (DISPLAY_VER(i915) < 30)
+		intel_cx0_bus_reset(encoder, lane);
 
 	return 0;
 }
-- 
2.25.1

