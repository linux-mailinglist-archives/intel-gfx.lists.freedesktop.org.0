Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 564BC6A0B0F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 14:46:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 651A710EBA4;
	Thu, 23 Feb 2023 13:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9992D10EB97
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 13:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677159960; x=1708695960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ht1fvwQQo+RAImReqzY1TL5HwrC+jd5kqs4NrW2u8mE=;
 b=SBy+ki4SkthAyAGV2p+iphMRzw+LX7FtGuxPVbNJ/kc0aWJ1OGdXNAnN
 ZwHoj/tJry/tF0G6Rc+vd90pRL2QLYRtMloqhev2QVktKTbVy6YMBT+1K
 hvoJJHPDb0pi9R6zUXJd0uywB/XYi3Ds4F81R82yu8OOqkNrJDYjgteRX
 KOP5QCnC5CZ4Mg2nl197sQJltroyiMFQ4pQxm5bwTMq3RrSeunuAWAx7q
 MyW/RT1MRPhxluFkYwh0x4BY2G0ilVHdpl89uryLfucuRQEwiID1JMKW1
 3voQd9cDzkzvaGve+hFf4kZ86Gp5JmBnAQEY49FHGfyjMK8euZUwWZSOX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334581698"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334581698"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 05:46:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="846562582"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="846562582"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 23 Feb 2023 05:45:59 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:40:16 +0200
Message-Id: <20230223134021.2236889-18-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230223134021.2236889-1-mika.kahola@intel.com>
References: <20230223134021.2236889-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 17/22] drm/i915/mtl: Enable TC ports
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
index fc56e1e83612..1e300551479b 100644
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

