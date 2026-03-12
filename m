Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKyOJMq+smmvPAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 14:25:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66482272760
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 14:25:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7ED510E9EC;
	Thu, 12 Mar 2026 13:25:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yv4OEN3H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2121810E9EB;
 Thu, 12 Mar 2026 13:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773321927; x=1804857927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vgE7Qc2MF6JmssB/Pt5Hj68iQH5CC1RjdrS8QHzp//E=;
 b=Yv4OEN3Hf20E5idcuv+AHqWwLVc8GHXjkATiaKJahjpMtcY6K1wpzDTS
 5O3kjEkkZ0G4fibkPU91dpymrqcOADARQYGQr8W69MqsGAMJJ+GwoIPOE
 XxenKqlnetstESFZ6M7SptYx1fCuv0UqD/bys7tOti7tFYUiYColDVCos
 L3InoWdhc7VzEorHriMGSo3YzYEgNlMmcpu2ea6YbbNpKPBwt3o4qDogt
 E43cnkARUFsQJ6dOe3ulYzOoiqcuKQATL7G7eKhdV9iUKhis6/pOzBcDZ
 iclYzi47AjlMyiDIte3cpXn6WFt+0g7KMx/HjehHPxUr2vo+MojoNL0uS w==;
X-CSE-ConnectionGUID: YyeM/8FKQamqWqWDrglfSQ==
X-CSE-MsgGUID: BH8pwx/rQrKb4TQUCeKA0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74524923"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="74524923"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 06:25:27 -0700
X-CSE-ConnectionGUID: aZI6F1W+RCa+bbrf6Neqiw==
X-CSE-MsgGUID: +IsywUTxThqQlwH7bKABdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="225794535"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 06:25:24 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 swati2.sharma@intel.com, suraj.kandpal@intel.com
Subject: [PATCH v3 1/2] drm/i915/dmc: Remove invalid PIPEDMC interrupt bits
Date: Thu, 12 Mar 2026 18:56:53 +0530
Message-ID: <20260312132654.2614433-2-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260312132654.2614433-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260312132654.2614433-1-dibin.moolakadan.subrahmanian@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 66482272760
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On display version 35+ PIPEDMC_ATS_FAULT and
PIPEDMC_GTT_FAULT interrupt bits are no longer defined.

Update the interrupt mask to drop these.

Bspec: 70296

Changes in v2:
- Move PIPEDMC_ERROR interrupt enable to a separate patch (Ville Syrjala)
Changes in v3:
- Add Bspec reference (Suraj Kandpal)

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index c3b411259a0c..38b284a0db82 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -509,6 +509,9 @@ static void pipedmc_clock_gating_wa(struct intel_display *display, bool enable)
 
 static u32 pipedmc_interrupt_mask(struct intel_display *display)
 {
+	if (DISPLAY_VER(display) >= 35)
+		return PIPEDMC_FLIPQ_PROG_DONE;
+
 	/*
 	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
 	 * triggering it during the first DC state transition. Figure
-- 
2.43.0

