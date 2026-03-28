Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLTqNbLmx2kYegUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 15:33:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADADE34EAFC
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 15:33:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4682010E3C9;
	Sat, 28 Mar 2026 14:33:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z5ZloXXg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D6A10E00E
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2026 14:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774708392; x=1806244392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZO/t3Rcn3woWLY7IUp8iBBO/MA2bcAHlCn0yONmgUwA=;
 b=Z5ZloXXgUeQKQdahCqIu9zd4/MUqUwOzf24Gzhq+P4ISIs9r1L6hkqT5
 b4Td34DaAODP+vLomDwWRJe+9SXs7klMK3wQyX9YLMZyaVIzlyC+Jm9Es
 SAfeuOEA+CVW3ZdCVQSPaLtKnnVMyvrLzC45+4q3cV9YKw8Rroy4TdliU
 1CZK4wVMFgwxPevv0+xxaonLlJlIOgI782rVG+dIFAekgNgc2mnWWCxFC
 s3qLMlxpBLljXPy1j/QWHRoGV76lh08PxVc0OPQtlBFFXcDsgXT0yjvYP
 RxfvnCFBb9K48Gcp6qFOl0pqCrAINI0UB6dcWILy/qDwxB92yeNh3Nrqm A==;
X-CSE-ConnectionGUID: /d4ahANfSg2L2PNSecj5FA==
X-CSE-MsgGUID: zD7adJyUSFCoXeoO8qzPXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="86839487"
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="86839487"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2026 07:33:12 -0700
X-CSE-ConnectionGUID: 4iC3mdm9S1+7vuSP7luvNQ==
X-CSE-MsgGUID: NymZuHBtTQqodvHPgBoEIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="224621066"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP; 28 Mar 2026 07:33:11 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 01/10] drm/i915/casf: fix comment typos
Date: Sat, 28 Mar 2026 15:32:03 +0100
Message-ID: <20260328143212.601656-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260328143212.601656-1-michal.grzelak@intel.com>
References: <20260328143212.601656-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: ADADE34EAFC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Remove superfluous whitespace character and fix the spelling.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index b167af31de5b..7231ddb4b36c 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -188,7 +188,7 @@ static u32 casf_coeff(struct intel_crtc_state *crtc_state, int t)
 
 /*
  * 17 phase of 7 taps requires 119 coefficients in 60 dwords per set.
- * To enable casf:  program scaler coefficients with the coeffients
+ * To enable casf: program scaler coefficients with the coefficients
  * that are calculated and stored in hw.casf_params.coeff as per
  * SCALER_COEFFICIENT_FORMAT
  */
-- 
2.45.2

