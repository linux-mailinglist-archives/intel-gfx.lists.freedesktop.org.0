Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA5A46AAF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C7B897D4;
	Fri, 14 Jun 2019 20:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1CA289612
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:06 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id z25so5221230edq.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y9RKgY0+3FkjSX0Oldmu3gGGi6J9Dx0mTVEOdTGhQwU=;
 b=cJnwChxt/AaDjwnO2RXfW0OMR2gTjsMTwHqfyFkoZYVLL9hvHk17EzdxnpeoD4y8hP
 mNXRov3EeK2O91/4RQkAuMqjlCt3wfJWD/J4pagKSG6WIhb2QIV9VJC9RhTD4mqO7Wjd
 fJ9VstDaoyhIRGrKAGVjagACSLXRx/Eq1mUuSvDy1+VWDRfGpjgWTIeQRRj+ZBlXmM3J
 pEtaONf2w+cRRjrvEW16t9vWbO2XNUdpxGbIb6Inca/S/DnZPv8PqZg+gsY0bjY27qI1
 Qsq7BpCkJvSguI6oK9MYi8hycz9wc/6pFeLD05p/qkjCjUHpA51deF7qKvOgAJmnXZiv
 Vz9A==
X-Gm-Message-State: APjAAAVFGkxrV6pwYEb92JD0Y+iQb8bHAcWGOxg6HMUh+ChkQlOVzb6A
 QBRCDgpxY1BRfl/xAUjNrbpJHQ==
X-Google-Smtp-Source: APXvYqzkCm47/FYrY7Q0W3jwPMfoOrKGsg0RU324Ysjn2Lsd6f06AYcd7EAKzECV9fCuHygeacDimA==
X-Received: by 2002:a50:8825:: with SMTP id b34mr25676201edb.22.1560544624634; 
 Fri, 14 Jun 2019 13:37:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:04 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:35:53 +0200
Message-Id: <20190614203615.12639-38-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y9RKgY0+3FkjSX0Oldmu3gGGi6J9Dx0mTVEOdTGhQwU=;
 b=BPfkevHAKLwcTEw0iqHFXr8QiwGBGtYDzLrlPA04hLqsksgpZSe8k1jkI+UeyWJCq0
 bzYSraRuURwxAl6JOFAj1AjqcABPYDgSWlvxFGBSdSQAMcRaz1OOnyQjz3xnOfl1CwyA
 mnEW049jvD964PgHDYJaWX322cLd5Um9CNf7Q=
Subject: [Intel-gfx] [PATCH 37/59] drm/virtio: Drop
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBEYXZpZCBBaXJs
aWUgPGFpcmxpZWRAbGludXguaWU+CkNjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNv
bT4KQ2M6IHZpcnR1YWxpemF0aW9uQGxpc3RzLmxpbnV4LWZvdW5kYXRpb24ub3JnCi0tLQogZHJp
dmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2Rydi5jIHwgMiAtLQogMSBmaWxlIGNoYW5nZWQs
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0
Z3B1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2Rydi5jCmluZGV4IDBh
ZmRmNTFmZGNmZC4uOTliY2QyOTBmMWZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmly
dGlvL3ZpcnRncHVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2Ry
di5jCkBAIC0yMDcsOCArMjA3LDYgQEAgc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGRyaXZlciA9
IHsKICNlbmRpZgogCS5wcmltZV9oYW5kbGVfdG9fZmQgPSBkcm1fZ2VtX3ByaW1lX2hhbmRsZV90
b19mZCwKIAkucHJpbWVfZmRfdG9faGFuZGxlID0gZHJtX2dlbV9wcmltZV9mZF90b19oYW5kbGUs
Ci0JLmdlbV9wcmltZV9leHBvcnQgPSBkcm1fZ2VtX3ByaW1lX2V4cG9ydCwKLQkuZ2VtX3ByaW1l
X2ltcG9ydCA9IGRybV9nZW1fcHJpbWVfaW1wb3J0LAogCS5nZW1fcHJpbWVfZ2V0X3NnX3RhYmxl
ID0gdmlydGdwdV9nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVfaW1wb3J0X3Nn
X3RhYmxlID0gdmlydGdwdV9nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlLAogCS5nZW1fcHJpbWVf
dm1hcCA9IHZpcnRncHVfZ2VtX3ByaW1lX3ZtYXAsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
