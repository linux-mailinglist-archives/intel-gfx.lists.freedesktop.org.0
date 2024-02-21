Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFA185D1D4
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 08:53:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1064310E62C;
	Wed, 21 Feb 2024 07:53:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VEZ1KpET";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B66CA10E62C
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 07:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708502035; x=1740038035;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LQ0OTP9RuFs7+EhRACNk8RI5RkG5Nr355Ui0WJ4nd3s=;
 b=VEZ1KpETN8LnRStzbuMclUtCDKWnoXAMDvl41uFiOcWsiDGP3uBaX7Hm
 ZaS6aoPtG5bB5VdjLbCVTfjNkBGuK9xNyG5U8N/fgOg7Vt77Ah4Yi11bu
 6mM8Va2qVUJ65yT5JlePrm0KccqhwUWxC9a/h3VLfTKt6vHf3tu/s/esD
 YEP0FM21LmEva+R9RyJbKVF+yljrVjtPif1bCHanuvxnOEJFC5O2aO2za
 RV+1y8PLWlV7iu4oOAGfgeGtFcE3f1+SUNe5LCQPwUjji7D43FJG4v+jG
 fWJKwGCm6jRhcM8tNA9tC4WYbaINb2VgYGyMSAodLz84km985G9SAKKma Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="20082053"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="20082053"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 23:53:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="827302737"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="827302737"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.221.77])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 23:53:53 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/3] drm/i915/display: Increase number of fast wake precharge
 pulses
Date: Wed, 21 Feb 2024 09:53:22 +0200
Message-Id: <20240221075322.2764209-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240221075322.2764209-1-jouni.hogander@intel.com>
References: <20240221075322.2764209-1-jouni.hogander@intel.com>
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

Increasing number of fast wake sync pulses seem to fix problems with
certain PSR panels. This should be ok for other panels as well as the eDP
specification allows 10...16 precharge pulses and we are still within that
range.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9739
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index fad39b2e3022..4641c5bb8fb9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -145,7 +145,7 @@ static int intel_dp_aux_sync_len(void)
 
 static u8 intel_dp_aux_fw_sync_len(void)
 {
-	u8 precharge = 10; /* 10-16 */
+	u8 precharge = 12; /* 10-16 */
 	u8 preamble = 8;
 
 	return precharge + preamble;
-- 
2.34.1

