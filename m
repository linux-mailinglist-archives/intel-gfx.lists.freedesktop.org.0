Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D656A6E94EC
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 14:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A38D510E2F3;
	Thu, 20 Apr 2023 12:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B0E510E2BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 12:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681994767; x=1713530767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MsuECCI3g53MaPRonkxR3WEqtRrYIDImfVAsKeSp8gs=;
 b=SJ/8tMEK2RWOxMCrL5LTofQaUL6JTQ2LzBmo3V51JPwH/BIGfcj8rgAk
 vmNnanB2FAsnhihl/FeFNNlh0B3a9s806lksZozR2kw63HSc2buDX0YX9
 peqoRB9Fqgrl7ZxtfBz+kA4AmL0ORdz1e9Xh2nolPP2GcRk5BP1G+1IUx
 Ei/23zaQSDc4Pmx7+zMpULAO26HJ1igwEnrG0JNF1JQL3DdHzNm69oeYq
 4t8LO+wHpT9N5v9SL4N+wq96N96ZdJ08Y2PN0iMCpxcMaFwp9xB/x4Lq0
 KHwpHfSjPUApObP1OhgOYdDIXFNLvV3T276vENMGgTvUngNCSpEzZpJuX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="326051922"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326051922"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 05:46:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="761146054"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="761146054"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 20 Apr 2023 05:46:05 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 15:40:46 +0300
Message-Id: <20230420124050.3617608-10-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420124050.3617608-1-mika.kahola@intel.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/13] drm/i915/mtl: Define mask for DDI AUX
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
index 2b94b8ca8ec9..e5f12aa141f6 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1938,7 +1938,10 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
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

