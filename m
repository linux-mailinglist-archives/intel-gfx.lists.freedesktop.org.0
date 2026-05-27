Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wD4lE2k/F2qg9wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:00:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 184705E9529
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E9810E952;
	Wed, 27 May 2026 19:00:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zn/hrDi3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6144E10E94D;
 Wed, 27 May 2026 19:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779908452; x=1811444452;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YxUib487iN2L7i3Tt9qrM+TtqHSveW2snRpSRXqNrNM=;
 b=Zn/hrDi3XcX5abptcCeMJkfD69Qg9Kv9/9WedJAMibBUsVXh6KzXZTi0
 PzHelLce/3/Wa2ZeLbOtdzjdM+UNLqlwo2y8tSAzW0aTpHS4h5j7rCNKA
 a9KTjxmqWEdPdSuKn9vLogymUVSlUU+UcRb/psjJBLo9gkEED7iZYsxX6
 0bh9nnVoyt6RmMC/cIx/apZMhZrtIAJ2ASUK1iyHpEJg2+1CLfJcNxzof
 JC66SamHUnXHa24huJqBCoS6ZP0UCHIC8C5ProxWpHFKPCppIvOG3zdHH
 r74SeQDnlJjcTaR/PpOe6Aa0C4Z7n2Iu+sBXRYV8/R3nxIPZvoin8+cnc w==;
X-CSE-ConnectionGUID: 6kOtSA4yR3agwTkZg60F+Q==
X-CSE-MsgGUID: RmDHTkHsRr+CJvzoeVHEPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80602157"
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="80602157"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 12:00:52 -0700
X-CSE-ConnectionGUID: VDXnKfQJTVOLcT4EuWhgjQ==
X-CSE-MsgGUID: y7KjddD6Qg6Cn6EnNJMA7w==
X-ExtLoop1: 1
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 12:00:51 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI 16/17] drm/i915/display: Add RO bit masking gen9_write_dc_state()
Date: Thu, 28 May 2026 00:30:03 +0530
Message-ID: <20260527190004.118730-17-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260527190004.118730-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260527190004.118730-1-dibin.moolakadan.subrahmanian@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 184705E9529
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

BIT 10 and BIT 11 is defined as RO bits
set by HW , so mask these bits to avoid while writing and reading
DC_STATE_EN to avaoid unnessory re writes.

BSpec: 69115
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power_well.c | 13 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_display_regs.h   |  3 +++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 0e7e6a2b1547..bba80e5e8b6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -732,6 +732,17 @@ static void gen9_write_dc_state(struct intel_display *display,
 	int rewrites = 0;
 	int rereads = 0;
 	u32 v;
+	u32 ro_mask = 0;
+
+	/*
+	 * mask the RO bits from state and read back to avoid
+	 * unnecessary rewrites.
+	 * FIXME: Implement RO mask for remaining display versions.
+	 */
+	if (DISPLAY_VER(display) >= 35)
+		ro_mask = DC_STATE_EN_RO_MASK;
+
+	state = (state & ~ro_mask);
 
 	intel_de_write(display, DC_STATE_EN, state);
 
@@ -741,7 +752,7 @@ static void gen9_write_dc_state(struct intel_display *display,
 	 * we are confident that state is exactly what we want.
 	 */
 	do  {
-		v = intel_de_read(display, DC_STATE_EN);
+		v = intel_de_read(display, DC_STATE_EN) & ~ro_mask;
 
 		if (v != state) {
 			intel_de_write(display, DC_STATE_EN, state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index d9efe5b0ba46..e58e53f1e2f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3086,6 +3086,9 @@ enum skl_power_gate {
 #define  DC_STATE_EN_UPTO_DC6		REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 2)
 #define  DC_STATE_EN_UPTO_DC3CO	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 3)
 
+/* Display ver 35+ */
+#define  DC_STATE_EN_RO_MASK           REG_GENMASK(11, 10)
+
 #define  DC_STATE_DEBUG                  _MMIO(0x45520)
 #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
 #define  DC_STATE_DEBUG_MASK_MEMORY_UP	(1 << 1)
-- 
2.43.0

