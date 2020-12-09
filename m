Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1610E2D4CAA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 22:18:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1A0B6E1D7;
	Wed,  9 Dec 2020 21:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com
 [IPv6:2607:f8b0:4864:20::f41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 579F66E1CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 21:18:36 +0000 (UTC)
Received: by mail-qv1-xf41.google.com with SMTP id n9so1367268qvp.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Dec 2020 13:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RH0q26tWfSpC6Az0z0jtBiVQCPe6xjQ2CSrs1gGcCVY=;
 b=ALIYJ8lk2fMtT3Y5EQ31oN6a79sC+/k3E5JC1eAQR2iDW/1LoOdlCA5mrvDhmmYO/n
 UJByzDBLjw8nGq6pj8F6FJYV8yM/S1cKuOlDmrjo4Q4qaNNZszMbFtLgtz9QbIuUEBVz
 4uNGSjpzgcIXtqOxJc3hpP2WuExboIpDyZpsEV25ND3/wKRUlCT7ey/h4/IQXos7oMIS
 T+BQ7X5LQFvrFA1iA4Hv0r0nnIqYcUjp6nRL7H3HUfZW4wjEHExTR04zPNkGbxTkgkTg
 EJ11nhesqB6K/lZ2ZlkznYDdj/nddJWviuU6ehUVA+698G+EQ8Iiil+ElUMqsJKVdSSA
 B8xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RH0q26tWfSpC6Az0z0jtBiVQCPe6xjQ2CSrs1gGcCVY=;
 b=h4ubtxBI0XU2P8pk9yVRRvOpZ05/2qSvDL/bmS1CWWv9BowCXBsJ3JJTX8OZlDmF85
 vCk3j4eJg9Nz5P2Rwy2qD2hAZmduBYAm1ZqhC+jUWhvlf6SiV0eqYCYv0DyGUnLkuyPt
 TGxtRZJMTPegiDGzUOUSFleeiezGiExCVvNoOt+9TqegcNhCs8U1RzzrKeoanWFaNcx/
 fQJZa9JMwYj9TzeQAAWOIcBBD9pBaSUfmgAeNGzdgzci5KyETr7TTwoCjCmy+8oh6GZC
 vAzvHTc6VBO0bM49cWyIL+aa2gOTOCa2epshFR3kIAYC3REOM7k+R+Ub5hHzcEvbo4sM
 /TwQ==
X-Gm-Message-State: AOAM530kHVjdGkGnQFuiGZz81G7r3aYHVlQmOjY95J8ONPI7eTH4Kp6M
 iGpyeW+ljMGkdRG0UOhKQFkMISAFnuDfiA==
X-Google-Smtp-Source: ABdhPJzYTSL0HkbPXHw3Y1SjoJgoB7qP4AV5GV8JexPGKr3fmNHsgjURG9nxW3Xssm33uYwERMyImQ==
X-Received: by 2002:a0c:8b99:: with SMTP id r25mr5437257qva.0.1607548715137;
 Wed, 09 Dec 2020 13:18:35 -0800 (PST)
Received: from localhost (159.sub-174-193-24.myvzw.com. [174.193.24.159])
 by smtp.gmail.com with ESMTPSA id 5sm1814156qtp.55.2020.12.09.13.18.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 09 Dec 2020 13:18:34 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed,  9 Dec 2020 16:16:36 -0500
Message-Id: <20201209211828.53193-1-sean@poorly.run>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display/tc: Only WARN once for bogus
 tc port flag
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
Cc: Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

No need to spam syslog/console when we can ignore/fix the flag.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 4346bc1a747a..27dc2dad6809 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -262,7 +262,7 @@ static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
 		mask |= BIT(TC_PORT_LEGACY);
 
 	/* The sink can be connected only in a single mode. */
-	if (!drm_WARN_ON(&i915->drm, hweight32(mask) > 1))
+	if (!drm_WARN_ON_ONCE(&i915->drm, hweight32(mask) > 1))
 		tc_port_fixup_legacy_flag(dig_port, mask);
 
 	return mask;
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
