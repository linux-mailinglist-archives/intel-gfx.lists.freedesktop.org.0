Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E962AAC8F1
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 16:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3478010E6FD;
	Tue,  6 May 2025 14:57:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jryq/Tly";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33D1E10E6F1;
 Tue,  6 May 2025 14:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746543467; x=1778079467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ATYYo2iSshhG1GZKqHUAkj3VfsMh5KkDRQApEo3kDHw=;
 b=Jryq/Tlytou2FCzVvgtcQharJcIo9SP4CCsBH31+Neopojj+40NZ3HwF
 L7DDMzQTiw8r0EtvwqvIUrtrhd4iLnZSCiSPqASQ+YqLys6QbgJXMNSTB
 ZKrSWagfBZVFrAlgeIhhd9x9QcKyPk58rJnKcbk/11JDUBGSLQMuKxOwM
 qyeSvLz801TfX2tL3gljLZxuGc/8ofhB5ai1Rob1gGjcO8ylSSc1oEwYf
 RnAIt4TFi3UPBeYpl94R7mbl2epT94Ph1CiKpxNBaJWqJUekXjBfENwnr
 PqziHVzXVuERcj1bDhylUlHE+EmPrUSNO74b64Uv5lOMlg8LNyDmIDzhd Q==;
X-CSE-ConnectionGUID: NTvyqVyPQyiZgZqR42DBlQ==
X-CSE-MsgGUID: QyxTuAp7RSCcyU9UjpSonQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59206170"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59206170"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:57:47 -0700
X-CSE-ConnectionGUID: IX0rQ8pkS1G+kxjaoLfqJQ==
X-CSE-MsgGUID: Ogb4jOPBRpKm+xOHDeRKVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="166572260"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2025 07:57:45 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v4 17/17] drm/i915/vrr: Enable DC Balance bit
Date: Tue,  6 May 2025 20:25:17 +0530
Message-ID: <20250506145517.4129419-18-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
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

Enable DC Balance from vrr compute config and also add
enable/disable frame counters for DC Balance odd and even
frame count calculation.

--v2:
Update commit message

--v3:
- Driver should not control adjustment enable bit, as that
is already being controlled by firmware. Release bit from
driver computation.
- Commit message update.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index a88cc9258542..282c49fa5b78 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -277,6 +277,9 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->vrr.enable = true;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+
+	if (intel_vrr_dc_balance_possible(crtc_state))
+		crtc_state->vrr.dc_balance.enable = true;
 }
 
 /*
@@ -662,8 +665,11 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
 
-	if (crtc_state->vrr.dc_balance.enable)
+	if (crtc_state->vrr.dc_balance.enable) {
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder),
+			       ADAPTIVE_SYNC_COUNTER_EN);
 		intel_pipedmc_dcb_enable(NULL, crtc);
+	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
@@ -676,8 +682,10 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.enable)
 		return;
 
-	if (old_crtc_state->vrr.dc_balance.enable)
+	if (old_crtc_state->vrr.dc_balance.enable) {
 		intel_pipedmc_dcb_disable(NULL, crtc);
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder), 0);
+	}
 
 	ctl = trans_vrr_ctl(old_crtc_state);
 	if (intel_vrr_always_use_vrr_tg(display))
-- 
2.48.1

