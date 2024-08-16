Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4030F95483E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2024 13:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F3A10E135;
	Fri, 16 Aug 2024 11:49:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WzaGJAr7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
 [209.85.210.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F63B89261;
 Fri, 16 Aug 2024 11:49:12 +0000 (UTC)
Received: by mail-pf1-f181.google.com with SMTP id
 d2e1a72fcca58-70d28023accso1538029b3a.0; 
 Fri, 16 Aug 2024 04:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1723808951; x=1724413751; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=ePlNQV/zS1kTwPFxChDZYJ8syLt4h0aT38a2PsRLSbE=;
 b=WzaGJAr77u5EJesO+V/mFHLQXLQE0CaFuQ8yaQWblo3/b7ejWCpxMmrzF1kxdtdrH4
 FGlo109qutUxqecFZv+2jD094hLSA0sClgdR27Qmc5wiAFhyQQQX/glQyUTOqYbKlY8e
 6iDJxeXWYR2ME4YXQ/LWZJylZtTaccTARg+HcUq1ZIgRYtkN1nFj5gYT088Oh5T7GPh9
 LVu1ujpDGJSK/AaJqPSCOFFsKZtp730FmbmvpKQF6bUQ3CPaJuZBRBTJSXXA2Wj3zsj2
 PHHngKzjBjeS0+PbTeIX0e4vu2D4aMdnzGpE8rGj1WNuJvUK1//qIsTYZ6Uwr92j5XWB
 La5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723808951; x=1724413751;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ePlNQV/zS1kTwPFxChDZYJ8syLt4h0aT38a2PsRLSbE=;
 b=rWEreLKTh56y/i+6iF53TIqZe2n5NUQxR9n8CK4mYHYvsLAz/cnULRfnLIjGdnnF+T
 EUh+l3ZukPyqYsrVRtWsGbrI9hwOjS/AGo6OwGF3IOaDiJUqJ2MvvPKEZIREsbcr0J7I
 K5/7glup6lUpDYQ5zlXJ6kmlNiTO/0FhuLWwtvC7jNAAK7Z1eBEH0n+H7gwEyDDdlnFm
 e8Rp6tHQKfFLF0Ini4iAHg0eujQQ0jIGsw8MW0yu1Mq+Zcxyv1oWWqxhhiq7uB5fnSjL
 s3z08QPz2I9JtMY6WPeDgyVDPfZr/ZZtAIdDyUkQaKgwV63BeXWLuQZsUsjyrEshRoLf
 hVwA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWOKz1E71LQMarQJ82aUvodXImHCU1/L9GOaq00DaZfeovng00Yuj/lNA9j59vtxLBKq9YXqL6kHZ2E1isAQmpJTQjq7U8jOMp8lK4QWK0p
X-Gm-Message-State: AOJu0YzmtSkyT7sAr9RMOff+TfKYz/3+i7AR3Gh+tNQLiqPkdD+r41PN
 6VKtLJnUfMxcHky1vK/xJLz0X4yhy1onO7gw1E8ImCQh8DjR1dnrwwwBllQuFxA=
X-Google-Smtp-Source: AGHT+IHJpBycARL0pc/fOnVY42pjqUXhxy1fGLheW9yiUZZU7USv1CZmHvsJEJYgyPnbzA+hYmQndA==
X-Received: by 2002:a05:6a00:1708:b0:70d:2b1b:a37f with SMTP id
 d2e1a72fcca58-713c502ff9emr2885226b3a.24.1723808951192; 
 Fri, 16 Aug 2024 04:49:11 -0700 (PDT)
Received: from localhost ([134.134.137.78]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7c6b6356baesm2435339a12.68.2024.08.16.04.49.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2024 04:49:10 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 0/3] Introducing Xe2 ccs modifiers for integrated and discrete
 graphics
Date: Fri, 16 Aug 2024 14:52:26 +0300
Message-ID: <20240816115229.531671-1-juhapekka.heikkila@gmail.com>
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

These patches modify how Intel Xe driver handle compressed Tile4 framebuffers
on display with Xe2 hardware. Specifically, here is added support for
I915_FORMAT_MOD_4_TILED_XE2_CCS as a valid tiling mode for new framebuffers. 

This change remove unconditional decompression of Tile4 type framebuffers
on Xe2 display, as handling compressed versus not compressed framebuffers
have different requirement on discrete graphics than on integrated.

v2. rebase and change doucmentetaion render compression -> unified compression

/Juha-Pekka

Test-with: 20240812201124.2013652-1-juhapekka.heikkila@gmail.com

Juha-Pekka Heikkila (3):
  drm/i915/display: Don't enable decompression on Xe2 with Tile4
  drm/fourcc: define Intel Xe2 related tile4 ccs modifiers
  drm/i915/display: allow creation of Xe2 ccs framebuffers

 drivers/gpu/drm/i915/display/intel_display.c  |  2 ++
 drivers/gpu/drm/i915/display/intel_fb.c       | 18 +++++++++++++
 .../drm/i915/display/skl_universal_plane.c    | 10 ++++----
 include/uapi/drm/drm_fourcc.h                 | 25 +++++++++++++++++++
 4 files changed, 50 insertions(+), 5 deletions(-)

-- 
2.45.2

