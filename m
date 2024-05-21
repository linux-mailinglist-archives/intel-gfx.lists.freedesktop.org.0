Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A79D8CAA32
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C466010E30C;
	Tue, 21 May 2024 08:42:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YrrVenIT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8312810E26F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716280918; x=1747816918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XH3V7nAkJsOtiSm/U6wVe00fnQkJ4eCg7WThxGpXixA=;
 b=YrrVenITRX+n86WKYRpWMnaBBdjY56oimpjw/aiFqMQlbYTb4xP7mh9t
 L0bYgnegF9TpdHFgcV/UCEdFFBgaGDn7hbCxiZz4FgDOV7msEp0lqklWG
 D9bvN6arCQ4Ph7lCKKlpNrRvLi2djwvt3JwVcc3Omn2N4lAmYxloz5o9a
 tyxIegClddypDoLdslX5McsV9sF5bHeZM0nlZs3bjj6QOGVEOVJcyQmSq
 i9OSF6Vy7TOrGlA4s6FEUetnn4E0r1gsHe8i28loxz6/l2Qr0ndfTUJ1b
 g3JAKaPE5p8LQ4qo4xFqSNoRbtTtlFINB5wHUiFd4jW47tq2JTDuKxYw8 A==;
X-CSE-ConnectionGUID: 0FZOVkWKTu6MT5CKEOTG1w==
X-CSE-MsgGUID: emrMPj5hQ+aXDZVlJEeTSA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23860373"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="23860373"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:58 -0700
X-CSE-ConnectionGUID: RQlisUJiQBOjZH3l04BKOA==
X-CSE-MsgGUID: ejY+osuaSQuNEvnSJTNjKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="37426308"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:56 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 8/9] drm/i915/psr: Write also AUX Less Wake lines into
 ALPM_CTL
Date: Tue, 21 May 2024 11:41:22 +0300
Message-Id: <20240521084123.1984075-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084123.1984075-1-jouni.hogander@intel.com>
References: <20240521084123.1984075-1-jouni.hogander@intel.com>
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

Currently AUX Less Wake lines are not written into ALPM_CTL. Fix this.

Fixes: 1ccbf135862b ("drm/i915/psr: Enable ALPM on source side for eDP Panel replay")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 64c5d03aff03..ee75e27cd755 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1864,7 +1864,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
 		alpm_ctl = ALPM_CTL_ALPM_ENABLE |
 			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
-			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS;
+			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
+			ALPM_CTL_AUX_LESS_WAKE_TIME(psr->alpm_parameters.aux_less_wake_lines);
 
 		intel_de_write(dev_priv,
 			       PORT_ALPM_CTL(dev_priv, cpu_transcoder),
-- 
2.34.1

