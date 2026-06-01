Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBUEIjRAHWq8XgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:17:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5968561B596
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:17:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E38E112F78;
	Mon,  1 Jun 2026 08:17:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WbbpFVt4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB729112F58;
 Mon,  1 Jun 2026 08:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780301872; x=1811837872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=azAN9ioMofgssmczHhEEadQWCShkURa4kQQDJQnD3Y0=;
 b=WbbpFVt40DyHoqr8eM9qj56e4HTpX6KLp9s1IJpotXIsO1EtTtLkXOFW
 2iwlACWRTNPy1/sKgADeIl1pywxJtrtevo09/rM9bEEZlbZRO3vFz8fxs
 914QQapr035mppiv+ZGIQuOqmfQJBbA6MZb7/Wc+A8Onxq66MuqW7ldt1
 5q+1AL/UDYHzkCdm6ps9TLUZxTQHyAVQ/mR0ZoM2tsOHaTkgP5pZkDrH8
 b6kN0PpCVORTFtTkx04qSnR9481O7WSm/BI0JhJOSp2qpCimgwXApIlhp
 2nhWY7kR4l5aj52yk5HDtWVBoKQcX/07Af9YF+aKMw8WIC/EfokHiZ7Zc A==;
X-CSE-ConnectionGUID: 3uh3XngnQqysO1ta58fI/w==
X-CSE-MsgGUID: 5ZpesHjHS3qLFpoqzrWF+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80786203"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="80786203"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 01:17:46 -0700
X-CSE-ConnectionGUID: Or1Hpxm3TPqOpDmMOA8qZA==
X-CSE-MsgGUID: /kX5L0UGRUidwwCtfFcNCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="248602111"
Received: from abityuts-desk.ger.corp.intel.com (HELO hazy) ([10.245.245.124])
 by fmviesa005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2026 01:17:44 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v4 3/4] drm/i915/display: harden shift in
 intel_ddi_compute_config_late()
Date: Mon,  1 Jun 2026 11:14:34 +0300
Message-ID: <20260601081730.3146922-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260601081730.3146922-1-luciano.coelho@intel.com>
References: <20260601081730.3146922-1-luciano.coelho@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 5968561B596
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

BIT() takes a non-negative shift amount, but cpu_transcoder is of type
enum transcoder, which can in theory be INVALID_TRANSCODER (-1).

This is not a problem with the current implementation, because
cpu_transcoder is always valid when this code is reached, but it's
more robust to cast to unsigned so the shift is always well-defined.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 205978c9feb6..cbdadb6cade4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4635,8 +4635,8 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 
 	if (crtc_state->master_transcoder == crtc_state->cpu_transcoder) {
 		crtc_state->master_transcoder = INVALID_TRANSCODER;
-		crtc_state->sync_mode_slaves_mask =
-			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
+		crtc_state->sync_mode_slaves_mask = port_sync_transcoders &
+			~REG_BIT(crtc_state->cpu_transcoder);
 	}
 
 	return 0;
-- 
2.53.0

