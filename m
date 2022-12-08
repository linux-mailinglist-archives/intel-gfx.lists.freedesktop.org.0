Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 047B16476E9
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 21:01:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3817C10E4D6;
	Thu,  8 Dec 2022 20:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F021B10E4CC
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 20:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670529695; x=1702065695;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kD3MapRAnUEeCcihf1HuFNJAvWgIpzYDpQ7Tw/E1hiM=;
 b=Kbgc/VCregosqazQBvdPdNs26wwa1R53IqPFqrobQDYn4Cf1MVyMxxtO
 S5j+QHTzP6kS8CknBEO39iV6BfCp4EbXBZh/wZmsZtDAAV7BnzKQhp7IO
 6PrPBp9M8u0IiU1YoZZDb01GUvzRUIc+iM091tmQTTndeeVRYRnIXbomc
 lGrib02AdU3SG5+stEepfVYBrPd8VXUCdL0TXEJQveg9tzpCkgQm1ThQ9
 w/Y/2NxISUytXssZ9khAxSgulF95F86ZXQMutroupwugNGBgFTyJtWTIO
 XrtEEHCTTlacQ15ZLePjNlosXYzZqcSXT6TS6q7huYGi6ne2SvU36WKy9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="317301851"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="317301851"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 12:01:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="597480238"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="597480238"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 12:01:17 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 12:05:21 -0800
Message-Id: <20221208200521.2928378-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221208200521.2928378-1-daniele.ceraolospurio@intel.com>
References: <20221208200521.2928378-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 6/6] drm/i915/mtl: MTL has one GSC CS on the media
 GT
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

Now that we have the GSC FW support code as a user to the GSC CS, we
can add the relevant flag to the engine mask. Note that the engine will
still be disabled until we define the GSC FW binary file.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 414b4bfd514b..3f803c1280c0 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1125,7 +1125,7 @@ static const struct intel_gt_definition xelpmp_extra_gt[] = {
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

