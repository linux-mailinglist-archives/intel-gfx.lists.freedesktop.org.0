Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEQFLSk4n2m5ZQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:58:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD2B19BE01
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 664D610E81A;
	Wed, 25 Feb 2026 17:57:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D8+18FZS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2539710E81D;
 Wed, 25 Feb 2026 17:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772042279; x=1803578279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+k0T+8SMUGGVHG2/ySYpSmWDYN9a0AHBmT3/Z/TfOww=;
 b=D8+18FZSS2qsYwkFtVMpdKtFs+pSfyhn8wVxJP2xXvCaTmfFpk7vUZki
 uUA8YUXd59hrd95NkoXzdAkjny1ZLghG5rp814jld9NHxfWLET4ciFfZ1
 sNhKY7WVI6qHYJjRTF4ctEgUOrMDAgDkzJTZgkKtzFdnXMfbGXpWLGiw4
 tyoUV1EI3hY63mKdiD6bLXKIkNLtosjSsXR8zGRwIsM0WjcySPwGiqx/e
 XYDNS3PtEygL+7A+UDYO/ldR3gKuVFX1xlkejvPpM25Us8WZCl1yxiUmj
 YX0vGXPsOtqJxanuR0lVrYhlB4QsSYwpVjOaAEg8cwNSRD3+geM24lirz w==;
X-CSE-ConnectionGUID: eZBPDVqqTPeuIijLwQ5XoA==
X-CSE-MsgGUID: +/2ChLn/SiW4NH72IEiEWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72793836"
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="72793836"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:42 -0800
X-CSE-ConnectionGUID: dk4naQxASgykJ0V3WJs6Tg==
X-CSE-MsgGUID: MpS0Da9GSEG4O3DltIs2dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="214394502"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 5/8] drm/xe/oa: prefer REG_MASKED_FIELD_ENABLE() and
 REG_MASKED_FIELD_DISABLE()
Date: Wed, 25 Feb 2026 19:57:07 +0200
Message-ID: <a9b0151d82b1622daa0625fc8ea2c41d233e4318.1772042022.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772042022.git.jani.nikula@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
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
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 1FD2B19BE01
X-Rspamd-Action: no action

Using REG_MASKED_FIELD_ENABLE() and REG_MASKED_FIELD_DISABLE() is more
obvious to the reader than having the ternary expression inside
REG_MASKED_FIELD().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/xe_oa.c | 32 ++++++++++++++++++--------------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_oa.c b/drivers/gpu/drm/xe/xe_oa.c
index 9266a6ef9b1a..c176a61febb2 100644
--- a/drivers/gpu/drm/xe/xe_oa.c
+++ b/drivers/gpu/drm/xe/xe_oa.c
@@ -758,8 +758,9 @@ static int xe_oa_configure_oar_context(struct xe_oa_stream *stream, bool enable)
 		},
 		{
 			RING_CONTEXT_CONTROL(stream->hwe->mmio_base),
-			REG_MASKED_FIELD(CTX_CTRL_OAC_CONTEXT_ENABLE,
-					 enable ? CTX_CTRL_OAC_CONTEXT_ENABLE : 0)
+			enable ?
+			REG_MASKED_FIELD_ENABLE(CTX_CTRL_OAC_CONTEXT_ENABLE) :
+			REG_MASKED_FIELD_DISABLE(CTX_CTRL_OAC_CONTEXT_ENABLE)
 		},
 	};
 
@@ -782,9 +783,9 @@ static int xe_oa_configure_oac_context(struct xe_oa_stream *stream, bool enable)
 		},
 		{
 			RING_CONTEXT_CONTROL(stream->hwe->mmio_base),
-			REG_MASKED_FIELD(CTX_CTRL_OAC_CONTEXT_ENABLE,
-					 enable ? CTX_CTRL_OAC_CONTEXT_ENABLE : 0) |
-			REG_MASKED_FIELD(CTX_CTRL_RUN_ALONE, enable ? CTX_CTRL_RUN_ALONE : 0),
+			enable ?
+			REG_MASKED_FIELD_ENABLE(CTX_CTRL_OAC_CONTEXT_ENABLE | CTX_CTRL_RUN_ALONE) :
+			REG_MASKED_FIELD_DISABLE(CTX_CTRL_OAC_CONTEXT_ENABLE | CTX_CTRL_RUN_ALONE),
 		},
 	};
 
@@ -812,9 +813,10 @@ static int xe_oa_configure_oa_context(struct xe_oa_stream *stream, bool enable)
 
 static u32 oag_configure_mmio_trigger(const struct xe_oa_stream *stream, bool enable)
 {
-	return REG_MASKED_FIELD(OAG_OA_DEBUG_DISABLE_MMIO_TRG,
-				enable && stream && stream->sample ?
-				0 : OAG_OA_DEBUG_DISABLE_MMIO_TRG);
+	if (enable && stream && stream->sample)
+		return REG_MASKED_FIELD_DISABLE(OAG_OA_DEBUG_DISABLE_MMIO_TRG);
+	else
+		return REG_MASKED_FIELD_ENABLE(OAG_OA_DEBUG_DISABLE_MMIO_TRG);
 }
 
 static void xe_oa_disable_metric_set(struct xe_oa_stream *stream)
@@ -1055,16 +1057,18 @@ static int xe_oa_emit_oa_config(struct xe_oa_stream *stream, struct xe_oa_config
 static u32 oag_report_ctx_switches(const struct xe_oa_stream *stream)
 {
 	/* If user didn't require OA reports, ask HW not to emit ctx switch reports */
-	return REG_MASKED_FIELD(OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS,
-				stream->sample ?
-				0 : OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
+	if (stream->sample)
+		return REG_MASKED_FIELD_DISABLE(OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
+	else
+		return REG_MASKED_FIELD_ENABLE(OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS);
 }
 
 static u32 oag_buf_size_select(const struct xe_oa_stream *stream)
 {
-	return REG_MASKED_FIELD(OAG_OA_DEBUG_BUF_SIZE_SELECT,
-				xe_bo_size(stream->oa_buffer.bo) > SZ_16M ?
-				OAG_OA_DEBUG_BUF_SIZE_SELECT : 0);
+	if (xe_bo_size(stream->oa_buffer.bo) > SZ_16M)
+		return REG_MASKED_FIELD_ENABLE(OAG_OA_DEBUG_BUF_SIZE_SELECT);
+	else
+		return REG_MASKED_FIELD_DISABLE(OAG_OA_DEBUG_BUF_SIZE_SELECT);
 }
 
 static int xe_oa_enable_metric_set(struct xe_oa_stream *stream)
-- 
2.47.3

