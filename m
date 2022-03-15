Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BAD4D9C29
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 14:28:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67AB110E31E;
	Tue, 15 Mar 2022 13:28:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D7C10E31E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 13:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647350879; x=1678886879;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vt51IYYuqsxkgYBbpSr8R8ZDlnlSTRME+gHZ6fSGgvw=;
 b=T5RUILabFDapYLgCFl3Q8a0svv5m/8thD03deoNG5i1xF4EVMh8rYS96
 /6YX7Sg7aBuGGEheHBAFlz5VJQu/0dfSg/Hb/oNWs0u5UXqb6pyzQAg39
 oSZwK15g7Inx7u6NxPMVJkFeWSnWo7i0sEF4HHAh5oTnUepRHspGpy4t+
 s5qqifMsXjsplDdlvF5PVKdI5dP1APfzrJjK3AUYSNfcT8QORIMfe0hqo
 98b+YeLQs6Cvijj+gKYn1x+ElRKBLCx4Ixgjckkspiq/mdrCXAr7VYw3F
 ZShyotSN6+jWVE4xJfQHUEI0tgpuHMfj7cVRZ1mUjOazcrNdTUbxvtNdm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="243748914"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="243748914"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:27:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="644254294"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 15 Mar 2022 06:27:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 15:27:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:27:44 +0200
Message-Id: <20220315132752.11849-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Put the downclock_mode check back
 into can_enable_drrs()
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

With static DRRS the user might ask for the lowest possible refresh
rate of the panel, in which case we're not going to find a suitable
downclock mode for it and we should not try to enable seamless DRRS.
This will in fact oops.

We used to check for the presence of the downclock mode here, but
that got removed in commit f0a57798fb5c ("drm/i915: Introduce
intel_panel_drrs_type()") as redundant (which it was at the time).
But we do need the check again now that static DRRS is a thing.

I must have not re-tested static DRRS fully after introducing
intel_panel_drrs_type() :/

Fixes: c5ee23437cae ("drm/i915: Implement static DRRS")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 2bbc0388263a..e1b41b772521 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -62,7 +62,8 @@ const char *intel_drrs_type_str(enum drrs_type drrs_type)
 }
 
 static bool can_enable_drrs(struct intel_connector *connector,
-			    const struct intel_crtc_state *pipe_config)
+			    const struct intel_crtc_state *pipe_config,
+			    const struct drm_display_mode *downclock_mode)
 {
 	if (pipe_config->vrr.enable)
 		return false;
@@ -76,7 +77,8 @@ static bool can_enable_drrs(struct intel_connector *connector,
 	if (pipe_config->has_psr)
 		return false;
 
-	return intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
+	return downclock_mode &&
+		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
 }
 
 void
@@ -89,7 +91,7 @@ intel_drrs_compute_config(struct intel_connector *connector,
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
 	int pixel_clock;
 
-	if (!can_enable_drrs(connector, pipe_config)) {
+	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
 		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
 			intel_zero_m_n(&pipe_config->dp_m2_n2);
 		return;
-- 
2.34.1

