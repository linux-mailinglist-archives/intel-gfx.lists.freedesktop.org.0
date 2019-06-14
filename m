Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E99B46A2A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE9F8944A;
	Fri, 14 Jun 2019 20:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B21589349
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:30 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id r12so3056560edo.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zMwcnr2Nkc54k0ufhoznWvPi1TQGGf5AEIoAt+4i+Xs=;
 b=dVg4bA+l1azAnuAEOiICLgiUalNE+LncvR3pIf/OjyCEhx9Rrx8F2DHo/1/iyovoJE
 /5zmaXzNbbU2TOWhXuQJY7twkyZJCFFpbkhhYWTIS47amxmm/+GEKdJ8gn1RM9lEGoWM
 ZZrKRgh1xudryEba81VCk60dAH4nmKHW0NhvGlYNhBg2XIKgxswZ+IZu9yAzq9GZzpY5
 nMtUYDFVBYyZrd3YsSsHcSBZxWQqn0GYtZHi4zQhUV5WpMm4iNMe56AD+9LI3/PJRGgG
 01aGtqwwrclodQJ5UTUqxQOAQInhztknIbVJi4Dsr04RkE5EgRx0Ja6ZJlrr7/hDZNsJ
 1BvA==
X-Gm-Message-State: APjAAAVDUqIw+NtGuWXhy4eQWtv7XBqqfQX6c9nHvfZBHw+FLl0tbzVZ
 CAKRxZawApd3O3SwF8CJSY0SPQ==
X-Google-Smtp-Source: APXvYqxqN1nddeZs/lietKfsI23/PBpm8OnpckvbR1o1arnVhocaQ61yt3HxkcktdG3ogJy5g6DMrw==
X-Received: by 2002:a50:9590:: with SMTP id w16mr82159227eda.0.1560544589058; 
 Fri, 14 Jun 2019 13:36:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:28 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:23 +0200
Message-Id: <20190614203615.12639-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zMwcnr2Nkc54k0ufhoznWvPi1TQGGf5AEIoAt+4i+Xs=;
 b=exoirkL2jJzlfBuFMRgXTrVxzPU2WjHKoaHf4y29H7n437sJibm4H9T9YNBUAMAanP
 GKylIcLcG2vhZQRrV2xMrOG3DIhr/x61/xknjkN5ch0c5EPlQN/ZvYfPsyDoxYxCV5mQ
 r04OY9STjSSTAaFggX8FOiKx/4IH+HVxyatcQ=
Subject: [Intel-gfx] [PATCH 07/59] drm/arm/komeda: Remove DRIVER_HAVE_IRQ
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
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVhZCB0aGUgZG9jcywga29tZWRhIGlzIG5vdCBhbiBvbGQgZW5vdWdoIGRyaXZlciBmb3IgdGhp
cyA6LSkKClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwu
Y29tPgpDYzogIkphbWVzIChRaWFuKSBXYW5nIiA8amFtZXMucWlhbi53YW5nQGFybS5jb20+CkNj
OiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
YXJtL2Rpc3BsYXkva29tZWRhL2tvbWVkYV9rbXMuYyB8IDMgKy0tCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2FybS9kaXNwbGF5L2tvbWVkYS9rb21lZGFfa21zLmMgYi9kcml2ZXJzL2dwdS9kcm0vYXJt
L2Rpc3BsYXkva29tZWRhL2tvbWVkYV9rbXMuYwppbmRleCAwYzYzOTZkYzMyM2YuLmI5ZDY5OWNj
N2JiZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FybS9kaXNwbGF5L2tvbWVkYS9rb21l
ZGFfa21zLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FybS9kaXNwbGF5L2tvbWVkYS9rb21lZGFf
a21zLmMKQEAgLTU1LDggKzU1LDcgQEAgc3RhdGljIGlycXJldHVybl90IGtvbWVkYV9rbXNfaXJx
X2hhbmRsZXIoaW50IGlycSwgdm9pZCAqZGF0YSkKIH0KIAogc3RhdGljIHN0cnVjdCBkcm1fZHJp
dmVyIGtvbWVkYV9rbXNfZHJpdmVyID0gewotCS5kcml2ZXJfZmVhdHVyZXMgPSBEUklWRVJfR0VN
IHwgRFJJVkVSX01PREVTRVQgfCBEUklWRVJfQVRPTUlDIHwKLQkJCSAgIERSSVZFUl9IQVZFX0lS
USwKKwkuZHJpdmVyX2ZlYXR1cmVzID0gRFJJVkVSX0dFTSB8IERSSVZFUl9NT0RFU0VUIHwgRFJJ
VkVSX0FUT01JQywKIAkubGFzdGNsb3NlCQkJPSBkcm1fZmJfaGVscGVyX2xhc3RjbG9zZSwKIAku
aXJxX2hhbmRsZXIJCQk9IGtvbWVkYV9rbXNfaXJxX2hhbmRsZXIsCiAJLmdlbV9mcmVlX29iamVj
dF91bmxvY2tlZAk9IGRybV9nZW1fY21hX2ZyZWVfb2JqZWN0LAotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
