Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIkvNr6aHWpYcgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:44:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F12621142
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01274113445;
	Mon,  1 Jun 2026 14:44:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TS1ImEQO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5C48113445;
 Mon,  1 Jun 2026 14:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780325052; x=1811861052;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xtoFAbkTKEFgnElqKg5w1jTnifHZ3k2NP+RDG2iXTnA=;
 b=TS1ImEQOXokuTERklAW/zKv8sUAN/f+r5p4+urFWEnWcs7F/ZFmirxSX
 l1GNMY/FqwxXx3yThWV8caG656ueH1qIfESfdJNw1Cr0et7743XGbv1yu
 +3aqPWqYDmljl7NESG3aFLh+X5F9Wlgi+gPcwScPDYKapNJvwfHqhGNa0
 QBrMO9latIn7F+t37B3KLWxDg4SAvlQspIpi24XAmhyMpKMoTL8DCLqzm
 1GrREc9Tz16gcQXlLAPH5b5Mb8Jhb98944n5QtJJD1g1hVrYih5GANIDx
 K0vANGmBaoDlVJZCTKUli8AQLyXKmVL7Rtnj3oJYqMCsDF+XLz9t/9pds w==;
X-CSE-ConnectionGUID: c+Zj5SnUSle0LFXG1HkI1A==
X-CSE-MsgGUID: CnGrMhtjRg+BkwC6H6PAkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="91765659"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="91765659"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 07:44:11 -0700
X-CSE-ConnectionGUID: /n3Pj4sqQ7yV65E+2W/t0g==
X-CSE-MsgGUID: xHIdjm2XT2CCs/6nTGv98w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="239420067"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa010.fm.intel.com with ESMTP; 01 Jun 2026 07:44:10 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH] drm/i915/drrs: Synchronize drrs activate with debugfs
Date: Mon,  1 Jun 2026 20:12:55 +0530
Message-Id: <20260601144255.1481931-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 75F12621142
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Honor the drrs deactivate coming from debugfs and keep it disabled until
the same is enabled from the user.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  2 ++
 drivers/gpu/drm/i915/display/intel_drrs.c          | 10 ++++++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 84bd0d993197..709595bde8d3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1537,6 +1537,8 @@ struct intel_crtc {
 		unsigned int busy_frontbuffer_bits;
 		enum transcoder cpu_transcoder;
 		struct intel_link_m_n m_n, m2_n2;
+		/* Runtime override; set to keep DRRS off across commits. */
+		bool force_disabled;
 	} drrs;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 0fdb32ef241c..6bebb04034e6 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -165,6 +165,12 @@ void intel_drrs_activate(const struct intel_crtc_state *crtc_state)
 
 	mutex_lock(&crtc->drrs.mutex);
 
+	/* don't re-arm DRRS if forcefully disabled by debugfs */
+	if (crtc->drrs.force_disabled) {
+		mutex_unlock(&crtc->drrs.mutex);
+		return;
+	}
+
 	crtc->drrs.cpu_transcoder = crtc_state->cpu_transcoder;
 	crtc->drrs.m_n = crtc_state->dp_m_n;
 	crtc->drrs.m2_n2 = crtc_state->dp_m2_n2;
@@ -376,6 +382,10 @@ static int intel_drrs_debugfs_ctl_set(void *data, u64 val)
 
 	drm_dbg_kms(display->drm, "Manually %sactivating DRRS\n", val ? "" : "de");
 
+	mutex_lock(&crtc->drrs.mutex);
+	crtc->drrs.force_disabled = !val;
+	mutex_unlock(&crtc->drrs.mutex);
+
 	if (val)
 		intel_drrs_activate(crtc_state);
 	else
-- 
2.25.1

