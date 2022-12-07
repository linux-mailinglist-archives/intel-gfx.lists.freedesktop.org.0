Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A01645FEC
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:18:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B23E010E40D;
	Wed,  7 Dec 2022 17:18:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A2310E40C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670433483; x=1701969483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=is0sg4995gZMVewMXblEw0A4bUEFf/YPDeAcxcXpdaw=;
 b=a96JB+wj4pU4T37+8BtT3jG72819TsFCIpUkDLr5stQymvFf2dlxUuMM
 lz6K00gEvhOyPx/h7Wx6IWkAPNJST93EGQDjc6ZfvPjPELtNIM+bI+JOz
 RPyBJ0F6a5PGVxHk+JO4s5WrY9YFs017PJGQ0ibwwJFxS4KcA/Mwlc8X7
 U1CjGBRAN5ZkaRUcEV5HLWUgTCCYSZ6cQBJOY5RcuvJ9EuWzQtH1h1GrG
 Bb/pq19EuOPUvK46DrlEjXbnVZhP8dXk203wCZwvblp+K5o3lb+APivAa
 W2MXZ1PMoHYAG2plAsB4IQAXpVGlzd6TclAIK0h5oFkn61sjMczv+TIyR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="315663434"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="315663434"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:18:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="648813973"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="648813973"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:18:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 19:17:23 +0200
Message-Id: <bc144ab3565b10e71244cd09f72ce7df86f4b5c6.1670433372.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670433372.git.jani.nikula@intel.com>
References: <cover.1670433372.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/11] drm/i915/dmc: switch to intel_de_*
 register accessors in display code
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid direct uncore use in display code.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index eff3add70611..f107b8cd3c9e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -433,9 +433,9 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 
 	for (id = 0; id < DMC_FW_MAX; id++) {
 		for (i = 0; i < dmc->dmc_info[id].dmc_fw_size; i++) {
-			intel_uncore_write_fw(&dev_priv->uncore,
-					      DMC_PROGRAM(dmc->dmc_info[id].start_mmioaddr, i),
-					      dmc->dmc_info[id].payload[i]);
+			intel_de_write_fw(dev_priv,
+					  DMC_PROGRAM(dmc->dmc_info[id].start_mmioaddr, i),
+					  dmc->dmc_info[id].payload[i]);
 		}
 	}
 
-- 
2.34.1

