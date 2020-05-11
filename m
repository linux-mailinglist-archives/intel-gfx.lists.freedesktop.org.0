Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD0E1CD553
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:36:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 570CD6E417;
	Mon, 11 May 2020 09:36:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6D1C6E418
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 09:36:07 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id y16so2855672wrs.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 02:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dXm9s0+aPv8sqq7LGN5+dSaN+qr896V5wKS2CgPIMws=;
 b=UWcgoYa4uZ6tLSya55q1cW77+xxFYZbUcZh4p1EVS9R4BkwpusdpV7rE82XmjwAnr6
 Ayl8hQskuY+eBK5yO8Itj74LnyzU40MSi/M9CVCvMAasB6CCPcgwWcZsMW2k5S3wiGkU
 nbuTgF2YjYTALmaWyjiT0nBxyL67SVGM1tXkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dXm9s0+aPv8sqq7LGN5+dSaN+qr896V5wKS2CgPIMws=;
 b=hFgjZqgoMDG5ydi9TNvm4SpajTa7m86lUVFL+OOjAKej4esfJFKW4DCIt8LhDaXXAp
 6os4rZdi90G5TAIP2T5do/G4HeCCvjqZT4fQ8th9uThDqnqGz3kkzeg8BnBGeOxkj3pX
 oyw8sBQ3RzTEAyKyUomY2bpDS+/2zicxNnE0ubHFhANZ7TOA3TqmYpFH6knDxCp2qMlz
 vorntpd09Xde0IhO2xfBIp9IFk3YTfN3UkcylcE8FnNWlRilcUi/b8JhEWAC16aeVu/C
 tYNpxIHoF16HhA6QWyUZyBhugXVRoDVolhvDinwyjj0eAgTe89HB1vOcGxmSJpS4R6Yv
 +PoA==
X-Gm-Message-State: AGi0PualjjcKb7Cu3Xiljuv9Ky84TfNBlWTrPbLQGAXFPOemB/AIalJg
 HAO/icO6pzk+jaAInWzU0mE0zQ==
X-Google-Smtp-Source: APiQypLyF/m55N7T5bYmHsl9XyUGdg2mTYGDQ+4fVr0KbkJ6Aqi9NEcL7GK3wkHTz5wxv06BkvkAiw==
X-Received: by 2002:adf:e9d2:: with SMTP id l18mr17970301wrn.34.1589189766316; 
 Mon, 11 May 2020 02:36:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q17sm9013945wmk.36.2020.05.11.02.36.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 02:36:05 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 11 May 2020 11:35:51 +0200
Message-Id: <20200511093554.211493-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
References: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/shmem-helpers: Don't call get/put_pages
 on imported dma-buf in vmap
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
Cc: Rob Herring <robh@kernel.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUncyBubyBkaXJlY3QgaGFybSwgYmVjYXVzZSBmb3IgdGhlIHNobWVtIGhlbHBlcnMgdGhl
c2UgYXJlIG5vb3BzCm9uIGltcG9ydGVkIGJ1ZmZlcnMuIFRoZSB0cm91YmxlIGlzIGluIHRoZSBs
b2NrcyB0aGVzZSB0YWtlIC0gSSB3YW50CnRvIGNoYW5nZSBkbWFfYnVmX3ZtYXAgbG9ja2luZywg
YW5kIHNvIG5lZWQgdG8gbWFrZSBzdXJlIHRoYXQgd2Ugb25seQpldmVyIHRha2UgY2VydGFpbiBs
b2NrcyBvbiBvbmUgc2lkZSBvZiB0aGUgZG1hLWJ1ZiBpbnRlcmZhY2U6IEVpdGhlcgpmb3IgZXhw
b3J0ZXJzLCBvciBmb3IgaW1wb3J0ZXJzLgoKQ2M6IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRo
YXQuY29tPgpDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KQ2M6IE5vcmFsZiBUcsO4
bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1l
bV9oZWxwZXIuYyB8IDE3ICsrKysrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNl
cnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX3NobWVtX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVs
cGVyLmMKaW5kZXggMmE3MDE1OWQ1MGVmLi5iOWNiYTVjYzYxYzMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX3NobWVtX2hlbHBlci5jCkBAIC0yNTIsMzIgKzI1MiwzMyBAQCBzdGF0aWMgdm9pZCAq
ZHJtX2dlbV9zaG1lbV92bWFwX2xvY2tlZChzdHJ1Y3QgZHJtX2dlbV9zaG1lbV9vYmplY3QgKnNo
bWVtKQogCWlmIChzaG1lbS0+dm1hcF91c2VfY291bnQrKyA+IDApCiAJCXJldHVybiBzaG1lbS0+
dmFkZHI7CiAKLQlyZXQgPSBkcm1fZ2VtX3NobWVtX2dldF9wYWdlcyhzaG1lbSk7Ci0JaWYgKHJl
dCkKLQkJZ290byBlcnJfemVyb191c2U7Ci0KIAlpZiAob2JqLT5pbXBvcnRfYXR0YWNoKSB7CiAJ
CXNobWVtLT52YWRkciA9IGRtYV9idWZfdm1hcChvYmotPmltcG9ydF9hdHRhY2gtPmRtYWJ1Zik7
CiAJfSBlbHNlIHsKIAkJcGdwcm90X3QgcHJvdCA9IFBBR0VfS0VSTkVMOwogCisJCXJldCA9IGRy
bV9nZW1fc2htZW1fZ2V0X3BhZ2VzKHNobWVtKTsKKwkJaWYgKHJldCkKKwkJCWdvdG8gZXJyOwor
CiAJCWlmICghc2htZW0tPm1hcF9jYWNoZWQpCiAJCQlwcm90ID0gcGdwcm90X3dyaXRlY29tYmlu
ZShwcm90KTsKIAkJc2htZW0tPnZhZGRyID0gdm1hcChzaG1lbS0+cGFnZXMsIG9iai0+c2l6ZSA+
PiBQQUdFX1NISUZULAogCQkJCSAgICBWTV9NQVAsIHByb3QpOworCisJCWlmICghc2htZW0tPnZh
ZGRyKQorCQkJZHJtX2dlbV9zaG1lbV9wdXRfcGFnZXMoc2htZW0pOwogCX0KIAogCWlmICghc2ht
ZW0tPnZhZGRyKSB7CiAJCURSTV9ERUJVR19LTVMoIkZhaWxlZCB0byB2bWFwIHBhZ2VzXG4iKTsK
IAkJcmV0ID0gLUVOT01FTTsKLQkJZ290byBlcnJfcHV0X3BhZ2VzOworCQlnb3RvIGVycjsKIAl9
CiAKIAlyZXR1cm4gc2htZW0tPnZhZGRyOwogCi1lcnJfcHV0X3BhZ2VzOgotCWRybV9nZW1fc2ht
ZW1fcHV0X3BhZ2VzKHNobWVtKTsKLWVycl96ZXJvX3VzZToKK2VycjoKIAlzaG1lbS0+dm1hcF91
c2VfY291bnQgPSAwOwogCiAJcmV0dXJuIEVSUl9QVFIocmV0KTsKLS0gCjIuMjYuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
