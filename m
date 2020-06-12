Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 232EB1F77CA
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 14:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E91F66E955;
	Fri, 12 Jun 2020 12:17:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7FE16E955
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 12:17:34 +0000 (UTC)
IronPort-SDR: 4rV/RfoicBH5nIk07uuvCdcmQ9i1jNpX5bzeizbrpNZpJTFSU9ve+9n88OciCQAbzfEm8K/A8N
 CgPIukdWD5ow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 05:17:34 -0700
IronPort-SDR: SwHtQ8trcoBQgNu1CGmSQWMBZgbqjmNI/e/W8NWq0xJ6qjxJXTkiSSQx/MZL/R9Jj6iyikSWZ8
 PPptG5tFNhhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,503,1583222400"; d="scan'208";a="271890504"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 12 Jun 2020 05:17:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jun 2020 15:17:31 +0300
Message-Id: <20200612121731.19596-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/icl+: Fix hotplug interrupt disabling
 after storm detection
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
Cc: Kunal Joshi <kunal1.joshi@intel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Atm, hotplug interrupts on TypeC ports are left enabled after detecting
an interrupt storm, fix this.

Reported-by: Kunal Joshi <kunal1.joshi@intel.com>
References: https://gitlab.freedesktop.org/drm/intel/-/issues/351
Bugzilla: https://gitlab.freedesktop.org/drm/intel/-/issues/1964
Cc: Kunal Joshi <kunal1.joshi@intel.com>
Cc: stable@vger.kernel.org
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 8e823ba25f5f..710224d930c5 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3132,6 +3132,7 @@ static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
 
 	val = I915_READ(GEN11_DE_HPD_IMR);
 	val &= ~hotplug_irqs;
+	val |= ~enabled_irqs & hotplug_irqs;
 	I915_WRITE(GEN11_DE_HPD_IMR, val);
 	POSTING_READ(GEN11_DE_HPD_IMR);
 
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
