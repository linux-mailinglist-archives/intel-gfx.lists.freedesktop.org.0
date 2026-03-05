Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GK4HK0DqWlW0QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 05:16:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 463FB20AB67
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 05:16:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7733010EAF9;
	Thu,  5 Mar 2026 04:16:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="luDETT4V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC7110EAF7;
 Thu,  5 Mar 2026 04:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772684202; x=1804220202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rx+3+NZi5XMCnfzNjmy23J78jK+39g68O5U36HLK5D0=;
 b=luDETT4VYkVLBSnnCAIFMciDcDB4jmv5vG4s0zMM/bqkadSaU03Gox7b
 Gjo95OsEV5I/NSZOScyZQaOEuqSirTShUihLyLT1+UwU85bw+0fOsSt3V
 J9GRZMVOV4A2TX0eoVlZuGLi8aKxjbshDmyKU/n3gz4OSpyspx1uoDBnB
 KUPLaPG+ruu3HES4Rbgt1NNq30lbiqPpaILaQIba/KeMCPb2Kh+93a9bX
 mkKznB32vGuS1NzxjSEXZHRvajP3pE/xFjAmOeDDgtnomqT9nmt2BjXAu
 M/+LJQmsYvT3Z8zNCn5USoS/SASlaw3mZJXP5/fUNr1LO1XgSAhQVkLDK w==;
X-CSE-ConnectionGUID: IVftC9+KRM2Fva9gJWRebQ==
X-CSE-MsgGUID: mXZJ5r1FTiWMmK2zG3VuMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73674696"
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="73674696"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 20:16:41 -0800
X-CSE-ConnectionGUID: 0H0y8VtAQhS01A+6zq1YIA==
X-CSE-MsgGUID: EH3XJyLhSFCvfq4YIgAFPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="222705730"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 20:16:40 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/5] drm/i915/nvl: Add register definitions for common SDP
 Transmission Line
Date: Thu,  5 Mar 2026 09:31:14 +0530
Message-ID: <20260305040118.2576312-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
References: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 463FB20AB67
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
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

From: Arun R Murthy <arun.r.murthy@intel.com>

Add registers definitions for common SDP transmission line CMN_SDP_TL
and CMN_SDP_TL_STGR_CTL.

Bspec: 74384
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 49e2a9e3ee0e..5cfe4114b7dd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2124,6 +2124,25 @@
 							 _VLV_VIDEO_DIP_DATA_B, \
 							 _CHV_VIDEO_DIP_DATA_C)
 
+/* COMMON SDP TRANSMISSION LINE */
+#define _CMN_SDP_TL_A			0x6020c
+#define CMN_SDP_TL(display, trans)	_MMIO_TRANS2(display, (trans), _CMN_SDP_TL_A)
+#define  TRANSMISSION_LINE_ENABLE	REG_BIT(31)
+#define  BASE_TRANSMISSION_LINE_MASK	REG_GENMASK(12, 0)
+#define  BASE_TRANSMISSION_LINE(x)	REG_FIELD_PREP(BASE_TRANSMISSION_LINE_MASK, x)
+
+#define _CMN_SDP_TL_STGR_CTL_A			0x60214
+#define CMN_SDP_TL_STGR_CTL(display, trans)	_MMIO_TRANS2(display, (trans), _CMN_SDP_TL_STGR_CTL_A)
+#define  VSC_EXT_STAGGER_MASK			REG_GENMASK(11, 8)
+#define  VSC_EXT_STAGGER(x)			REG_FIELD_PREP(VSC_EXT_STAGGER_MASK, x)
+#define  VSC_EXT_STAGGER_DEFAULT		0x2
+#define  PPS_STAGGER_MASK			REG_GENMASK(7, 4)
+#define  PPS_STAGGER(x)				REG_FIELD_PREP(PPS_STAGGER_MASK, x)
+#define  PPS_STAGGER_DEFAULT			0x1
+#define  GMP_STAGGER_MASK			REG_GENMASK(3, 0)
+#define  GMP_STAGGER(x)				REG_FIELD_PREP(GMP_STAGGER_MASK, x)
+#define  GMP_STAGGER_DEFAULT			0x0
+
 #define _VLV_VIDEO_DIP_GDCP_PAYLOAD_A	0x60210
 #define _VLV_VIDEO_DIP_GDCP_PAYLOAD_B	0x61178
 #define _CHV_VIDEO_DIP_GDCP_PAYLOAD_C	0x611f8
-- 
2.45.2

