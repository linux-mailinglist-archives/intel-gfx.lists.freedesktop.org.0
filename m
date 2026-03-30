Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oM5GMW/6yWlg3wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 06:22:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D03355327
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 06:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2018910E282;
	Mon, 30 Mar 2026 04:22:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eu8F7qPE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64A9C10E27B;
 Mon, 30 Mar 2026 04:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774844524; x=1806380524;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XjDIcelhTBrb67a2mZBXv/6E7BGm3pawrsiQbz/4hlI=;
 b=Eu8F7qPEDgIoc2g6008BCGihZ4PzVcMyoZptYr77GQqotaSNbk3KE3xc
 p34OxugWjFB7JEmE4dbjG7mwsGqx0HOZxiWIoJz+1sYXpUZ6EW0qoc1Dw
 33P7SRH/H4dCYMg827vcOOnawzd1Rqeh5PMLORkCcIfAWr/Uk7QXVpcN5
 2bhGIGnEEBJ68eZhSIY4YLI0mzi367TgNX/cKKw8T0Jk222NRAMvJms4I
 TkltqOJbIQmnRNt8jAxOB/QrKFLMWPbACh5I1TBHKz/zz0+x270juxnZ5
 U/sS1G2m9pUgCtjTUFdiPBCeKx3AuYsWHG9aXCmll2SNT7m+dIcCE5Qj6 A==;
X-CSE-ConnectionGUID: qDjVqIucSymDZsA338M1ZQ==
X-CSE-MsgGUID: PhHePrPjT3CBVPbTyByxaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="87218214"
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="87218214"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2026 21:22:04 -0700
X-CSE-ConnectionGUID: qkaH8sAfQCaHKtLBPlkiLg==
X-CSE-MsgGUID: BylOv2nlR2yLi+gG8rJLOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="263871062"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2026 21:22:02 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 02/19] drm/dp: Clean up DPRX feature enumeration macros
Date: Mon, 30 Mar 2026 09:36:39 +0530
Message-ID: <20260330040656.4116502-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 97D03355327
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Align the DP_DPRX feature enumeration macros for better readability and
consistency, and use the BIT() macro instead of open-coded shifts.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 include/drm/display/drm_dp.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 4ea3b5b08a12..49f0154eb93c 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -1202,10 +1202,10 @@
 # define DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_80_MS	0x04
 # define DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_100_MS	0x05
 
-#define DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1         0x2214 /* 2.0 E11 */
-# define DP_ADAPTIVE_SYNC_SDP_SUPPORTED    (1 << 0)
-# define DP_AS_SDP_FIRST_HALF_LINE_OR_3840_PIXEL_CYCLE_WINDOW_NOT_SUPPORTED (1 << 1)
-# define DP_VSC_EXT_SDP_FRAMEWORK_VERSION_1_SUPPORTED  (1 << 4)
+#define DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1					0x2214 /* 2.0 E11 */
+# define DP_ADAPTIVE_SYNC_SDP_SUPPORTED						BIT(0)
+# define DP_AS_SDP_FIRST_HALF_LINE_OR_3840_PIXEL_CYCLE_WINDOW_NOT_SUPPORTED	BIT(1)
+# define DP_VSC_EXT_SDP_FRAMEWORK_VERSION_1_SUPPORTED				BIT(4)
 
 #define DP_128B132B_SUPPORTED_LINK_RATES       0x2215 /* 2.0 */
 # define DP_UHBR10                             (1 << 0)
-- 
2.45.2

