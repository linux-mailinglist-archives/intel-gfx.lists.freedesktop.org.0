Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJioEmHMF2oLRQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 07:02:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B881B5ECA13
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 07:02:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A5010EC0E;
	Thu, 28 May 2026 05:02:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lw13SC/I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 720C110EC08;
 Thu, 28 May 2026 05:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779944537; x=1811480537;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=baBHnixSws6jtw7Toye8igdEj+z+FnErYYSRMqu70Go=;
 b=lw13SC/IuaQBaUyHwKj8HTAA4+sNAdzObW/8eYiz1zN809zNIO6207il
 5sZHBWMdSM16gVm+O/LYE4wocKNOqfuYWyOTJplrgRCcuscDuFu1vNmUx
 U10YuWpA2o/NCDKErfllt1DTvl9ujgQO2xW17uD0J1srfLv3hUWaODP4K
 /8xIgyDsjgK9D1o3SbaOwktsxJBEtnOsjjq6Fo8l+i2zYniumiS30r41J
 aTW+E1kzmUZTAZQoAc+2UvIFEdeJil14Ylnx5nQDr5SSO3w1cxkYEQlVV
 LXKn9Ih0R8U/F8G4b2Ia4iaWGqOX8R462n4wf7El52V+0GNTGwgouVyAV g==;
X-CSE-ConnectionGUID: zAya9UQjTr2sDS+DzfZ1cw==
X-CSE-MsgGUID: taLNwQ7DQtWl3TRQxAW4Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80895718"
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="80895718"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 22:02:16 -0700
X-CSE-ConnectionGUID: 6BlBnWTrR26oB84mmamZ1Q==
X-CSE-MsgGUID: LjRXfTrCSZO2Gtth9FakRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="238025940"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 22:02:15 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v2 12/17] drm/i915/display: PSR Add delayed work to exit DC3CO
Date: Thu, 28 May 2026 10:31:26 +0530
Message-ID: <20260528050131.466351-13-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260528050131.466351-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260528050131.466351-1-dibin.moolakadan.subrahmanian@intel.com>
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: B881B5ECA13
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For DC3CO, idle_frames is programmed to 0, so PSR does not
enter deep sleep. Add delayed work to schedule DC3CO exit
after an idle duration derived from frame time (minimum
equivalent of 6 frames).

The work is re-armed from the PSR flush path on relevant frontbuffer
activity. Once the display remains idle, DC3CO is disabled, idle frames
are reprogrammed to their normal value, and DC6 is enabled to allow
deeper power savings.

Changes in v2:
- Squash "PSR set idle frames while exit from DC3CO"
  into this patch (Uma Shankar)
- Add cancel_delayed_work() in intel_psr_disable_locked()
  before clearing dc3co_eligible (Uma Shankar)

Changes in v4:
- Re-arm cancelled DC3CO work in psr resume
- Schedule DC3CO work from intel_psr_post_plane_update(). This is to
  make sure DC3CO work scheduling will happen even without psr flush,
  which may be a valid scenario.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 62 ++++++++++++++++++-
 2 files changed, 63 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9c12c961268c..1ca1b7472790 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1777,6 +1777,8 @@ struct intel_psr {
 	bool irq_aux_error;
 	/* DC3CO eligibility used to control PSR configuration */
 	bool dc3co_eligible;
+	/* DC3CO disable work */
+	struct delayed_work dc3co_work;
 	u16 su_w_granularity;
 	u16 su_y_granularity;
 	bool source_panel_replay_support;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 680cb0f1022d..4a0bb9db0f1c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1771,6 +1771,51 @@ static bool intel_psr_needs_wa_18037818876(struct intel_dp *intel_dp,
 		!crtc_state->has_sel_update);
 }
 
+static void psr2_dc3co_disable_locked(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (intel_dp->psr.dc3co_eligible) {
+		intel_dp->psr.dc3co_eligible = false;
+		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
+		psr2_program_idle_frames(intel_dp, psr_compute_idle_frames(intel_dp));
+	}
+}
+
+static void psr2_dc3co_disable_work(struct work_struct *work)
+{
+	struct intel_dp *intel_dp =
+		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
+
+	mutex_lock(&intel_dp->psr.lock);
+	psr2_dc3co_disable_locked(intel_dp);
+	mutex_unlock(&intel_dp->psr.lock);
+}
+
+static void
+psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
+			enum fb_op_origin origin)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (!intel_dp->psr.dc3co_eligible)
+		return;
+
+	if (!intel_dp->psr.sel_update_enabled ||
+	    !intel_dp->psr.active)
+		return;
+	/*
+	 * At every frontbuffer flush flip event modified delay of delayed work,
+	 * when delayed work schedules that means display has been idle.
+	 */
+	if (!(frontbuffer_bits &
+	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
+		return;
+
+	mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
+			 intel_dp->psr.dc3co_exit_delay);
+}
+
 static
 void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
 				 struct intel_crtc_state *crtc_state)
@@ -2307,6 +2352,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 	intel_dp->psr.active_non_psr_pipes = 0;
 	intel_dp->psr.pkg_c_latency_used = 0;
+	cancel_delayed_work(&intel_dp->psr.dc3co_work);
 	intel_dp->psr.dc3co_eligible = false;
 }
 
@@ -2337,6 +2383,7 @@ void intel_psr_disable(struct intel_dp *intel_dp,
 
 	mutex_unlock(&intel_dp->psr.lock);
 	cancel_work_sync(&intel_dp->psr.work);
+	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
 }
 
 /**
@@ -2367,6 +2414,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
 	mutex_unlock(&psr->lock);
 
 	cancel_work_sync(&psr->work);
+	cancel_delayed_work_sync(&psr->dc3co_work);
 }
 
 /**
@@ -2393,8 +2441,13 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 		goto out;
 	}
 
-	if (--intel_dp->psr.pause_counter == 0)
+	if (--intel_dp->psr.pause_counter == 0) {
 		intel_psr_activate(intel_dp);
+		/* re-arm cancelled dc3c3o work from pause*/
+		if (intel_dp->psr.dc3co_eligible)
+			mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
+					 intel_dp->psr.dc3co_exit_delay);
+	}
 
 out:
 	mutex_unlock(&psr->lock);
@@ -3151,6 +3204,11 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 		 */
 		intel_dp->psr.busy_frontbuffer_bits = 0;
 
+		if (intel_dp->psr.dc3co_eligible) {
+			mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
+					 intel_dp->psr.dc3co_exit_delay);
+		}
+
 		mutex_unlock(&psr->lock);
 	}
 }
@@ -3609,6 +3667,7 @@ void intel_psr_flush(struct intel_display *display,
 		if (origin == ORIGIN_FLIP ||
 		    (origin == ORIGIN_CURSOR_UPDATE &&
 		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
+			psr2_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
 			goto unlock;
 		}
 
@@ -3667,6 +3726,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		intel_dp->psr.link_standby = connector->panel.vbt.psr.full_link;
 
 	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
+	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work, psr2_dc3co_disable_work);
 	mutex_init(&intel_dp->psr.lock);
 }
 
-- 
2.43.0

