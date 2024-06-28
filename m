Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E85991C411
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 18:45:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3092610EC99;
	Fri, 28 Jun 2024 16:45:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lUXQ3Cih";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDDA310EC99;
 Fri, 28 Jun 2024 16:45:31 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-1f4c7b022f8so5522885ad.1; 
 Fri, 28 Jun 2024 09:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1719593131; x=1720197931; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=GFnK18K01jM6ixe3J5Dm4dhRYKCUyzsmvuoIyL/w40s=;
 b=lUXQ3CihP45Vd+SLMC53SLDSDG2k5lckngoO/z3w8eha5HVzrnSUU7qX0nk2UTcINi
 T1slQlN166BZ9TuCu2h+JDaHD92OXDCQKX2Z63ga7G3t4ga5QasredP4Nw6ntN+jnEpZ
 LkMFRrz7G2Nx6Qhkjqci2VMaHGyXVqLZmJegAU03QXtIPmDYn12RKFTrtprAdYKOQIEh
 g4IlvSZ+N87Q6ae6uqTlQF4Vj7QZ0KNCv0TnuTCxYQiuBBY3XiGmq6Gn+as1yMFR+1ve
 hc0wXUsYvvgsy+NkoAaYW3+Wrxz3cjGsyvMh20+gsEhVFEfPChePlZdXpkj/TMybrA5E
 Wmjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719593131; x=1720197931;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GFnK18K01jM6ixe3J5Dm4dhRYKCUyzsmvuoIyL/w40s=;
 b=ic2iQEPGSp39OqW5kbrPsPgGwuT+36edk1JL+L3cw7qXkDIymTg8nEkPOGE+HT+yTJ
 n0OHrYdixbreQW8TnJdXANjO1x6aOlpJTFdmRkP2RDNhR6qVojZbP1l4EhHSuV4/M19Y
 G+RR7Pjkx4Yw46XglAXM4bGE3H7Hleaq//CGa0taI2hFsZFC8WdsWIBJdIfE8UulHkCj
 bKHXIafjyab0M7K9YvJvPzpSrggGRPVuQSC9g89QjIL/cASe0wYDlIWBOJv87bT5bHyJ
 ohVdfdKNk1dB8jU9XUFIxkhJ+BcVw7X2I+JQyWWLp9QVI4CzUdugSxu41JGNli4SD5RG
 JnvQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX6B6tkZZKEChj4v48/3KUnxihBz2xDsbos4So8FmyfG46rod3O35UnniMY8h1W/eXVE347XePWqCU5/odf1Mt9RGp37bcgCVkbZ59ELuSw
X-Gm-Message-State: AOJu0YySbCFg8unTtBVVtuGmrTZiAEQcjJYdzpJklA24wUdwwp+BqkIg
 cBKvcIhSQGwNL9DnXUcsac1Bw4Id0UH+ULS73cYXWIm+lUwoIGeRoVmEkCc8dHc=
X-Google-Smtp-Source: AGHT+IFWeDWKq9rE/Dlp5HTlUM0jYl00IsG8vezUlKdoMy33gW5vRIxoWW9PaMbjE2X3yDeUi13BAQ==
X-Received: by 2002:a17:902:db06:b0:1f9:e5d9:ead5 with SMTP id
 d9443c01a7336-1fa23eccee5mr185042265ad.33.1719593130931; 
 Fri, 28 Jun 2024 09:45:30 -0700 (PDT)
Received: from localhost ([192.55.55.46]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1fac1569606sm17421725ad.222.2024.06.28.09.45.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Jun 2024 09:45:30 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 0/1] On Xe2 platform always require ccs alignment on tile4
Date: Fri, 28 Jun 2024 19:48:59 +0300
Message-ID: <20240628164900.2737389-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.2
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

There is difference with tile4 on Xe2 platforms vs older platforms where
for tile4 is always enabled decompression on display when on Xe2. This
will cause requirement to be aligned for ccs with framebuffer strides
with tile4. Maybe need to consider new modifier for Xe2 because of this
requirement. Here is set new alignment requirement for tile4 when on Xe2.

/Juha-Pekka

Test-with: 20240628131405.2653544-1-juhapekka.heikkila@gmail.com

Juha-Pekka Heikkila (1):
  drm/i915/display: On Xe2 platform always require ccs alignment on
    tile4

 drivers/gpu/drm/i915/display/intel_fb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

-- 
2.43.2

