Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKRvHkN0smlbMwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:07:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 111C626EA18
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:07:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90CBA10E9C5;
	Thu, 12 Mar 2026 08:07:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i3b9Lzj/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7129C10E9A6;
 Thu, 12 Mar 2026 08:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773302842; x=1804838842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SIe0OETCeDSTc8nhNAToUpUCcbKI9At7hE2Zh06ps0Y=;
 b=i3b9Lzj/wcPNfQdhCjJ6RKwOkn9xYdEkY4bfIQ5FdGzBcqL5B1nZde3g
 uBuiHHhPztaDOKJ470mrNjgyASVC2LXPBCZrdvR8Po81L0IUibQlz9T7c
 20SZZ1UWKblePdXN3rXsLWJG155BE1AT8QW5m1VuYa2E1LIxPtbevpmb/
 T9PkFuzO4zNibYZWnaILEfcKuMSCveCZ/txxZXX4XduJCOaxuz/QlqR6K
 +isa4jvCYBLnURJUIbGpXBXmyZKzG3gNpQdSCLlfzdPTrvSHfKNzwmvJT
 YQmtxkOlfIOoyCl7bo11Vs3uLkPkvL0pXENKfWP39158t/V3Kf9KDPn2n w==;
X-CSE-ConnectionGUID: Vw/Qvv2bQbuZfEzyl5J/6w==
X-CSE-MsgGUID: OvPwE/g5S1a/K0ORPEBW3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85013740"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="85013740"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:07:22 -0700
X-CSE-ConnectionGUID: gQbZtV4vQtOSnIULya5olg==
X-CSE-MsgGUID: 9IVEo5w9Q4yC1NPs30shiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="223206890"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa004.fm.intel.com with ESMTP; 12 Mar 2026 01:07:21 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI v3 18/24] drm/i915/lt_phy: Dump lane count for HW state
Date: Thu, 12 Mar 2026 08:06:51 +0000
Message-ID: <20260312080657.2648265-19-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260312080657.2648265-1-mika.kahola@intel.com>
References: <20260312080657.2648265-1-mika.kahola@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 111C626EA18
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

To increase debuggability add lane count as part of HW state dump.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index dfcff3d6ad33..62719082efda 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2170,8 +2170,8 @@ void intel_lt_phy_dump_hw_state(struct drm_printer *p,
 {
 	int i, j;
 
-	drm_printf(p, "lt_phy_pll_hw_state: ssc enabled: %d, tbt mode: %d\n",
-		   hw_state->ssc_enabled, hw_state->tbt_mode);
+	drm_printf(p, "lt_phy_pll_hw_state: lane count: %d, ssc enabled: %d, tbt mode: %d\n",
+		   hw_state->lane_count, hw_state->ssc_enabled, hw_state->tbt_mode);
 
 	for (i = 0; i < 3; i++) {
 		drm_printf(p, "config[%d] = 0x%.4x,\n",
-- 
2.43.0

