Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KCSFUzq1Wk//QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7BD3B7493
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C45010E43C;
	Wed,  8 Apr 2026 05:40:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I7uvryBA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C8B10E523;
 Wed,  8 Apr 2026 05:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775626821; x=1807162821;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QSk+sTAcvgfyvAt81KTLgH7xE+oYi8c7XWaJxEiV+TY=;
 b=I7uvryBAHGN17mojREHWiqzjxtYD2TcrFHn1qBIUcS7/K5xCEaYF+Qrr
 +GztMOI5IoRHI0nqIfjUOk5taSDZDSWhBD9AEXf8QdB0BxAHb5LBA/OZ0
 g1PlVHpn6UQ8TqvIpeGsx/URheK+6aEBZI7CGaJz1gh9shTpu+xyufWns
 dzhGg6xFTtet5IAaLrawGt1cnFLHCibpqoXNYDp6w1edfANoKLS2xzpuQ
 c+R1EGhB5cD5Pfjs/h/wm3dGltGJgjFM6iZ+4+bPctwXL2Oa/Fdm1wuQl
 U3CKPSHrFDFxSTzns0V14K3dXbs8si5uudOK3SfFiUoUzLuDlkLBYOgrk A==;
X-CSE-ConnectionGUID: 6U2N25Y1Sv6OrH2UlerzGw==
X-CSE-MsgGUID: dihnXmqeSyGNDX/hv6/2MA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80194895"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80194895"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 22:40:21 -0700
X-CSE-ConnectionGUID: tT7sBqtaRM6Egb5EElTcDA==
X-CSE-MsgGUID: mifCWUJ8So2xXoQoXqY12A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="251518003"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa002.fm.intel.com with ESMTP; 07 Apr 2026 22:40:16 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: harry.wentland@amd.com, louis.chauvet@bootlin.com, mwen@igalia.com,
 contact@emersion.fr, alex.hung@amd.com, daniels@collabora.com,
 uma.shankar@intel.com, maarten.lankhorst@intel.com,
 pekka.paalanen@collabora.com, pranay.samala@intel.com,
 swati2.sharma@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 05/13] drm/i915/color: Fix HDR pre-CSC LUT programming loop
Date: Wed,  8 Apr 2026 10:45:06 +0530
Message-Id: <20260408051514.608781-6-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
References: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
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
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0D7BD3B7493
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Pranay Samala <pranay.samala@intel.com>

The integer lut programming loop never executes completely due to
incorrect condition (i++ > 130).

Fix to properly program 129th+ entries for values > 1.0.

Cc: <stable@vger.kernel.org> #v6.19
Fixes: 82caa1c8813f ("drm/i915/color: Program Pre-CSC registers")
Signed-off-by: Pranay Samala <pranay.samala@intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index e7950655434b..6d1cffc6d2be 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3976,7 +3976,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 				intel_de_write_dsb(display, dsb,
 						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
 						   (1 << 24));
-			} while (i++ > 130);
+			} while (i++ < 130);
 		} else {
 			for (i = 0; i < lut_size; i++) {
 				u32 v = (i * ((1 << 24) - 1)) / (lut_size - 1);
-- 
2.25.1

