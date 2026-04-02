Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDCZMaomzmnElAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 10:19:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FF8385D47
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 10:19:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0465E10F078;
	Thu,  2 Apr 2026 08:19:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M5Hhs+6q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A909C10F041;
 Thu,  2 Apr 2026 08:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775117992; x=1806653992;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DfawlLkld6l04G7pQhdlUOA6zhvrcwlU27/BF7g4Wd8=;
 b=M5Hhs+6qZeo6oDiu3Gfzexkmkqd/80xKwe9mCpoWoB6kJcP1r2Ruvv2c
 rgqBUTTZsTvN7x88f3cAX2rLTYGlAqHOZdcCFyoFOX12SjOm1kucvZE6O
 ULJDOnn+B2Ev1KXryzanDDrFmbbIDeDwOt9TeOqJaeZOdRBZNpmM0KbMj
 4+u5ktr+VItdUCRS6FcSI9ZKsh8CUhmGbMiI0dJF4YcQmXAEzDbtWGI0w
 K6RdtU8P5OznMzRcnlSqoq4L/7zkuBKRxkZJwfvqrLyY+u6HPOlzAcG0G
 KCDYQFHz+LuHHtQ8ulgfwDpsqf0nd5hoQ5Xb/TljREK2xPc+klnw68h3p w==;
X-CSE-ConnectionGUID: Gghhx9sJSfiwCkc1oZbNQQ==
X-CSE-MsgGUID: 1kMA/hz+R0qpma9K/4xlKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="80060428"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="80060428"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 01:19:48 -0700
X-CSE-ConnectionGUID: UffnqdgIR7+kq/DmZk31HA==
X-CSE-MsgGUID: Cy2yEgFiQnKPaYRSrLEExQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="226776115"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 01:19:46 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 05/23] drm/dp: Store coasting vtotal in struct drm_dp_as_sdp
Date: Thu,  2 Apr 2026 13:34:05 +0530
Message-ID: <20260402080425.548702-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 99FF8385D47
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add new field in struct drm_dp_as_sdp to store coasting vtotal.
This is used by the sinks that support Panel Replay and Asynchronous
timing during PR Active to derive refresh rate, when AS SDP transmission
is stopped by the source.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 1 +
 include/drm/display/drm_dp_helper.h     | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index a697cc227e28..e29958f8b0b6 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -3512,6 +3512,7 @@ void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp
 	drm_printf(p, "    duration_incr_ms: %d\n", as_sdp->duration_incr_ms);
 	drm_printf(p, "    duration_decr_ms: %d\n", as_sdp->duration_decr_ms);
 	drm_printf(p, "    operation_mode: %d\n", as_sdp->mode);
+	drm_printf(p, "    coasting vtotal: %d\n", as_sdp->coasting_vtotal);
 }
 EXPORT_SYMBOL(drm_dp_as_sdp_log);
 
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 1d0acd58f486..8c2d77a032f0 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -126,6 +126,7 @@ struct drm_dp_as_sdp {
 	int duration_decr_ms;
 	bool target_rr_divider;
 	enum operation_mode mode;
+	int coasting_vtotal;
 };
 
 void drm_dp_as_sdp_log(struct drm_printer *p,
-- 
2.45.2

