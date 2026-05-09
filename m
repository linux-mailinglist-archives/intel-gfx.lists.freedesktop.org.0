Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKHgLdtj/2k86AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 09 May 2026 18:42:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B07500871
	for <lists+intel-gfx@lfdr.de>; Sat, 09 May 2026 18:42:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025A110E239;
	Sat,  9 May 2026 16:42:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K/q2BeLd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F37510E239;
 Sat,  9 May 2026 16:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778344921; x=1809880921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RK1M5bf2B9NR38tLBIFiQOqQuyTE1Ps+TTrMrP8Crlo=;
 b=K/q2BeLdYgCtjH2lSkA7x3DG1cTJLpXXw4JReE+gHyNu+8jBZ6YDcW7T
 6sEWv7TXOOKM9EdiNDJJ9B4QP9CYBgYCNY0EC5iXwoZGwAqO8I4U8mlfq
 SQiH7iKO5pgMowBCpzK8AAeZTHCINcFOlgsq91Ybgfp9+f81Wb9nF3K4l
 yZYPt6B8u8gLX8XP3t1YOwhu3v+Bu8V1nOUlCjGoy7C9Mxw2GX9VUYwlr
 TkaS3WxnXBh0euPcZxDdFfKzmHy5umwRCEBaf+3hL+pgj1l0lboEHAUZS
 kI5pOWic+5+09U1pvv1FSpVT19F8gV9Lii+2fpPciaagpdMEAEhp9IkrU g==;
X-CSE-ConnectionGUID: TbvSXuZISPumceyFdEnoCA==
X-CSE-MsgGUID: 15svfzugStWweyWkqpEb+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11781"; a="90763621"
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="90763621"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2026 09:42:01 -0700
X-CSE-ConnectionGUID: vWxWlL7GTniP9Ik3Icddmg==
X-CSE-MsgGUID: aibcmLOpT5WjoqD7+fvuIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="236212275"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 09 May 2026 09:41:59 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, nemesa.garg@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 9/9] drm/i915/scaler: eliminate dead code
Date: Sat,  9 May 2026 18:40:48 +0200
Message-ID: <20260509164048.627399-10-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260509164048.627399-1-michal.grzelak@intel.com>
References: <20260509164048.627399-1-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 83B07500871
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

We short-cut skl_scaler_get_config() when skl_pipe_scaler_get_hw_state()
has failed. Remove codepaths that assume scaler_id < 0.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 6acb54d5781b..7994b983d509 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -991,10 +991,7 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 	scaler_state->scalers[scaler_id].in_use = true;
 
 	scaler_state->scaler_id = scaler_id;
-	if (scaler_id >= 0)
-		scaler_state->scaler_users |= (1 << SKL_CRTC_INDEX);
-	else
-		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);
+	scaler_state->scaler_users |= (1 << SKL_CRTC_INDEX);
 }
 
 void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

