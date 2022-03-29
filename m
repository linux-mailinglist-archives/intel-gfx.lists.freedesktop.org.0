Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 990514EB5F3
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 00:29:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C31F010E2C1;
	Tue, 29 Mar 2022 22:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FE5310E2C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648592993; x=1680128993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n3AgMGZq4BLzdLuTM9nI3/Q5H/I7VNcQuoNDXaqYhYE=;
 b=knsqoluT0YW60jCAIKak6XvfTflhegw3NWmTR9uRH8wvGrIoIIYpE/nB
 QnBThBAagYdUNm9bI2ftWJB7K8N/kw8RnQ25YNluHuYI/JbJjkGcmD5kU
 UthmV5m0n16M/Xqp53qP1xeX8eWdF8x2aXzwuXQUpj2oRBd7FEGfQaJTF
 HpNUS3G/06bwP7RCaJFjVz40o5ig40I6AWYBzWbBuErQGgNpB0fWrJaJ4
 1tiug3EkkEwfLGlzCp4cmLdl1SskbikbDV3TIJRaMfAU+XgTURlJ+hAn9
 Hwg8D9amDKjrFouvWqRq0p5K+nGq/rW2S6iCHKtpbkt6sSXGVOSuNP4dK w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239319332"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239319332"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 15:29:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="653332886"
Received: from srmusala-desk.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.104.251])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 15:29:50 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 15:31:00 -0700
Message-Id: <20220329223102.218689-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220329223102.218689-1-jose.souza@intel.com>
References: <20220329223102.218689-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/4] drm/i915/display/adlp: Adjust MBUS DBOX
 BW and B credits
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Caz Yokoyama <caz.yokoyama@intel.com>

Alderlake-P has different MBUS DBOX BW and B credits than other
platforms, so here setting it properly.

BSpec: 49213
BSpec: 50343
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 234f363aad651..389a3c988dc6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1844,7 +1844,10 @@ static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
 	else
 		val |= MBUS_DBOX_A_CREDIT(2);
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (IS_ALDERLAKE_P(dev_priv)) {
+		val |= MBUS_DBOX_BW_CREDIT(2);
+		val |= MBUS_DBOX_B_CREDIT(8);
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		val |= MBUS_DBOX_BW_CREDIT(2);
 		val |= MBUS_DBOX_B_CREDIT(12);
 	} else {
-- 
2.35.1

