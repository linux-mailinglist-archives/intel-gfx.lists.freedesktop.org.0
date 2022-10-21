Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 916AC606F9D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 07:51:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DA9A10E1F4;
	Fri, 21 Oct 2022 05:50:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D134910E1F4
 for <Intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 05:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666331444; x=1697867444;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FP4GiPQLARg62WcS2hnwg3qHavzf4iEk460MI2bskPg=;
 b=EJHsArMcyGBo4fQtFph8CRtiTVtVs9SSeqxmumeYSyOt62YeoGnKxvGl
 L1RX7tG2jzwmhu5+bZ++c4U+m0vWWha+lz9UkExrCUXDa6x7wbE5Pw5sw
 jJk8h+WVB2+oqHkbaydwr/DDRZu2OOgShb7GgotTrwxDTbiq8391Ho8F+
 XTf4IZKzUCt7yIi/B121nuLhZA7mtV2iIJk3eUwq93NLOH2ty0cFsA6wf
 k7QiaFR7XMFDd3nKpiXes80waG3JeYFS/ob33zK7+U2/8q5ZeZLYyUOHi
 9TfpJ5ff3Kcq6gAsYXgO9XxaTW+xvg1khAkgqiawiEqCRHyknhIgd077q w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="308605705"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="308605705"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 22:50:43 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="630296331"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="630296331"
Received: from jpheiska-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.38.122])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 22:50:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 08:49:22 +0300
Message-Id: <20221021054922.2753034-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Remove inappropriate DSC slice
 alignment warning
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

Selective update area is now aligned with DSC slice height when
DSC is enabled. Remove inappropriate warning about missing DSC
alignment.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Fixes: 47d4ae2192cb ("drm/i915/mtl: Extend PSR support")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7212
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 904a1049eff3..64e9e134fdca 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1678,9 +1678,6 @@ static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
 	pipe_clip->y1 -= pipe_clip->y1 % y_alignment;
 	if (pipe_clip->y2 % y_alignment)
 		pipe_clip->y2 = ((pipe_clip->y2 / y_alignment) + 1) * y_alignment;
-
-	if (IS_ALDERLAKE_P(dev_priv) && crtc_state->dsc.compression_enable)
-		drm_warn(&dev_priv->drm, "Missing PSR2 sel fetch alignment with DSC\n");
 }
 
 /*
-- 
2.34.1

