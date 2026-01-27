Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPFtJISyeGkksQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:41:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EA69468F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:41:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEDF710E561;
	Tue, 27 Jan 2026 12:41:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VTfCOCAG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4AB10E560;
 Tue, 27 Jan 2026 12:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769517698; x=1801053698;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y4AuKHeKGXO2te2v4e5x3RqMu0AvUwmsXHWYGa+KWbM=;
 b=VTfCOCAGn+ws1Oi5cbWcGC0MO2XZvnMnkXbUis+lngsWx/04nBdsEqkZ
 TpRS7AhncUPEQ2NBgDd1f4DFw2dzuUkr5jTOr3kyNuUIwHkZlSq74+aBO
 LicDwy8803cPfOEFs4SzUoSt8gNgK8XiR7HxwTLi8nYGZH0z5LEHkiqBu
 gZoZIlOY2a5sRCgTFU3S485ZqAqRBCFj91RXsHk343bguKQfz1qYLRm/U
 lthUxBENEaGWNhLpXrIm4eUoCv3gMAsV8xTB8vyF7FphwjALDZkwNY1U6
 3o5vFsy8gjdNHn9ABULy8Mc0c1gD2e9acq2SJ3q4blnwOp8XEUKmvavuW A==;
X-CSE-ConnectionGUID: GXPvXOEmQeiwlyPUGR6TQw==
X-CSE-MsgGUID: SoCKKzslTNOqjU88j42aiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="70767644"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="70767644"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:41:38 -0800
X-CSE-ConnectionGUID: WerRPXsGRwWCz0ALtvyPgA==
X-CSE-MsgGUID: bZsko2Y5Q7WgRe+9LKmYGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="239231219"
Received: from ettammin-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.134])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:41:36 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v11 02/11] drm/i915/psr: Add intel_psr_use_trans_push to query
 if TRANS_PUSH is used
Date: Tue, 27 Jan 2026 14:41:11 +0200
Message-ID: <20260127124120.1069026-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260127124120.1069026-1-jouni.hogander@intel.com>
References: <20260127124120.1069026-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 68EA69468F
X-Rspamd-Action: no action

This is a preparation to start using trans push as a PSR "Frame Change"
event. It adds intel_psr_use_trans_push placeholder which return false for
now until we have everything in place.

v2:
  - modify commit message
  - add TODO

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_psr.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 62208ffc5101..b0d72c04db45 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4562,3 +4562,9 @@ int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
 
 	return psr_min_guardband;
 }
+
+bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
+{
+	/* TODO: Enable using trans push when everything is in place */
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index b41dc4d44ff2..394b641840b3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -85,5 +85,6 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 void intel_psr_compute_config_late(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state);
 int intel_psr_min_guardband(struct intel_crtc_state *crtc_state);
+bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.43.0

