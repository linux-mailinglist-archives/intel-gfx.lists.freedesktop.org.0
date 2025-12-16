Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A45CC1798
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB6510E75C;
	Tue, 16 Dec 2025 08:08:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="beb8Vcxv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 782D210E75E
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 08:08:37 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id
 98e67ed59e1d1-34abc7da414so3090107a91.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 00:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765872517; x=1766477317; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Z5abBx1FhfvbwK3R1pPHGrJFXjLWv3LQXIdLbkDXRG4=;
 b=beb8VcxvU6m+1NnkKWWzZ8N5+hTLgvyKnA5oM1zoeg5p3UqIeUXzRpav08PrvSjoYV
 xoSio5sYZHpaGSZt87R7B00GYvDpTiwqZkQuJ319S68AkaXOaEPZ1Dd7M+DWfmfZxvoh
 HbUMQXjMZVrtsgbnmZKCg/NK7M4rk57paAqGQSvxYmlHkRhbqUIVJiX/pt26vtnygMaL
 oxvfIkQCpvhPpE1PeRdMCMQmN0GGLQFG7pF/gHX5YidC5JoMktAe13tmnglKrzikqheX
 7BJuRitpjlRrFAAr6/tm7eEncYrE2seYrQBod9sChfds0elrOQK6UIIVrKK53d2MtNMn
 2mAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765872517; x=1766477317;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Z5abBx1FhfvbwK3R1pPHGrJFXjLWv3LQXIdLbkDXRG4=;
 b=jZO9Kcrel8qjgi5CffrwQWP9D3IJV1yyD3RHZNFNo/VmPxuFfGgkUNgvDOIpToSmND
 +3sh17jq2VZWj+4ooTAExGgD+hy+4FW0Kx11eP1T+UBlwo3rByzERp7UFBobb3JxPdkN
 LacU48Hv/SpTcdQud+kHEUXUN3r6nn25DYLBVOClR2PctHHLcRIpgPUQvbpwexThjesg
 n8kIupn1/hvmtG883zGeO0z9T2q5IDz4kiePdbHKxfIr2QkRF8dx6eFqPL0BsOlYo97o
 EP6CJWvY/y1gGiLmQTCUu2OeGBsLjFwObNfG8+1xGUAWihbMc6gaZatnfIIh/JPlBO0l
 ipjA==
X-Gm-Message-State: AOJu0YypgwEslXjFeGJu1TvfSrhs6oZa22qFK6Ci2N1eYqzW1YQGzDWz
 k0uz+QWwopjQVBDSRc5imMSZ/6l5jms87f6FwmUaYOxuNaVBc6fDmdCG865ZSVyj3M0=
X-Gm-Gg: AY/fxX5SS5/rh+xnTVudVAngiDW2uyK4zCuIq3/RQJ+/o8vdJb0rf+ktLcnsSsoWxQg
 tm6gK6uHREAqWoCCtVkSsz5VL/QGa0dq8W9JpvrkkM0+hYGvYCKAqIBfczKZaEtuVEyIMWjEnxD
 tg1yEqflLtBORmgxCeE9wGA9icqe4nD8vcWOW/vFNE7YWsHoKdnWatbBBANLJA6APVFDDAX3duN
 79kZYcf7rX0//fmQRQSx9nY4z22L6ALfFAMOqt8XUEghav+ufRlN3TxVC0wBR+qpOutxfZkG4Q2
 bzP8K7rcRO6L6dyhUQ4B51lEKXEhmkTERLNfbZZe1K9jsDPxW0leF4b5yQDjCy4JnDsJ7T65x1P
 o8jXUkqqDyajWf6scT74HqCuMvd7j54TeGek946ot1Ygy+7Eu0IDmY3zKImxS21Ie8iGm8BI2ts
 P66zFijecNC3NGPtR4WvL5K/na2uQ40BrSJriIBidcdnITBOZNoQ==
X-Google-Smtp-Source: AGHT+IEYNbeVuwCVE9rbWR9F8gHHFSneRvyhL8dyMVIBzBDSJt88qS19nOG7NtEjPInluKJ8CTN1tQ==
X-Received: by 2002:a17:903:1c1:b0:2a0:afeb:fbbb with SMTP id
 d9443c01a7336-2a0afec00cbmr71890875ad.1.1765872516704; 
 Tue, 16 Dec 2025 00:08:36 -0800 (PST)
Received: from localhost ([134.134.139.75]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29eea04cd14sm153883445ad.86.2025.12.16.00.08.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Dec 2025 00:08:36 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Zhenyu Wang <zhenyuw.linux@gmail.com>
Subject: [PATCH 2/2] drm/i915: Add intel_gvt_driver_remove() onto error
 cleanup path
Date: Tue, 16 Dec 2025 10:07:54 +0200
Message-ID: <20251216080754.221974-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251216080754.221974-1-juhapekka.heikkila@gmail.com>
References: <20251216080754.221974-1-juhapekka.heikkila@gmail.com>
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

Add intel_gvt_driver_remove() onto error cleanup path.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index e11189900c5a..75f503e52e70 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -922,6 +922,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_gem_drain_freed_objects(i915);
 	i915_ggtt_driver_late_release(i915);
 out_cleanup_mmio:
+	intel_gvt_driver_remove(i915);
 	i915_driver_mmio_release(i915);
 out_runtime_pm_put:
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
-- 
2.43.0

