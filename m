Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKVsMmnfzGm0XAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 11:03:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D97377389
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 11:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73CD010EC69;
	Wed,  1 Apr 2026 09:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QRtdP1Mk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6106C10EC69;
 Wed,  1 Apr 2026 09:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775034214; x=1806570214;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P01rPyDQb8v14s6w4AeK3invk9ww9B3ykAc85s245tk=;
 b=QRtdP1Mkx4oUBez2cMzB11oecpgsWxNNOSRYAcRTuQxe3WkYAMYId248
 vH8AiXuFagPfrHTJpxlPMYfMmLv9nyLF8AQQDJ4aH1F1viDEsLLOwkBnw
 oCPNGiH8GmOG6GFoMn84Gcizy8zKwNkELF/rYigGLEbaqjZUOkIkEhHtR
 6O026p6tW4AXLJD+oFuN2Haqo5Fq3sRyQPY8g1vJNNS52e6hMvT9QXef1
 4umER0qjYzFDq6VnPPt2Fophj1RSJskqsVj+i3D3PY2hGq6qua+EX399g
 ytrpA2gxr2PWUmB2I03o8hU8D7HV2XaQFYmSBcIWypt7Z64gdecu44DoK g==;
X-CSE-ConnectionGUID: Vhuh5vQvT326D+dMscf84g==
X-CSE-MsgGUID: Oh8pnVnNTbeXN1bPFR4vvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75238091"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="75238091"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 02:03:34 -0700
X-CSE-ConnectionGUID: Ok59AQs+Q3mGB0JK5EFlxA==
X-CSE-MsgGUID: us1YGKGUS3Sa3SQaSJUTCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="228232875"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa004.fm.intel.com with ESMTP; 01 Apr 2026 02:03:26 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 pranay.samala@intel.com
Subject: [PATCH 1/3] drm/i915/display: Copy color pipeline from plane in the
 primary joiner pipe
Date: Wed,  1 Apr 2026 14:08:39 +0530
Message-Id: <20260401083841.4081587-1-chaitanya.kumar.borah@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 57D97377389
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 5390ceb21ca4..82f445c83158 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -373,7 +373,7 @@ intel_plane_color_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
 	bool changed = false;
 	int i = 0;
 
-	iter_colorop = plane_state->uapi.color_pipeline;
+	iter_colorop = from_plane_state->uapi.color_pipeline;
 
 	while (iter_colorop) {
 		for_each_new_colorop_in_state(state, colorop, new_colorop_state, i) {
-- 
2.25.1

