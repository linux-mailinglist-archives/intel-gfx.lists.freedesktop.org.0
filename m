Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yTD9KlpVTmp7KwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 15:49:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 117A5726F44
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 15:49:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=tFLRu6oM;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B3D10E60C;
	Wed,  8 Jul 2026 13:49:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com
 [209.85.221.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 992D510E60A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2026 13:43:27 +0000 (UTC)
Received: by mail-vk1-f170.google.com with SMTP id
 71dfb90a1353d-5bf5d4d5d67so412559e0c.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2026 06:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783518206; x=1784123006; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
 bh=BTjqa+8oynSoVj1P4JC5t/e1L3Jq0cVpGMAlSPn0/oc=;
 b=tFLRu6oMRZVeGsW8VeP1a57m5TyezZzToNqsXsEr+fuj8f77vUeVEFxwwCiFA2QrUb
 FLNoG1iPQs/ExNP6L6bdu0NKrLaWxGqUf/sjPwbmAh67uv8c1wyN6QxCM1Vbt6I+g1zw
 FOv3C0RUsqF/q9Gr1DZhhCYyTV18o1ueB1cykofRoCSNZSeuQltraTf6E3QpD3VW7cdS
 NTZ8EMTt21A1IrhFWNIAWOqHs5LK0em0CnzdaBXMyjFzmnKmXLQuV9gGeAXnTfLBzh7C
 UeTwaTOGT1Nmr9chc90L35PVb9onJhgTU45u7+uU/uL9vQaPYSvs8VLKW0Kb2JBXj2XR
 DT/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783518206; x=1784123006;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=BTjqa+8oynSoVj1P4JC5t/e1L3Jq0cVpGMAlSPn0/oc=;
 b=qdrcSpKMAtXkyO7bziVWwGBqwupb58deO47BBl7CQmlpgo0HNNF7hs3JPkpcmu01dU
 WyYOUu0RXG8uKBUtl4LOfUFf2pFt9ophY0W6wJFxKkSuKbAZlqgwRgtPSkQFKn1RthPg
 ydQ1JjF1LUsEydFbELF2VUTAOMcz+BE0Gfjv2URYm3nJ17I+Z7qTZrM57LtQM48n+pyZ
 WmCZAUDgj2OYJlz/aHTFw4n0N8Hr6QY2XIf9YUovc9E8W2BL2ZbSCYJ+qLhrYzOBl2Lv
 rNR1Fdly1uqwnn1g1rejVGHqhwbYyIGI50GbNoyaCbjWxyL8c3/0UzOE6hDokf2xz6Pj
 72Ug==
X-Forwarded-Encrypted: i=1;
 AHgh+RpZEjFCPy2gaURwhbD41JWHBn4pZp83regh5AHYRSXsh/Z02C8HVXa7NQ0m08+ZPB6ZZGTXOUzp82s=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwgPndXLxIqA21Dm0BZQ6jbV7B0gfbSYpgLWxZYDRXHEjSTLeBk
 QENExKWfgEiag/J+eP6WEJJOlQT6jXmOZ2muqK/eeG8IYZDD2tJHwTyK
X-Gm-Gg: AfdE7cm5kjkx6ik6bgyulQOLko7G0KxwozuIV6UZCC0b0KFmbbaCzNrAXVq5dIhk3Jk
 g6OxhTBh0ILJ1oQu7qJzRWPQDLYNuXSXW3+VtNLq1gr1waXIGjbdvxUvkR5a6Jezef2zWK/VPYD
 Z3FuBrKGPgX3aefps44Zdq52VhbkKX52LuoXt0Wjv9mmWMLj5e7ut7gULDZH4NaclI5XGU8GqZH
 wnZj5ZGU7zMePyd2fa7XwAxR5RK72kziam1hJPc1ccxc5FXFYR71KbPYB+4Za6WOehkazmpCBwF
 fon0GlYfeFNPh3uBmXIt+v6/gbg+nNMnGKrAAU463oobzVFJQ80Nw+XpIo46+sFnOqb6Ywd8/Nl
 GTsPQbajAZHA/PcBrIWgsMgR5vn2i4ZI91/ezklw52MOSD1jIWwuXQtjNPxuALSElTOiBZjCYRI
 RmC5+jgLLNDmSn9oh1bMhvHVIp6xRY
X-Received: by 2002:a05:6123:102:b0:567:4e8a:fb13 with SMTP id
 71dfb90a1353d-5bf75dc3cf4mr1129732e0c.8.1783518206208; 
 Wed, 08 Jul 2026 06:43:26 -0700 (PDT)
Received: from fedora ([67.230.148.25]) by smtp.gmail.com with ESMTPSA id
 71dfb90a1353d-5bf6f5e12a9sm1652971e0c.1.2026.07.08.06.43.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jul 2026 06:43:25 -0700 (PDT)
From: Thierry Cantin-Demers <thierrycantindemers@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org,
 Thierry Cantin-Demers <thierrycantindemers@gmail.com>
Subject: [PATCH] drm/i915/psr: Disable eDP Panel Replay on XPS 16 DA16260 (LG
 0x07C5)
Date: Wed,  8 Jul 2026 09:42:52 -0400
Message-ID: <20260708134252.11854-1-thierrycantindemers@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 08 Jul 2026 13:49:11 +0000
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:jouni.hogander@intel.com,m:mika.kahola@intel.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:thierrycantindemers@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[thierrycantindemers@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,lists.freedesktop.org,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierrycantindemers@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 117A5726F44

The Dell XPS 16 DA16260 ships in more than one panel variant. The existing
quirk entry only matches the LG Display panel with DPCD sink OUI 00:22:b9.
Another variant of the same laptop (subsystem 1028:0dba) uses an LG Display
0x07C5 panel with sink OUI 00:aa:01, which is not matched, so eDP Panel
Replay stays enabled and the panel hits a persistent PANEL-REPLAY Link CRC
error, dropping the internal display to ~5 fps.

Add a quirk entry for OUI 00:aa:01 so this variant also gets eDP Panel
Replay disabled. Confirmed xe.enable_panel_replay=0 resolves the issue.

Fixes: cb8d155b0806 ("drm/i915/psr: Disable Panel Replay on Dell XPS 16 DA16260 as a quirk")
Signed-off-by: Thierry Cantin-Demers <thierrycantindemers@gmail.com>
Tested-by: Thierry Cantin-Demers <thierrycantindemers@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_quirks.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 33245f44c0d5..e452235832fe 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -286,6 +286,14 @@ static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
 		.sink_oui = SINK_OUI(0x00, 0x22, 0xb9),
 		.hook = quirk_disable_edp_panel_replay,
 	},
+	/* Dell XPS 16 DA16260 (LG Display 0x07C5, OUI 00:aa:01) */
+	{
+		.device = DEVICE_ID_ANY,
+		.subsystem_vendor = 0x1028,
+		.subsystem_device = 0x0dba,
+		.sink_oui = SINK_OUI(0x00, 0xaa, 0x01),
+		.hook = quirk_disable_edp_panel_replay,
+	},
 };
 
 void intel_init_quirks(struct intel_display *display)
-- 
2.55.0

