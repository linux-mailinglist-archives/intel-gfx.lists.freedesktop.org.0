Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0wxbEuDCPGoNrggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 07:55:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 319FB6C2DC6
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 07:55:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=canonical.com header.s=20251003 header.b=Hg1NhNZm;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=canonical.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC27510E19A;
	Thu, 25 Jun 2026 05:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E838910E19A
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 05:55:39 +0000 (UTC)
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 515D03F97D
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 05:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20251003; t=1782366938;
 bh=hrK/hqc0KTSs3qSmB6J+wib7JPcAUEvvkJ6klAPWA3M=;
 h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
 b=Hg1NhNZmiyR300zXNDW4D6Elo2/dqLNXIz6fr9g76cMvu1syrG9cWkdPT/5N3aLLW
 +efcaZRzphnyOP3EEtmOx7eCSjBBHK0A1sNC1QN/fR2D5E7/yCv0wd6YDO37nKjDeW
 jqPEm2ATMAPapj8qe4eyIs0iybLWr6/YlBHpjZEWz2jdIybfNimV2iWsqEN5vOHsJs
 6Rgg4bt5QWMhFatUB+yimh+NXXpcpwFD56JygGZ0q77XrvJX/vpBlH6X5owmEeS/UL
 d594U8lFcn9wLR+5sxhzNh2qcVdWoNLxlwDgFM0f8h0BK6htdtIxYzkOiNuUPkmADr
 WVK9s3dAtOxldA+jc2zfDCLgKGYSny/8VRrOcm12tV/GXdLQrGaVN6fu82m9OUzzjX
 LeoQ324x6B+DoYxpUVGz5dg5OxAly7o4OjZriGw7j+YOAfSWu9dAkGIgScj3VXxkDz
 /WhtboeqPZlNkNYlxKiTZz0qpXz7G21bGrtJaYH/7yVP04jK1WZfFiOYa0UmRbvgat
 D0HV8Xff6jJezhH2voGZNgvBr+UG6Wb6stEXZOcrM22OM5qrkhNMsqG4rzKHX0MfzM
 BvPl2XP7YJ2xN4ilsfgOYMOQSfVrGjFhHjwjP+AebKaBgJ+DNgHL1PVLhB7XKzXdlB
 xeFsyVp1vrFh1heUGqemstWw=
Received: by mail-qv1-f70.google.com with SMTP id
 6a1803df08f44-8e0dfafa41fso35797916d6.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2026 22:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782366937; x=1782971737;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hrK/hqc0KTSs3qSmB6J+wib7JPcAUEvvkJ6klAPWA3M=;
 b=YKwzJgOYQrKdkNGLmPCGnk4H0stMUmJipQ7Vg6GqY5I6j4Dqbtj2Gw9pLZXdyl/26G
 8LLWbdWE4A957SE3xaT2ep6DvRFpebZ3SD0x0SVp63fw//7PAAtA9lFEAteVJMx5WsY6
 qKRkM3Q12Jq3hDSLpRydgKZO5e9Zim7B+3/DW8cEY/AXi1Ngv+VIdt9C51aMxWm3wRPo
 yUHGajmrvNwc2JmDEJ6YqGA1bwspzzkalGQod5F4VZHbn5j9vFIed3kd4pe0qcyR+ge1
 oA9wBYXsOKThkBRTzLtg+SDTdpIYxH1kdRd1yN9xm3JRi1yvsSIgT82geKxnoNFGOne7
 9V0A==
X-Forwarded-Encrypted: i=1;
 AFNElJ/7J07WQ0CIJSvC6jy4Rm1PJEBM2Jzib1QpqhbqvPnanjB4qKrfqgtfJIyX4wus8vNWmd5kYKlKUNw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyeEvfdj0jvLJ9Ls/TaYJhHWZRj4XpxrQ10Zp3NdjL2ld/Mp6r3
 ze7oq/zi03gkxn0gD19LtZ2rKUflUWlx1ySWV8KO/loILQ7T5nyM6M7LY45aZHB3UXW/zObL1DX
 2drSZ48iW6BomxGXuccYVy4z3VVipfzppOD81hK1b5lWRy9DowHwzpZSSHerpPerx8ipWj55rd7
 8WEExlP20U4A==
X-Gm-Gg: AfdE7ckH/YBbwynUcKJ9rX3HnbMsXY+IgPeJAtSmLPHOnUlnwMacmbUw1+14LNqUrkb
 MRArIzfGkNU5r81eptGaAiuEBB6+T0H8upQg4DKxl661h9p7e+37tIlJV3M2zW4vvLFya0nQQMF
 xyWissIrxKuRpstvoev/9Dopx4dSWyjYT0x7LMEsYhLlLH14UT2HsVIhxjx6kW7uCs/VGTmdXFd
 IKbKvMFak6aCDQ0saltg2N4XzYvq8HPfw3yzDddsp1g41L2xXVVB9f+X9i3bg8RutskPaCHr30b
 50sGCdmQ10ZYFf2Z9nzg2GNnw2aod+nlMfWtePQ/ySWe6/vzWVE7QgWaFw81Qg3iQs7lZGMAQrd
 xmiAI58E+WEMjBEyhJWwoPv+TgEwiOcv0Iemh7wWniM/7f+O/ubnYlbZobtf2UQwhfvdSNsgmoS
 17X5eU0zw=
X-Received: by 2002:a05:620a:1b95:b0:918:419:4b49 with SMTP id
 af79cd13be357-9293d4b31aemr151565485a.32.1782366937133; 
 Wed, 24 Jun 2026 22:55:37 -0700 (PDT)
X-Received: by 2002:a05:620a:1b95:b0:918:419:4b49 with SMTP id
 af79cd13be357-9293d4b31aemr151562685a.32.1782366936736; 
 Wed, 24 Jun 2026 22:55:36 -0700 (PDT)
Received: from localhost.localdomain ([103.155.100.9])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-926000c2a09sm720088185a.31.2026.06.24.22.55.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2026 22:55:35 -0700 (PDT)
From: Aaron Ma <aaron.ma@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2] drm/i915/psr: Skip PSR exit for legacy cursor updates on
 LunarLake onwards
Date: Thu, 25 Jun 2026 13:55:14 +0800
Message-ID: <20260625055514.3636380-1-aaron.ma@canonical.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[canonical.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[canonical.com:s=20251003];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:gwan-gyeong.mun@intel.com,m:jose.souza@intel.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[aaron.ma@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[canonical.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[aaron.ma@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:dkim,canonical.com:email,canonical.com:mid,canonical.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 319FB6C2DC6

ORIGIN_CURSOR_UPDATE falls through to _psr_flush_handle() on
DISPLAY_VER >= 20, which calls intel_psr_exit(). Cursor plane updated
via legacy ioctl (drmModeMoveCursor) does not dirty the primary
frontbuffer, no PSR2 state change is needed. Match the existing
ORIGIN_FLIP behavior by returning early on DISPLAY_VER >= 20.

Before this, the psr2_sel_fetch_enabled guard only prevented the early
return when PSR2 selective fetch was active, sending cursor updates
through intel_psr_exit() and causing a black line artifact on some
panels during the exit/re-enable transition.

Preserve the fallthrough for pre-LNL platforms with PSR2 selective
fetch, where intel_psr_force_update() (CURSURFLIVE write) is needed
for cursor tracking.

Fixes: ef39826c12b4 ("drm/i915/display: Fix glitches when moving cursor with PSR2 selective fetch enabled")
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
Changes in v2:
- Add DISPLAY_VER >= 20 guard to only skip PSR exit on LunarLake onwards,
  preserving the intel_psr_force_update() fallthrough for pre-LNL platforms
  with PSR2 selective fetch (addresses Sashiko review about cursor trailing
  artifacts on pre-LNL)

v1: https://lore.kernel.org/r/20260623084137.3421894-1-aaron.ma@canonical.com

 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e138982dc91f6..ba8c427f45463 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3772,7 +3772,7 @@ void intel_psr_flush(struct intel_display *display,
 
 		if (origin == ORIGIN_FLIP ||
 		    (origin == ORIGIN_CURSOR_UPDATE &&
-		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
+		     (DISPLAY_VER(display) >= 20 || !intel_dp->psr.psr2_sel_fetch_enabled))) {
 			tgl_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
 			goto unlock;
 		}
-- 
2.43.0

