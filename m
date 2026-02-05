Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 3E+EGnoqhWnG9QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 00:40:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0184CF8671
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 00:40:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E38910E1FC;
	Thu,  5 Feb 2026 23:40:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SXUbRV4t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D41610E178;
 Thu,  5 Feb 2026 23:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770334832; x=1801870832;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=7pg9fAGanCBShJMn+CkwS6UigMm3E6NzIE3k12K2ztY=;
 b=SXUbRV4t24pepZtSPLtukWQeCKvNhAmII/FNbPJEyJlyqJLTZ9cUxJ+s
 AgfjHhRWT/lP7ldNMB9VFfc+irf9QVTEUd00vUJxJ21OorBBmelNzWkNo
 +M0tHdyYkGMAjrBGpZ7NQM2JfE7ig3sXViW0McJJq2yP5dQ4hSDmjOGEQ
 WhUsSnHY7MvlBwgQEzcjt/tbcepgdUxKaDmjw8hU6VWq8mKbJdNQxFagw
 vTiswUhYXo6zd2OcrC2VHu7m5fE9sc/jfAED5xX9aQZGgGbaQ01qjXGgB
 xktX/mLQoelUUMKbyPEBziyt2bYdinxYIuRosDf4bzkvOgncHQx+3yCRp Q==;
X-CSE-ConnectionGUID: BnFTznRqQ76NrX74EtugwA==
X-CSE-MsgGUID: a3MT0J1aSgSwY/MqK3Uy3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="82658683"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="82658683"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 15:40:32 -0800
X-CSE-ConnectionGUID: tKkU90OmS86/GbJ1HY2dHA==
X-CSE-MsgGUID: IJED9P+jQ+eoKILrxbx1qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="210500127"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.82])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 15:40:20 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Thu, 05 Feb 2026 20:39:33 -0300
Subject: [PATCH v2 05/15] drm/xe/xe3p_lpg: Add MCR steering
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260205-nvl-p-upstreaming-v2-5-9ec14f00cc6c@intel.com>
References: <20260205-nvl-p-upstreaming-v2-0-9ec14f00cc6c@intel.com>
In-Reply-To: <20260205-nvl-p-upstreaming-v2-0-9ec14f00cc6c@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>
X-Mailer: b4 0.15-dev
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 0184CF8671
X-Rspamd-Action: no action

From: Matt Roper <matthew.d.roper@intel.com>

Xe3p_LPG has nearly identical steering to Xe2 and Xe3.  The only
DSS/XeCore change from those IPs is an additional range from
0xDE00-0xDE7F that was previously reserved, so we can simply grow one of
the existing ranges in the Xe2 table to include it.  Similarly, the
"instance0" table is also almost identical, but gains one additional
PSMI range and requires a separate table.

Bspec: 75242
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/xe_gt_mcr.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_gt_mcr.c b/drivers/gpu/drm/xe/xe_gt_mcr.c
index 7c1fe9ac120d..b112e551fc79 100644
--- a/drivers/gpu/drm/xe/xe_gt_mcr.c
+++ b/drivers/gpu/drm/xe/xe_gt_mcr.c
@@ -201,7 +201,7 @@ static const struct xe_mmio_range xe2lpg_dss_steering_table[] = {
 	{ 0x009680, 0x0096FF },         /* DSS */
 	{ 0x00D800, 0x00D87F },         /* SLICE */
 	{ 0x00DC00, 0x00DCFF },         /* SLICE */
-	{ 0x00DE80, 0x00E8FF },         /* DSS (0xE000-0xE0FF reserved) */
+	{ 0x00DE00, 0x00E8FF },         /* DSS (0xE000-0xE0FF reserved) */
 	{ 0x00E980, 0x00E9FF },         /* SLICE */
 	{ 0x013000, 0x0133FF },         /* DSS (0x13000-0x131FF), SLICE (0x13200-0x133FF) */
 	{},
@@ -280,6 +280,19 @@ static const struct xe_mmio_range xe3p_xpc_instance0_steering_table[] = {
 	{},
 };
 
+static const struct xe_mmio_range xe3p_lpg_instance0_steering_table[] = {
+	{ 0x004000, 0x004AFF },         /* GAM, rsvd, GAMWKR */
+	{ 0x008700, 0x00887F },         /* NODE */
+	{ 0x00B000, 0x00B3FF },         /* NODE, L3BANK */
+	{ 0x00B500, 0x00B6FF },		/* PSMI */
+	{ 0x00C800, 0x00CFFF },         /* GAM */
+	{ 0x00D880, 0x00D8FF },         /* NODE */
+	{ 0x00DD00, 0x00DDFF },         /* MEMPIPE */
+	{ 0x00F000, 0x00FFFF },         /* GAM, GAMWKR */
+	{ 0x013400, 0x0135FF },         /* MEMPIPE */
+	{},
+};
+
 static void init_steering_l3bank(struct xe_gt *gt)
 {
 	struct xe_device *xe = gt_to_xe(gt);
@@ -533,6 +546,9 @@ void xe_gt_mcr_init_early(struct xe_gt *gt)
 			gt->steering[INSTANCE0].ranges = xe3p_xpc_instance0_steering_table;
 			gt->steering[L3BANK].ranges = xelpg_l3bank_steering_table;
 			gt->steering[NODE].ranges = xe3p_xpc_node_steering_table;
+		} else if (GRAPHICS_VERx100(xe) >= 3510) {
+			gt->steering[DSS].ranges = xe2lpg_dss_steering_table;
+			gt->steering[INSTANCE0].ranges = xe3p_lpg_instance0_steering_table;
 		} else if (GRAPHICS_VER(xe) >= 20) {
 			gt->steering[DSS].ranges = xe2lpg_dss_steering_table;
 			gt->steering[SQIDI_PSMI].ranges = xe2lpg_sqidi_psmi_steering_table;

-- 
2.52.0

