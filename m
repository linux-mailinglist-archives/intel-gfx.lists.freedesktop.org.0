Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E95C3BC929
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 12:12:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDAD4899BE;
	Tue,  6 Jul 2021 10:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82E1D897E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jul 2021 10:12:18 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id v5so25409986wrt.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Jul 2021 03:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QjSmqlbIRb4rQlv/d4Pv/+GvfrOLmD0Jb/5nkyL4HJI=;
 b=fOHKcRBrqDpQMSUxe0M4ZFMVRFmAgoabsGu0LEn0ogBsEAYugsDkEBBZRNnqSd+aQG
 ACJChm6bV1k+6vbmvnfIcpF8Pjf3RKqmW+gSJVIie27q/PSewJ5soKS3DzZMqoeR5o2o
 otxaZUkQD9LUP3qSxy7RjptNmWyhCffqskmcE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QjSmqlbIRb4rQlv/d4Pv/+GvfrOLmD0Jb/5nkyL4HJI=;
 b=pHPakr2Qy33+2Uft3xQkjCcHuRl/rggmR6BEwmF/BVCNjbqRaDx8ewqceWE2Do3S6f
 x/mf70R4+L68RQWRx/ICDpai+uqPMGKPoxOCYU7JXWWzn1MPnVaxqsPcnZsH+FrkXkj1
 m+tGiHP7peQ9pvGhnAqUawbZ2BiW8COZg7ECoDy8FP0wUxlanwecEVlXXx+EfhIeM6Vu
 w5rtCXcOKeuxL0QMswxz46gnsEojiWHz43O1d1mS0C+8StZ9OpKn8vHU9l9YBZQ1irIU
 dRgykBm5y8blpRW311lD4f8WcYQmtjuRXCIF7WRQXN1P9GuWJVrUi5xovr3npJb+8pbD
 6OWw==
X-Gm-Message-State: AOAM530R5W9fSQXZa2bnpb/2YhLHizi6d91Q8L1SzYFKjAUUsRur+jv1
 UzXxue8EfU4sAhFm1DmZ+z/XAg==
X-Google-Smtp-Source: ABdhPJzRhuq1HqrzCBVXnJv+E7x6zUHp7tuCSXGXAIzhQ2SUN++Qu4ESB4yF70Ifgh+t7q4mP4C25w==
X-Received: by 2002:a05:6000:1b90:: with SMTP id
 r16mr12923636wru.316.1625566337206; 
 Tue, 06 Jul 2021 03:12:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u2sm9862739wmc.42.2021.07.06.03.12.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 03:12:16 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  6 Jul 2021 12:12:04 +0200
Message-Id: <20210706101209.3034092-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210706101209.3034092-1-daniel.vetter@ffwll.ch>
References: <20210706101209.3034092-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/msm: always wait for the exclusive fence
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
Cc: freedreno@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+
CgpEcml2ZXJzIGFsc28gbmVlZCB0byB0byBzeW5jIHRvIHRoZSBleGNsdXNpdmUgZmVuY2Ugd2hl
bgphIHNoYXJlZCBvbmUgaXMgcHJlc2VudC4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KW2RhbnZldDogTm90IHRoYXQgaGFyZCB0byBj
b21waWxlLXRlc3Qgb24gYXJtIC4uLl0KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4K
Q2M6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgpDYzogbGludXgtYXJtLW1zbUB2Z2VyLmtl
cm5lbC5vcmcKQ2M6IGZyZWVkcmVub0BsaXN0cy5mcmVlZGVza3RvcC5vcmcKLS0tCiBkcml2ZXJz
L2dwdS9kcm0vbXNtL21zbV9nZW0uYyB8IDE2ICsrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwpp
bmRleCAxNDExNzg3NTQyMzEuLmQ5YzRmMWRlZWFmYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL21zbS9tc21fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMKQEAg
LTgxMiwxNyArODEyLDE1IEBAIGludCBtc21fZ2VtX3N5bmNfb2JqZWN0KHN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb2JqLAogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCWludCBpLCByZXQ7CiAK
LQlmb2JqID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qob2JqLT5yZXN2KTsKLQlpZiAoIWZvYmogfHwg
KGZvYmotPnNoYXJlZF9jb3VudCA9PSAwKSkgewotCQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVu
Y2Uob2JqLT5yZXN2KTsKLQkJLyogZG9uJ3QgbmVlZCB0byB3YWl0IG9uIG91ciBvd24gZmVuY2Vz
LCBzaW5jZSByaW5nIGlzIGZpZm8gKi8KLQkJaWYgKGZlbmNlICYmIChmZW5jZS0+Y29udGV4dCAh
PSBmY3R4LT5jb250ZXh0KSkgewotCQkJcmV0ID0gZG1hX2ZlbmNlX3dhaXQoZmVuY2UsIHRydWUp
OwotCQkJaWYgKHJldCkKLQkJCQlyZXR1cm4gcmV0OwotCQl9CisJZmVuY2UgPSBkbWFfcmVzdl9l
eGNsX2ZlbmNlKG9iai0+cmVzdik7CisJLyogZG9uJ3QgbmVlZCB0byB3YWl0IG9uIG91ciBvd24g
ZmVuY2VzLCBzaW5jZSByaW5nIGlzIGZpZm8gKi8KKwlpZiAoZmVuY2UgJiYgKGZlbmNlLT5jb250
ZXh0ICE9IGZjdHgtPmNvbnRleHQpKSB7CisJCXJldCA9IGRtYV9mZW5jZV93YWl0KGZlbmNlLCB0
cnVlKTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CiAJfQogCisJZm9iaiA9IGRtYV9yZXN2
X3NoYXJlZF9saXN0KG9iai0+cmVzdik7CiAJaWYgKCFleGNsdXNpdmUgfHwgIWZvYmopCiAJCXJl
dHVybiAwOwogCi0tIAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
