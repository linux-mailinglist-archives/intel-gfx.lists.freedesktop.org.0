Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B80466E9EA3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 00:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E5810E206;
	Thu, 20 Apr 2023 22:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C8410E206
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 22:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682028846; x=1713564846;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WgkhDWdlNIDqT0yZuZVQlW88TCSgDJd6Hn5UbbCoPV0=;
 b=VSvdBhASWbMqQZT1xejV332Qc4SOXAZ7pEQz+QxzSnP9NM6/IqA93OfP
 92Rl/rGzTXAJOVhuYvSbCCW2z8byymU823y8z8ot3LyuOQilXcudCywHZ
 +Du8QzY8PM97BpTHf0DT4j/yuVCEnSAeMfrWYvgT3EJLvijyq9JFeiXRy
 sdx/jxTCBDpPKr8irxtpFISOHic+KOSdSNCRtWVxr7rGnuEeZtk9aFQOz
 0WJ3RMnPaOp7ZObx8ROnvr15CGthzc2J2OGBWKnMjZFzn+T96kHvd8OsE
 V7XXQ59qG9fcuTSGbdOxE8tcziXmHZbHLWNgf2sdjFm5vd7ZgQOjx+lAG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373780977"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="373780977"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 15:14:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="694744376"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="694744376"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 15:14:05 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 15:12:47 -0700
Message-Id: <20230420221248.2511314-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add the missing CPU
 transcoder mask in intel_device_info
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

CPU transcoder mask is used to iterate over the available
CPU transcoders in the macro for_each_cpu_transcoder().

The macro is broken on MTL and got highlighted when audio
state was being tracked for each transcoder added in [1].

Add the missing CPU transcoder mask which is similar to ADL-P
mask but without DSI transcoders.

[1]: https://patchwork.freedesktop.org/patch/523723/

Fixes: 7835303982d1 ("drm/i915/mtl: Add MeteorLake PCI IDs")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d64e074d7457..847057569796 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1135,6 +1135,8 @@ static const struct intel_gt_definition xelpmp_extra_gt[] = {
 static const struct intel_device_info mtl_info = {
 	XE_HP_FEATURES,
 	XE_LPDP_FEATURES,
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 	/*
 	 * Real graphics IP version will be obtained from hardware GMD_ID
 	 * register.  Value provided here is just for sanity checking.
-- 
2.34.1

