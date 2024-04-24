Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 473EB8B0811
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 13:11:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC71B113A4E;
	Wed, 24 Apr 2024 11:11:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nUKOVbZv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08A7A113A4E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 11:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713957068; x=1745493068;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wvZYy826tBBdvmQl/C4YKRX15ERbDeplQoy2E92ILco=;
 b=nUKOVbZv0otcxHwHiFfEucSHBvaZ0Dl6ba9CsVr6f452zvYuM7/jYseG
 1/tCdiXOdxh/BTYFzWsFLQi6HWlpTVtrr0d/VvGLxhkx1rjGwTMuXNoGp
 MduSESr6rpRn5jBt8vIpE8Q43W0t9T5vhCxYrQ7puwKyV0n8o7kwgeadk
 hmbm8M9BVOXDO4rtzaUL+M5+/7COtmTkMMdn2dOO5YXZqQwy1OgBRo178
 KkICNXuoxI6EhGgXRejcQDKmXBB+op8BLJ+rWykcr3J+Zp3Zo36OM+1SB
 NmT8euO7R91esdgkaXGtDjlAo9imYulFXc5mXthByz7lkKGkbyu74PnqV g==;
X-CSE-ConnectionGUID: EpbCe54vTheGM2XcTwEKjw==
X-CSE-MsgGUID: 9JZJekwjQUejMtxWhvX/EQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9453124"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; 
   d="scan'208";a="9453124"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 04:11:08 -0700
X-CSE-ConnectionGUID: mpUcMrxAQ8i6vDZ+sF2gLQ==
X-CSE-MsgGUID: pFbqpln5TUeYIiN8+VCNhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="24692565"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.49])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 04:11:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/4] drm/i915/dvo: return proper error code instead of magic -1
Date: Wed, 24 Apr 2024 14:10:58 +0300
Message-Id: <20240424111101.1152824-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Use proper negative error codes intead of magic -1. Don't set a bad
example, as -1 is -EPERM.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/dvo_tfp410.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/dvo_tfp410.c b/drivers/gpu/drm/i915/display/dvo_tfp410.c
index 0939e097f4f9..b36a526df52b 100644
--- a/drivers/gpu/drm/i915/display/dvo_tfp410.c
+++ b/drivers/gpu/drm/i915/display/dvo_tfp410.c
@@ -162,7 +162,7 @@ static int tfp410_getid(struct intel_dvo_device *dvo, int addr)
 	    tfp410_readb(dvo, addr+1, &ch2))
 		return ((ch2 << 8) & 0xFF00) | (ch1 & 0x00FF);
 
-	return -1;
+	return -EINVAL;
 }
 
 /* Ti TFP410 driver for chip on i2c bus */
-- 
2.39.2

