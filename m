Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD199B32886
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Aug 2025 14:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50EFF10E1DE;
	Sat, 23 Aug 2025 12:26:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.b="TZpicumQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 553 seconds by postgrey-1.36 at gabe;
 Sat, 23 Aug 2025 12:26:21 UTC
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3373C10E1DE
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Aug 2025 12:26:21 +0000 (UTC)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 797C23FD42
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Aug 2025 12:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1755951427;
 bh=tHRlOV1gcalzCWbpUniF1ug9QqZWPgVHTvYS8H+hUMA=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=TZpicumQwx9P//l5pS7RKN21LIiNy8BQKnnuI0ltCmfbNzNAnDULaxK81NYYFzRI+
 ph8OrWZXkA2nxRnSarj59BPiZfSeQLwvZp6yqiqkGMCueTLLwjtWof5dz7n7+h4+sv
 wYMFdG6lkrGl80VpvtVUqR0+MFEnYkC2+XHQCKVuMEQqslBSno8nzejczher4P4B4A
 luCDtLMxXrQtdwjgYHdf94JgUg1isPRP3oirXGfk7ni8CsKI5SidgTf2dQmtIGYG1r
 6/xhhDWoLr3xyV2dhJ0ZO+MwfQRbhNjQfcgVZ0aF+GrN7u5YM2xDPPy6JaAphQVq5H
 LIbAVN/GwMjRA==
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-4b2955f64b1so84293581cf.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Aug 2025 05:17:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755951426; x=1756556226;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=tHRlOV1gcalzCWbpUniF1ug9QqZWPgVHTvYS8H+hUMA=;
 b=e8uYupkzY5XGOgIZdlmeX6h1v0V7WrZ7S+pJRz/4IpC2OJ4Ct0y7ZbISezkP6aEsd3
 h5e2Eotg6hC5NEkiopN55ZRP7wREgjQ3XmJd1FFrpBUG6e5FY5oE2Yr3uDE0e9KrrmCC
 BJkRURiRfPYjHf5+KlG7Zl5clNcF7kvH/tg7UP7FGRnZvqBLNoKqPHAxZ+orlRHe91Tn
 A4BWzG0XOc70pWCN2eRRj/Kjn6KlGGQY0HydvQetCfPCx6/XFX37V4A03+7QUsRt9g4S
 QqzRuQ6SPJV4eJF0fFtSKPOepN2hUsAjBl6eesQ7k2ni249Ne+vLxbHJwWACqxwBv6ne
 6J/Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCU12hnLIWkWQI5zlU9MRbpJmY+v+ZdJIVwG2yC/v0sehdGcMGDqcp02mVnRFmM0L6exMvI11+V1R4Q=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyOrNrNcmTGEhjNlACOomjZqPhoMqtsLEhCQ1MDQ028f3J2z94G
 rUczXWCkavXYY8wzE7lZM+88Kxs1Sby4UKJJ9chm3H531n0cFVIfNVytfc/uDMy1VjCh0PaXkgN
 H8ZZvcMT4hpaWyOjNAVi/2rGCDcfUsLbfMN13WcNCB4W3Dbvxh/WVsRN9pS9AfLdoWuM1QyHuk3
 Kn76vIFKLDLQ==
X-Gm-Gg: ASbGnct6TzivVKnDw/RRl5t9V3JyMnZseS4J6qC+QfJtnyfPCZy90NnjEpCLwOXomKT
 0tO0IPMP6zfg47ata70a9+iAupSlWZpEnmRWwkFOsoIeZkBtZuJ5gx47y4ttZ4yquaFzDNBPtg4
 3TlGrtj6dGFvih85819sUUrryFGPql0iri0Ghs3Ab+sq0UixxBHPQbkm3dihgyeveQPz5Y/u5r7
 9sTvNqS6siYVooAsC9KhfJm0ju97ManrYCqD6tWvSHv7awYL/ON32GpLFE3cghYyAVK2VdyKgRg
 2qxFrII23OghzhYZGPrVNeFktGIUl8/txOnVfg51F/VPlryrwF0EhsWo
X-Received: by 2002:a05:622a:a:b0:4b2:8ac4:ef5d with SMTP id
 d75a77b69052e-4b2aab546bamr68378021cf.84.1755951426355; 
 Sat, 23 Aug 2025 05:17:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnIKajDSfV7NO4Hfrf80vUm5NXdkjXXgtLCjExMGkFAp2FhrBW40tEeu25Y2rj3Y+K0BtRNA==
X-Received: by 2002:a05:622a:a:b0:4b2:8ac4:ef5d with SMTP id
 d75a77b69052e-4b2aab546bamr68377701cf.84.1755951426018; 
 Sat, 23 Aug 2025 05:17:06 -0700 (PDT)
Received: from localhost.localdomain ([162.213.32.233])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-4b2b8c618ddsm15429971cf.10.2025.08.23.05.17.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Aug 2025 05:17:05 -0700 (PDT)
From: Aaron Ma <aaron.ma@canonical.com>
To: jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch, suraj.kandpal@intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/i915/backlight: Honor VESA eDP backlight luminance
 control capability
Date: Sat, 23 Aug 2025 20:16:47 +0800
Message-ID: <20250823121647.275834-1-aaron.ma@canonical.com>
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

The VESA AUX backlight failed to be enabled becaused luminance_set is
false always.
Fix it by using luminance support control capabitliy.

Fixes: e13af5166a359 ("drm/i915/backlight: Use drm helper to initialize edp backlight")
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 41228478b21c7..0a3a3f6a5f9d8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -546,7 +546,7 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 				     luminance_range->max_luminance,
 				     panel->vbt.backlight.pwm_freq_hz,
 				     intel_dp->edp_dpcd, &current_level, &current_mode,
-				     false);
+				     panel->backlight.edp.vesa.luminance_control_support);
 	if (ret < 0)
 		return ret;
 
-- 
2.43.0

