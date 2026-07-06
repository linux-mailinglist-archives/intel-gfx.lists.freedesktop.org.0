Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3zsBCb6YS2r4WAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:59:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6286710312
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:59:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=avi2w+mq;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6631D10E936;
	Mon,  6 Jul 2026 11:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17BD910E924;
 Mon,  6 Jul 2026 11:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783339196; x=1814875196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vQMvJ4OLKgkFZrZs5cejGyWC4azW+2offAbPvRFi520=;
 b=avi2w+mqpbN5+ibWbLQ0lmZJK26V975iVS3oxPrjRYvgU6z/1fBlg7rZ
 xCHfwiGXjTsB57DtOvfit9IlFp50dLZhYjq6GBo84Ot0rGI7i3XK0UzTK
 MeHn6nYpcUDyV0URluMaEG1yliLt+KLPbBaN6bJ8mvTEqnE8ZQRq9nc6d
 XCt1fqB6i6yE3hdKY8An8sn0egmdTUBHXDv7/zSGNzjWLUqgCyWD+AsZC
 AApa67cJ0uK8PPVF0iTIZgD6yo8e1kT4qmRKTZ/35MA2TJ3F1h5PDrSM0
 fPSKruMSAf2mgwZszbLLoIZ07Us0AKH+EatzCwArB1qY5bj10Sk6GsloL Q==;
X-CSE-ConnectionGUID: l+vtaAV+RtySkAEr72/gMg==
X-CSE-MsgGUID: ERHq2qokR62KQ9p1iM6PkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="95481139"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="95481139"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 04:59:55 -0700
X-CSE-ConnectionGUID: pQPaBjh7SIO/vghXYP299A==
X-CSE-MsgGUID: eEqIIC46TqONmRGznOXGGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="253797588"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa007.jf.intel.com with ESMTP; 06 Jul 2026 04:59:54 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 6/6] drm/i915/cursor: Allow joiner cursor fast path update
Date: Mon,  6 Jul 2026 17:26:29 +0530
Message-Id: <20260706115629.2984258-7-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260706115629.2984258-1-nemesa.garg@intel.com>
References: <20260706115629.2984258-1-nemesa.garg@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E6286710312

The legacy cursor path forced all joiner updates to the
slow path by checking joiner_pipes.
Drop the condition so that joiner cursor updates can use
the fast path.

v4: Trimmed to only the joiner_pipes gate drop. [Chaitanya]

Assisted-by: Claude:claude-sonnet-4.6
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 68e73afad330..f431c00c03ac 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -901,13 +901,10 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 * PSR2 selective fetch also requires the slow path as
 	 * PSR2 plane and transcoder registers can only be updated during
 	 * vblank.
-	 *
-	 * FIXME joiner fastpath would be good
 	 */
 	if (!crtc_state->hw.active ||
 	    intel_crtc_needs_modeset(crtc_state) ||
-	    intel_crtc_needs_fastset(crtc_state) ||
-	    crtc_state->joiner_pipes)
+	    intel_crtc_needs_fastset(crtc_state))
 		goto slow;
 
 	/*
-- 
2.25.1

