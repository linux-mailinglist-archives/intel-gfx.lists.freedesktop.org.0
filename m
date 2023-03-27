Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD926CA43C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 14:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4EF110E59F;
	Mon, 27 Mar 2023 12:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B558910E5A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 12:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679920786; x=1711456786;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ebxn19an9c1svYQkJilcGvcxfv75paTW6oV2iyV7LqY=;
 b=XCfACQi/e50QUGbHZu4KH1cvKvQjZtiee6zKa0kFH4+VPA0dOXyrgIVZ
 +Myg7DJwROIHoUtCjLc2IUz4AMjNf+v+7428t8dlOidKN0RTM6hbw/YhA
 VGx5bSmR/kTNDC/bMOdCxWC+gzFF7akhKO/04X2tHwIklHL7TR6ymeMtq
 sktlSUJ1qIV2UZ/deLi/aaOS0RhzildC2S50amj4TxF1MCfscvM1vlp7Y
 62iHnMa/zouw4ZDPl0EytbFY8uxhI1VUSvjN+E+HpHa2ApcAN24GGLQn1
 7QHNMoexqJQRwOJwIYo9+zx5AEMsV/Z6vZvbytBq1tHqXgcxdnvaPiXR3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="402847796"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="402847796"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 05:39:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="747984736"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="747984736"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 27 Mar 2023 05:39:44 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Mar 2023 15:34:27 +0300
Message-Id: <20230327123433.896216-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230327123433.896216-1-mika.kahola@intel.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/mtl: Initial DDI port setup
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
index 5a386c7c0bc9..9fe6e33a66d6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7796,7 +7796,11 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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

