Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDF746A61
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B7C9894B7;
	Fri, 14 Jun 2019 20:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53C1789319
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:36:45 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id z25so5219996edq.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:36:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R6PfFUqF6PPjQ+2KhjwRpZn+kcNs1sc43D2/dq9an+Q=;
 b=PIlr3yb0vEK5bN9kPxmuScj+yzh5/5JCtrefDklDBRuO8Hxb6TwrqP1r5t/rexzsHb
 Hx8RJl25urNMMZjzQZZdpLyev/eNN4xK+2HAp8A8s7kOypHwE6mWtMhOUgkGvpzb3eHR
 mkwZ6xRly4fNpnBje3mveibt7PR9AzZn3KQK3MVSA5TEvPI7Lr1R3FM9Wl2rsRgduQ6Z
 jziOKlTJOuBx03EGKFOaYW4691CTOkOc1rjnPlstUYYoE8e39Y+lBW/WATdMNz4gxFtd
 jSs4j2SBh6janKEcvKABOzJsGBJ9M7iSwDYafUpUFvU6K1MPnQkznSSdr7mbgI3qVJgU
 ti0A==
X-Gm-Message-State: APjAAAWLet2bAyuHPunqQ52D0rBHaoCOXdgq2gFCzTQSmZs7bV9i8icq
 xkadHbK/M4BcpreBDuabnTJ+dw==
X-Google-Smtp-Source: APXvYqzegbVMyOVyR22k1kbhoNYJQqA40Gi82fiW+BK4bC/QQ8P+UzwW88vCgKZeSkx0seZrJt+bHw==
X-Received: by 2002:a17:907:2114:: with SMTP id
 qn20mr66326790ejb.138.1560544603439; 
 Fri, 14 Jun 2019 13:36:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:42 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:34 +0200
Message-Id: <20190614203615.12639-19-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R6PfFUqF6PPjQ+2KhjwRpZn+kcNs1sc43D2/dq9an+Q=;
 b=jXRFsqkoYYsco0cX8unkvA9yIqk1aek7FzkRgYLrvFOi1mZUHrDTOwLwE59rPdsVM4
 d9bdFE75iLKpp6qUGWYFiTLMjX9JcR0IYr4AiXCvb6ohL85UnYhPz6jzbsB0Ol6ZcJON
 GQFy7Mkz8OeTcd2Z7ZXXjgqqEEI5tNbYUqx/c=
Subject: [Intel-gfx] [PATCH 18/59] drm/mcde: Drop drm_gem_prime_export/import
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
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBMaW51cyBXYWxs
ZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL21jZGUv
bWNkZV9kcnYuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tY2RlL21jZGVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0v
bWNkZS9tY2RlX2Rydi5jCmluZGV4IGY3MzFkNjg5ZDUyZi4uYTE5MTdlMjFkNTNiIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vbWNkZS9tY2RlX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9tY2RlL21jZGVfZHJ2LmMKQEAgLTI1NCw4ICsyNTQsNiBAQCBzdGF0aWMgc3RydWN0IGRybV9k
cml2ZXIgbWNkZV9kcm1fZHJpdmVyID0gewogCiAJLnByaW1lX2hhbmRsZV90b19mZCA9IGRybV9n
ZW1fcHJpbWVfaGFuZGxlX3RvX2ZkLAogCS5wcmltZV9mZF90b19oYW5kbGUgPSBkcm1fZ2VtX3By
aW1lX2ZkX3RvX2hhbmRsZSwKLQkuZ2VtX3ByaW1lX2ltcG9ydCA9IGRybV9nZW1fcHJpbWVfaW1w
b3J0LAotCS5nZW1fcHJpbWVfZXhwb3J0ID0gZHJtX2dlbV9wcmltZV9leHBvcnQsCiAJLmdlbV9w
cmltZV9nZXRfc2dfdGFibGUJPSBkcm1fZ2VtX2NtYV9wcmltZV9nZXRfc2dfdGFibGUsCiAJLmdl
bV9wcmltZV9pbXBvcnRfc2dfdGFibGUgPSBkcm1fZ2VtX2NtYV9wcmltZV9pbXBvcnRfc2dfdGFi
bGUsCiAJLmdlbV9wcmltZV92bWFwID0gZHJtX2dlbV9jbWFfcHJpbWVfdm1hcCwKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
