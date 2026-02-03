Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id l7BwLn94gmlFVQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 23:36:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5D3DF4D5
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 23:36:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3502D10E5DC;
	Tue,  3 Feb 2026 22:36:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZUgeHDxo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D4910E5DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Feb 2026 22:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770158204; x=1801694204;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=z4sZtTKwb0594IoxqRK06UUjLyvGa05zima4Wh8hcVY=;
 b=ZUgeHDxoDsoX6zZKKSjrqN4/qWNurTRB7iXm4DuGdM4wQbnsC417YpWC
 h1D5us4+89M6b3d7BztgpIoD4RmcAuRfpwd7myMMAI+w1l4c/bSybwx65
 g3myJspBUT08L7fYxujKtlctFAbNJ2RY57l0/8hyil/xdbH/R4QZDCTox
 8dRvGg9PxxvfMDJaI9wq5Gxtl1UQR9apyHAtMas+g6aeFaRlHJMYONFf3
 QBJTSyP9Lx4cmArD85JvcYIrrMW3oCUFQbWtOpwmU9ucQwJa4Q9iMy4v6
 47J0lXGCQUKeaQgscq9NqFnvkcgDYTXnvo3+7AgVpchTuDyIPNWjwl8PU A==;
X-CSE-ConnectionGUID: vHEWApF0QASPwt8qQKc0ow==
X-CSE-MsgGUID: UNE6qXg/QPaOreM2xWF7gA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="73941369"
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="73941369"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 14:36:43 -0800
X-CSE-ConnectionGUID: vJVVeXy5S1e0mnE+5LmHBw==
X-CSE-MsgGUID: KycwUdvPSnW/riV+eKV1qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="209265226"
Received: from dut4086lnl.fm.intel.com ([10.105.10.169])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 14:36:43 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 jani.nikula@intel.com
Subject: [PATCH] drm/i915/gvt: No need for extra op check
Date: Tue,  3 Feb 2026 22:36:43 +0000
Message-ID: <20260203223642.7052-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Rspamd-Server: lfdr
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 3A5D3DF4D5
X-Rspamd-Action: no action

Static analysis issue:

In intel_gvt_i2c_handle_aux_ch_write, we check if op & 0x1 == 0.  If it
does not equal zero, then it must equal one, so checking op & 0x1 == 1
in the case it does not equal zero is unnecessary.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/edid.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
index 021afff1cd5d..5ac7636d6c07 100644
--- a/drivers/gpu/drm/i915/gvt/edid.c
+++ b/drivers/gpu/drm/i915/gvt/edid.c
@@ -543,8 +543,6 @@ void intel_gvt_i2c_handle_aux_ch_write(struct intel_vgpu *vgpu,
 		 * support the gfx driver to do EDID access.
 		 */
 	} else {
-		if (drm_WARN_ON(&i915->drm, (op & 0x1) != DP_AUX_I2C_READ))
-			return;
 		if (drm_WARN_ON(&i915->drm, msg_length != 4))
 			return;
 		if (i2c_edid->edid_available && i2c_edid->target_selected) {
-- 
2.43.0

