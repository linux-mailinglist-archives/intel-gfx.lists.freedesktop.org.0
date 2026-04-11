Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEKmCeyI2mly3ggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2026 19:46:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2753E11E1
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2026 19:46:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B006F10E213;
	Sat, 11 Apr 2026 17:46:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P0X2VARP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FD1E10E210
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Apr 2026 17:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775929575; x=1807465575;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wAXU+alPmMGK7D/rL/ovkNDPBTL8iGQN3AfvmIqHxzA=;
 b=P0X2VARP07jeLKbO6aE0MrlFzYvi6W/tdpiS/UMwiOe7lBsAyBTWGAXn
 o398W1pPlj4aZc5Jjs5wPrngtEHP8xRCVbfQ6zhfuCvuuRbtp6m2KTaDn
 Az5YCx4FpX7Slmta1pSAZiPv9gtAqoYnd2TDa9tV6mPM9Xy/B5676t+K5
 Am/TJ38OFa2plY0APd4cwfpBNTE7NwtTW6S9wlaf52Ta6KVZXby5TLCOJ
 3ovMwebkAvEPyQzN4jahxQURWXhNOZHFwZty1BQGc+OlsH+tSodJR/j6c
 GPKG89FecPmnfOv+J+HeJXgNrO8cs7HYf75KJIzjj3FBQnzd6+pI1tp4Z w==;
X-CSE-ConnectionGUID: VA4P7oYBRQyKxE8Be4O5PQ==
X-CSE-MsgGUID: JaBUk5QKRJaksk9NmbQSKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="99564212"
X-IronPort-AV: E=Sophos;i="6.23,173,1770624000"; d="scan'208";a="99564212"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2026 10:46:14 -0700
X-CSE-ConnectionGUID: xTOE2wBbTRyIVn+MH/DODg==
X-CSE-MsgGUID: 1MXexefdSxGYAABSPQuSwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,173,1770624000"; d="scan'208";a="222899826"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa009.fm.intel.com with ESMTP; 11 Apr 2026 10:46:13 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 01/10] drm/i915/casf: fix comment typos
Date: Sat, 11 Apr 2026 19:45:17 +0200
Message-ID: <20260411174526.2850179-2-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260411174526.2850179-1-michal.grzelak@intel.com>
References: <20260411174526.2850179-1-michal.grzelak@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: EE2753E11E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Remove superfluous whitespace character and fix the spelling.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index c2d2746c5f041..9a306aee21994 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -162,7 +162,7 @@ static u32 casf_coeff(const struct intel_crtc_state *crtc_state, int t)
 
 /*
  * 17 phase of 7 taps requires 119 coefficients in 60 dwords per set.
- * To enable casf:  program scaler coefficients with the coeffients
+ * To enable casf: program scaler coefficients with the coefficients
  * that are calculated and stored in pch_pfit.casf.coeff as per
  * SCALER_COEFFICIENT_FORMAT
  */
-- 
2.45.2

