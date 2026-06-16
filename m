Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NMChA3t4MWqykAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 18:23:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4FA69203F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 18:23:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=b5E5elvg;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A72310E7C8;
	Tue, 16 Jun 2026 16:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDA4F10E7C8;
 Tue, 16 Jun 2026 16:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781626999; x=1813162999;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4O7jCaC9LVEtxPi/6o3FAIs7OqIjjAjhNKtB4Rv0Zu8=;
 b=b5E5elvg50jyFg6vYE78tAffDFMDg7G3QvJuykwua7/T68JipYOWjhTH
 hQMEx4JuUdWkUfT+TcW8hgz5Rrhmndv4WwLTaUM2z+jCVaImBAcbSiZLc
 XsZq+uykiGUSg+6IH3P2uayWICHyBhTXY7rZ+9uC73N0/dgRQEfMRFH+h
 2525fEx6VyI3v4ingQGX7brsUjLKeK4oivXrqCnp2syODF5p3mgBrUOeY
 bK0qlvmbfkmWiLjZdS06wLcO/F94cyHk9UPW8+32Yi4gG8KGHutXb3YbZ
 S1QwLqJHyy/rqerN4lGSMwSDb1qvff3gwfx1zJWQcftgcnEAQWqzFSfrQ Q==;
X-CSE-ConnectionGUID: 9tLBcw2qQ92lQEMFg6LCFg==
X-CSE-MsgGUID: 2HAseilkTKWZf124U2sxmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93781309"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93781309"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 09:23:18 -0700
X-CSE-ConnectionGUID: rozH4cLgRHOEp6fdpqWh8w==
X-CSE-MsgGUID: 11CCNZeQTGuq9MEZDE3cWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="247693511"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 09:23:17 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, animesh.manna@intel.com, jani.nikula@linux.intel.com
Subject: [PATCH v6 07/16] drm/i915/psr: Add psr2 deep sleep helper API
Date: Tue, 16 Jun 2026 21:51:45 +0530
Message-ID: <20260616162154.2630995-8-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE4FA69203F

Add intel_psr2_in_deep_sleep() to check whether PSR2 is currently in
DEEP_SLEEP state. Will be used in subsequent patches.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b7344f2b865e..932aff386023 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2219,6 +2219,27 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 	intel_dp->psr.active = false;
 }
 
+bool intel_psr2_in_deep_sleep(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	enum transcoder cpu_transcoder;
+	bool in_deep_sleep = false;
+	u32 val;
+
+	mutex_lock(&intel_dp->psr.lock);
+
+	if (!intel_dp->psr.enabled || !intel_dp->psr.sel_update_enabled)
+		goto out;
+
+	cpu_transcoder = intel_dp->psr.transcoder;
+	val = intel_de_read(display, EDP_PSR2_STATUS(display, cpu_transcoder));
+	in_deep_sleep = (val & EDP_PSR2_STATUS_STATE_MASK) ==
+		EDP_PSR2_STATUS_STATE_DEEP_SLEEP;
+out:
+	mutex_unlock(&intel_dp->psr.lock);
+	return in_deep_sleep;
+}
+
 static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 29723e63888f..d545fdaa0de7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -87,5 +87,6 @@ void intel_psr_compute_config_late(struct intel_dp *intel_dp,
 int intel_psr_min_guardband(struct intel_crtc_state *crtc_state);
 bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state);
 bool intel_psr_pr_async_video_timing_supported(struct intel_dp *intel_dp);
+bool intel_psr2_in_deep_sleep(struct intel_dp *intel_dp);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.43.0

