Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C585FEE1D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 14:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D712210E4C3;
	Fri, 14 Oct 2022 12:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484F310E4C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 12:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665751913; x=1697287913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s+2jcRQMbSevISPLvLw8s5iNrxiYpudgyvysqlyDTc0=;
 b=M9W3YruC/bz5T6nqvK7o8j+1FVoj1e9vzgqpCfOR7wxne+zxwIgGVPO/
 hBWlkIE8Da9ys5AOGjEzQ92iNpVKmPEUJDhlXy1sVKeb7VCIrBZ/NadJ4
 21W6K21HsS7FFofLrOypqfzxAo1RDhlwCqk/V9MHgLW1Gia/cYYp8zTBH
 KQIraxxfsJtTSgkAQsX8Z5HJxxRpsPpzV9nYzs7v+OQsmhHhxZNYjXHP4
 kZGbkKzButp/arCF80KrqqJb5JmhLF9tWEQFz6vSRvH2gMiFESBUWW4kY
 phWjN1U/A6ckRLUyNr4vMmBqLvCgsPxfOtkCC73akLsYoAVC6F/+qDKVb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304104607"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="304104607"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 05:51:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716739687"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="716739687"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 05:51:51 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 15:47:21 +0300
Message-Id: <20221014124740.774835-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/20] drm/i915/mtl: Initial DDI port setup
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

From: Clint Taylor <clinton.a.taylor@intel.com>

Initialize c10 combo phy ports. TODO Type-C ports.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c52da2a21896..6a8937a7d2d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7900,7 +7900,11 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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

