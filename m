Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KnkBoOV72ktDAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 18:57:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F069476B65
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 18:57:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DEF310E2C5;
	Mon, 27 Apr 2026 16:57:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eZCXlpzV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F271810E037
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 16:57:34 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id
 d2e1a72fcca58-82cebbdbdccso6536317b3a.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 09:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777309054; x=1777913854; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Q1XBax/wiaCSVouQNwOTNjYhbz5rRBynlxgLHIWZ9t4=;
 b=eZCXlpzVHR+OjkR9XNLUNweAS1bI8ncoO6QrLx3cGUQpe6nyYXjnhVSDxick4dUzpn
 FGtusiQaHlLG7PzxSQLqVc+5qCJfrn4G7gHmqTPs7zOs7reIakUAqpdFH26u+SEnOg94
 yU3VagpafNATAZujORTm5SzoZHofC1Qg9ueterXwOjXiYsdn1hPz+KONQmlYqz5zUusk
 CNp06hT/grXNmJcW/xUbWa+InUPQ9M4jff/YTE9hhmZ7VTosHCpWllMuyjzGQQX35DaP
 LomyFrG4Npgy4onxx3FAC3/osstKHTMFcYBuKfJIpThawLpvmtixb4gca2D7BuWUd3NE
 YWWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777309054; x=1777913854;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Q1XBax/wiaCSVouQNwOTNjYhbz5rRBynlxgLHIWZ9t4=;
 b=LhEjE3xxR1lGM4y/14liloju9maLVQmN3x+cbQeEmv6v6JuUAinb9OKNotEeFjCmew
 MczhxXH5FF4GDyhOzH5I3S/Agoa1HfS4rt2mdA0n2jcfBAIvr1kIrA9+wws/0Gi6YYy7
 T/By+4t8lnKv5RGU2ME5XAjJ3bNSC+mz9tLGgYEcQgf07K+GT1xA0debRzFdh0OI7jK9
 4Ef3o2/F+tsrxQneSTAYvNOuSpxBvqtgwnT5nzShyHJvBYlBM6dezoiq9T1OajSsctMx
 RIeR2umzziLReHOo5nq3O6/hUbRNqMrdY+uu9l+xIVnypZkeM1avCSv4ETePSqT458fi
 cRsg==
X-Forwarded-Encrypted: i=1;
 AFNElJ+xwakgjPE6bBqJfziD0X3+lxxuUdQGCtFuX657xKHIr6yNwrHHdAYEmWjDUwIrRSOCjjr38v6CnfM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxgGz1fLAdYMA7M6ZOhPXQ04M6RNcV7ZS2j20NNZX0+LdYS5+QE
 hQW2BluweV5lDZ9s5P9MPPu4MCJvuMpEx5NV9ktmcENDqhG8in3pm98ZaVJR+NeD
X-Gm-Gg: AeBDievW66vLJJs6ITbyhDoDTQNyIhR70KbERVWxq4td4bgXJ4mjnJs7OruTRPV+194
 i7qb8vOcqY30z4+nDNEkk0ISYNJMFIJyGKdZ7Zr69l+6LtTEYELRhqy/I5mqjn/ihE/24HAE2m+
 e09eNuH0MP26+APBRY0kH+4ycJhkI8OvUkQjESIgwKA90lF7++D+MADFAzdEWZhIQeiLN1AM1yC
 oU1CcnSVr0txeSawun+sE6ZTLzbmIxH2gpwzkEGQ1tYA3bEutbGyDm20FZGBROqkija24U49VhN
 J/CGT/zcW8wFYBwoYmI0hEPc3zb2cgvMFDjvOjN1wJiUK18R3NyYoUripllgogg4DQlEDGTtVQl
 TecshYJYzsa5I1AKBEgmxUzYULkmT8tMqjJakcmU+GLNHbNwQlH7Vf/pOde337PgE5JPYVtmri/
 2bU0HaqHoSth8jAA92Ko8RUE4Nf4HWgEpei1IDWzVOHR+c9Iw7VSapSPlq/dTvc4/i+M19HZpa
X-Received: by 2002:a05:6a00:348e:b0:82c:6b16:c894 with SMTP id
 d2e1a72fcca58-82f8b507bc0mr36283322b3a.20.1777309054268; 
 Mon, 27 Apr 2026 09:57:34 -0700 (PDT)
Received: from localhost ([134.134.139.69]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-82f8ebe40dasm32363991b3a.40.2026.04.27.09.57.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2026 09:57:33 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2] drm/i915/display: enable ccs modifiers on dg2
Date: Mon, 27 Apr 2026 19:57:15 +0300
Message-ID: <20260427165715.864721-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Queue-Id: 6F069476B65
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:intel-xe@lists.freedesktop.org,m:juhapekka.heikkila@gmail.com,m:ville.syrjala@linux.intel.com,m:juhapekkaheikkila@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Since Xe driver aux ccs enablement dg2 ccs modifiers have been
disabled on i915 driver. Here allow dg2 to use ccs again for framebuffers.

Fixes: 6a99e91a6ca8 ("drm/i915/display: Detect AuxCCS support via display parent interface")
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d31819758f3d..a4bd4f8e18b2 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -750,9 +750,8 @@ static bool has_auxccs(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
-	return IS_GRAPHICS_VER(i915, 9, 12) ||
-	       IS_ALDERLAKE_P(i915) ||
-	       IS_METEORLAKE(i915);
+	return IS_GRAPHICS_VER(i915, 9, 12) &&
+		!HAS_FLAT_CCS(i915);
 }
 
 static bool has_fenced_regions(struct drm_device *drm)
-- 
2.43.0

