Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E95797244
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 14:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7888E10E24E;
	Thu,  7 Sep 2023 12:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02D0510E24E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 12:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694089559; x=1725625559;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VjbLhtYS7nMHnjhxoPNMru6pza71Wtc1cSx94g9gSmg=;
 b=lf9s2BETFJEcDWmSt2/+3g7J77i9/251mCJgG1SU7+txOKekegds5TBA
 hHM/uxVflYOXBcqCdp4Jlg215Y/hzQnxPUn+Wy/DyDP3DOS+r2ZSmiCOb
 PfulI0RkPkZXlGJArk9FMAi84XHKTGuMs+Qike8efzYYWf5d8znAFiO9l
 FFQmM9TWr9sYlWkBYeSCzpE+sfIhSCZY/cXrUwfXDgzAO46+n/7dSA0Dq
 6hClidQGNyyObPLnjSMNwsnCAlG0wdWKu8HmQ6ffzSzmt1YYLlbRhiMgu
 6bbaemzugXYwElJr3fpc3/fA/ok+tPBeYIUWbqWIH02CZJQZjQ/T6Y7GD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="377252954"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="377252954"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 05:25:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="777051268"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="777051268"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 07 Sep 2023 05:25:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Sep 2023 15:25:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 15:25:39 +0300
Message-ID: <20230907122541.32261-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230907122541.32261-1-ville.syrjala@linux.intel.com>
References: <20230907122541.32261-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Drop redundant !modeset check
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

Since commit 7de5b6b54630 ("drm/i915: Don't flag both full
modeset and fastset at the same time")
intel_crtc_needs_fastset() and intel_crtc_needs_modeset() have
been mutually exclusive. Drop the redundant check.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 83e1bc858b9f..526f38b502be 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6606,7 +6606,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	 * valid pipe configuration from the BIOS we need to take care
 	 * of enabling them on the CRTC's first fastset.
 	 */
-	if (intel_crtc_needs_fastset(new_crtc_state) && !modeset &&
+	if (intel_crtc_needs_fastset(new_crtc_state) &&
 	    old_crtc_state->inherited)
 		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
 }
-- 
2.41.0

