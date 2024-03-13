Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DDD87A87E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 14:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 976BA10F7DB;
	Wed, 13 Mar 2024 13:32:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="agm3eRrQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4FA710F303
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 13:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710336765; x=1741872765;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QNLf88xzrMIizRunkUWVsyTJh1CeTbdDVWnasD3cD6s=;
 b=agm3eRrQ8KO5G7Ai8HP1iTbmK3dUMRS8zmY0mZBMvzFH5J71z9Vdludw
 VypmVSnfr4/+sDU4VByB6pARrYvaQXRBKlZ+VziizEd1U739CT3Z7r6ZI
 gh7OzGw85fYaSeeMVqkkL1VUDqCMIkMyIGvhJDSw53vevwzOnvL9wAfbm
 uqroXDmJ3oqC2RIv9GVV5/4pqDITEP7P96/7p/J+N2YPb2UC/qhMeK183
 5y86G8QGpvLxdlBwrDR3oaQ6EabQSIu1VViY/gRxp1w7EuU86lMM/bSsA
 xZYr7o36PcHDYnynsMiTn0PIKqOb9FCWlT0Diyoa7z7RkMSeHqCQ5BPdv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="30537787"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="30537787"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:32:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11977931"
Received: from dgaudrex-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.209.14])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:32:43 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 4/4] drm/i915/display: Increase number of fast wake
 precharge pulses
Date: Wed, 13 Mar 2024 15:32:21 +0200
Message-Id: <20240313133221.868391-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240313133221.868391-1-jouni.hogander@intel.com>
References: <20240313133221.868391-1-jouni.hogander@intel.com>
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

Increasing number of fast wake sync pulses seem to fix problems with
certain PSR panels. This should be ok for other panels as well as the eDP
specification allows 10...16 precharge pulses and we are still within that
range.

v2: add comment explaining pulse count is increased

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9739
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 7e69be100d90..3264026454b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -145,7 +145,12 @@ static int intel_dp_aux_sync_len(void)
 
 int intel_dp_aux_fw_sync_len(void)
 {
-	int precharge = 10; /* 10-16 */
+	/*
+	 * We faced some glitches on MTL with one PSR2 panel when using HW
+	 * default 18. Using 20 is fixing these problems with the panel. It is
+	 * still within range mentioned in eDP specification.
+	 */
+	int precharge = 12; /* 10-16 */
 	int preamble = 8;
 
 	return precharge + preamble;
-- 
2.34.1

