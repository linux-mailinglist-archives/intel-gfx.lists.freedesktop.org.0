Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C6E40CD3C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 21:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1CB36EA04;
	Wed, 15 Sep 2021 19:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 487 seconds by postgrey-1.36 at gabe;
 Wed, 15 Sep 2021 19:31:44 UTC
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 779966EA03
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 19:31:44 +0000 (UTC)
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com
 [209.85.210.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8478240194
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 19:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1631733816;
 bh=reGZLIrkND9NmREfF+uJdu/zbEvtwF8yhm5BzYRS4EE=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=Y/8CpJlUnGk/rvwg/XmE0/iQzSkkVsvVnF/NYa/4uCJR6XVS9tW2es+e/qAhpAzQO
 QIZKS/DmJTSqmOKK2YuZDl7hK54f6C+kXpP+N47ed7STordYWmCKC8nA9VXY9C80xg
 Orig6ninBkJYEwFosdtr/koou63vgleNpAz6IbrylipKaM79Js9S6RbQjlLShaW3nT
 P/Xh5zQGd77FIzlwbfvBN1yigSI/Lf7DERPKjONbDZKtTLeE45G2j4MqXX9bL2mUw5
 OqemSaG9Z6mKuLnp0qDpjDZ/4zxaqi2saIyDBGrV3Bs/RNr1EizpNLGOTCVZbrsMSX
 9UYiP1Z5em+UA==
Received: by mail-pf1-f197.google.com with SMTP id
 q8-20020aa79828000000b0043d5595dad4so2416985pfl.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 12:23:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=reGZLIrkND9NmREfF+uJdu/zbEvtwF8yhm5BzYRS4EE=;
 b=6snHM95/+43nOvEZQ0v/wMFIRyTmEjTxXfUeGAaPLaDANw+nIPYDLMXF8XkT+xW8VI
 OUop1zVRx0+WC42KsSkmrt5Oe/7OKfLtn5Wojf2tk5KRvsBdqYcxQDduF5ci8TRDg4+6
 gIIs6b17mzC4RQ1RE+sep8wXBKlhLozrpWWqBkWoDCPCbgP6F1G2/UY0L9Gps77qYs21
 zQZUsAiaCRk7D7f2v2J5jGwEctSLju5Ca6nrbaI5RPo9Q5+BlXfwT0v3pFwTKZQ+NRp0
 1xB50K1yHi6UjPAkS0kHnrjQp1jxINC2glBMvHSMbz0b6tgiNVAeYuX6uwURNfg6eWjy
 ysCQ==
X-Gm-Message-State: AOAM531dayQoeYdWIoiqWz2WlpWgt38ClXsWAn4xfnxRqZgOGHU4G7s7
 eqEshRxEd/IrZEsc7h70zPVnjKwXvxa57/fL+aGUgb6P8RgjlOskTb1zx0X6oubF8Ir/mUaWl0V
 i9WiTIfH3XoDCMstG78QTslWouvfWrLhaS+KiYXUa4X/fDw==
X-Received: by 2002:a05:6a00:aca:b029:392:9c79:3a39 with SMTP id
 c10-20020a056a000acab02903929c793a39mr1100593pfl.57.1631733814767; 
 Wed, 15 Sep 2021 12:23:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzLv/mm48E1hK21/iAiUnlGrUqkaD1mVhXMQzwUCOu3vlwewW1pnR9aODuvrw5GmvbZX8djSA==
X-Received: by 2002:a05:6a00:aca:b029:392:9c79:3a39 with SMTP id
 c10-20020a056a000acab02903929c793a39mr1100566pfl.57.1631733814535; 
 Wed, 15 Sep 2021 12:23:34 -0700 (PDT)
Received: from localhost.localdomain ([69.163.84.166])
 by smtp.gmail.com with ESMTPSA id f144sm640405pfa.24.2021.09.15.12.23.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Sep 2021 12:23:34 -0700 (PDT)
From: Tim Gardner <tim.gardner@canonical.com>
To: linux-kernel@vger.kernel.org
Cc: tim.gardner@canonical.com, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Date: Wed, 15 Sep 2021 13:23:18 -0600
Message-Id: <20210915192318.2061-1-tim.gardner@canonical.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: zero fill vma name buffer
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

In capture_vma() Coverity complains of a possible buffer overrun. Even
though this is a static function where all call sites can be checked,
limiting the copy length could save some future grief.

CID 93300 (#1 of 1): Copy into fixed size buffer (STRING_OVERFLOW)
4. fixed_size_dest: You might overrun the 16-character fixed-size string c->name
   by copying name without checking the length.
5. parameter_as_source: Note: This defect has an elevated risk because the
   source argument is a parameter of the current function.
1326        strcpy(c->name, name);

Fix any possible overflows by using strncpy(). Zero fill the name buffer to
guarantee ASCII string NULL termination.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Tim Gardner <tim.gardner@canonical.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 9cf6ac575de1..154df174e2d7 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1297,10 +1297,11 @@ static bool record_context(struct i915_gem_context_coredump *e,
 	return simulated;
 }
 
+#define VMA_NAME_LEN 16
 struct intel_engine_capture_vma {
 	struct intel_engine_capture_vma *next;
 	struct i915_vma *vma;
-	char name[16];
+	char name[VMA_NAME_LEN];
 };
 
 static struct intel_engine_capture_vma *
@@ -1314,7 +1315,7 @@ capture_vma(struct intel_engine_capture_vma *next,
 	if (!vma)
 		return next;
 
-	c = kmalloc(sizeof(*c), gfp);
+	c = kzalloc(sizeof(*c), gfp);
 	if (!c)
 		return next;
 
@@ -1323,7 +1324,7 @@ capture_vma(struct intel_engine_capture_vma *next,
 		return next;
 	}
 
-	strcpy(c->name, name);
+	strncpy(c->name, name, VMA_NAME_LEN-1);
 	c->vma = vma; /* reference held while active */
 
 	c->next = next;
-- 
2.33.0

