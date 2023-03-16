Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 115856BCDFC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 12:19:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E62410ECCE;
	Thu, 16 Mar 2023 11:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0226010ECBE
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 11:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678965563; x=1710501563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+6/WW9Zbh63irpI5A4FDXF7YYM4Fc2xGZbrkPSqfaSg=;
 b=bEiMhFMGxitEQvG4X/lABZI28ay4e4u4XzzmbsLXlkMaQMqKEtsjPoam
 W0oFrBxz9ZL3GeK90WI5Xrz9M+2/S0v3SzGRSdZ7ZhPD1BEJ+8En8Aitu
 cZt2/bgm/TAj/j/OqHEhXnOq6fb0FlGMBxgT9iRKH+Fwl/Gm+D9Jvgxk4
 fhECMc1IlBhLbX/62MLGWKuPovGEruah7QpWsS4CGcpynB1wMGGfGGERf
 fQYm/Y2EZBgvPCr9ZEhAc0smBNMWoiB7Ztcq59KAWttB6zGJ1zlmuHp/O
 q0DvgLv3zYnwW8Bf0Sgdpq+8Yg8LVIHUE23UKuCa5s6MRyhgwDFUu0fdb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="339485972"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339485972"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 04:19:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="744083300"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="744083300"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2023 04:19:21 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:13:32 +0200
Message-Id: <20230316111335.66915-20-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316111335.66915-1-mika.kahola@intel.com>
References: <20230316111335.66915-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 19/22] drm/i915/mtl: Define mask for DDI AUX
 interrupts
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

From: Gustavo Sousa <gustavo.sousa@intel.com>

Xe_LPD+ defines interrupt bits for only DDI ports in the DE Port
Interrupt registers. The bits for Type-C ports are defined in the PICA
interrupt registers.

BSpec: 50064
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index e301f4755417..7eef4a5bab46 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1923,7 +1923,10 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 {
 	u32 mask;
 
-	if (DISPLAY_VER(dev_priv) >= 13)
+	if (DISPLAY_VER(dev_priv) >= 14)
+		return TGL_DE_PORT_AUX_DDIA |
+			TGL_DE_PORT_AUX_DDIB;
+	else if (DISPLAY_VER(dev_priv) >= 13)
 		return TGL_DE_PORT_AUX_DDIA |
 			TGL_DE_PORT_AUX_DDIB |
 			TGL_DE_PORT_AUX_DDIC |
-- 
2.34.1

