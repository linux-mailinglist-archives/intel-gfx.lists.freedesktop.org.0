Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 605B4559895
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 13:35:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3538410ECD0;
	Fri, 24 Jun 2022 11:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4DBF10E61D;
 Fri, 24 Jun 2022 11:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656070551; x=1687606551;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KeVATurHya5jc2nhdDfebLpaxYfVs+4gUCtjIwXwpJM=;
 b=P5scDwkM1mUkfrmEU6x1MwA13H0kHjSnddeHQpKbsupn6tMovGvttudJ
 WbwHiRuflrg2zo9TgzurDXIaAa+QchnoGsP2rABGuXrgt4CjtABmx8yAs
 5urEMZx41iN2b5EoExvSCTLitM9p3V0PSz/spNr5YEoyc5ItwJftBtpeB
 1DSXmklbK5YXAoBQQPw6wbHNHTikEGINTaxpbY5CaV64rbSlEBvc3FruQ
 b2RH0WTJBmbKJo2HWbHxE7IK3rNpfBYz6sIRytKoNN2EKF2HbCSkepcZT
 LGYccniotZUHx743h0lyNz5gKMm6fwh6QuY0USBEYAuXG06fJyIAmbIgN g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="306448725"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="306448725"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 04:35:51 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="656613557"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 04:35:49 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-gfx-trybot@lists.freedesktop.org
Date: Fri, 24 Jun 2022 13:35:28 +0200
Message-Id: <20220624113528.2159210-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: fix subtraction overflow bug
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On some machines hole_end can be small enough to cause subtraction
overflow. On the other side (addr + 2 * min_alignment) can overflow
in case of mock tests. This patch should handle both cases.

Fixes: e1c5f754067b59 ("drm/i915: Avoid overflow in computing pot_hole loop termination")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3674
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 8633bec18fa75e..ab9f17fc85bcf2 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -742,7 +742,7 @@ static int pot_hole(struct i915_address_space *vm,
 		u64 addr;
 
 		for (addr = round_up(hole_start + min_alignment, step) - min_alignment;
-		     addr <= round_down(hole_end - (2 * min_alignment), step) - min_alignment;
+		     hole_end > addr && hole_end - addr >= 2 * min_alignment;
 		     addr += step) {
 			err = i915_vma_pin(vma, 0, 0, addr | flags);
 			if (err) {
-- 
2.25.1

