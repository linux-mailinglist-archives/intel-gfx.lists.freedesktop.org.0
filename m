Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C45356D984A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 15:32:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 236C410EBC7;
	Thu,  6 Apr 2023 13:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D82A10EBB9
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 13:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680787965; x=1712323965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M8ekKXWeHqem9MRrgBH9CVt99XFFM19yzn179m/N3AM=;
 b=mwbFnv+SxR7NkINRxn80IKNSS6Tw+gjs+F2ko0N0VMJmC33dcGSz/1kN
 w3kT80INXl7nlFEZPY4km3qiy2MM6Md4fSL11+XcNbGEzyQKiQrRTo2Xs
 YasujzYkSj39/KW/Uc5aw1Iy4lYPiyZeVQ5hw06m8yPRVqT81yVDdegSy
 VLYg9LzS4OvI4PvAjWCGUUFKQ/HrLkPiwASHYP+JzI/Z+g+YDa68mq+/l
 ecmPCKLLMHctJpx17mH3+2G2CHyANElMRbLESN8f6f6UrCOqZ3va1oFgK
 xDttuoP2+2TVjvo3z2XY43JE2UofLNaxydQFfFoHBVDzLfz00aBPWqUQ0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="345352298"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="345352298"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 06:07:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="751641644"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="751641644"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 06 Apr 2023 06:07:30 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Apr 2023 16:02:14 +0300
Message-Id: <20230406130221.2998457-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230406130221.2998457-1-mika.kahola@intel.com>
References: <20230406130221.2998457-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/8] drm/i915/mtl: Initial DDI port setup
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Clint Taylor <clinton.a.taylor@intel.com>

Initialization sequences and C10 phy are in place to be able to enable
the first 2 ports of MTL. The other ports use C20 phy that still need
to be properly added. Enable the first ports for now, keeping a TODO
comment about the others.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 010ee793e1ff..fa7807d04ac2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7729,7 +7729,11 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (IS_DG2(dev_priv)) {
+	if (IS_METEORLAKE(dev_priv)) {
+		/* TODO: initialize TC ports as well */
+		intel_ddi_init(dev_priv, PORT_A);
+		intel_ddi_init(dev_priv, PORT_B);
+	} else if (IS_DG2(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_C);
-- 
2.34.1

