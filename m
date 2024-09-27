Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D279A98807A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 10:37:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBB6A10EC5E;
	Fri, 27 Sep 2024 08:37:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DeLo2Adu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6834F10EC5E;
 Fri, 27 Sep 2024 08:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727426225; x=1758962225;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I04aMN4N8IHSjqrh0xlLdr2AhS6Sw7pmscO39e6FguI=;
 b=DeLo2AduvitmUlmjt55qVOx/DOy1Qg/8f0UDyG0jCD1YO7hSH4qGzrkM
 tBd6m2I4zpd8BymYKG1XAkp/fDUhEFK0QZV0ujGaFYBjRN29uG2nyPwyE
 D9Mmz5llJ/EasyidhDL9TEwp58gTVwjPBSvLUccVStV3nUu6UT7OhL0if
 ZuGlrAQ5ZSwuf80wzf8UqufOkg2JWYcH6BZTq+grK8kCLAww8CnqbQ8Xv
 RPjrQkTG24DEQta0qD9DDCv9vxnvgjA8PFOjKlSWZ+6jeQfAohIOzrwIn
 9I0MAluXsqH85vWFOvBaHFpXR6tDkWd77j1lr0EU0yN7E1DFNczd0N+St Q==;
X-CSE-ConnectionGUID: Cp6RJrR7QSS8lG/2kt3TAA==
X-CSE-MsgGUID: SAAwS/TITo+Z8xwwJ6gvKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="51977636"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="51977636"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:37:05 -0700
X-CSE-ConnectionGUID: Y3hTjKlnTZStqj9h2/X2BQ==
X-CSE-MsgGUID: jt8DqOgdR26i8MR4cIwUPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="77409454"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:37:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 16/17] drm/i915/display: Consider ultrajoiner for computing
 maxdotclock
Date: Fri, 27 Sep 2024 14:08:30 +0530
Message-ID: <20240927083831.3913645-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
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
index 70b272add6c1..03d55bace431 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8186,8 +8186,9 @@ static int max_dotclock(struct drm_i915_private *i915)
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

