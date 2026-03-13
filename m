Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAS5KEU1tGn4igAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 17:03:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 782DC286935
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 17:03:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 109E110E461;
	Fri, 13 Mar 2026 16:03:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kaxvpjiW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E919710E461;
 Fri, 13 Mar 2026 16:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773417794; x=1804953794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mCG5pWLZ3OSPV5dZK6aZeKkZpWGc0KVs9Wz1rYLhSqw=;
 b=kaxvpjiW/0CDH49LOOdv68/mtzPBBg8JQcJqvH+DowM17lc4MSaR9/7c
 0Wq2OxpvLLcj+lA71ZuBpZ8F9QZlGccst6OLk/jcABSNEbGGlXKE8uVo+
 EmFdzxlDlotVmG2W/Rnq+jtmImfG0cdUAaGtH+4O1NPtEHPEjRvfPg6a8
 9KvotRSNwRRECOS384DjYp5wKE3/2qgjNManNx/Lsm7sOLXPl1AxcQcmb
 1njQt2Z8iybHdOsI2n58bR+P0MgAkYAA1DXRk3Vf5UjiWN5nXDumtYXb9
 BuT+yMorxJ7h0HVX3TjcehtRhN34e0ZU9TJCAfs0JyOX8uIukcc3WsNQ8 g==;
X-CSE-ConnectionGUID: j5Hy18rTTAGndnZXEQvilw==
X-CSE-MsgGUID: Pl5+OC+0R1C+/Ph4j4Jyrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="74715360"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="74715360"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 09:03:14 -0700
X-CSE-ConnectionGUID: nyLwBQsSQLWUaVQS3Aurqg==
X-CSE-MsgGUID: +rb83aBYT3+755TxHidUUw==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 13 Mar 2026 09:03:12 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com,
 dibin.moolakadan.subrahmanian@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v3 07/12] drm/i915/cmtg: add a hook to enable ddi for CMTG
Date: Fri, 13 Mar 2026 21:02:55 +0530
Message-Id: <20260313153300.3530695-8-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260313153300.3530695-1-animesh.manna@intel.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 782DC286935
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Program DDI_FUNC_CTL2 to configure the eDP transcoder as secondary
to the CMTG transcoder.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index a802bf3e52e9..703828339d4d 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -334,3 +334,16 @@ void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
 			 transcoder_name(cpu_transcoder));
 	}
 }
+
+void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder), 0, CMTG_SECONDARY_MODE);
+
+	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 64ff6a19948a..12abbafa7d08 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -11,6 +11,7 @@
 struct intel_display;
 struct intel_crtc_state;
 
+void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);
-- 
2.29.0

