Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0065C6A0B0D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 14:46:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AAAB10EB99;
	Thu, 23 Feb 2023 13:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F6D10EB97
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 13:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677159964; x=1708695964;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QLhOlKYdG6kBr2LFt40HqETDpe5b/QAOUOai5ASAgq8=;
 b=iYpntwC+O9n7fJ9+DMxhmDuLPAOWqCHvj9MQ/X1YoSm17uN0cgFVff2j
 D3AZP35Dq5sdTQlyJlJfpkan7mt2PudCsxHKOAn/0hSAY8G0NqgF2Zw9D
 jkpIK+c80Pj4U+NUkD09QRk5kY6ds95RZW7gb/ViNr2VvYs4+FNvpWslo
 6VD+3/acy3J52n/gIpbETCRMCKvJw5lQAyXAtzAmqRzhLzPqH12BU3Sb/
 7bHxzAuVW7BSxjKCXnuKYbZVpAhAbMkqiHoiuBqKx4syWDKQkNRVNn6mf
 tBswfTMlX41VrPaoseYK1eDKP4BckfZMcerghGYr6mBRjpPHnnlOLVkCR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334581716"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334581716"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 05:46:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="846562615"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="846562615"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 23 Feb 2023 05:46:02 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:40:18 +0200
Message-Id: <20230223134021.2236889-20-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230223134021.2236889-1-mika.kahola@intel.com>
References: <20230223134021.2236889-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 19/22] drm/i915/mtl: Define mask for DDI AUX
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
index b5741aa06f5d..f6437fc66a75 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1922,7 +1922,10 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
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

