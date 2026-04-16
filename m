Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wL5WKsBQ4GkhewAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB38409CF6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 05:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0672A10E7C6;
	Thu, 16 Apr 2026 03:00:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RrZKzBjy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0960110E7DB;
 Thu, 16 Apr 2026 03:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776308413; x=1807844413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7LyB1E7yS+8fKyRQZUDHJkmePYa5Y5tiwX4BhAPiJsM=;
 b=RrZKzBjyNVNYGg1oXl5Qg7OcghE3Rzhexg4RIU9LQClqvWoeCoSHCNMr
 e8l2wWwgAOY2VNBIAIhaex3u4/Dx1qHTmeq7lHBrVGAmlTCaTeLgeN2vP
 Wp/Kf+XB2XK6NwCCuC9cny02+5gsG3ebc+73RFTj3VTG5nRa/DoTQMOn5
 +XADfB8Ju0GQSgpZij+jFUDOGrojn23BvRysZ1SlgeFfEbqp2M03ttiq0
 g0BEkvDzZzSmgItQcMSVlN6w20itYrgrKzM9mP3JQ0CkdTYF72nyVPs1m
 nzBtRYxeVRQPjNHnHnnfgIdUBngKtTSWT7zK/+y1Y5RGCBZBSWw0nb2/l Q==;
X-CSE-ConnectionGUID: FcmzTNQfSo6nzsOgUr7EBw==
X-CSE-MsgGUID: UPV8Rx7UTcypIOTN0ir6jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="76997560"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="76997560"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:12 -0700
X-CSE-ConnectionGUID: 9NlOB6NPSkm0L8V59eHahw==
X-CSE-MsgGUID: zhDwVW0JT4qzc7A+2tx9oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229755191"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 20:00:11 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 08/12] drm/i915/display: Add HAS_COMMON_SDP_TL macro
Date: Thu, 16 Apr 2026 08:14:58 +0530
Message-ID: <20260416024504.1925195-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
References: <20260416024504.1925195-1-ankit.k.nautiyal@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:server fail];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 7CB38409CF6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a helper macro to detect CMN SDP TL support on platforms with display
version 35 and above.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dip.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dip.h b/drivers/gpu/drm/i915/display/intel_dip.h
index 600dabbf7372..e9959356226e 100644
--- a/drivers/gpu/drm/i915/display/intel_dip.h
+++ b/drivers/gpu/drm/i915/display/intel_dip.h
@@ -32,6 +32,16 @@ struct intel_crtc_state;
 #define HAS_EMP_AS_SDP_TL(__display)	(DISPLAY_VERx100(__display) == 1401 || \
 					 DISPLAY_VER(__display) >= 20)
 
+/*
+ * CMN SDP TL: Common Secondary Data Packet Transmission Line.
+ *
+ * Xe3p_lpd introduces new register CMN_SDP_TL to program a common SDP
+ * Transmission line that will be used by the Hardware to position the
+ * SDPs. Along with this, another new register CMN_SDP_TL_STGR_CTL is
+ * also added to stagger the different SDPs.
+ */
+#define HAS_COMMON_SDP_TL(__display)      (DISPLAY_VER(__display) >= 35)
+
 u16 intel_dip_read_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state);
 void intel_dip_write_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state);
 
-- 
2.45.2

