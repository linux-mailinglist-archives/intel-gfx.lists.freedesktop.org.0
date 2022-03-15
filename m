Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAC24D9C2F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 14:28:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EF8F10E487;
	Tue, 15 Mar 2022 13:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1758310E487
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 13:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647350897; x=1678886897;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0Dw5UvYRTAQvNoXyFqgdsYZGPpo6UqMHsG2Tvym1rTY=;
 b=EKTLIsN04NYcDgVu4D1YPOUwY6FTfAJ6Fes7L/MzVGxVqve4KRnVSNrk
 vP16mVfUHv05tmIQxDAUkCrVOWaPYbOfe4+FVoKeJL5NiuA5edEuzRzBg
 DjFD6Hfq38smvd3wSTM+ITf0HCvUfk/CazODOeXzzsn0QaQqQoRsNve0A
 lkSHZ9OmXuY+gQQmSdNHbMDCaoBoEZnYVl4Xu2fsaAp6tLb/IZBtfm8Be
 NiHmjNe9GUAKjlrKUlq2zh1wqKDT5Dwuun8WYl9q/uRtIOpsr40SM2Zy6
 bbGk+ccqyjzWJhkQM/CxVtrtURTRZWSQI5NwSIiGbWA35L5TSaKUgPWJx Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256025775"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="256025775"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:28:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="515864641"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 15 Mar 2022 06:28:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 15:28:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:27:49 +0200
Message-Id: <20220315132752.11849-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Schedule DRRS work from
 intel_drrs_enable()
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

Schedule the DRRS downclock work already from intel_drrs_enable()
instead of waiting around for a frontbuffer flush that may or
may not ever come.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index f36394fd85be..8f9e0fde0c5a 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -168,6 +168,11 @@ static void intel_drrs_set_state(struct intel_crtc *crtc,
 	crtc->drrs.refresh_rate = refresh_rate;
 }
 
+static void intel_drrs_schedule_work(struct intel_crtc *crtc)
+{
+	mod_delayed_work(system_wq, &crtc->drrs.work, msecs_to_jiffies(1000));
+}
+
 static unsigned int intel_drrs_frontbuffer_bits(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -200,6 +205,8 @@ void intel_drrs_enable(const struct intel_crtc_state *crtc_state)
 	crtc->drrs.frontbuffer_bits = intel_drrs_frontbuffer_bits(crtc_state);
 	crtc->drrs.busy_frontbuffer_bits = 0;
 
+	intel_drrs_schedule_work(crtc);
+
 	mutex_unlock(&crtc->drrs.mutex);
 }
 
@@ -299,8 +306,7 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 		 * other fbs are quiescent too
 		 */
 		if (!crtc->drrs.busy_frontbuffer_bits)
-			mod_delayed_work(system_wq, &crtc->drrs.work,
-					 msecs_to_jiffies(1000));
+			intel_drrs_schedule_work(crtc);
 		else
 			cancel_delayed_work(&crtc->drrs.work);
 
-- 
2.34.1

