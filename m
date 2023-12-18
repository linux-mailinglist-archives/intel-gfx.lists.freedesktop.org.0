Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A82448179B1
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:30:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3245B10E2DA;
	Mon, 18 Dec 2023 18:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C701B10E2A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702924224; x=1734460224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JFziVg2gAqNfrVa+ilxCwzCfGHh2zr/w5FMfe2YKR+k=;
 b=TZwp/hyfPcxRnvo+HKnwMkbbbPx/Fm9bVeziE44ekg4juGuDt1YxDXhV
 Vgde7suc2Sk0q8cDNnRCFkq/OeHn7/bqulCAVHR33Vp0NO76NjZQkvEx+
 BujXqVP8amlWs2/WNqKQ+T6R5vcr7Tm8oZBxm724Xhc6btQv1U8bAJiZ5
 dADm5GJp6RgnGmvFuC+EFHyA2aHhZyH4b82+ltCiWmRM+kIB8e0GkkLzk
 9eAVevB1KAP6To3TB1uWo6OlJhavmxuIx7NNPsuilCwhqAVFScnUVlneL
 Zpb6AYtNmdOQEan88Ug+HtNw8JRjqF2Iy7estw+p324oclbNV4kIzZWBv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="392714157"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="392714157"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="779176610"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="779176610"
Received: from etrunovx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.35.24])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:29 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/7] drm/i915/psr: Disable early transport by default
Date: Mon, 18 Dec 2023 19:50:04 +0200
Message-Id: <20231218175004.52875-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218175004.52875-1-jouni.hogander@intel.com>
References: <20231218175004.52875-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Early transport validation is currently incomplete. Due to this disable the
feature by default.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c29fd708608a..7835afee4283 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2851,6 +2851,9 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	else
 		intel_dp->psr.source_support = true;
 
+	/* Disable early transport for now */
+	intel_dp->psr.debug |= I915_PSR_DEBUG_SU_REGION_ET_DISABLE;
+
 	/* Set link_standby x link_off defaults */
 	if (DISPLAY_VER(dev_priv) < 12)
 		/* For new platforms up to TGL let's respect VBT back again */
-- 
2.34.1

