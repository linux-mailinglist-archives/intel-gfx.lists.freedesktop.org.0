Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEC04ACB68
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 22:39:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CF1C10E116;
	Mon,  7 Feb 2022 21:39:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA7D410E116
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 21:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644269986;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=AvJ9N+RokT/quaPmMZhpaU8mvk15cL5DRf0vZEA2K/0=;
 b=RtSZXDOxGGtGK3F26Yj6RoQL7WLZXm507YrCYKeI+waulxWobme0BiqpHFEg3HeGGBwCCX
 5QMgszXIBIk/hluF1LtuxG+IcKWhduGjgRZvixC0HULZt6bHdPA8lNKrTM/Ad1Pa6n/dp1
 RR1RP/v/zd7lgIk+z3rOrf8nDslQC60=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-441-vgSPi0YHOzOjbRTZsRCqcQ-1; Mon, 07 Feb 2022 16:39:45 -0500
X-MC-Unique: vgSPi0YHOzOjbRTZsRCqcQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D0B1101F7A1;
 Mon,  7 Feb 2022 21:39:43 +0000 (UTC)
Received: from emerald.redhat.com (unknown [10.22.8.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0A52E1037F38;
 Mon,  7 Feb 2022 21:39:34 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon,  7 Feb 2022 16:38:20 -0500
Message-Id: <20220207213923.3605-1-lyude@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Disable PSR2 selective fetch for
 all TGL steps
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
Cc: David Airlie <airlied@linux.ie>, Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As we've unfortunately started to come to expect from PSR on Intel
platforms, PSR2 selective fetch is not at all ready to be enabled on
Tigerlake as it results in severe flickering issues - at least on this
ThinkPad X1 Carbon 9th generation. The easiest way I've found of
reproducing these issues is to just move the cursor around the left border
of the screen (suspicious…).

So, fix people's displays again and turn PSR2 selective fetch off for all
steppings of Tigerlake. This can be re-enabled again if someone from Intel
finds the time to fix this functionality on OEM machines.

Signed-off-by: Lyude Paul <lyude@redhat.com>
Fixes: 7f6002e58025 ("drm/i915/display: Enable PSR2 selective fetch by default")
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v5.16+
---
 drivers/gpu/drm/i915/display/intel_psr.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a1a663f362e7..25c16abcd9cd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -737,10 +737,14 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	/* Wa_14010254185 Wa_14010103792 */
-	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
+	/*
+	 * There's two things stopping this from being enabled on TGL:
+	 * For steps A0-C0: workarounds Wa_14010254185 Wa_14010103792 are missing
+	 * For all steps: PSR2 selective fetch causes screen flickering
+	 */
+	if (IS_TIGERLAKE(dev_priv)) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 sel fetch not enabled, missing the implementation of WAs\n");
+			    "PSR2 sel fetch not enabled, currently broken on TGL\n");
 		return false;
 	}
 
-- 
2.34.1

