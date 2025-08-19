Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A68B2C56D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 15:25:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5017610E5F9;
	Tue, 19 Aug 2025 13:25:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MqclIc6B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 758E410E5FD;
 Tue, 19 Aug 2025 13:25:34 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id
 d2e1a72fcca58-76e1ff326bbso4722688b3a.1; 
 Tue, 19 Aug 2025 06:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1755609934; x=1756214734; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=TGxoPb5emBAWnLSbKrJ7yoxpuuoyxwSqDWl8J2Djd84=;
 b=MqclIc6BJL2dwkLkCc/29GI002JGgjcNtcaeAYWQpHunv7t+BZtFMyWR/zp9CTGmaS
 MwkRXmub53gNHNimwYugndEvPFChl6cTMlVYSAZead3HqZp/997pYkzC4VY0aJeV2Hs9
 AsNf6oGt4GKLegfxvYt3cm2EgL8QnRshmunHTduDoCIsiZC8eLKjIATCprlfQdHJzm1V
 9DvIkd0O63EvIhuHihDB8H3ot/6KUYIc7Jnzx/TwZ7jNPTHNdbaKSuLoBV8BUzmTQ4jy
 9hThPILlD1C2I98vPsTOcupLkg6g5AjBx23nF/oedUbGo3hdGTyZJweevzRTXceZ+cKA
 D/UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755609934; x=1756214734;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TGxoPb5emBAWnLSbKrJ7yoxpuuoyxwSqDWl8J2Djd84=;
 b=r+R12Z97AC6jYmAePQElFVEE9tBLlPFDG38MGvmpF5ggyX+TDl0NScl9SfJ4yyncUP
 2tZtDrd0gY5vybnjGHON73IMqB3njkoQTcjdEpvWmw4+MHXiSkZycA7A6jYgK8DzjQpx
 UFDWhuTCbTZhYm71UXzq18V5Urb/YNQtqYB/9JIdlvZePyFP0cGBwg2u6+dsFIRTA9oL
 /1VQKCKjgpkSS7/2j8HzCBgF4ekkcYkAxlAgPh2AKInY+SKn/HN/H+HMyofPu4lzT1tI
 Hoa+bGOF0VBrqXhd/5bkqLeYKZ/oxFnDvtcHm2znmhB3l+d/9VQosgy/7oUCurNldo8i
 f97Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUlbqLdqO0TyJrNOuFDC+ZehV0hsgpHGDEUKLFLOKPD2q+y0Xbrjt5GngtQstfubAX5zMwButNFDw==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzYO0GDjrLgXTZfIOLnNc/zM3b/S1BnFS8VwG8Iim7no55ZPFia
 fp+vvjKjT6LTRzhgCrEtADujxd7cx5vWRvomseksUGyA0ZV8f52Zk1q9C7vR9mIgJ7o=
X-Gm-Gg: ASbGncsgpLMss/5SCxaYjIvdd6kVBM06IvJbf+Ebo3ECUIjza27GY4sm7jIFAPwXWfv
 w7sVefgurE5IKMoBM/lLFyC2DVjQANduZhlM6ZaEJwhDxAxNuHQrs0AA1SaCIxEjA8zEVcTl+D8
 yPzvKJeHpLVB70vf3WwYnWWAe/99Oh4IsP3JJAO07JtkLF6hzpW4HAUHmmM494gB7E/23qFWdJw
 Cdo4aygYv+WkIm1D4CEJH/VWUTOyaPB056+78xDOWRH7d3I76r7TuUClLQuB62paFhCGR5Gw6aB
 sa3Z/aQcvmLQlVRem0aDSiLtx8iZp3c0TIIDm99mkJuiCG2QsU5sQm1V9PyfHrsvEhBLYI9Byh6
 BHTwSqegF7DCZaCGrjPTK571eGos=
X-Google-Smtp-Source: AGHT+IGE9QDhd7z+BpnwLpSjvQIit4ifnA7C+iqlpYMp/Mk7sr0I6WgihdI5/465Yr2fqX5e5cTixQ==
X-Received: by 2002:a05:6a21:328b:b0:243:78a:82cc with SMTP id
 adf61e73a8af0-2430db13ee9mr3048380637.25.1755609933473; 
 Tue, 19 Aug 2025 06:25:33 -0700 (PDT)
Received: from localhost ([192.55.55.42]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76e7d4f780bsm2564182b3a.71.2025.08.19.06.25.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Aug 2025 06:25:32 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH] drm/i915/display: take out dead code
Date: Tue, 19 Aug 2025 16:25:26 +0300
Message-ID: <20250819132526.18643-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.45.2
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

if __waitfor timeout, ret will have -ETIMEDOUT. Then if condition
was met, and read_ret will have error that's handled.
Then if ret was zero, read_ret was zero ksv_ready must have value.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 42202c8bb066..2e34b625c80b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -334,8 +334,6 @@ static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
 		return ret;
 	if (read_ret)
 		return read_ret;
-	if (!ksv_ready)
-		return -ETIMEDOUT;
 
 	return 0;
 }
-- 
2.43.0

