Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F55BD5DBE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 21:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B07210E4E4;
	Mon, 13 Oct 2025 19:04:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="P8+sa8XC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 322F410E4BD
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Oct 2025 18:31:33 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-28832ad6f64so50247225ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Oct 2025 11:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1760380292; x=1760985092;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=CyHScNioNUxAqCRLSGCVsNbNpblsxmwE5o0+kKeDGUI=;
 b=P8+sa8XCtnNyXCHL+xYremb/I7OvrTXsk61LXoswPvPACotS3/cIZ7Vi/zLAXi9QzA
 vMsRr0Sa09pepxue0Cbd7CHbjQw5D+QQ9MfIG7y6LzpDYHC8BJ+CONy4ZrZ5YDypq4l8
 pE8koADkJCNwGWK+UP1PLeys6oMhGizP5jQqQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760380292; x=1760985092;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CyHScNioNUxAqCRLSGCVsNbNpblsxmwE5o0+kKeDGUI=;
 b=K4Zv4+bUz+NX2F35Z567rs2t50v5tZeP502UM0R28Om4b6pAVhXf32AYpWW92iOBoZ
 n4w11rYTe3G+qyOszL3ObauspirYWehmgbzzOXqxIjWhGMLyTUP3ED5Mj23es7NA5aFW
 GFeGO+gK7aNG83hdB1d/9TZJOEL3ppBlU9Tp3AfLiXweX3LVOqMXo30seydptI8h7JLH
 dfTY/aOxi6FbX2ol2fCQvQKo23hIQUYAMNUOJd1Ev4TORWKt4cxRbxEiJWL8vdDu3NSG
 418qrBrMPv8syugLURQZOhfT8Fld0nhRCqUP30QxGrbRODay5YFRRCF2aBRfzgZ93Zqw
 0BzA==
X-Gm-Message-State: AOJu0YxMQ5MJp/DaygrIjEvPJsXBWohWpgTN7q+Sn6jLhB9QkqjRE+l1
 YDmpe2qIC3N4KpDXNWyFfqO2ZDjSCcUtA5x92vWx29PkLmivBQqEGLo+i5cdi3iuGVk=
X-Gm-Gg: ASbGnctfqrWHsaHkeQ2dalQjsFq6DxSpt8V16Bk5oq3cAq9HEdzdDQnxL8MqvsMLD/o
 02feSZFmt3lGkN0m7KApP5AgQxmesbYqp4bGoosbVQIsWVBjpsG9Gnph5YQYfL3FnQnMWZWT08j
 LFkZL9qKGMsTmkjj398T37TNFViK1oNHIXixrBkofcHpNpoN+oAhH1PZqrPUSL3CP98ntsXPltD
 T7TLrzzMUbAjY8jUtheRXjmFLcazFkatvDySMp/s31aqQvchMuEHfQGQtZcLRNa6ZO7RzVOg3/E
 yg0eSitshca7HZ28NKTXSBe9GeBNbY06vBSNgwRY8E8VifqwIPjykt1kAwXThQSLLG4tRsU7cx6
 Od7d7scWohz20SU1vYv8jiM5XsQQq2rcn43WIXM1UJAWndYzM2l1KW6sHeXUjtWimUd7PxphftD
 nyMJPBT3FAeQ==
X-Google-Smtp-Source: AGHT+IHV+d2j74/e1G29FQZ2NJM2pqXZ75ajkDMvhMXEO7mXX2cQxMO76M1rFTKKeG0aEbIEAAVgLQ==
X-Received: by 2002:a17:902:ef10:b0:27e:eabd:4b41 with SMTP id
 d9443c01a7336-29027216505mr311772135ad.7.1760380292414; 
 Mon, 13 Oct 2025 11:31:32 -0700 (PDT)
Received: from pop-os.. ([189.7.87.127]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29034cba155sm139865065ad.0.2025.10.13.11.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Oct 2025 11:31:31 -0700 (PDT)
From: Marlon Henrique Sanches <marlonsanches@estudante.ufscar.br>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Marlon Henrique Sanches <marlonsanches@estudante.ufscar.br>
Subject: [PATCH] drm/i915/gem: fix typo in comment (I915_EXEC_NO_RELOC)
Date: Mon, 13 Oct 2025 15:31:23 -0300
Message-Id: <20251013183123.438573-1-marlonsanches@estudante.ufscar.br>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 13 Oct 2025 19:04:11 +0000
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

The comment referenced the flag name incorrectly as 'I915_EXEC_NORELOC'
(missing underscore). This patch corrects the spelling in the comment
only; there is no functional change.

Signed-off-by: Marlon Henrique Sanches <marlonsanches@estudante.ufscar.br>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 39c7c32e1e74..7a0dee4111cb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -142,7 +142,7 @@ enum {
  * we want to leave the object where it is and for all the existing relocations
  * to match. If the object is given a new address, or if userspace thinks the
  * object is elsewhere, we have to parse all the relocation entries and update
- * the addresses. Userspace can set the I915_EXEC_NORELOC flag to hint that
+ * the addresses. Userspace can set the I915_EXEC_NO_RELOC flag to hint that
  * all the target addresses in all of its objects match the value in the
  * relocation entries and that they all match the presumed offsets given by the
  * list of execbuffer objects. Using this knowledge, we know that if we haven't
-- 
2.34.1

