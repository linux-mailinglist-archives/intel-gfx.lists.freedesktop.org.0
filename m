Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4671712AC7
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39EDC10E81A;
	Fri, 26 May 2023 16:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B457D10E81A
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119112; x=1716655112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=spdReR+wpRIOjLkbsMQPOaev4dyvbTU758xlimd9HiU=;
 b=D/1aejeDsy1IsX2bVAkw4qGphnMPSMsvmK7VlwR2MfurSRMS1EMxpyGr
 Nt8f+gCOrckGU/1PbXQrYTh/SxgvGSl7MaxK9R+obpjPNSZyRqjXphkju
 F/9ThNwhymXfjCeMbXimR5wIQzJ6iUMVrMcSTx4fZUCnRGVTGkkCOHum5
 T7z4Vqk75q9cM0+y7dwx7m8+Dbufs2mKM/ba3iC/Z2WldjxHWWqG0o5/p
 navGEjLrQEsx2ZO16W3a3Fb3AJ/JSqIBF8r3qi7GPIYbxDfvLkhyU8FqQ
 Hm+23pxyPckfv5efnT+/KG9BQdNx0xurZsdDysb9V+5zOmZDWS3nc7zLr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="353087530"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="353087530"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="736056535"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="736056535"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:37:58 +0300
Message-Id: <a85ccc8c0f451fcb997b4ac138dbeba2a653cebe.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/15] drm/i915/dpll: drop unused but set
 variables bestn and bestm1
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

Prepare for re-enabling -Wunused-but-set-variable.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 824be7f03724..999badfe2906 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1793,13 +1793,11 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	enum dpio_channel port = vlv_pipe_to_channel(pipe);
 	u32 loopfilter, tribuf_calcntr;
-	u32 bestn, bestm1, bestm2, bestp1, bestp2, bestm2_frac;
+	u32 bestm2, bestp1, bestp2, bestm2_frac;
 	u32 dpio_val;
 	int vco;
 
-	bestn = crtc_state->dpll.n;
 	bestm2_frac = crtc_state->dpll.m2 & 0x3fffff;
-	bestm1 = crtc_state->dpll.m1;
 	bestm2 = crtc_state->dpll.m2 >> 22;
 	bestp1 = crtc_state->dpll.p1;
 	bestp2 = crtc_state->dpll.p2;
-- 
2.39.2

