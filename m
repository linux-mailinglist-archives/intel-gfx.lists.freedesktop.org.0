Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBY6E0b2uGk5mQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 07:35:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0680E2A455C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 07:35:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E3EC10E2DE;
	Tue, 17 Mar 2026 06:35:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YFvlspJA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF38A10E0FC;
 Tue, 17 Mar 2026 06:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773729346; x=1805265346;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fzADxuSY2uvEVnSbsaLxp4ufYdT3bVsgqRQTHi4M7SM=;
 b=YFvlspJAC7X3zaLvwai+PEA3xdZGujj64by05X0ok6TerKAQEcJgLxv+
 j0vWsaSdOWoJFbRFGR9M9JUGswlD/1e2elI4y7/AKJQhTeGmbIs8vO0Wz
 320lyGSqcjkrVJMoSJe360iSShUM3WQ7INOk5oIPqeh2BxTKFzXmXKzu8
 4lLJEDLfr4INcEGE2OnlWhSZ9dZIKXsaoJDHDSi+Ujlnpjs48ydshetPm
 Eb5jHRYkVOU/CrNeLI3cNf+YU7ny6beUJ0ILrmfgfnJUn4hs44t/5hKaK
 qgelrE3qCleSRIPaxPPgNZfT//Kf89bgfeb2Lif+3XRrsHrNlRuH0L/08 w==;
X-CSE-ConnectionGUID: PE5nKf00RX6iFlfT7ILAKQ==
X-CSE-MsgGUID: 4a8s7QeYS2iST1J9upa7PQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="85834459"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="85834459"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 23:35:46 -0700
X-CSE-ConnectionGUID: oiVfMyLBSoaIk0hLtfahNA==
X-CSE-MsgGUID: p6AbBbEfRw21gV51Fq83Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="222105315"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 23:35:44 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v4 1/2] drm/i915/dmc: Remove invalid PIPEDMC interrupt bits
Date: Tue, 17 Mar 2026 12:07:12 +0530
Message-ID: <20260317063713.3288576-2-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317063713.3288576-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260317063713.3288576-1-dibin.moolakadan.subrahmanian@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 0680E2A455C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On display version 35+ PIPEDMC_ATS_FAULT and
PIPEDMC_GTT_FAULT interrupt bits are no longer defined.

Update the interrupt mask to drop these.

Changes in v2:
- Move PIPEDMC_ERROR interrupt enable to a separate patch (Ville Syrjala)
Changes in v3:
- Add Bspec reference (Suraj Kandpal)
Changes in v4:
- Move bspec position in commit message(Suraj Kandpal)

Bspec: 70296
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

