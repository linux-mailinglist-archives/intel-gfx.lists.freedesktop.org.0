Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F12196A19E3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:19:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1457610E88A;
	Fri, 24 Feb 2023 10:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B25FA10E852
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 10:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677233991; x=1708769991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MvStutSx/fJDcP6jK1pT6N0S6djBixaMUYBejVi4hXc=;
 b=fB8G3kmZDUjND6FhYHq4LKPLSxm5E09KtkLT6FiT9HVWgk7GtDNKXnUK
 ti52HpIh0gmcjkPL3C1eUYs4Hg5OClCjgZNsw67+kpiE3YVVTKj1gdiuK
 eDvqTrfqoKf6kTf3802m0RWUUdqklafkkjSC1yaFq+/koYzkvfWxeANo3
 Wg2oRw9Su5nhnIBrCWzFUHEWvfSVvYNwdFos306UmV2sWVxh9gm4I1z4f
 /LAxi5o3NSQIaYSiL1VGth4xLghWwovM2OdNUzqDzX0gJ3dWVObzBW5u8
 1hAgcson8qP2dpi14Xxss7GuYqnIImGCyv0Sy7aPEahSHENsDRilE8lu3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332129914"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="332129914"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 02:19:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="672846638"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="672846638"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2023 02:19:33 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:13:51 +0200
Message-Id: <20230224101356.2390838-18-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224101356.2390838-1-mika.kahola@intel.com>
References: <20230224101356.2390838-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 17/22] drm/i915/mtl: Enable TC ports
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
index 676bf512b9ce..cb008cf222da 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7840,9 +7840,12 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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

