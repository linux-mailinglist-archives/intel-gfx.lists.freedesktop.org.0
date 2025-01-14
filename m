Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A81C5A129F4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 18:33:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 439C210E79F;
	Wed, 15 Jan 2025 17:33:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="ORstufDz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x14a.google.com (mail-il1-x14a.google.com
 [IPv6:2607:f8b0:4864:20::14a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FF6410E475
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2025 19:07:23 +0000 (UTC)
Received: by mail-il1-x14a.google.com with SMTP id
 e9e14a558f8ab-3a814c7d58eso47392295ab.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2025 11:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1736881642; x=1737486442;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=HkXEGKaHS4Wap2DZ8mnEQl68mT1GrP1ybYkz9IG2DCI=;
 b=ORstufDzvtSZ6e1EbbWDwS5HnQgNMKJQ/6quo9H+2Y8cePeuyU58GE6voEhfWqTWcH
 /opr7IMkp/6wucrhdqPBDSYJTkRdI7ReCTMoykI4yb8tcOB2S+/pSsX6H8dYqU+obHit
 GGn/f5tAVvAiuV0MV6x8CDVC6zjm8X10vKBhaoKsPZMvgb8INwPuGX/vaWxKy+ghFzNK
 xTJr5Y27kHHsaGH9Kb6gD4qbjtY0EIEMPUrOwvKd1VUSr38lZ3CSZMXtDmN0G0+MPLIa
 GfQ9ngwmcSBIjG8q/umdLZc0VnUedaesbKy41QrGC39xAW9LXDhAdgfIZxauocJm7duI
 PXeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736881643; x=1737486443;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=HkXEGKaHS4Wap2DZ8mnEQl68mT1GrP1ybYkz9IG2DCI=;
 b=sFQwsEvF0Oy5faHphLxW9M5ZdthK1tk78PE8UjytptrhsPMyHaxD+oeUqkoVlMuImP
 za13GrQVi2q+snSX97seJh1V4KKe3lROYtWsPvUaJApKVt0qZ7V7hN/W4nuTlOulnBgR
 O59gU+0IP2OpdSDAx54cqCu4WZ+ewszJRsD4Rhw6i2QHUd5FU8qQ1Xp90lYEc5vu1DN9
 CqFGW3y8w76513UH6bwydFmIqWLYoLVA+qGKQX8q1uP8CRnC1YsbDTMgIgLSCvrz+Nou
 SqDj+hsdS7fPVwyob0jEkZ/MU9+YfnSD+mmghjt5wrkdOigBqkXOH733Sj3083JQrobF
 PycA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWuj9fssW9qQEzI9DCofNYLtOtN5MuqTkvYQP+uWAQVza3hslGXXXS2dnSM25zIDOjnN59anjlIejY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxFprgtH8ZRVIbTG9h6omlUciu/Rc6jhQ4ZRXLcEaveH4Sl3+aH
 pKTvrGvnrl4ivvsW8qlY7aqP48M3QH0a5zB8670EGfyAjTPe47ElSQzTWxXn6CNYTbiwZN+ol/u
 KEVlQqw==
X-Google-Smtp-Source: AGHT+IF2yRCyQfsIAsDtYjVAP2Lbj8881E3+iRCvgYZMjLJcfAwxx4hzxEoI7N0P45DSRRSxwN8MjS/wzzlZ
X-Received: from ilbds6.prod.google.com ([2002:a05:6e02:3f86:b0:3a7:8a40:2719])
 (user=jdenose job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6e02:1d88:b0:3a7:8720:9e9e
 with SMTP id e9e14a558f8ab-3ce3a90ef12mr193274515ab.2.1736881642681; Tue, 14
 Jan 2025 11:07:22 -0800 (PST)
Date: Tue, 14 Jan 2025 19:07:11 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.48.0.rc2.279.g1de40edade-goog
Message-ID: <20250114190709.1.Ia17111747d0450169dbe902e5d7ef25912a9338e@changeid>
Subject: [PATCH] drm/i915/display: Add skip link check quirk
From: Jonathan Denose <jdenose@google.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com, 
 intel-gfx@lists.freedesktop.org, Jonathan Denose <jdenose@google.com>, 
 David Airlie <airlied@gmail.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Simona Vetter <simona@ffwll.ch>, Tvrtko Ursulin <tursulin@ursulin.net>,
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Wed, 15 Jan 2025 17:33:45 +0000
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

The display on the Advantech UTC124G3PWWW0E-ES worked fine until commit
"drm/i915/dp: Recheck link state after modeset" was introduced. After
this commit the display flickers intermittently as the driver code
initiates the delayed link recheck in an infinite loop.

To resolve this issue for the Advantech device, add a quirk to skip over
the delayed link recheck.

Signed-off-by: Jonathan Denose <jdenose@google.com>
---

 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 4 +++-
 drivers/gpu/drm/i915/display/intel_quirks.c           | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h           | 1 +
 3 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 397cc4ebae526..7804ad38b00cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -32,6 +32,7 @@
 #include "intel_encoder.h"
 #include "intel_hotplug.h"
 #include "intel_panel.h"
+#include "intel_quirks.h"
 
 #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
 #define LT_MSG_ARGS(_intel_dp, _dp_phy)	(_intel_dp)->attached_connector->base.base.id, \
@@ -1622,7 +1623,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
 	} else if (passed) {
 		intel_dp->link.seq_train_failures = 0;
-		intel_encoder_link_check_queue_work(encoder, 2000);
+		if (!intel_has_quirk(display, QUIRK_SKIP_LINK_CHECK))
+			intel_encoder_link_check_queue_work(encoder, 2000);
 		return;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 28f497ae785bb..d472a5f21f8b9 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -78,6 +78,12 @@ static void quirk_fw_sync_len(struct intel_dp *intel_dp)
 	drm_info(display->drm, "Applying Fast Wake sync pulse count quirk\n");
 }
 
+static void quirk_skip_link_check(struct intel_display *display)
+{
+	intel_set_quirk(display, QUIRK_SKIP_LINK_CHECK);
+	drm_info(display->drm, "Applying skip link check quirk\n");
+}
+
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
@@ -229,6 +235,8 @@ static struct intel_quirk intel_quirks[] = {
 	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
 	/* HP Notebook - 14-r206nv */
 	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
+	/* Advantech UTC124G3PWWW0E-ES */
+	{0x5a85, 0x8086, 0x2212, quirk_skip_link_check},
 };
 
 static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index cafdebda75354..9e8f2816a4fba 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -20,6 +20,7 @@ enum intel_quirk_id {
 	QUIRK_LVDS_SSC_DISABLE,
 	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
 	QUIRK_FW_SYNC_LEN,
+	QUIRK_SKIP_LINK_CHECK,
 };
 
 void intel_init_quirks(struct intel_display *display);
-- 
2.48.0.rc2.279.g1de40edade-goog

