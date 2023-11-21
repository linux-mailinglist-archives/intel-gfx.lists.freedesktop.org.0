Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D42AE7F256E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 06:43:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56CAB10E0D0;
	Tue, 21 Nov 2023 05:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 541CF10E0BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 05:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700545411; x=1732081411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2dE0OrReb4JNoW/XzTi+tCzjN0U6tftt9w7sf2A2m64=;
 b=So4UeOKw+mcDIpAbrO7sZPxchxcbPaL7qEpf2v3aamxVvOtZXQiofCC5
 nHzqgj31ri0EP9RriKHr7Rd81aIF7YyUfDCaYHGzrIjpglPWrtFO+J9As
 fGphZLKpQIt1X8kha9g85bjhi2mlqoI83khANQSW9jwTkE5um0BH34gqv
 HjazXdDcfceA13JyJTPdbVtwxt6BrNDUf5lhARsbYKzPPS68x2LweMrTK
 lMEwlsFy4V4h0R+6BZLYRUFlFWfE5BTPOmFqubSI4AkTjbZXgjycT1YUe
 9BCLD0NrKw24r1HCkFJAuEj740QZkfoG1uVPFMsFkwj75uW1nsmMdwQG5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="394611793"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="394611793"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 21:43:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="760002110"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="760002110"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 20 Nov 2023 21:43:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Nov 2023 07:43:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 07:43:14 +0200
Message-ID: <20231121054324.9988-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
References: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/11] drm/i915: Check pipe active state in
 {planes, vrr}_{enabling, disabling}()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

{planes,vrr}_{enabling,disabling}() are supposed to indicate
whether the specific hardware feature is supposed to be enabling
or disabling. That can only makes sense if the pipe is active
overall. So check for that before we go poking at the hardware.

I think we're semi-safe currently on due to:
- intel_pre_plane_update() doesn't get called when the pipe
  was not-active prior to the commit, but this is actually a bug.
  This saves vrr_disabling(), and vrr_enabling() is called from
  deeper down where we have already checked hw.active.
- active_planes mirrors the crtc's hw.active

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 959db3f61e84..69933020c379 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -901,12 +901,18 @@ static bool needs_async_flip_vtd_wa(const struct intel_crtc_state *crtc_state)
 static bool planes_enabling(const struct intel_crtc_state *old_crtc_state,
 			    const struct intel_crtc_state *new_crtc_state)
 {
+	if (!new_crtc_state->hw.active)
+		return false;
+
 	return is_enabling(active_planes, old_crtc_state, new_crtc_state);
 }
 
 static bool planes_disabling(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state)
 {
+	if (!old_crtc_state->hw.active)
+		return false;
+
 	return is_disabling(active_planes, old_crtc_state, new_crtc_state);
 }
 
@@ -923,6 +929,9 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
 			 const struct intel_crtc_state *new_crtc_state)
 {
+	if (!new_crtc_state->hw.active)
+		return false;
+
 	return is_enabling(vrr.enable, old_crtc_state, new_crtc_state) ||
 		(new_crtc_state->vrr.enable &&
 		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
@@ -932,6 +941,9 @@ static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
 static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
 			  const struct intel_crtc_state *new_crtc_state)
 {
+	if (!old_crtc_state->hw.active)
+		return false;
+
 	return is_disabling(vrr.enable, old_crtc_state, new_crtc_state) ||
 		(old_crtc_state->vrr.enable &&
 		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
-- 
2.41.0

