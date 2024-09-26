Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD83A986D78
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:25:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 798C310EABC;
	Thu, 26 Sep 2024 07:25:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QpafXf4o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A477F10EAB8;
 Thu, 26 Sep 2024 07:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727335510; x=1758871510;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sw5b7mr2cJn4b5Bz3pnALZTn2a38ArNLRzOZ1qMXv4o=;
 b=QpafXf4ozeqljLZnLDlagfZLx9XuxdBmSfjScLFzVj5rjqXS3481Qlpz
 7sOi4UL8KtV8wVwMJS0k26VHh7884vCqnLMSUO1ulT8Sfybg+wM36tpmq
 GFVyvyCt6dPuh+z0Eg33/XU+MKoCrdNeUcs5ltEW201WRLjqnmP5PsEVx
 CkMAFMY5yPo8t4AQ/on8l91w8KDmaq/tPRMeVyK0FF+1x2fe7ToRE+xXw
 UniOiL9cC63mrkJJ4WRNpaB0IZsB2Rj8Bj1AttSNAHuNx6wvFAW4F7acl
 eoAQpoV2XycLFhWksE26h2zWiQLOoTWFoxzzEYDqXLfVi1hM8basE22YN A==;
X-CSE-ConnectionGUID: WDqDwQbMSvqm9VZzyo/Tdw==
X-CSE-MsgGUID: j7xY2vQ0Tmu/prjdCz1OmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51829471"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="51829471"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:25:10 -0700
X-CSE-ConnectionGUID: 6MLIP19BQDSrMiEu1giXbw==
X-CSE-MsgGUID: kdDo7NfRTjm2/7pTuc+ndQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72334534"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:25:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 14/15] drm/i915/display: Consider ultrajoiner for computing
 maxdotclock
Date: Thu, 26 Sep 2024 12:56:37 +0530
Message-ID: <20240926072638.3689367-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Use the check for ultrajoiner while computing maxdotclock.

v2: Add Check for HAS_UNCOMPRESSED_JOINER. (Ville)
v3: Remove extraneous newline. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4f969e526bdd..ea0875256083 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8187,8 +8187,9 @@ static int max_dotclock(struct drm_i915_private *i915)
 {
 	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
 
-	/* icl+ might use joiner */
-	if (HAS_BIGJOINER(i915))
+	if (HAS_ULTRAJOINER(i915))
+		max_dotclock *= 4;
+	else if (HAS_UNCOMPRESSED_JOINER(i915) || HAS_BIGJOINER(i915))
 		max_dotclock *= 2;
 
 	return max_dotclock;
-- 
2.45.2

