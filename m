Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0173D1246
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 17:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D097E6E90C;
	Wed, 21 Jul 2021 15:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F13A6E8DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 15:24:59 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 gv20-20020a17090b11d4b0290173b9578f1cso1137656pjb.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 08:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fxrOgIujpF8i4wx+EiH358bwMj50Ob54hlyrZAnhxWw=;
 b=ZTZWdei5NlKvXYiDTGiCpLCoDa907cXvxISKOfdXrVbIOLyXT5BbvfAfOT+As3pBi7
 glmd6OccYAtlMwn5OuWEKe470d57rGQM3jPO/y0MWtI+F2Wyj/d62AYOGpjIviU7oALa
 Fg9yBoypwsDQQncxlmKVVX5Y29YMoixsjXJmgpiM+MN6YKZ+5oMT1OHPxmCrwKzFytWM
 GmMvo9MMx7pDO/M+plS5kwOr586ZPCMEBD7vml+vjFABJUwKHcFhRlK4h5k6mfRTcOvc
 y9vvIid+OeWCsP7PW0H/bEQQnAdvBImb2zbZWSBJBEhoNlHNbmpEg+3AeTKLfEwFecbQ
 fFAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fxrOgIujpF8i4wx+EiH358bwMj50Ob54hlyrZAnhxWw=;
 b=qkPB/rd4KctvjW86iULxQxUUSPDR/NwnFcq78T1McnJ1o040n5yZJu3J+iv3hWC97p
 vhcqQQsamJ/Ihh2LYGd+sILfqcJS6mAIbPhDgmE6X/86ruP5IaVUjBrKat3u0tLbFeC2
 QV7HXuueEo6ro9SmCBoMV9M6EW0YcZv6Gjb74k8dmLdweCp04HGQPwrgs9EPRsn/VQgX
 ybjyRlP+P87UTrC18S+dUZH6wkbG8JSRXG1x651nkM2O0ARAp0IJoVhCCXbc35tifFiT
 K9u2bts5PLW7IS77nuPT/0wHs7Af1KExm2TE/EPiLwMEnX+uYwVJ2rb4rTcK5a1db2js
 8ysQ==
X-Gm-Message-State: AOAM532kwu9D284mNfjFLE/mjjfTZ8RLmtfIjfg2qpXP6kQTErkjxh+D
 86KxW2B8dvAnqTSclvLC9zeIb9uCD4FBhA==
X-Google-Smtp-Source: ABdhPJwF1Ny4BhYMjEnpJFkvHCEYUQeXvffSorR8q6UDpztUnjFv86YpoyDgDaoepYYC3r+zCI/SJw==
X-Received: by 2002:a17:90a:e7c7:: with SMTP id
 kb7mr35317769pjb.43.1626881098331; 
 Wed, 21 Jul 2021 08:24:58 -0700 (PDT)
Received: from omlet.com ([134.134.137.82])
 by smtp.gmail.com with ESMTPSA id e4sm32451034pgi.94.2021.07.21.08.24.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 08:24:57 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 21 Jul 2021 10:23:53 -0500
Message-Id: <20210721152358.2893314-2-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721152358.2893314-1-jason@jlekstrand.net>
References: <20210721152358.2893314-1-jason@jlekstrand.net>
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
