Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wVOoNCFJOmpa5QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 10:51:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 694646B56BB
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 10:51:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=canonical.com header.s=20251003 header.b="nO/hURDq";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=canonical.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0337B10EA18;
	Tue, 23 Jun 2026 08:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 576 seconds by postgrey-1.36 at gabe;
 Tue, 23 Jun 2026 08:51:42 UTC
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C22C10EA18
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2026 08:51:42 +0000 (UTC)
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 706823F2C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2026 08:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20251003; t=1782204125;
 bh=YRUdbfA4V8+mw/54eWhWx7hbp+2WiDaQD/36neeUeQE=;
 h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
 b=nO/hURDqPv0Hw+LeLdwYSAUk9XCKOBR9X3Z/uIukpBB3qVPz3Pw+1ESZJgjGJ14Pj
 nKO4TdZw5pW1QHKNGOc4HnV3dJxVarsK3IxuDleBCezW0zOPqHvE9C/erIscGYpVjy
 bq52dGJcTAj4QzxwpIjl4Rja+SCm01bq716vSYAFXPaAnlJSsuHh/RSXyidt7d3KAq
 tRNokxpmLunnnuk4TKtjmLpt0pUmKPvTOdjm28W79pIWLL+X4I6vG3n73M54UcEx6f
 amxwZsRaXibaFzggaJ4YcHAhUaBnr+TlH10lCJO0QgS5ZlGMARuGNuLo/BzZO59l3Y
 UBCOlIMc0AZpJ4drsYivLxXMABmq+CvzMwppXP0agREcOcThVUc54DwPW10QMvmKQw
 h+K1xspjEjve9A3kpo4snPags7/TC5pjfCn5aeQfe0hYmBLFPgz+Me5up9PvH2uz92
 macX5KHODPLXe6RDwJf2v0l5ghVB2jplbqqAv5IstVl8q7OtdS9M5sMyPAtEQ8Zh2v
 0MLn8M3P+WDNaCvgAr1DlOJhh/OaOC1PUR0aBGpGdXzbon1jNpLYGERow5EtQs/GvK
 lHv2moGgCZ3pz3vNoglD686SDlGC1pd6RUDAcOV2qC7cFHjrhJaBROxO4Fe4623vsa
 Pkr2HLigBqiT+hT4YZb5y6j8=
Received: by mail-pf1-f200.google.com with SMTP id
 d2e1a72fcca58-8426ed9f24dso545585b3a.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2026 01:42:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782204124; x=1782808924;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YRUdbfA4V8+mw/54eWhWx7hbp+2WiDaQD/36neeUeQE=;
 b=Y1nbw9iqmB79WKVb78gczIGvfAVbC8pZ+toJ1pHQ6haGG++8g/PFkgeAxnEXT2Aa8G
 uWztgwofwL3S+Baj5dKxPihcpltehREjV3Z2AoWLVlHq2kp6/NmNJloR0ySzDltJDW05
 NNlIRzDAvwO2F2A2NEpY9RstqBL79ONQztJVsUOH15e/w8xnXEIbG1GoBK9JevtNfelA
 X7xNSw398BWQd+/ddKiTMlSwmKU0Do4Sv1dUct/09YKjoebbIdy/fha7S4szgdCZSZat
 RYv8rXBKEmpTN0ohzvyv2vPQZn5aENgusxqciNghsgchiICsCuMTcanP+GgEUzSKyWUv
 eZ2g==
X-Forwarded-Encrypted: i=1;
 AFNElJ8GcNK+/BHfoRGw7MmFsJpnS0FhEi9aTfB9nrdaKO51+IAotctXfu3hwufdCdAKSW+EaZ2f72Qk3Qo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwNho8in6d2twJlh2JvpsyZHJhcmTXa3JL9RWEYmCD0di8exENi
 iR9BCGV4W6w4d2ihVjIAYj125By1v3q5n3T37msumXajhnqtnWWjtikbqhXjrpzWnEGlC6nYvuh
 IhNresPYNshC6wQeNnPs8gvTKjlrEAddIlp67FE8nvroW2KxLaMXZeXpxaI8A3nXSQvHG2Mfu0l
 Pglr5RJ3a/zg==
X-Gm-Gg: AfdE7clHcUOIR9TAuNZ0NJFPaVbQk4CFRBJBIeyDawexJHiU1dD0EeSfuZ9XjxSJTsw
 Ks8x1cLKjeXomu8+ECp9rt/DI2jkqCvPPVEX7oI7ne4/QtVuIElTD9rAHxdlJN8KhUEtUsYkanh
 e+2DDLxjkc+Hp3Irtir6o4QOji4t1x4a1fJAJf6mjAPzFTBJ477q9LeQm8qSkW1zeZCdv08yinY
 EZzUqWFRU56K4q8W7V3tq7ceHQT0ieQI3+PjCRwApYqJfilrdw2NSXvIuUAv2nma2lp84lFHi9R
 AYu80Xvp11IIN2PJpl0ttBUWXV2wLsKiuc7AJY7G2gUKgvdS1m7YbHDDgkUX853WwqmQZqclZSl
 qMuf445R8BsiWEvbkms67WRXqEyczvFs07gtPhYaGoaV4/rdu5uAbRkFtucXZCrPB9LZj0MwcI3
 AKn1pXMZU=
X-Received: by 2002:a05:6a00:21cd:b0:835:447b:a2ac with SMTP id
 d2e1a72fcca58-84591b23f6emr2544149b3a.5.1782204124102; 
 Tue, 23 Jun 2026 01:42:04 -0700 (PDT)
X-Received: by 2002:a05:6a00:21cd:b0:835:447b:a2ac with SMTP id
 d2e1a72fcca58-84591b23f6emr2544117b3a.5.1782204123617; 
 Tue, 23 Jun 2026 01:42:03 -0700 (PDT)
Received: from localhost.localdomain ([103.155.100.6])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-84564da30b5sm10828955b3a.25.2026.06.23.01.41.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Jun 2026 01:42:03 -0700 (PDT)
From: Aaron Ma <aaron.ma@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Subject: [PATCH] drm/i915/psr: Skip PSR exit for legacy cursor updates on LNL
Date: Tue, 23 Jun 2026 16:41:37 +0800
Message-ID: <20260623084137.3421894-1-aaron.ma@canonical.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:gwan-gyeong.mun@intel.com,m:ville.syrjala@linux.intel.com,m:jose.souza@intel.com,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,canonical.com:dkim,canonical.com:email,canonical.com:mid,canonical.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 694646B56BB

ORIGIN_CURSOR_UPDATE falls through to _psr_flush_handle() on LNL
(DISPLAY_VER >= 20), which calls intel_psr_exit(). Cursor plane updated
via legacy ioctl (drmModeMoveCursor) does not dirty the primary
frontbuffer, no PSR2 state change is needed. Match the existing
ORIGIN_FLIP behavior by unconditionally returning early.

Before this, the psr2_sel_fetch_enabled guard only prevented the early
return when PSR2 selective fetch was active, sending cursor updates
through intel_psr_exit() and causing a black line artifact on some
panels during the exit/re-enable transition.

Fixes: ef39826c12b4 ("drm/i915/display: Fix glitches when moving cursor with PSR2 selective fetch enabled")
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e138982dc91f6..32bee6c03b754 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3771,8 +3771,7 @@ void intel_psr_flush(struct intel_display *display,
 			goto unlock;
 
 		if (origin == ORIGIN_FLIP ||
-		    (origin == ORIGIN_CURSOR_UPDATE &&
-		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
+		    origin == ORIGIN_CURSOR_UPDATE) {
 			tgl_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
 			goto unlock;
 		}
-- 
2.43.0

