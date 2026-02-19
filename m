Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBjyFzsLl2kcuAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 14:08:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DD215EE69
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 14:08:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7483B10E6DC;
	Thu, 19 Feb 2026 13:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AM9p7HK8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B668E10E6D9;
 Thu, 19 Feb 2026 13:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771506485; x=1803042485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jU3YyP49OwClXLo88lyrTO1NdVA/8i6y5PTpBQd+Gkk=;
 b=AM9p7HK8grz1cdfjWSDvy8GxHb1McaGnmdWLSLgusttxiJuWDCVfa/qZ
 nP8VbUqncTERk39TwIEcHD2rI5cLy6hOEZc7Ht1Lqx6niyC1QGfgRUxq6
 Gi/tpqyEbBwtef75aBBc86RqUPBBWaHRoMOSoQHg7zOeZjBiA2sfUGvLS
 8uKE637cXrvx4z1pGyXFagdvWVKTxtEQYVmc9jq1an3sL9VSNAzmCK8j6
 OOZJucZwcL+/JLevc6EuR53ieul+nOCqr+N3E0yS6ADR4xNrcsV5Oh9nQ
 OqBL0Q1l6IzcPOmxNBbGK+bz/qxYaIrMmCs6kuhWhEbiybUuSRxWRaK4E w==;
X-CSE-ConnectionGUID: 2unAWu8LQGObt4ehZrYk7w==
X-CSE-MsgGUID: NmTEO7cOSfewMPHdrsrGXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72475510"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="72475510"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 05:08:05 -0800
X-CSE-ConnectionGUID: Y2xIEctATymsa5bre7CEfA==
X-CSE-MsgGUID: C7/xqK2QQ+iKhYxi5erzvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="212458570"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.120])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 05:08:04 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/5] drm/i915/psr: Add DSC_SU_PARAMETER_SET_0 registers for
 PSR configuration
Date: Thu, 19 Feb 2026 15:07:40 +0200
Message-ID: <20260219130743.1232188-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219130743.1232188-1-jouni.hogander@intel.com>
References: <20260219130743.1232188-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 32DD215EE69
X-Rspamd-Action: no action

Add DSC_SU_PARAMETER_SET_0_DSC0 and DSC_SU_PARAMETER_SET_0_DSC1 register
definitions for Selective Update Early Transport configuration.

Bspec: 71709
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 8afbf5a38335..3d1523dece8b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -266,6 +266,18 @@
 #define _PIPE_SRCSZ_ERLY_TPT_B	0x71074
 #define PIPE_SRCSZ_ERLY_TPT(pipe)	_MMIO_PIPE((pipe), _PIPE_SRCSZ_ERLY_TPT_A, _PIPE_SRCSZ_ERLY_TPT_B)
 
+#define _DSC_SU_PARAMETER_SET_0_DSC0_A		0x78064
+#define _DSC_SU_PARAMETER_SET_0_DSC0_B		0x78264
+#define DSC_SU_PARAMETER_SET_0_DSC0(pipe)	_MMIO_PIPE((pipe), _DSC_SU_PARAMETER_SET_0_DSC0_A, _DSC_SU_PARAMETER_SET_0_DSC0_B)
+#define   DSC_SU_PARAMETER_SET_0_SU_SLICE_ROW_PER_FRAME_MASK	REG_GENMASK(31, 20)
+#define   DSC_SU_PARAMETER_SET_0_SU_SLICE_ROW_PER_FRAME(rows)	REG_FIELD_PREP(DSC_SU_PARAMETER_SET_0_SU_SLICE_ROW_PER_FRAME_MASK, (rows))
+#define   DSC_SU_PARAMETER_SET_0_SU_PIC_HEIGHT_MASK		REG_GENMASK(15, 0)
+#define   DSC_SU_PARAMETER_SET_0_SU_PIC_HEIGHT(h)		REG_FIELD_PREP(DSC_SU_PARAMETER_SET_0_SU_PIC_HEIGHT_MASK, (h))
+
+#define _DSC_SU_PARAMETER_SET_0_DSC1_A		0x78164
+#define _DSC_SU_PARAMETER_SET_0_DSC1_B		0x78364
+#define DSC_SU_PARAMETER_SET_0_DSC1(pipe)	_MMIO_PIPE((pipe), _DSC_SU_PARAMETER_SET_0_DSC1_A, _DSC_SU_PARAMETER_SET_0_DSC1_B)
+
 #define _PR_ALPM_CTL_A	0x60948
 #define PR_ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _PR_ALPM_CTL_A)
 #define  PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU	BIT(6)
-- 
2.43.0

