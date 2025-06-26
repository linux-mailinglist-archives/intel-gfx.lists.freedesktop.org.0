Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D92CAEA4A8
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 19:44:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2DD010E8E5;
	Thu, 26 Jun 2025 17:44:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F3Y6JbNV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8908910E8D4;
 Thu, 26 Jun 2025 17:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750959847; x=1782495847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zYaxMHABl/nfcbEg4EtArRpJ7XD488pmnWgIWNIFmg8=;
 b=F3Y6JbNV0QDKFznDCwVKnJecbtuYgE2cxJP+aV56mWANr9PKZAvIQMji
 T7WoccsJPdLnKVMNQAvV9hy0PhGdGlzyTIKP6Wp5B3EA99bxOxtrMsTnW
 Bhq0PZO7Lnd2QKh3+a7VMKeoFRw8ik4TVhi7/sKewrNI967ADwvg1ABxY
 mn0XoqxO8bTMY3zz9HIUUk8wism8vGJoC3JJ7+c/W11bkqkJq4o5iaeLn
 kEmdYUgOBBSAFgFT0PfT4v+cX+PwP78qnabaWghukPmDgrAYh6rVB6Njl
 uDTx3+jDARCS+6dAdQqLjtBcFphjjBCPPUklfxns5tBDMBOzFeMxvBL0C A==;
X-CSE-ConnectionGUID: lgJZduhLTqGYMmaFOsisQQ==
X-CSE-MsgGUID: rLQWpe7eTjqIaD+HrOFMYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="52387809"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="52387809"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 10:44:06 -0700
X-CSE-ConnectionGUID: NxbjESJcQJKxAyKcd8zJMQ==
X-CSE-MsgGUID: IAK2tMchTNOLx192nlXjxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="152869084"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 10:43:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 5/8] drm/i915/hdcp: use intel_de_wait_for_set() instead of
 wait_for()
Date: Thu, 26 Jun 2025 20:43:03 +0300
Message-Id: <5c6cf8b4c656db56084067ee4652c7885d9c8c55.1750959689.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750959689.git.jani.nikula@intel.com>
References: <cover.1750959689.git.jani.nikula@intel.com>
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

Prefer the register read specific wait function over i915 wait_for().

Note that there's a slight functional change: both HDCP_STATUS_R0_READY
and HDCP_STATUS_ENC need to be set instead of just one or the
other. This is likely the intention, though, as this was fixed for HDMI
in commit 3ffaf56e912e ("drm/i915: HDCP: fix Ri prime check done during
link check").

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 619ccfc33000..c480a75b5fb9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -903,8 +903,9 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		       HDCP_CONF_AUTH_AND_ENC);
 
 	/* Wait for R0 ready */
-	if (wait_for(intel_de_read(display, HDCP_STATUS(display, cpu_transcoder, port)) &
-		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
+	ret = intel_de_wait_for_set(display, HDCP_STATUS(display, cpu_transcoder, port),
+				    HDCP_STATUS_R0_READY | HDCP_STATUS_ENC, 1);
+	if (ret) {
 		drm_err(display->drm, "Timed out waiting for R0 ready\n");
 		return -ETIMEDOUT;
 	}
@@ -936,8 +937,9 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 			       ri.reg);
 
 		/* Wait for Ri prime match */
-		if (!wait_for(intel_de_read(display, HDCP_STATUS(display, cpu_transcoder, port)) &
-			      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1))
+		ret = intel_de_wait_for_set(display, HDCP_STATUS(display, cpu_transcoder, port),
+					    HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC, 1);
+		if (!ret)
 			break;
 	}
 
-- 
2.39.5

