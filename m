Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4967346A99
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5160A89561;
	Fri, 14 Jun 2019 20:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 382EB8955D
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:56 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id w13so5256691eds.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HZnZIGyd1ihO1nLfm2kHYBUDq0QLZnlqf87UlfFfYuA=;
 b=a+hhZm0QI3Jm1FKU3Dxf+XV+vkjFKMv6ZkNRLXmXGJpW1gXZ0xsHQW05tEHlfZ3HFq
 KxN7xldFvTK1vhZJTOpebp/tlXI5JgbyraWiumolyYtvn9+EpLhYxU7yXqmh2jTsY9t0
 ITVuKvUI2he409t0ffmgqiFosBsVHtGuDmYTmR0MFqHCYqAXiZfF7OtZoOJD0lWpbw5f
 PuBfsuIhMLmZfWzN2pQYAxj7Eq+Yj2uQ53aSiOgfRw3jPqJ2db4TTgHIATrrj/aJQvos
 CTYRAOMvSzXlh3n51s6Kn4dfG+IDehZKM9Skb2Mzi7w58n4OUEGd9OxRd7NNZE90k+ty
 vOxw==
X-Gm-Message-State: APjAAAVbgEOYZ4HtrhtiucizunZPlXAFIDTxdHiS07NwJ4LVCUyD6qFv
 VUlAW8+WrUPLFvJtOmlMO2Ku0A==
X-Google-Smtp-Source: APXvYqzo7c4YiPdXTA1nMAho/q+VBz1pYUv8KpGFQpxV23HAOoQaukZtx6FVAfVwxPqMc+arUrfA5Q==
X-Received: by 2002:a50:a5ec:: with SMTP id b41mr75365674edc.52.1560544614283; 
 Fri, 14 Jun 2019 13:36:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:53 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:44 +0200
Message-Id: <20190614203615.12639-29-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HZnZIGyd1ihO1nLfm2kHYBUDq0QLZnlqf87UlfFfYuA=;
 b=kzZDdnxGoG4YaTE/yWsfd1f965HNGM9GX0WqC7/ybtqTyBFTNmd1srGb3BqL/n7d81
 L3PhsxAuqdhniFBg/1xCADlT17vif/Y3ZR018eGdHfsp4HoGkJvraSYs7d2JPbFQqM80
 0gTKHruNH/EmQ8ezzVcS7eVnmCvq5UtM2ukE8=
Subject: [Intel-gfx] [PATCH 28/59] drm/shmob: Drop
 drm_gem_prime_export/import
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBMYXVyZW50IFBp
bmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+CkNjOiBLaWVyYW4gQmlu
Z2hhbSA8a2llcmFuLmJpbmdoYW0rcmVuZXNhc0BpZGVhc29uYm9hcmQuY29tPgpDYzogbGludXgt
cmVuZXNhcy1zb2NAdmdlci5rZXJuZWwub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3NobW9iaWxl
L3NobW9iX2RybV9kcnYuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zaG1vYmlsZS9zaG1vYl9kcm1fZHJ2LmMgYi9k
cml2ZXJzL2dwdS9kcm0vc2htb2JpbGUvc2htb2JfZHJtX2Rydi5jCmluZGV4IDkwNDdhNDlmZjM1
ZS4uNmMxMDZiN2EzYmZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2htb2JpbGUvc2ht
b2JfZHJtX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zaG1vYmlsZS9zaG1vYl9kcm1fZHJ2
LmMKQEAgLTEzMyw4ICsxMzMsNiBAQCBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgc2htb2JfZHJt
X2RyaXZlciA9IHsKIAkuZ2VtX3ZtX29wcwkJPSAmZHJtX2dlbV9jbWFfdm1fb3BzLAogCS5wcmlt
ZV9oYW5kbGVfdG9fZmQJPSBkcm1fZ2VtX3ByaW1lX2hhbmRsZV90b19mZCwKIAkucHJpbWVfZmRf
dG9faGFuZGxlCT0gZHJtX2dlbV9wcmltZV9mZF90b19oYW5kbGUsCi0JLmdlbV9wcmltZV9pbXBv
cnQJPSBkcm1fZ2VtX3ByaW1lX2ltcG9ydCwKLQkuZ2VtX3ByaW1lX2V4cG9ydAk9IGRybV9nZW1f
cHJpbWVfZXhwb3J0LAogCS5nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlCT0gZHJtX2dlbV9jbWFfcHJp
bWVfZ2V0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlID0gZHJtX2dlbV9j
bWFfcHJpbWVfaW1wb3J0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVfdm1hcAkJPSBkcm1fZ2VtX2Nt
YV9wcmltZV92bWFwLAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
