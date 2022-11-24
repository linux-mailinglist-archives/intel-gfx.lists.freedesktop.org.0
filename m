Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C05637D92
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 17:22:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E00110E0A4;
	Thu, 24 Nov 2022 16:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D14F610E0AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Nov 2022 16:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669306914; x=1700842914;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ej7EjnBfVKeEcNx2Lj19iyISO/l63RehnvV3oST02LA=;
 b=IF5OYprkoXFqjlLSsV1PVpJ2csQbUut9av/M/vbTwr0J3eayNLeSLjxy
 uLSSlZiJHnWfFXrJ0xI6IVPD6w94qPr1KMJmHhLtESBVjMJvjC46zl4CN
 RxZi/SDANcot5cw58IrgS5eT5SNxfs4KP+qEFr7+gQNi5pXJV5O89CC3x
 1s62RwIlUl8q2PwDz4JYeZpBH9nKJBYgQcb6+2p4H7Z5cAMMBVxjdZH0z
 Yre7cHy0N00thvwqGMx7TovN/DR6AeMbHD+aNv6laMlwjNBVRvAqBlUXK
 DdA4vgvLZHI1G6vd8fRrobQSMZu1R4u5qUKbWZej1vKvoQ7ECrmT4lvOZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="294035063"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="294035063"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 08:21:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="887424497"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="887424497"
Received: from mdkoch-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.1.93])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 08:21:52 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Nov 2022 13:21:23 -0300
Message-Id: <20221124162123.16870-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/dmc: Update DG2 DMC version to v2.08
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Release notes:

1. Fixes for Register noclaims and few restore.

Fixes: c4cf059d9c2c ("drm/i915/dmc: Update DG2 DMC firmware to v2.07")
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---

v2:
  - Use correct numbering for the minor version (8 instead of the
    invalid octal 08).
v3:
  - Add "Fixes:" trailer.

 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 081a4d0083b1..eff3add70611 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -52,8 +52,8 @@
 
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
-#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 07)
-#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 07)
+#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
+#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
 MODULE_FIRMWARE(DG2_DMC_PATH);
 
 #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
-- 
2.38.1

