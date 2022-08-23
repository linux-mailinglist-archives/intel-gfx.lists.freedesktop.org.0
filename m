Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B18D159EDA0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 22:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A56710E844;
	Tue, 23 Aug 2022 20:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC0910E653
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 20:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661287321; x=1692823321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xz3aWi9su0f/Wm7dnzX/FxyvmHKiM5ePzOpYBlUnDyo=;
 b=AUeLG/scK56QLTNyth5sd7CxUc0UtsUtDA7SWxLeIJcrk3Ds5TZi859i
 q4pPksk6DJf3C9F1iMFBAF/j4S00/pl2cKEVz2EybRtBCLaKjT80A4eQt
 dL20wJdV14yRbW1WJa3eP60RNupOcxlAf4BIjqlmZIkxLzg6RhfKDkEYO
 Tfbk+Bn/s/grEssEnP6fz8c69d7eGfTX7mx/IyMsp4QdfdZpgBjCPBsli
 XTY2NO+WLTXRtyX0TirWcVtmjR84+T9vuVziMd+QfbW3dnpj95+D6D3Qz
 1n0kjWmFmYNj3syeyIpFU+KgeGNWXblnRpedflGdLFB8UwhsiPpAi/RM4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294579391"
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="294579391"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:42:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="638815662"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:41:59 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 20:41:49 +0000
Message-Id: <20220823204155.8178-14-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/19] drm/i915/perf: Add Wa_16010703925:dg2
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

On DG2 A0, the OAR report format is buggy. Workaround is to not use it
for A0. For A0, remove the OAR format from the bitmask of supported
formats.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 167e7355980a..a28f07923d8f 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4741,6 +4741,11 @@ static void oa_init_supported_formats(struct i915_perf *perf)
 	default:
 		MISSING_CASE(platform);
 	}
+
+ 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
+		/* Wa_16010703925:dg2 */
+		clear_bit(I915_OAR_FORMAT_A36u64_B8_C8, perf->format_mask);
+ 	}
 }
 
 static void i915_perf_init_info(struct drm_i915_private *i915)
-- 
2.25.1

