Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHeAKdxmAWpUYAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E7550824A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9E4910E48B;
	Mon, 11 May 2026 05:19:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kuyTZdJX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BF4010E48F;
 Mon, 11 May 2026 05:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778476761; x=1810012761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P7kZZuSFlvHn4IDtHBOxOZvoJxiraOESWNlxlRQAeEA=;
 b=kuyTZdJXYWSwYek2gHkcBn6Opez+pAuZxqPTrPiHxR2d7FWIQX8yTlRc
 UCTCvFofL5h8nL1nNswk8DL1MM8UJGSICV4mImauU2lXwZB67cffc6U2z
 jin7dhCTIS9bLmECaVw/HGb05sm1LnIUyXQjHXrHgW9A0HMNi+Eaw/sY4
 HtgZr2diaxsP/cZ0jCMYLVWof4T7klsY8daDO5EComMj8m658R5D1jF2X
 qXcWHXYXGcFbiyx7hqO6iNlXGsCZX6is/QW1IHBriWaqEubFjKqnfZWJX
 I2t0lSLOgKAFaC4ofljDNZ53EIH4eoj8HQkjMjEEBeNCNlB0+6e2j2vgL g==;
X-CSE-ConnectionGUID: sM5/RsEXTHizUbK5u8fToA==
X-CSE-MsgGUID: iAm7OHKwSc6zv0tf4itCsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="81921107"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="81921107"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:21 -0700
X-CSE-ConnectionGUID: 2LNZDZZ+SZCAYFfKp8E/qw==
X-CSE-MsgGUID: OgqwuER+S2WgVZyrhnF8Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="261086271"
Received: from kunal-x299-aorus-gaming-3-pro.iind.intel.com ([10.190.239.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:19 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@intel.com,
 Kunal Joshi <kunal1.joshi@intel.com>
Subject: [RFC 6/7] drm/display/dp_tunnel: Sync SW allocated_bw after enabling
 BW alloc
Date: Mon, 11 May 2026 11:10:27 +0530
Message-Id: <20260511054028.1310995-7-kunal1.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260511054028.1310995-1-kunal1.joshi@intel.com>
References: <20260511054028.1310995-1-kunal1.joshi@intel.com>
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
X-Rspamd-Queue-Id: 64E7550824A
X-Rspamd-Server: lfdr
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
	FROM_NEQ_ENVFROM(0.00)[kunal1.joshi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

After drm_dp_tunnel_enable_bw_alloc() the read-back DP_ALLOCATED_BW
is not synced back to tunnel->allocated_bw, leaving a stale SW
value. The next drm_dp_tunnel_update_state() call sees a SW vs. HW
mismatch, trips tunnel_info_changes_are_valid(), and returns
-EINVAL causing the driver to tear down and re-detect the tunnel
even though BWA enabled correctly.

Sync tunnel->allocated_bw from the just-read register value after
the post-enable verification, mirroring the initial sync done in
create_tunnel().

Cc: Imre Deak <imre.deak@intel.com>
Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Kunal Joshi <kunal1.joshi@intel.com>
---
 drivers/gpu/drm/display/drm_dp_tunnel.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_tunnel.c b/drivers/gpu/drm/display/drm_dp_tunnel.c
index c16b36d3bcf8a..e0474e09f4388 100644
--- a/drivers/gpu/drm/display/drm_dp_tunnel.c
+++ b/drivers/gpu/drm/display/drm_dp_tunnel.c
@@ -1048,6 +1048,22 @@ int drm_dp_tunnel_enable_bw_alloc(struct drm_dp_tunnel *tunnel)
 		goto out;
 	}
 
+	/*
+	 * Sync the SW allocated_bw to whatever the HW reports right after
+	 * enabling BWA mode. The TBT CM may settle to a different
+	 * allocation than the SW state held before BWA was disabled (e.g.
+	 * after a disable/enable toggle while streams are active, or after
+	 * suspend/resume). Without this sync, the next
+	 * drm_dp_tunnel_update_state() call - which does NOT pass
+	 * ALLOW_ALLOCATED_BW_CHANGE - would observe the SW/HW mismatch in
+	 * tunnel_info_changes_are_valid() and return -EINVAL, triggering
+	 * an unnecessary tunnel teardown/re-detect.
+	 */
+	tunnel->allocated_bw = tunnel_reg(&regs, DP_ALLOCATED_BW) *
+			       tunnel->bw_granularity;
+	if (!tunnel->allocated_bw)
+		tunnel->allocated_bw = -1;
+
 	if (!tunnel->max_dprx_rate)
 		update_dprx_caps(tunnel, &regs);
 
-- 
2.25.1

