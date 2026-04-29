Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MBABunO8WlrkgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 11:27:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDEF491DF7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 11:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63D8410EEED;
	Wed, 29 Apr 2026 09:27:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gfW4cjN+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F3810EF03;
 Wed, 29 Apr 2026 09:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777454822; x=1808990822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OOK42qpuW3BrD6tKCDWWTlhpiuxtlXsQhGalk72IlD8=;
 b=gfW4cjN+7z3LhAdP3yNM+/8kHvEnDuVGAJbHLzpY+q3GYByZXcC7Y+JP
 aGqqE94/AjJ02S7xD4yLiw8InspoJ1KHlmmPkQDdNk7KrzBPQYfvxEQmt
 kOxj8F0jRySeklkLy+FfqcAkVHIN/+VFeQWIINVkPJTCur//FL/JOf2oL
 4aotSzKPaq/YnaU+UvhYCkInuf962WlP24GFdKIogtA4JJ2+z/s44Hzpt
 aPnfk4iCcOpRMvi3sDwLhlaqxNp99NmOf78aa86uTWXGKFrzhgVmKYtAc
 6nQsjmVVNwW9brb4mQNAt92APXoX6EEkI41PqKkteCty2j58NwnQf4afm w==;
X-CSE-ConnectionGUID: 8rM5nCUXQ8mCAqnfR0UfPw==
X-CSE-MsgGUID: 4+coqRG5TB+owRfSXofGSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="95946308"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="95946308"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 02:27:01 -0700
X-CSE-ConnectionGUID: /WhD9W6KSwCDVlHg87UHLA==
X-CSE-MsgGUID: KmbgX2uERT6hA1DU7DWCeA==
X-ExtLoop1: 1
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 02:26:59 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com,
 suresh.kumar.kurmi@intel.com
Subject: [PATCH v3 08/13] drm/i915/display: Store DC3CO eligibility in PSR
 state
Date: Wed, 29 Apr 2026 14:57:02 +0530
Message-ID: <20260429092707.485696-9-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260429092707.485696-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260429092707.485696-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Queue-Id: DEDEF491DF7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

Store DC3CO eligibility in intel_dp->psr during
intel_psr_post_plane_update() so PSR configuration
can take DC3CO into account.

This will be used to control PSR2 parameters such as idle frames.

Changes in v2:
- Use intel_display_power_dc3co_allowed(display) instead
  of intel_dc3co_allowed(state)

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
 drivers/gpu/drm/i915/display/intel_psr.c           | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index fc283cc429ec..28ab686b702a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1769,6 +1769,8 @@ struct intel_psr {
 	ktime_t last_exit;
 	bool sink_not_reliable;
 	bool irq_aux_error;
+	/* DC3CO eligibility used to control PSR configuration */
+	bool dc3co_eligible;
 	u16 su_w_granularity;
 	u16 su_y_granularity;
 	bool source_panel_replay_support;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 34e4a1ad609e..2e0478e3d560 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2263,6 +2263,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 	intel_dp->psr.active_non_psr_pipes = 0;
 	intel_dp->psr.pkg_c_latency_used = 0;
+	intel_dp->psr.dc3co_eligible = false;
 }
 
 /**
@@ -3095,6 +3096,9 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 		 */
 		intel_dp->psr.busy_frontbuffer_bits = 0;
 
+		intel_dp->psr.dc3co_eligible = intel_display_power_dc3co_allowed(display) &&
+			intel_display_power_dc3co_supported(display);
+
 		mutex_unlock(&psr->lock);
 	}
 }
-- 
2.43.0

