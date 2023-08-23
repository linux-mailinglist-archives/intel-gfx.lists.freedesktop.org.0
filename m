Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C71AD785E3D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:10:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0EA110E4BA;
	Wed, 23 Aug 2023 17:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C92410E4A0;
 Wed, 23 Aug 2023 17:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810564; x=1724346564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pukhlaXJeVsnZQjBhrHRKcmZSih3eHpnOTRoKy2jwOM=;
 b=NzXTuq0vlZCG2JST746LCcDJgmxcb7FeKQ8gzUgopqhNXITCI0hcHBoz
 hg17/HEKWhRpk4x1phbJ7m5NKD0iEfiskq0J7NSPjCnhO6ezypzGBHCW1
 ImCy3+SrmA1ddp1QCF/F6u9l4hqXQjPd3/m8z6kGYjxKU+Ilm1Ejl9xhi
 G488sSxcFV+fH0+ni212oN2jEjw5ZX7oW1QFR65habt739s+st0OqiXWg
 yWGcW7HCLs+BIY9qC/C2x34e0qkGqYCgWHclKsMQrYyLdqfUUn/xVX7Xu
 tzs4gI/8nvpYwbKguzqXLqtQJnHIrtqLey4f53xzbWVT9OWLlKOWfc5b0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147521"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147521"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204896"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204896"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:40 -0700
Message-Id: <20230823170740.1180212-43-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 42/42] drm/xe/lnl: Enable the display support
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
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Enable the display support for LUNARLAKE

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 7fb00ea410a6..f723e19e8ca5 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -337,6 +337,7 @@ static const struct xe_device_desc mtl_desc = {
 
 static const struct xe_device_desc lnl_desc = {
 	PLATFORM(XE_LUNARLAKE),
+	.has_display = true,
 	.require_force_probe = true,
 };
 
-- 
2.40.1

