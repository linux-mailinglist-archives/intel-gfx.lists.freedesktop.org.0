Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AXzAAG8KJ2qvqgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 20:31:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8526A659BDF
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 20:31:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=CRZyjmSM;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBEF710F886;
	Mon,  8 Jun 2026 18:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAE6310F886;
 Mon,  8 Jun 2026 18:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780943468; x=1812479468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YezZB7JsIh5BuBWPJEGraTZMw5MNQ6UUalq531g+gIQ=;
 b=CRZyjmSMimBC1yt9G8NNPSary/5COwwGi91c/ei6cXJUku24wWV8Bbhy
 yiF0uCzFfoILIbHuSIVCcD1cG+tjj6eOCxFM77XoL1uH4kAguA98BaGzH
 ZiVDC6nYKp20Zl5tSu8+dPIHRo/oO/DUGQUv7L0mtlUJC/BKukY2OZtJD
 NKuElGvEwkyMpUWqXh5xuWGjWKwWKqao5OeCMpii2jHKFERUPAPS9a2jn
 f+ZL+7G51rrECTxI9yemAPtihAEazDjuGtBEBLZs/8498MTC/sFN8LDxW
 4alDtiLixLR/PN338NSu5q3rHwbCZt71jkLn/w4RBVNXX0AGi/lit094c A==;
X-CSE-ConnectionGUID: TsWg0Vn4StKXFkOuKSVaSw==
X-CSE-MsgGUID: vVYwtI90Seuu8sSWDUmTIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="85544004"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85544004"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 11:31:08 -0700
X-CSE-ConnectionGUID: +WH5iEKaRNmutOyrOCRbhg==
X-CSE-MsgGUID: RSijedb1QVWdrWuudFb+bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="249542055"
Received: from osgc-sh-dragon.sh.intel.com ([10.239.81.44])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 11:31:05 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 raag.jadav@intel.com, Michal.Wajdeczko@intel.com
Subject: [PATCH v4 4/5] drm/i915: Refactor generic_handle_irq_safe() error
 messages
Date: Tue,  9 Jun 2026 02:30:49 +0800
Message-ID: <20260608183050.3875235-5-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260608183050.3875235-1-jonathan.cavitt@intel.com>
References: <20260608183050.3875235-1-jonathan.cavitt@intel.com>
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
X-Rspamd-Action: no action
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
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8526A659BDF

Refactor all error messages resulting from generic_handle_irq_safe()
failures in I915 for clarity.

v2:
- Use drm_err_ratelimited() correctly (jcavitt)

v3:
- Use xe_err_ratelimited() instead (Jadav)
- Split into patch series (jcavitt)

v4:
- Use suggested phrasing (Wajdeczko)

v5:
- s/PTR_ERR/ERR_PTR (jcavitt)

Suggested-by: Raag Jadav <raag.jadav@intel.com>
Suggested-by: Michal Wajdeczko <Michal.Wajdeczko@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_gsc.c            | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 022ad18044bf..ff2cf479d8e1 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -265,7 +265,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
 	ret = generic_handle_irq_safe(display->audio.lpe.irq);
 	if (ret)
 		drm_err_ratelimited(display->drm,
-				    "error handling LPE audio irq: %d\n", ret);
+				    "LPE audio: irq handling failed (%pe)\n", ERR_PTR(ret));
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index 050d909fb4f8..1c06bf76568a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -286,7 +286,7 @@ static void gsc_irq_handler(struct intel_gt *gt, unsigned int intf_id)
 
 	ret = generic_handle_irq_safe(gt->gsc.intf[intf_id].irq);
 	if (ret)
-		gt_err_ratelimited(gt, "error handling GSC irq: %d\n", ret);
+		gt_err_ratelimited(gt, "GSC: irq handling failed (%pe)\n", ERR_PTR(ret));
 }
 
 void intel_gsc_irq_handler(struct intel_gt *gt, u32 iir)
-- 
2.53.0

