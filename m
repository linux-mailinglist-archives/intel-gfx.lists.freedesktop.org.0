Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGJHKbII62lvHgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 08:07:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 610C845A277
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 08:07:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CE0910F285;
	Fri, 24 Apr 2026 06:07:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LLJ6jrt5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68A2B10F285;
 Fri, 24 Apr 2026 06:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777010862; x=1808546862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JSPx+6IfXN+/99zgJPnD5tKlVWiTGBXQ+oLisOcAL2s=;
 b=LLJ6jrt5nSUjjsFJFQ6MwJNIUySD2m9giZmtl5L+eSd6bLeRwfa3M/WA
 ykaxEEQwImKJVRmlGSqmz6iFz3u48r/X/NAiWCRUCh1sCryoCizLRjnRR
 wIs40Xxaqx58FJi4l9BCtMoEsh2q9WmLP9cephEXoWRolgflydwKXVHub
 UWnel3Fwu+QazKbv7nPsPMgYUg4lXb8RzlefrPebW4+cov3ScbacIb+vm
 ESmfC6SEqQfzJyZQOdrIH5KQLSPyx1q+xR9md7h9wt3e6fIFJAyujVwH2
 Rb0YjukQrwaae2uC8M4tFrU60NDA8UYj/cp/YxBGF/dzu0yWfKA+rbVbK Q==;
X-CSE-ConnectionGUID: 4dlg0uL/S0OjH7kHat9qLw==
X-CSE-MsgGUID: CK4WuZQ+QGS5i6jnhWeklA==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="77690818"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="77690818"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 23:07:42 -0700
X-CSE-ConnectionGUID: dRf7tJ2hQa+v7Midt8McKg==
X-CSE-MsgGUID: aWo7DJ/zTnGX/0TjQON4Jg==
X-ExtLoop1: 1
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa003.fm.intel.com with ESMTP; 23 Apr 2026 23:07:40 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, pranay.samala@intel.com,
 stable@vger.kernel.org
Subject: [PATCH v2 2/4] drm/i915/display: Copy color pipeline from plane in
 the primary joiner pipe
Date: Fri, 24 Apr 2026 11:11:27 +0530
Message-Id: <20260424054129.2148049-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260424054129.2148049-1-chaitanya.kumar.borah@intel.com>
References: <20260424054129.2148049-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Queue-Id: 610C845A277
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

When copying plane color state in a joiner configuration, use the plane in
the primary joiner pipe since it carries the pipeline number selected by
the user-space.

This assumes that all pipes in the joiner are symmetric in their plane
color capabilities.

Cc: stable@vger.kernel.org # v6.19+
Fixes: a78f1b6baf4d ("drm/i915/color: Add framework to program CSC")
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index d08e9166824b..a8efe0011b23 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -398,7 +398,7 @@ intel_plane_color_copy_uapi_to_hw_state(struct intel_atomic_state *state,
 	if (!state)
 		return;
 
-	iter_colorop = plane_state->uapi.color_pipeline;
+	iter_colorop = from_plane_state->uapi.color_pipeline;
 
 	while (iter_colorop) {
 		for_each_new_colorop_in_state(&state->base, colorop, new_colorop_state, i) {
-- 
2.25.1

