Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c0TFBdu0JmoubgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:26:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D793E656241
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:26:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=DGpN5gBI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B50C210F303;
	Mon,  8 Jun 2026 12:26:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C2010F304
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2026 12:25:59 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-490b8ac62baso34514255e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Jun 2026 05:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1780921558; x=1781526358; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=HToUuJ6es2zjFw8PTyZUYRF4Q9UIJtuonF67RdPYTL8=;
 b=DGpN5gBI0CSXJqbk0MH5r5KvVjW+s0pJV2y4+NfjfT36UCFHtfve2zW478p9KYt4Hz
 SfgfAYwD89/BbPce7RPgsmgxGheUvL6vY58gduyblKLd2mHFPrBOPxoQzkl6ib8AR8F2
 FfsnCxCoLlJNOTJzor6zl5/NSnwi0mi3QTDPQwJKbLwq574jJaStf2idcWnUZCvXl3xQ
 h/w9Jd6YA5qQBkiGeZfG2j7kNCxFgPM35IA8d6geWFDoRTWXgc6M4xkWSnTkkPZh1LXU
 WK9tD5qy6myG2ruOEHeyaxzvmkPHMJ6+/SnA1e7dqsGytfyoq1gTWX0LHWiffxcfdJic
 W6sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780921558; x=1781526358;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HToUuJ6es2zjFw8PTyZUYRF4Q9UIJtuonF67RdPYTL8=;
 b=M7cpdqtbKabBnqfpXIQp5Rx5AIxoT9X/SoULLNex4/2zUWx30rAeYQBCrb3WCvCLeR
 QEHdAkJdt9sg5gWzdI7EdONSWbzmWf+Sim4R32arEm3pvJKz/wVMKtfh0zqEsHsd68Rd
 A2vLWbpjuEoRrQk+kOJY1G6d7QCIoUvSib8TUQldMxmpl/CohWS2z1w4s/u3HRsEAETx
 +fq6kKtLNMXc3G9y41547b5CrToZsILs2ZsJf9/Cy9d2nlfX/oH8wI7h8M6idvUPR3lL
 Euc7k4jz1hHXoOkY6VZ7H2YrGO1qoffLcOA5VXHOm9atHxc57HcmkYZqKP9zxmIagQWg
 rQrw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/TozCtemXE1dREa6uYcyI8SjHKaJEjrbZi/ICrZ5BWbhokSbD+Zyq1ML7c0CPpr2m8gmyxWioV6DU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw8TtwBaL1/Hw0bODqpY1emt2CsTEJZxV+tMscogtltn+HCG2z1
 6Z7r0tCi04tK3KBqyoAH5IoDdn3TPhsb9WxjvHd5KxLhEu7Hf/STbaQ7
X-Gm-Gg: Acq92OEWi9sSj1Eduf82huy6nC2WX/6bHUzFziiHvpTLoiklt48bEgGg66cG5TRbqBn
 aY14rl7TKGfBgoGqhgUpod0K+L23bfilC9gciv6TsWS8HHYGgu2SafCQDH1yr0TE4vJTBvIL+Ma
 PuOWRS4vAzBZmD/WgniuW3Chlcyaw47OqHR4yTgBFUsVcuHVt8kumDlVVcTYcZys/SDAPPRXG8e
 UQ4rW0YCHNA6cWQmI5iT4Rx8we/Ubse4VdAuWj2JUicwSX4IRilZn3Fix/keJ6scr3sZg/QOChg
 O4WoB+5S0OsVSlqqW0w1H6lwWovlHeSyY0E68V73IdlZE49QRYhGmgsf7ern4YghnFjySXQlimz
 sDzFnXgsm6+QW8CU5gqQmfxZYgsxx3OJ0FYWeA27i1BjKViDpjPp5CFxpwUuAyd4JxL+2apVIy8
 v4V9DdBGi/fhtINmHZ5QfLOuqIkjndzjbR
X-Received: by 2002:a05:600c:8208:b0:490:ad1e:1846 with SMTP id
 5b1f17b1804b1-490c2cf6718mr190635455e9.9.1780921557568; 
 Mon, 08 Jun 2026 05:25:57 -0700 (PDT)
Received: from localhost ([87.254.0.141]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4601f351d69sm94264837f8f.29.2026.06.08.05.25.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2026 05:25:57 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH][next] drm/i915/display: make read-only array rates static
 const
Date: Mon,  8 Jun 2026 13:24:27 +0100
Message-ID: <20260608122427.48375-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:kernel-janitors@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[coliniking@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[coliniking@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D793E656241

Don't populate the read-only array rates the stack at run time,
instead make it static const.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 9076c2b176ec..351a62654a8d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -71,7 +71,7 @@
 
 bool intel_hdmi_is_frl(u32 clock)
 {
-	u32 rates[] = { 300000, 600000, 800000, 1000000, 1200000 };
+	static const u32 rates[] = { 300000, 600000, 800000, 1000000, 1200000 };
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(rates); i++)
-- 
2.53.0

