Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJ8FNW1yd2n7ggEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 14:55:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA888928F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 14:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D1A810E430;
	Mon, 26 Jan 2026 13:55:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CRzTbWsA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4B5010E34E
 for <intel-gfx@lists.freedesktop.org>; Sun, 25 Jan 2026 00:12:16 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id
 d2e1a72fcca58-82311f4070cso1354064b3a.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 Jan 2026 16:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769299936; x=1769904736; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iR/kjqFsPEWOeJ8atT4KIIDdY2v61pRn+hE1X2EyFVo=;
 b=CRzTbWsACR5WzeGVD8vOY6a8eKgQ8bAKu+e2z2csuK7Cj1uHSfRdjBuwFQCnz2Ix5F
 L3ai/L8HYsGp7lSSmDEa7afqM2vlY79QezwSP5ZjXDzulg37X1M6UpsjEJiPTm4wDfiQ
 UkhSpzSCtu+UFRlIK1fRpAwP1LzWTT0pP8H3Lm+7/OptIYt0L0miCqZtgWrNUk/0410i
 rYN68M3vS/2AS458f+oE5I/jhss1x6WwVCzdHqkrXk2CjoCmycEvuxAUd5KUhaoIeFVG
 /JIQul2Om9HjVLQ2n+AM88vXswGI3gOId9Y3vhwkLGC7dj8kU5gp1v0YbxPeUx4stwbu
 kvvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769299936; x=1769904736;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=iR/kjqFsPEWOeJ8atT4KIIDdY2v61pRn+hE1X2EyFVo=;
 b=JoVt1HLDgaxVp/7HXXgFXRyrSKlJAqvkPCf6o+b0l5TnjAV7M/Qk7pR2zoJdxVNDZ1
 sAdRCd4qSp6lHsvEQt7YWjLHJsWUt7wOQqbW0dOJn/wiplLbAWvo3Ht46nB7dcvWsJyS
 HJe5u/F9A2gamE0+GT+QcpAc0JrvDT+QfxpRdFTDP4/J9rWhqoi9pguFGdelmO7pxgHw
 PsCpnIkCmfiMDb919z9/Wvn4F0c14OC1Buf2hR1Zv0EHltxEoCRZdUpI5O+uK5EZgwZq
 L0MH/wY/aVvqcoEJWrGam7SvLlNqBDIjBrPZ53DtKKAbuBFaGs0jKp0ZLdJ4yoqPoh7j
 Yvxw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXYSVm/LIzuMwLJTAVEO2jGw+o2EWdwg5OUpaiUC5DEqHqFfu/h+hgWVR6JaT569De8/8Z4jLLT9Fg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwP3kRMoozUJB+/VcwQyH4Hls8+pnJ/PqtHgmZnVVU3hi0/UdKB
 5DawLKWM4iWVPWkUlfMv/LOAkd/TyqlM2BOcW1Nb/vADTiUtPqXrfts=
X-Gm-Gg: AZuq6aLSgh7lhlRvbt2CT4l+b6/pe9p5tyU01kpgJCO4QLRc4YyIblTy97aD1vtXUKw
 uGXwEopy7uSUIXfFyR5aWyDmulesC0POoVuLaIFcTPJByj2WIMv6jz7OB3a/C3fAtfNORiWgGkN
 G/tp4Y16ieiU4KMVowgl0P/MlIuMDDceQTzk+1bss/4y/clTDQAmB0RToWeGcUX/VLLCDksoRhv
 gPYfqxJyHDo1NItdpi6c3vG6f9W4fkj9rI1zJOU5JeKeHqMlERIkFz6yem8JjVsH6CKv73wQhEJ
 6vyBPFZbdi71URCFWcuyTMsYvWDg161NVbJeI5GYu+4JP3ki0ezSj0V03jMbwhmVvvzIxuVuWNS
 ezsLa4VUEUUAdgOE5f6wnAafHYOyPCKBfyG3+o8kX8JJBBKhyBKkGPgbfS/rAQ3G6rBUmoyryY4
 MacBeQppL57zp9Pgs=
X-Received: by 2002:a05:6a00:7702:b0:7ab:2c18:34eb with SMTP id
 d2e1a72fcca58-823411db9d4mr224890b3a.12.1769299936136; 
 Sat, 24 Jan 2026 16:12:16 -0800 (PST)
Received: from at.. ([171.61.161.234]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-8231876e5d0sm5608273b3a.61.2026.01.24.16.12.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Jan 2026 16:12:15 -0800 (PST)
From: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>
To: 
Cc: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] drm/i915/display: Disable display for iMac's
Date: Sun, 25 Jan 2026 00:11:01 +0000
Message-ID: <20260125001111.1269-3-atharvatiwarilinuxdev@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260125001111.1269-1-atharvatiwarilinuxdev@gmail.com>
References: <20260125001111.1269-1-atharvatiwarilinuxdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 26 Jan 2026 13:55:54 +0000
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[37];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:atharvatiwarilinuxdev@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,intel.com,ursulin.net,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3BA888928F
X-Rspamd-Action: no action

Disable display on iMacs, as they can't do link training
on the internal display.

(tested on iMac20,1)

Signed-off-by: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 1170afaa8680..3fb47232e7a4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -3,6 +3,7 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/dmi.h>
 #include <linux/pci.h>
 
 #include <drm/drm_color_mgmt.h>
@@ -1657,6 +1658,7 @@ struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
 	const struct platform_desc *desc;
 	const struct subplatform_desc *subdesc;
 	enum intel_step step;
+	const char *product_name = dmi_get_system_info(DMI_PRODUCT_NAME);
 
 	display = kzalloc(sizeof(*display), GFP_KERNEL);
 	if (!display)
@@ -1674,6 +1676,11 @@ struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
 		goto no_display;
 	}
 
+	if (dmi_match(DMI_BOARD_VENDOR, "Apple Inc.") && !strncmp(product_name, "iMac", 4)) {
+		drm_dbg_kms(display->drm, "iMac Detected, Disabling display\n");
+		goto no_display;
+	}
+
 	desc = find_platform_desc(pdev);
 	if (!desc) {
 		drm_dbg_kms(display->drm,
-- 
2.43.0

