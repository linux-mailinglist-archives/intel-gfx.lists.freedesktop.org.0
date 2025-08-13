Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD11B24B1A
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 15:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FDB710E72C;
	Wed, 13 Aug 2025 13:51:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="L8vTXVLT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5288210E727
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 13:51:18 +0000 (UTC)
Received: by mail-pg1-f175.google.com with SMTP id
 41be03b00d2f7-b47083da7baso549717a12.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 06:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1755093078; x=1755697878;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=B2c4SClBLaEcuuZYVj5SwZ6daEI8HGZlE+9CzkOMlMk=;
 b=L8vTXVLTlVWdCkSNA4oPdVOJAZPOQDBHbYXOHtSCcIVF5rrnLsmqQf4nxvz+aSkNQf
 a53R8wJDAJkOe5ehIQWx1hVAHvHNK7XDe3nRMIb0ykY34/x/jM/PXuJ+QGIO9sS2AI+J
 oDSwQkLsk9XpfPSWtbP8AmXqEKH4f5UR67ZUs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755093078; x=1755697878;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=B2c4SClBLaEcuuZYVj5SwZ6daEI8HGZlE+9CzkOMlMk=;
 b=w0p5SgjucejMxJszdKTwZq9PT0HC2d1gaVQBnJWZPxaflUqA0Yd1JM2EUdjxmpCpop
 05clpeFFbAc2uGuAuPPm0gP2SvjiPf+jipVGaA0XC17NoyOVWPY6o6wQrpQdqD9P238u
 zEq84VkNehzDZzcN6VbB1hdyitarXaAZKEjhWF8HqUoAhnXcsHTHgFTm5AudwAvoMYsJ
 cUH9JmetMiSMVdsSk+A8CNd3pLLW/GGtRR0A3JoUdO+cw7DNtjqXi/ViCNVZyWXgi81D
 6KzwWGecvPVP5VUSpmBc/htzK0vpMft1DHSMB6phnENVQHM0cB47SsdkeZfhiZRmribz
 9Yag==
X-Gm-Message-State: AOJu0Yw+Irf8JX8QkJVqDCqNL1Z/tUWBI19SizdjAOABx3F1pcaH+UYi
 dMGwNPJ2KHhFCZ2rQ5wNSC842QwNaPW23bskd9GhAwlRBeEmnDr5FwZq2xfAo4S2JhM=
X-Gm-Gg: ASbGnct7K2UlsL+nILl2TwNiglW/iiecO71rNRAhCyX08Out7RoSI+WGfnwJx/KwCzM
 rQL/I7o/S4SRt8Kj0DMqcAMdjqouJfPAnA/jwPUEuslZe9mIn1Q6LgIj35CLnpQ+WMmuordg30y
 ev7pE4T5OlVygBqm2xH/7qJPgmwrIXsh9cMg9BI/jj+v1oVusPTuvoNHE+L1BskS4Gm76Jk4tB1
 gmVrMAwhYghreVp1k9A3dFG7+IH+XpiNPttlOR3mRJMoaJthTkD7ubt0k+buZAU6cM86B1s/Va1
 iKrPJ8PDfkAzYrnVDpv3jwmfdapIIK5yAXsOWfA05dEW0ov4YuTjiWcvmSSHom3Y4yIDfaYaT0K
 sXqZ1SLalWD1UCWwFK4mVF5X1Kd97UKHd
X-Google-Smtp-Source: AGHT+IEf0aKPvCkI4XZhTOxy6XIagQxe5LGeKHK48oqbFSDd9m6+Nt4BKpedf/EsGP9aHHkB726Wng==
X-Received: by 2002:a17:902:ec82:b0:23f:fa47:f933 with SMTP id
 d9443c01a7336-2430e96adcemr41503215ad.8.1755093077850; 
 Wed, 13 Aug 2025 06:51:17 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1709])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241e8aaf855sm326965955ad.168.2025.08.13.06.51.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Aug 2025 06:51:17 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 6/9 v3] drm/i915/display: Remove outdated struct_mutex comments
Date: Wed, 13 Aug 2025 10:50:30 -0300
Message-ID: <20250813135035.144762-7-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250813135035.144762-1-luiz.mello@estudante.ufscar.br>
References: <20250813135035.144762-1-luiz.mello@estudante.ufscar.br>
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

The struct_mutex will be removed from the DRM subsystem, as it was a
legacy BKL that was only used by i915 driver. After review, it was
concluded that its usage was no longer necessary

This patch update a comment about struct_mutex in i915/display, in order
to prevent future misunderstandings.

* intel_fbc.c: Removed the statement that intel_fbc->lock is the inner
  lock when overlapping with struct_mutex, since struct_mutex is no
  longer used anywhere in the driver.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index d4c5deff9cbe..aaaabba77b88 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -98,11 +98,7 @@ struct intel_fbc {
 	struct intel_display *display;
 	const struct intel_fbc_funcs *funcs;
 
-	/*
-	 * This is always the inner lock when overlapping with
-	 * struct_mutex and it's the outer lock when overlapping
-	 * with stolen_lock.
-	 */
+	/* This is always the outer lock when overlapping with stolen_lock */
 	struct mutex lock;
 	unsigned int busy_bits;
 
-- 
2.50.1

