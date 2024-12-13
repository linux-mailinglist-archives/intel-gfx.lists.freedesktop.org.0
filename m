Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CDD9F09D4
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0876510EFB1;
	Fri, 13 Dec 2024 10:41:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HpHFaZkU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BFD410EFB3;
 Fri, 13 Dec 2024 10:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086458; x=1765622458;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ncRVjsg7YvJUgdKJmn4+DMT0HCynJ9T4twyUwsoe9J4=;
 b=HpHFaZkUDGTKVMIf82e+BDbST3Xnnt9mcqD7qmM2cvaghDSLxOJ2ckIo
 W4tyjQpaqVc0pP5ewftxDz4w9Nov29hQFn2hSs8iyi66uPyv27/rEfuNs
 fm2LXszkfcgqcdJp/0+EbDUQcy0tuF+Lfw0Xol3HujHICH8iLMggP5lE4
 Lx15UCnRopwkRwIKTJUuaddQSrPg3mkrluSEwlSkGt3iYRjiMAmtUKxwz
 FP0YJrv7781MSZU91eFCvDRzPD8T/QWmMpTUqCCXunzoi6bcQOMIpQ0DK
 HsRJ0LPBXHN/xSbkpyRSLYUOYeL1nGROnAYgzGB2fixLJhpMSYw5vkqlk w==;
X-CSE-ConnectionGUID: PLiB32odTk+vujelqh8ORQ==
X-CSE-MsgGUID: +kmYubkJSvqCsiZOPgIIpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34671037"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34671037"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:58 -0800
X-CSE-ConnectionGUID: 5lLW2/RZQ/6omcA29wSP6Q==
X-CSE-MsgGUID: BCyxzv5/QtSoax89h0Y6Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97287456"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 09/13] drm/i915/ddi: write payload for 128b/132b SST
Date: Fri, 13 Dec 2024 12:39:53 +0200
Message-Id: <2d8727326705f7ba3170475b5471c26e09468f1b.1734085515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734085515.git.jani.nikula@intel.com>
References: <cover.1734085515.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Write the payload allocation table for 128b/132b SST. Use VCPID 1 and
start from slot 0, with dp_m_n.tu slots.

This is preparation for enabling 128b/132b SST. This path is not
reachable yet. Indeed, we don't yet compute TU for 128b/132b SST.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index eebeebef42ed..ebe098ef396a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2671,6 +2671,12 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 6.o Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
 
+	/* 7.a 128b/132b SST. */
+	if (!is_mst && intel_dp_is_uhbr(crtc_state)) {
+		/* VCPID 1, start slot 0 for 128b/132b, tu slots */
+		drm_dp_dpcd_write_payload(&intel_dp->aux, 1, 0, crtc_state->dp_m_n.tu);
+	}
+
 	if (!is_mst)
 		intel_dsc_dp_pps_write(encoder, crtc_state);
 }
@@ -2810,6 +2816,11 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 7.l Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
 
+	if (!is_mst && intel_dp_is_uhbr(crtc_state)) {
+		/* VCPID 1, start slot 0 for 128b/132b, tu slots */
+		drm_dp_dpcd_write_payload(&intel_dp->aux, 1, 0, crtc_state->dp_m_n.tu);
+	}
+
 	if (!is_mst)
 		intel_dsc_dp_pps_write(encoder, crtc_state);
 }
-- 
2.39.5

