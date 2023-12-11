Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6330F80C2C7
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 09:11:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 647B710E348;
	Mon, 11 Dec 2023 08:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59F8B10E348
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 08:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702282298; x=1733818298;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3y/6jtPf/sYdDgmZrk2dD62GBVv5VUYMIz3c0DY0yPk=;
 b=iO8u/E3IbNF4KQrnOe2kkGjCxTVRlA1G/aHEcD4ZKe3iRSQquWkil6/C
 qJNSsSQTaUQKv61mv3k7Mc2L1a54Hsa5zW0N18M2X6TJUpEj8NLnFJW9e
 C/H5fPBx4PfpxuSofM6RAT1YbyRkRWFJbRzI9N8sbb+ayEGsqrDc3pG7j
 SZg2hZE6Yr55ct2kzdjLRBpMddQv8dg6jBRas7ptMjoT9NQGKE47qrVGh
 RlowcO47AH1R4DXPsOluUVtvv4ivDWxdODgmazQkvI5u+5XQ5T5mtzZ8F
 OvuOSs2uIAiM6IGm7aIa6DvuXrTLaBmgIYqIZodSdia5Dq3D8Fqp2Te6R A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="461088226"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="461088226"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 00:11:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="766284738"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="766284738"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 11 Dec 2023 00:11:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 11 Dec 2023 10:11:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Reject async flips with bigjoiner
Date: Mon, 11 Dec 2023 10:11:34 +0200
Message-ID: <20231211081134.2698-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently async flips are busted when bigjoiner is in use.
As a short term fix simply reject async flips in that case.

Cc: stable@vger.kernel.org
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9769
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d955957b7d18..61053c19f4cc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5926,6 +5926,17 @@ static int intel_async_flip_check_uapi(struct intel_atomic_state *state,
 		return -EINVAL;
 	}
 
+	/*
+	 * FIXME: Bigjoiner+async flip is busted currently.
+	 * Remove this check once the issues are fixed.
+	 */
+	if (new_crtc_state->bigjoiner_pipes) {
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] async flip disallowed with bigjoiner\n",
+			    crtc->base.base.id, crtc->base.name);
+		return -EINVAL;
+	}
+
 	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
 					     new_plane_state, i) {
 		if (plane->pipe != crtc->pipe)
-- 
2.41.0

