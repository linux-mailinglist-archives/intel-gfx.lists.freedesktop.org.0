Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5380633094
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 00:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C5C10E34C;
	Mon, 21 Nov 2022 23:13:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF65410E346;
 Mon, 21 Nov 2022 23:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669072383; x=1700608383;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W2WCS+BuyZRx4H8iPfRxSBrLEOJvcOzIPZN78Tc8oKA=;
 b=WJrJhZZAh2uyejznkPwxg2v9rTpHeHcb947DQ9YmzBwEdyCEP5Z59OnS
 41cMrE1FdXYe0qRP+BLz65wzUTYCRqqaKAU5ApSYKJCouYHplGKbiAcrZ
 PmWCbLc0IVgKKowTKLcSy/eiAIkyoYrLufS/7Fw2G0NCQp83akxIipV8O
 4uK6gyV8qyRo2Smkcs0LyXr37ZjYEORXOGlXq24sA8BIDMZ9s+wV+yoo/
 U93Wduz5uO7k2lAMLczsB40D0oHS29UVVcP83GZvZXnMm7Bkus1OK+VH6
 ibpYi6Q3cH6GiMHgeZT1AWZUT9NhH1HqanU6qjvohpXfrr2A2nmQIqEOv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="315503496"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="315503496"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 15:13:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="618993388"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="618993388"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 15:13:00 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Nov 2022 15:16:17 -0800
Message-Id: <20221121231617.1110329-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221121231617.1110329-1-daniele.ceraolospurio@intel.com>
References: <20221121231617.1110329-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/mtl: MTL has one GSC CS on the
 media GT
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
Cc: dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we have the GSC FW support code as a user to the GSC CS, we
can add the relevant flag to the engine mask. Note that the engine will
still be disabled until we define the GSC FW binary file.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 6da9784fe4a2..46acbf390195 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1124,7 +1124,7 @@ static const struct intel_gt_definition xelpmp_extra_gt[] = {
 		.type = GT_MEDIA,
 		.name = "Standalone Media GT",
 		.gsi_offset = MTL_MEDIA_GSI_BASE,
-		.engine_mask = BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
+		.engine_mask = BIT(VECS0) | BIT(VCS0) | BIT(VCS2) | BIT(GSC0),
 	},
 	{}
 };
-- 
2.37.3

