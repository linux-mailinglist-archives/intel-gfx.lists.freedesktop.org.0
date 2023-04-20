Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B5D6E94EF
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 14:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 158A010EC36;
	Thu, 20 Apr 2023 12:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C3910EC2B
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 12:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681994772; x=1713530772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dURTJ2b8G9bwSueAK1Rr4rVwETUnYbmQ7D91TPjDjLY=;
 b=ViKkAVlNPjAhM12iRZa1LCqQ8Dj6RSDnMv6k/xm+PRId2SQnlSoFnpi0
 m0WDfpP410NepVol3LJU74TQS0iTCroemLovr9tjV1B4veIUXW4hBnDWY
 zXdVkwn3YbVMIPWAQ+CW6GY1CGLOpBG9R+sQ8fomko1aWQSSn4m0UJ/5R
 GQN5RKAI5wxtlaWuxWTvsQDQudu6HS7EJkq8+vT/vZlr2HsHkYSrsn3c4
 t+/LQBHeRnmF32IruISGDNN87ur7UKSqctkNR3yLL2OBwFggOl4WyfpSE
 6i8LLfK9Mq6ZBbYIasWoKqIZ55F6NBtx+WAxwoCDMxlqOAo1QYZFXuzdI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="326051933"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326051933"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 05:46:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="761146079"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="761146079"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 20 Apr 2023 05:46:11 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 15:40:50 +0300
Message-Id: <20230420124050.3617608-14-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420124050.3617608-1-mika.kahola@intel.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/13] drm/i915/mtl: Enable TC ports
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

Finally, we can enable TC ports for Meteorlake.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e70bdf0e06f3..dc777c3b1b1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7587,9 +7587,12 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_METEORLAKE(dev_priv)) {
-		/* TODO: initialize TC ports as well */
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
+		intel_ddi_init(dev_priv, PORT_TC1);
+		intel_ddi_init(dev_priv, PORT_TC2);
+		intel_ddi_init(dev_priv, PORT_TC3);
+		intel_ddi_init(dev_priv, PORT_TC4);
 	} else if (IS_DG2(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
-- 
2.34.1

