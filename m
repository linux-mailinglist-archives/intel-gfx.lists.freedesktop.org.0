Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FEB3CEB03
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 20:31:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFF56E06D;
	Mon, 19 Jul 2021 18:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA80089D56
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 18:30:53 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id r21so1695550pgv.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 11:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fxrOgIujpF8i4wx+EiH358bwMj50Ob54hlyrZAnhxWw=;
 b=WSj3yFC5wywCm3Dp5J7EnMAPTMUlz4YAfq0+deEfXLB8duBSGM8M6pcb7ppaponmDl
 BPHRsJxlwbUXXmveOZoJS6v+zlWYQkEtpGY3oDO+Nivtkqc0kk/mH60uKYaqRXn3SUf9
 9rTsmlqqOSyy1le37VfiAelMLPaZRTO2iOB0d1PN2a031QueuCuCNGrbtzj7TDJgyT67
 QqOrZQWgO1o0YOnvW+R2v7CX0tTLwf3FiRcstFU5TNKu/z4qGhEj+R1GUjQjJUi9b7Ra
 qQFcLFT3llnFQ2Pc/YXuOydgST1ulWws668hkhv9PYQsXU+9x4A1erLt/LoUEJ4EjkBt
 YULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fxrOgIujpF8i4wx+EiH358bwMj50Ob54hlyrZAnhxWw=;
 b=auxKbk9Tu1NfgeHQzikytD5a2W+u3Xhb94ltmrWRLDgX6kuYmRxnoNuYpd0SIX3p01
 6d2x6Xoc6DiadBxeljJK1830nbqnmE7ZA/BEkdgS53PAyKPCKlLrVNCuPzdLJ+58zgM2
 rsmyq9NttD1hffEWkQkEzSBOfSQJ68E4/ht0R1cfmwV3qz0Ke3v7QvIgcP0LB8vB8Vkz
 3ObgM2LeJ8utgqBBtqyiXOJxMYKWZNtAftUaWOhBeJIaGprr6Xzhr9DqvYAtv9Q7z9FB
 cZza9jFesW3P9Kuqb1yIB8BEK4ClqgAZifibDtL2eRGws1Zkb9eyNui/rRu9PhUc2xKz
 B1Qw==
X-Gm-Message-State: AOAM533BxYO2GJpTqUI7+LeyAWZWbyBGtw7Ok4j1OLUKbI6iolW1FrV1
 +XwaV0oPbPX8lfd5YnkzELdh39/9lTL0uQ==
X-Google-Smtp-Source: ABdhPJx01TNQtfAKLxBA01vsesOEr0Wb+/g276nv+WAOKU6tJ5q1uIrj4DNFws4gN6UBzHpLSWJ//A==
X-Received: by 2002:a63:4e4d:: with SMTP id o13mr11760575pgl.300.1626719453219; 
 Mon, 19 Jul 2021 11:30:53 -0700 (PDT)
Received: from omlet.com ([134.134.137.83])
 by smtp.gmail.com with ESMTPSA id w23sm6961555pfc.60.2021.07.19.11.30.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 11:30:52 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 19 Jul 2021 13:30:42 -0500
Message-Id: <20210719183047.2624569-2-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210719183047.2624569-1-jason@jlekstrand.net>
References: <20210719183047.2624569-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Call i915_globals_exit() after
 i915_pmu_exit()
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We should tear down in the opposite order we set up.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 67696d7522718..50ed93b03e582 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1244,8 +1244,8 @@ static void __exit i915_exit(void)
 
 	i915_perf_sysctl_unregister();
 	pci_unregister_driver(&i915_pci_driver);
-	i915_globals_exit();
 	i915_pmu_exit();
+	i915_globals_exit();
 }
 
 module_init(i915_init);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
