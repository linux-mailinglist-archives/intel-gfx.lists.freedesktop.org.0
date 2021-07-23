Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3EA3D40BC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 21:29:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D21C6EB37;
	Fri, 23 Jul 2021 19:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 986296EB37
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 19:29:41 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 z8-20020a1c4c080000b029022d4c6cfc37so4110220wmf.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 12:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AtjGXQby9vrkjQNbOGk9BDKUaVuwZWt2ukLNnFbi6Gc=;
 b=QRWqGWGK+5Vs26h3bP45X7YpwVUKtFWE8pY0cpWJJhXOW86qF+3vqZAG1PfM2I6p/r
 CWmzx8E0/q+X2i0PfZAgT6+jij+ZFdZf4IDFXLF/6XbVQ0ur+ROVi20jAhW6zgEtQ3Yz
 nCSxK0t0qoBk0Pwn1cvEQJHXayRCJM3YBBado=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AtjGXQby9vrkjQNbOGk9BDKUaVuwZWt2ukLNnFbi6Gc=;
 b=A25geUptsvFrZjp9SlyaU5O73QJhMrwFFFytmfJgiIgNnl1KKnLrroCaObFQIH4BTH
 Dhdxc8HvVNmUuDtNjnLHuMVL3JlNuysOwqtyJgsLTMLDUeVpklY6ADH+QqC2Z46q6g7v
 anji8sCzHvB0PSHV1+xj04HJicNGND78B6ZOk0Nt0HNh6fqt4hHAZ9jdRqzZb+GgNaT3
 ZVLIZgzZRrNMddMwTkn0VkZDcsNCx+TrdRGoxWqbI7SVcQD+665YvyM7PM/v+/SngJf9
 3FWGABW29ZHfDrcpix4rGl+TEw2ln2HHYlyAnnZuPLxIoRU8pJTaBncnLm5XWXuQSWzE
 2BLA==
X-Gm-Message-State: AOAM5338DEUnBlikbRJ6ggbLV+V8vEYo81tV7bVMa+qpbwzxuBfQF2la
 6EG5Yt3vaFp4qtL+AIje22eKRw==
X-Google-Smtp-Source: ABdhPJxFcBPlcugjzf3LleoBRFHxJARc6IAambQdzSJ6im40ldYd4vmgubfbTrGOUwO9ArVOh2faNw==
X-Received: by 2002:a05:600c:2107:: with SMTP id
 u7mr13320002wml.52.1627068580442; 
 Fri, 23 Jul 2021 12:29:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s14sm17609870wmc.25.2021.07.23.12.29.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 12:29:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Jul 2021 21:29:25 +0200
Message-Id: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/10] drm/i915: Check for nomodeset in
 i915_init() first
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When modesetting (aka the full pci driver, which has nothing to do
with disable_display option, which just gives you the full pci driver
without the display driver) is disabled, we load nothing and do
nothing.

So move that check first, for a bit of orderliness. With Jason's
module init/exit table this now becomes trivial.

Cc: Jason Ekstrand <jason@jlekstrand.net>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 48ea23dd3b5b..0deaeeba2347 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1292,9 +1292,9 @@ static const struct {
    int (*init)(void);
    void (*exit)(void);
 } init_funcs[] = {
+	{ i915_check_nomodeset, NULL },
 	{ i915_globals_init, i915_globals_exit },
 	{ i915_mock_selftests, NULL },
-	{ i915_check_nomodeset, NULL },
 	{ i915_pmu_init, i915_pmu_exit },
 	{ i915_register_pci_driver, i915_unregister_pci_driver },
 	{ i915_perf_sysctl_register, i915_perf_sysctl_unregister },
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
