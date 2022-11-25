Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75071638F1E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 18:32:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B7C510E77C;
	Fri, 25 Nov 2022 17:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 076A610E77D
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Nov 2022 17:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669397548; x=1700933548;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L5OmW9mZ4DP92O5TsIDjmII5Y+yYYJSg5CudzcbuJkw=;
 b=DOKHJmcOS6xYPTm+ISvu0j0KvPAIdgt6GDM1hQfS7ZIQSuKx77eU72NZ
 p91mxaPxb7jRQs9TY0wiafajb91IjOTPTyAC0F1+4g4vJZu5nLDYVZL7m
 UhwOENb5nhSECfCmoiFu3hOpTJzwP1QDTduL0PCqcKQ8tT4fovF0nu1Bc
 4zkkSTDPB3UAljnQ0y8SnajvjXtom/t5gOrNka/rV+3S/+oRiLfJ9KJOx
 mveBz4GgT6VaKrgKv/zzOTgwZ7Cuvrj8od8BFnV1cYew6/mXacAjSXwoz
 fWpyEshtH1lCqIhZ8LuUvLxMDrINdJ84Ga7qSqwW5jvWhe93PkTEsCovD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="376660678"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="376660678"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 09:32:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="706124378"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="706124378"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 25 Nov 2022 09:32:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Nov 2022 19:32:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Nov 2022 19:31:55 +0200
Message-Id: <20221125173156.31689-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
References: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915: Fix whitespace
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stray spaces have snuck in where everything else uses tabs.

Cc: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index f6bc896338de..880c530d5832 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -535,7 +535,7 @@ void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 }
 
 #define IDLE_ON_MASK		(PP_ON | PP_SEQUENCE_MASK | 0                     | PP_SEQUENCE_STATE_MASK)
-#define IDLE_ON_VALUE   	(PP_ON | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_ON_IDLE)
+#define IDLE_ON_VALUE		(PP_ON | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_ON_IDLE)
 
 #define IDLE_OFF_MASK		(PP_ON | PP_SEQUENCE_MASK | 0                     | 0)
 #define IDLE_OFF_VALUE		(0     | PP_SEQUENCE_NONE | 0                     | 0)
-- 
2.37.4

