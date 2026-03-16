Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFFhONyTuGnCgAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 00:35:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5682A2030
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 00:35:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3EA10E188;
	Mon, 16 Mar 2026 23:35:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d7a1Zxw6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F24A010E188
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2026 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773704155; x=1805240155;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W1EQzO9+FEODu86QiTOj/ucNdjlS409oznwDrwUZXCs=;
 b=d7a1Zxw6M0dfys3Sk8juw23lTcBkABpuduXRZdk54wZPCoknoJGRa9IR
 AD53v5rLczhogTRSa/3bg22tGTjlZ7Y8uz7xYH0NinWCOAw+EfjuRz6IU
 MC1IJEyc+wQyBDShscnYYTcaAmtwlnEEMdsETxcJ3M2QWbAeSLJ8/vP4M
 g98r1XtfAYx8kITrW4Unv2EUI9RtPs9+6ofGjwKeni7OHqaRT2cP/4HXK
 UiZY8FxHlkvoU810omJ4vUaTwZlW0upAN/aygZbI9BxNmKj52+FKSulA9
 NGp+gAy/+cuiQVnTr5Q86MpTXvKzDZOZisE2qGK8yklqAZwkKUPZRJTlm A==;
X-CSE-ConnectionGUID: toyGKUpJT3GMpjuX3xYi1A==
X-CSE-MsgGUID: dNsnzrkgQZ+91t4sQYK9RA==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74434972"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74434972"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 16:35:54 -0700
X-CSE-ConnectionGUID: FX/lzi1pQ/OSjfmhl7Ceww==
X-CSE-MsgGUID: ZfgTaJF5S8yFg3m3kAsvVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="222138063"
Received: from chu13-desk.fm.intel.com ([10.80.209.210])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 16:35:53 -0700
From: Austin Hu <austin.hu@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	maarten.lankhorst@linux.intel.com
Subject: [PATCH 2/2] drm/i915/plane: don't DMA odd Xpan even Xsize UV buffer
Date: Mon, 16 Mar 2026 16:32:54 -0700
Message-Id: <20260316233254.393640-2-austin.hu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260316233254.393640-1-austin.hu@intel.com>
References: <20260316233254.393640-1-austin.hu@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[austin.hu@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 9F5682A2030
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The original code (for Wa_16023981245) make (UV) plane state
checking failed for odd Xpan buffer, so that some YUV semi-planar
buffers with odd Xpan and odd Xsize couldn't pass to be DMAed by DE
Plane.

So only apply the work around for odd Xpan and even Xsize YUV
semi-planar buffers, and the HW issue is expected to be fixed since
Intel Xe3p DE IP.

Signed-off-by: Austin Hu <austin.hu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 3d945fe99b67..4f0c04f72bba 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1105,11 +1105,14 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		hsub = 1;
 		vsub = 1;
 
-		/* Wa_16023981245 */
+		/*
+		 * Wa_16023981245, applied to odd Xpan and even Xsize for UV
+		 * Plane due to HW issue which is fixed since Xe3p DE IP.
+		 */
 		if ((DISPLAY_VERx100(display) == 2000 ||
 		     DISPLAY_VERx100(display) == 3000 ||
 		     DISPLAY_VERx100(display) == 3002) &&
-		     src_x % 2 != 0)
+		     (src_x & 1) && !(src_w & 1))
 			hsub = 2;
 
 		if (DISPLAY_VER(display) == 35)
-- 
2.34.1

