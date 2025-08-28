Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA8AB39D1F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5190610E9B8;
	Thu, 28 Aug 2025 12:22:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KliK6U7Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7335410E9A8;
 Thu, 28 Aug 2025 12:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383762; x=1787919762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=swTyFRBqfs9rlryS02o66mh0I3FmsnXC5HDgtkhFDIs=;
 b=KliK6U7ZzCrowhpwCh8hT/KHJegidePIrZV6FFo3PNKZSBAJmGKcq59p
 6METMQ5yla0qtXVsf8vYbRJrkQpdIsLRsTZvdELeMK8IAIHWiTnevbnYN
 /Hf+kZ6QHJHiMpwPrSeKVUQey5LOaK4IjXVDacRtCvRBGGR1BTfPpnYEP
 JNjeHJZMf+v3IEStx5DA6OhuB9jOoMZDRUXiv8TYnmRXBCTZoz4eU+3eY
 7Jz3SBAzuGceft9tPtHNQVdABItDjsx/CsXyD/z4zKYSvH8gxglP8LU/4
 oqaY9oXac9bWPMhZZcgNxCQ5dljUU2cHG1uszlpbqqiQ0/kwRjj7+HJb9 Q==;
X-CSE-ConnectionGUID: +lTUEuyLTUG4telgr1cA/A==
X-CSE-MsgGUID: 8rfJLcXAR+SqBTLw7auRqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="84053295"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="84053295"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:42 -0700
X-CSE-ConnectionGUID: kSv6UsI7Qou+O5bDHWWFAw==
X-CSE-MsgGUID: GYDViK95Rban1xSm2pxNrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170271309"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 20/20] drm/i915/pps: prefer poll_timeout_us() over
 read_poll_timeout()
Date: Thu, 28 Aug 2025 15:21:02 +0300
Message-ID: <260fd455df743453f123d96fc01e7ca96a36f0fa.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Unify on using poll_timeout_us() throughout instead of mixing with
readx_poll_timeout().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b84eb43bd2d0..327e0de86f1e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -627,11 +627,9 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 		    intel_de_read(display, pp_stat_reg),
 		    intel_de_read(display, pp_ctrl_reg));
 
-	ret = read_poll_timeout(intel_de_read, val,
-				(val & mask) == value,
-				10 * 1000, 5000 * 1000, true,
-				display, pp_stat_reg);
-
+	ret = poll_timeout_us(val = intel_de_read(display, pp_stat_reg),
+			      (val & mask) == value,
+			      10 * 1000, 5000 * 1000, true);
 	if (ret) {
 		drm_err(display->drm,
 			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
-- 
2.47.2

