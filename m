Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBPSENLIHWpPeQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 20:00:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E4B623A1B
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 20:00:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55A321136AE;
	Mon,  1 Jun 2026 18:00:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X8UcXS7y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1FB1136A8;
 Mon,  1 Jun 2026 18:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780336847; x=1811872847;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=75vKPk1BvHB84cXkQMP4oSydq9JjOQJR9BwXP7EUWZk=;
 b=X8UcXS7ynWxwSkRYSjD6SuKffu75fnwu9Dpnj4f5SPtq1y6KWjRFdCcV
 fQ23/l3sdw+TfXdzgB9xR7HyK0bUdmR/6id0ChOHYW5dOKB9J2wVQPI8I
 CriPdz2JDVFhfVipPpgkPtmtfGY1EZOxrF7lN8HJQnxryHEUEx6qy2Nxl
 /xzQNgOzCnUWrYIUySAjcAG7G7XhfuD19dXH8TRENjs95RR+5diS2Pdbe
 jsPbyy5kus/SNdEd2Me36CUi/6C+Z5+lhZe1BMNF0qHwzzSkYNqjVssDi
 AUTILUlWgCL9EgC963MO+cVi5ORZw87eswxA6/khasPsc3BsQpsVIHzg7 w==;
X-CSE-ConnectionGUID: SAjv8FrsSj+adSb3BjNBsA==
X-CSE-MsgGUID: Lv6epGOATsiUQCH/YPMqNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="91675050"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="91675050"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 11:00:46 -0700
X-CSE-ConnectionGUID: annOz5vARViGqnYntIGmzQ==
X-CSE-MsgGUID: BU4Y82PQRziBmTguYzH89w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="242816997"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa010.jf.intel.com with ESMTP; 01 Jun 2026 11:00:45 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [core-for-CI] Revert "drm: prevent integer overflows in dumb buffer
 creation helpers"
Date: Mon,  1 Jun 2026 23:06:19 +0530
Message-Id: <20260601173619.348486-1-chaitanya.kumar.borah@intel.com>
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: D7E4B623A1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This reverts commit 5ab62dd3687bcc2cc542b99385aabac5c996db6f.
It causes a regression in Intel CI[1].

[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16308

References: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16326
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/drm_dumb_buffers.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_dumb_buffers.c b/drivers/gpu/drm/drm_dumb_buffers.c
index e60130b2bb0c..61bf3c9b7182 100644
--- a/drivers/gpu/drm/drm_dumb_buffers.c
+++ b/drivers/gpu/drm/drm_dumb_buffers.c
@@ -69,11 +69,8 @@ static int drm_mode_align_dumb(struct drm_mode_create_dumb *args,
 	if (!pitch)
 		return -EINVAL;
 
-	if (hw_pitch_align) {
+	if (hw_pitch_align)
 		pitch = roundup(pitch, hw_pitch_align);
-		if (pitch < hw_pitch_align)
-			return -EINVAL;
-	}
 
 	if (!hw_size_align)
 		hw_size_align = PAGE_SIZE;
@@ -82,7 +79,7 @@ static int drm_mode_align_dumb(struct drm_mode_create_dumb *args,
 
 	if (check_mul_overflow(args->height, pitch, &size))
 		return -EINVAL;
-	size = roundup(size, hw_size_align);
+	size = ALIGN(size, hw_size_align);
 	if (!size)
 		return -EINVAL;
 
@@ -201,13 +198,6 @@ int drm_mode_create_dumb(struct drm_device *dev,
 	if (!args->width || !args->height || !args->bpp)
 		return -EINVAL;
 
-	/* Reject unreasonable inputs early.  Dumb buffers are for software
-	 * rendering; nothing legitimate needs more than 8192x8192 at 32bpp.
-	 * This prevents overflows in downstream alignment helpers.
-	 */
-	if (args->width >= 8192 || args->height >= 8192 || args->bpp > 32)
-		return -EINVAL;
-
 	/* overflow checks for 32bit size calculations */
 	if (args->bpp > U32_MAX - 8)
 		return -EINVAL;
-- 
2.25.1

