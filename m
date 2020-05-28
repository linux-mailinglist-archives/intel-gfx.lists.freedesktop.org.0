Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAAE1E572F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 08:02:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDBFD6E3C6;
	Thu, 28 May 2020 06:02:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C1356E3C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 06:02:41 +0000 (UTC)
IronPort-SDR: t14iHfNBkidcd5txDXQWGqjTFY7B6YNwHZNXhdfCB5Qd0fK8eV3iazl6M7291UcY7avsQNUnYy
 pqtAUp9lW33w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 23:02:40 -0700
IronPort-SDR: aYcMTkPvA4CxgX3aUSr/e8OcHI84OdSR5OcSPh2SOOdgoejNEjzjqjIU2oniDC0kRlTwokkALH
 rlzcPKKWrQpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,443,1583222400"; d="scan'208";a="291884036"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.217])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2020 23:02:38 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 11:09:31 +0530
Message-Id: <20200528053931.29282-6-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200528053931.29282-1-karthik.b.s@intel.com>
References: <20200528053931.29282-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 5/5] drm/i915: Enable async flips in i915
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
Cc: paulo.r.zanoni@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable asynchronous flips in i915 for gen9+ platforms.

v2: -Async flip enablement should be a stand alone patch (Paulo)

v3: -Move the patch to the end of the serires (Paulo)

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2307f924732c..05720ce613c6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -17787,6 +17787,9 @@ static void intel_mode_config_init(struct drm_i915_private *i915)
 
 	mode_config->funcs = &intel_mode_funcs;
 
+	if (INTEL_GEN(i915) >= 9)
+		mode_config->async_page_flip = true;
+
 	/*
 	 * Maximum framebuffer dimensions, chosen to match
 	 * the maximum render engine surface size on gen4+.
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
