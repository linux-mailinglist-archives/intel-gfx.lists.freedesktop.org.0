Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPG8AuHx6WkzpQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 12:18:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 759AD4507B0
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 12:18:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AC9610F05D;
	Thu, 23 Apr 2026 10:18:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AtSNm1v+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC63610F05A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2026 10:18:04 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id
 98e67ed59e1d1-35fc2b18363so7283080a91.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2026 03:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776939484; x=1777544284; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=1o3ElOju5pjDyhDdioo0CocHms/enCtj84MgsqZq/hk=;
 b=AtSNm1v+qgObPrFyEudNt0I64BFuEauKpYXfjbXkvwJ4q/+dn/CsNHRXT59AbUP5nc
 ATN9MJdvuJ0d7Zlp6X5I4R8tP7E77/zXr38OPoFLQia0Q/gIICj8tXljXVWg+XCmsILM
 /f5RJqFU+PNpz3yos8Pm1/HLe3gGBWod9yUzgmLCGqEgbBHN/ce92+Lf1vlpotUghXcs
 kDysP+rOLSVZSkPuIZHex5c4zXZHSsFdbVhdVRqXh/wpjhtaq0iTdQdWXjLvyo4D1xmO
 rtjC2qhTEW8YDu3qrTcUs1uKEZ9kZiIOnJOVI9KHlNB1s95SpPgkhvnUMIUdDW6sf943
 7VQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776939484; x=1777544284;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1o3ElOju5pjDyhDdioo0CocHms/enCtj84MgsqZq/hk=;
 b=GKNW+ubD8oxLm5mNcUcTuXpGrorIOWYfSnqmvpPizy/FvKdk1sSJpF9Ne5R7X+lpzh
 Y6sLiElLD14kgmheB3gMQaH5ywweXzJuDcSf47vRqALBNcipTD+wgoTz7NuBKxKqj7Wl
 gtZCRE27YbHmLg8ldzOm2//0vEjPHPLoCM0fMyEweZ32X7Yz1GKwTg+ZJLhUdnN/9+Ay
 hmk99UR+d8ska8obNStwjDgL5mVfmybT2ZHh0daJivEzhO8Nz2rxQfiqor6exhDVc0xj
 mKHFWLEytoHFH+8cY/BvG4+FsJN8hGO0L5GBDvX8EmPpuZe3cUan3VcKTouyW+nhbK/A
 /41g==
X-Forwarded-Encrypted: i=1;
 AFNElJ/mNZIHSnHIvCSYzdCoQ0dF7fVEzhqBEjHHQiSXmIKHxPZuh1qBVGcgjbPR1UAxV8AWLGinP1C3pyY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywkba9oPc3bASbV1M2DeVCYj2f4hoZ8WWd4zQVh/x+IKLgVWhSq
 KQweG0SfWFvh9yOcmGcX4L4ykqGoZO4zKBaCNGVkR9jtxmYvgmvoFk9b
X-Gm-Gg: AeBDietTu9ckrG6WW6sIKnBqJPeYAWio+hGSYYWvB3nuWZTEL55Es0B3NoTPmiX+ZZR
 8NcDibhO4MTHMNBd9lmRhCxGuyqSKvifY8nx4rVAfmMGEqfeIGdHAWAn1lFj6Rz99y0eFh+cbJh
 uYeE5arugmK5p+kueBi3B3Jt8JEjjDTEn3fZmTSWvLrH2kOsf23hKuIEkmEI+CVX+fWnRQT7nca
 sK9jQbk90jlkyhwV2hwFbLJd3J9PnRvSAurI1vGSZjayNpJ18gckjRgDa+I0z+UqcrBI/1r7aRa
 OKlEZPGFXWb/+jcjty1VtXpl4yoxbqF/lHCLnExJ53+K/9HnWzEnbwMBVHIWfHgtPPugpe6U2Nv
 E6ErWyPP2BgjK3jGhqFj/zEB2fMGD+OQe8srm84EW9+nLOvI49Yh4Zz76XyAqmX6xj2MMLjEd/f
 D0h4YPMbMUO5A63UtnurU5t8Fzphz+rEve6I29yQedz6iDDjSRP4QsmOiPoWzUi8fNQXS+FtHO
X-Received: by 2002:a17:90b:2888:b0:35e:58d3:329f with SMTP id
 98e67ed59e1d1-36140468b1emr29417118a91.13.1776939484248; 
 Thu, 23 Apr 2026 03:18:04 -0700 (PDT)
Received: from localhost ([134.134.139.69]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3613fbd470fsm7301277a91.12.2026.04.23.03.18.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2026 03:18:03 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH] drm/i915/display: enable ccs modifiers on dg2
Date: Thu, 23 Apr 2026 13:17:39 +0300
Message-ID: <20260423101739.2772745-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:intel-xe@lists.freedesktop.org,m:juhapekka.heikkila@gmail.com,m:tvrtko.ursulin@igalia.com,m:jani.nikula@intel.com,m:juhapekkaheikkila@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,igalia.com,intel.com];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 759AD4507B0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since Xe driver aux ccs enablement dg2 ccs modifiers have been
disabled on both Xe and i915 drivers. Here allow dg2 to use
ccs again for framebuffers.

Fixes: 6a99e91 ("drm/i915/display: Detect AuxCCS support via display parent interface")
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d31819758f3d..7a73461d398a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -54,9 +54,11 @@
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_crtc.h"
+#include "display/intel_display_core.h"
 #include "display/intel_display_device.h"
 #include "display/intel_display_driver.h"
 #include "display/intel_display_power.h"
+#include "display/intel_display_types.h"
 #include "display/intel_dmc.h"
 #include "display/intel_dp.h"
 #include "display/intel_dpt.h"
@@ -749,8 +751,9 @@ static void fence_priority_display(struct dma_fence *fence)
 static bool has_auxccs(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
+	struct intel_display *display = i915->display;
 
-	return IS_GRAPHICS_VER(i915, 9, 12) ||
+	return IS_DISPLAY_VER(display, 9, 12) ||
 	       IS_ALDERLAKE_P(i915) ||
 	       IS_METEORLAKE(i915);
 }
-- 
2.43.0

