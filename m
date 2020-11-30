Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 841882C847D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 13:57:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE3C76E489;
	Mon, 30 Nov 2020 12:57:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 131086E489
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 12:57:02 +0000 (UTC)
IronPort-SDR: t6mI6wFJvgXJREyiIO27ObdfEoqQ1WSdd0VwYYTwPlC/vEedIXgHd9Ho+mXijLqjYXlgje7ORt
 VY+5WnMecf2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="171844221"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="171844221"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 04:57:01 -0800
IronPort-SDR: 6ybdSnObkmXenpwLA0w9WDPbJxo1Ly5vyYrLizoKbLLc2vr4vNwrtqEdy7Q8msA4Px27VO8tVQ
 cFFwgrZrkotg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="364225407"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga004.fm.intel.com with ESMTP; 30 Nov 2020 04:56:58 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org,
	hariom.pandey@intel.com
Date: Mon, 30 Nov 2020 18:18:55 +0530
Message-Id: <20201130124855.319226-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Removing force probe protection from RKL platform. Did
not observe warnings, errors, flickering or any visual
defects while doing ordinary tasks like browsing and
editing documents in a two monitor setup.

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 11fe790b1969..665626d2524f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -898,7 +898,6 @@ static const struct intel_device_info rkl_info = {
 	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C),
-	.require_force_probe = 1,
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
