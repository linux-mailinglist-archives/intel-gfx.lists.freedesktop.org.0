Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uChJNdEo6mnkvQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 16:12:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B38453804
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 16:12:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED8A210F150;
	Thu, 23 Apr 2026 14:12:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="U4k35qDi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A168E10F150
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2026 14:12:28 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id
 d2e1a72fcca58-82fbf5d4dc2so3435911b3a.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2026 07:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776953548; x=1777558348; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=NjbAyysGPp/X4qI5XhFFweZW1szoSZOJj3nGI17MhaM=;
 b=U4k35qDi/USBLz6XhJnnYOl+xJfublVxgEYejkArJQh0J0sps7Jksue3x0Or+INJJz
 SzuzMFFrMz57quK9gPYQ54OJvWcaXZ06WZO0s9vh3xb2iAYLPN8un/Rh/r6EGT7hCL2M
 +TREj0ukE+RlsSjBq1xVwurgCw/DPGzDhX7OQ3Yea9UCXwJDjF06nDLE66XHC5faT6Bz
 Th8VTquNpyR8Qo8+XuYGniL3wTWNfdBD0RDJ+EmA7MqHgsL2Z4eBgdeqFyQVW8KYC1N/
 svgiEM0XMR9BrI4vCBbYLdCAd5KD2BkkwCMF3VDwjnjN7HkfodAx5MhocdKg6wP2rsW0
 5Qzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776953548; x=1777558348;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NjbAyysGPp/X4qI5XhFFweZW1szoSZOJj3nGI17MhaM=;
 b=Ugt/KHYjxRO1bTCE9LTsj8ha0/xFeNlv1ttLpBRGDh8AKR9Nk5Rlx2KIq+Deyotzi6
 iqnnIb/0jQHSG1hFOvkim3b0dz6sexNaOpA+xZg40d1mxRTW0gxRLwB5MNDmB4FGFpCQ
 7xsYSc/L25cYzYp+XX1fJSbHC/11GWA4Z4lcH/TeErhG5qHjyc3E7FUG4lU4YAPqBZ4x
 bE5Ynf7SOUMNno1u5Abhb2UnOzDkyIleQrUqGLB4XAudH/SY7CErLhAzVc68edbbIAp0
 dvx3D0N7F2dmGSLlk8eA9lrH3o9XxOhhDkWUOlE5basdb3I7hnkNG7xp4FJXDXdwm8Ti
 POjw==
X-Forwarded-Encrypted: i=1;
 AFNElJ9bbLTJ3JbW/ResMspisTdpYQYdYIBavrnqX86+iBewhy6NQNHYNvnzg3B4ZmhE7QepBjaPW+wdJ6Y=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyixc0kOMOLoJbU3hpUR9n0BnBn28OvAAEwIv9S8eKSholECUXc
 xOTWU8Aaf5/0U3TRKXdmCrLwYKNK2HB0XdV0V4OYjvlWHFtjv4/qjTYn
X-Gm-Gg: AeBDiet61+6WCx4dmzUjES1Giz/U8FBpMR2az01A+qt9W5E51Rt0DXwPZnL7eg34O20
 3TUV0Rw3rnZoUOFSqu/oXdNTAitXGQgZQMPMY5HbstAoWq0qTdSQRrWaaBcGg6ovFomjIa9YnIE
 YWluug/gTQ7cV5i+AhTugdTQU5bmI0tAvv0fEnbAFUNasSJ1Wsu57DskAlU5BhpYKl3apk0iRI/
 WyZKg5Di1ANJPP7bW8/5dThbjiWxXAToh874tlWKbOYGJ1PkL24phVUrfsrESvH5rN/1pu3LIv/
 bF/siW24XjNwq5FlR5ujVOO/a5VibDzb5DxeTdkAAhNS+GRjgj4p8Qtc+kJP42d+faSNbjUt9MQ
 sGuukqzcDOSi8eSDTUXLhA41Wid2dU0Yiwk9Zh9YwRVk4CisTE/6yBfUeZCVbuCFYuNPQLW7VvH
 kKuD/IOtGMjSnQGNsJgTZBDwfKzC3lsjwAFsCpeKpu1a0Hv9gzB3yo588a+6ceOHzW89aF0aT1
X-Received: by 2002:a05:6a00:3cc7:b0:82f:5051:f024 with SMTP id
 d2e1a72fcca58-82f8c8ca07fmr30722640b3a.27.1776953547884; 
 Thu, 23 Apr 2026 07:12:27 -0700 (PDT)
Received: from localhost ([134.134.139.69]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-82f8ec0092bsm22254963b3a.50.2026.04.23.07.12.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2026 07:12:27 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2] drm/i915/display: enable ccs modifiers on dg2
Date: Thu, 23 Apr 2026 17:11:48 +0300
Message-ID: <20260423141148.3145665-1-juhapekka.heikkila@gmail.com>
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
	FORGED_RECIPIENTS(0.00)[m:intel-xe@lists.freedesktop.org,m:juhapekka.heikkila@gmail.com,m:tvrtko.ursulin@igalia.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:juhapekkaheikkila@gmail.com,s:lists@lfdr.de];
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
	FREEMAIL_CC(0.00)[gmail.com,igalia.com,intel.com,linux.intel.com];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E6B38453804
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since Xe driver aux ccs enablement dg2 ccs modifiers have been
disabled on both Xe and i915 drivers. Here allow dg2 to use
ccs again for framebuffers.

Fixes: 6a99e91a6ca8fec5882450128fb128265f86b32a ("drm/i915/display: Detect AuxCCS support via display parent interface")
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
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

