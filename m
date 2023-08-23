Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D9C785E20
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C013E10E481;
	Wed, 23 Aug 2023 17:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AA1E10E47A;
 Wed, 23 Aug 2023 17:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810557; x=1724346557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HNdvGLFQ7mpOX1YmDKmhoEocnlkD2A+3rezhu1l9Afg=;
 b=dcoinlCjoQncePNh5SZbU22CmZmA15jbj7Igbd/aKBbkVLsETCagMUdC
 bzaYhNSUDrtd2J7s5fMj5oKat7eQeNGBCHlht53OYPx/v3wL+TXR9HOKC
 7NtRCNaMGPDpEp20OHu4ywkhp2lxRdyMxUgD0tm6L4ykKX4NBlcY1+ED2
 I5jH3yIRYNpnCb/pTaaqKYkKd474Rc2+REgyXi3JniaJjcPjdYlUhjboc
 cU8dZS12ObGnRz5JsJOntahxlk4dTEKbLgJDP8SF4Z9Lj1gWvTnBqJovZ
 4Zt+EUhEoayzFmgX7hmHUCXzyVrQQI2gqlHhnaWoviIy/+sGo3B+2j3e/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147476"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147476"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204799"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204799"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:16 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:11 -0700
Message-Id: <20230823170740.1180212-14-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/42] drm/i915: Re-order if/else ladder in
 intel_detect_pch()
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

Follow the convention of checking the last platform first and reword the
comment to convey there are more platforms than just DG1.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_pch.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index ba9843cb1b13..cf795ecdcc26 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -216,13 +216,16 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	unsigned short id;
 	enum intel_pch pch_type;
 
-	/* DG1 has south engine display on the same PCI device */
-	if (IS_DG1(dev_priv)) {
-		dev_priv->pch_type = PCH_DG1;
-		return;
-	} else if (IS_DG2(dev_priv)) {
+	/*
+	 * South display engine on the same PCI device: just assign the fake
+	 * PCH.
+	 */
+	if (IS_DG2(dev_priv)) {
 		dev_priv->pch_type = PCH_DG2;
 		return;
+	} else if (IS_DG1(dev_priv)) {
+		dev_priv->pch_type = PCH_DG1;
+		return;
 	}
 
 	/*
-- 
2.40.1

