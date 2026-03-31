Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBQXHuqyy2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B538368F21
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4BC810EAC2;
	Tue, 31 Mar 2026 11:41:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JuL8uE2p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1789110EA52;
 Tue, 31 Mar 2026 11:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957280; x=1806493280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IoXl7HRXK6/VhlS+9dOFyXodk8ehJ4U8iNt8Soix3o0=;
 b=JuL8uE2pR9SvBRoCqW/yz901y7697IUV9lfR3/yQKpQkMeijP5Dk08HE
 Kt5hkp/UpT2QTfQPGeip3BNFQKfyE5Ow6Wteo0aggDiqXtiWwHlTW+ioU
 +Jt/3pzSoZ0JrX4e+Rr5jBFg3HdkG0QBkFDXIjqPoixUKsYD9D5M7urXi
 NmVJLO32KP3GBO+vzIyZCYiANw1HOSvDwu7DTZ8O7RdWlxl0otT0Aqai2
 u9WWO3788kyX4PxgtGi9Cp22U364+IfuzfeV6KdOP7qSpcSvv5jl/b/+Z
 Ozc2k2LGmbtguX4ETmcvLZMlB9a01QffYR6zMUtLAEeIiL1UfNvJ28aJe A==;
X-CSE-ConnectionGUID: PfS+TdjiTzy+I1rMTCFGVQ==
X-CSE-MsgGUID: X57OewEPTcerFfS63A27AA==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75854125"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75854125"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:19 -0700
X-CSE-ConnectionGUID: EJpvEuvHR1et5Uo+LxIVGA==
X-CSE-MsgGUID: JamHQK0uQTS1RB28eSS06A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="231167664"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915/dram: prefer display abstractions for VLV
 sideband
Date: Tue, 31 Mar 2026 14:40:56 +0300
Message-ID: <c971f1a1eccceeb5599ccea5909443afe24b20d3.1774957233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1774957233.git.jani.nikula@intel.com>
References: <cover.1774957233.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 4B538368F21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Use the display wrappers for VLV sideband in dram code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dram.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
index bd281d4b4c05..1686f808a084 100644
--- a/drivers/gpu/drm/i915/display/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -16,7 +16,7 @@
 #include "intel_mchbar_regs.h"
 #include "intel_parent.h"
 #include "intel_uncore.h"
-#include "vlv_iosf_sb.h"
+#include "vlv_sideband.h"
 
 struct dram_dimm_info {
 	u16 size;
@@ -109,9 +109,9 @@ static unsigned int chv_mem_freq(struct intel_display *display)
 {
 	u32 val;
 
-	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCK));
-	val = vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_CCK, CCK_FUSE_REG);
-	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_CCK));
+	vlv_cck_get(display);
+	val = vlv_cck_read(display, CCK_FUSE_REG);
+	vlv_cck_put(display);
 
 	switch ((val >> 2) & 0x7) {
 	case 3:
@@ -125,9 +125,9 @@ static unsigned int vlv_mem_freq(struct intel_display *display)
 {
 	u32 val;
 
-	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_PUNIT));
-	val = vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
-	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_PUNIT));
+	vlv_punit_get(display);
+	val = vlv_punit_read(display, PUNIT_REG_GPU_FREQ_STS);
+	vlv_punit_put(display);
 
 	switch ((val >> 6) & 3) {
 	case 0:
-- 
2.47.3

