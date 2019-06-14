Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEE546A9C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DF2889739;
	Fri, 14 Jun 2019 20:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4452895D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:02 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id a14so5200557edv.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U+SsSovEYgifk+pNbf4/kZablFT79UaGQf3kG+5U+50=;
 b=mwuCmi1F0sabFDCd+kfqRwzHHxbcUtvXqSR6NVnsdwaeVf61KJCsRIowXJIRMlWJYW
 PPuLFqjelhCVVOKaNbnLdfBKMib03jnkmDeLmOtqVKAc7MDacc/3TBdoXRYiOOS+6YVG
 Gd4j+lyPRHyUIOA4bKYdNmEctwy5gbLZ5luJ+4xYC7HrTdHvw4vyKL3ZP07GEDT9lRR6
 cP7xT1WiW8N0Gr51WDEPesggMBGvYHU47WJFmWOpNvbVTqhGYRCJOJQSWFOXlUv2CEsD
 huYhfLJpO1h9DFWVT8LcFnVtNHb9LKiq2inMLKzPJHKhPxxT7srLxL+lT+Z1aygGbcAl
 NMSw==
X-Gm-Message-State: APjAAAVQ8zcTQzBWUa5BeFAUURhU6Bmymkfff9cdGsDVELsmJPrwyEUI
 Cg1WLTDMYzEd8DhhWG6ZsvsGCg==
X-Google-Smtp-Source: APXvYqzRG+RxJ4GWZ0m9j7UlgW+92KtANbuJgRVipyeXgqsD/OI+4BuY/BRgoPXEmEMQ5TX5WwB3HQ==
X-Received: by 2002:a17:906:7901:: with SMTP id
 b1mr16691416ejo.244.1560544621296; 
 Fri, 14 Jun 2019 13:37:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:00 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:50 +0200
Message-Id: <20190614203615.12639-35-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U+SsSovEYgifk+pNbf4/kZablFT79UaGQf3kG+5U+50=;
 b=Okk0FkreoABkLrrJdJBxv81CFHLaqAZUzWoLXBcZSiDjVIcQHsGGPa0RiZ7qpNLisc
 2ocSZVl3TbVzCHgwEjYqEPT2WRZ0EpbdxuiwkpFv8i2mlUWCHvzTQV6UCKlw25X/rMPB
 OY6Bod3JybGBxEeYNQmqtD+fwoLG0e345egv8=
Subject: [Intel-gfx] [PATCH 34/59] drm/vc3: Drop drm_gem_prime_import
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL3ZjNC92YzRfZHJ2LmMgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZHJ2LmMgYi9kcml2ZXJzL2dw
dS9kcm0vdmM0L3ZjNF9kcnYuYwppbmRleCBlZDRmZTdlZDllNjQuLmEyOTVhYTkxZDNjNSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3ZjNC92YzRfZHJ2LmMKQEAgLTIwMSw3ICsyMDEsNiBAQCBzdGF0aWMgc3RydWN0IGRybV9k
cml2ZXIgdmM0X2RybV9kcml2ZXIgPSB7CiAKIAkucHJpbWVfaGFuZGxlX3RvX2ZkID0gZHJtX2dl
bV9wcmltZV9oYW5kbGVfdG9fZmQsCiAJLnByaW1lX2ZkX3RvX2hhbmRsZSA9IGRybV9nZW1fcHJp
bWVfZmRfdG9faGFuZGxlLAotCS5nZW1fcHJpbWVfaW1wb3J0ID0gZHJtX2dlbV9wcmltZV9pbXBv
cnQsCiAJLmdlbV9wcmltZV9leHBvcnQgPSB2YzRfcHJpbWVfZXhwb3J0LAogCS5nZW1fcHJpbWVf
Z2V0X3NnX3RhYmxlCT0gZHJtX2dlbV9jbWFfcHJpbWVfZ2V0X3NnX3RhYmxlLAogCS5nZW1fcHJp
bWVfaW1wb3J0X3NnX3RhYmxlID0gdmM0X3ByaW1lX2ltcG9ydF9zZ190YWJsZSwKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
