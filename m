Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJtFHYI462nRJwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:31:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB0645C3DF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FB2910F462;
	Fri, 24 Apr 2026 09:31:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ik1GXcZt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1211810F477;
 Fri, 24 Apr 2026 09:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777023098; x=1808559098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DfawlLkld6l04G7pQhdlUOA6zhvrcwlU27/BF7g4Wd8=;
 b=ik1GXcZtrkfDGH/Aig6TboQnyzT2yyYo2fxq1HwAhEo58ZqaeWCrDlqs
 dia/KSHjKPU6z8rHn3+MdAuXqWWRb4QPF5ifKcZnc9RV+OQGirkIXgscb
 ul8g1kBJ17EQAthJNKiMJ8TNaztq6mjjEi+0/1CWkaVnwXurX43rqPlgC
 T8foptgPhL62YeKdQSFZ1k2NUU+mRzh63MsdMDwRCBA9F7Aih6AnwiAWM
 YOzZi2Pl3UqWymqQK1C1Hhxn/C4xoBk3P501g9DUyMsUX0BvModbQZ3hS
 npD/2jL9kE7kkzP8rJPZLTf+bztKh3iMPSUHm7CRNFUmVgj4Qmy8fsING A==;
X-CSE-ConnectionGUID: WEsjfQ25QUa2u/BMislfnw==
X-CSE-MsgGUID: ERu0MqL9QiCHxLV1OZYKXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="81859296"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="81859296"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:31:38 -0700
X-CSE-ConnectionGUID: ZUv0sLaTRU2mi/ve5uaYOA==
X-CSE-MsgGUID: ZkAKuYcRT0ii8NtC+2RKYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="228572934"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:31:36 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/7] drm/dp: Store coasting vtotal in struct drm_dp_as_sdp
Date: Fri, 24 Apr 2026 14:46:44 +0530
Message-ID: <20260424091646.3060549-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260424091646.3060549-1-ankit.k.nautiyal@intel.com>
References: <20260424091646.3060549-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 1BB0645C3DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

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

