Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E49A1CD55C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:36:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F1789D7C;
	Mon, 11 May 2020 09:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BCAC6E40C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 09:36:10 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id e26so17292045wmk.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 02:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jiEqWmvJIvSHgBKn6ifo7dJfIKkXuCXmPLyNt/uHVFw=;
 b=gWwhijgLuPTS+8nLzRuo0lamqr8cs5BEdGK+qadCGO1c6oXTh8zhJNQLm9Ax84uaAV
 5vZAfLwnv9AH2FpjefgCnq0CWKfP41C85oiyP+3qzN6P63cBJTes5h4qgbUNhTzwKQYj
 xm7Ha+UI4mb2GNtbmCdDfmxF5nTQ5+PjQVh0U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jiEqWmvJIvSHgBKn6ifo7dJfIKkXuCXmPLyNt/uHVFw=;
 b=c5dQXkhhebSVSs7EeVL0QxaiZwN3bMI34KE247jRsWToqtS4haMSlwGFVvj3q3M+x/
 9EARZuQy2KoIuHSSvjNm8QvIlR9Yld+EMAdZTV18j2fykiRTaFeRb8suNFMTV7ufWXSL
 DI7jHSnjtogVbwT/Gaz+YLG3aUFaAp3H+Ek1lq9ftD0IIXYy/ni/dKANsoRFyBaNnHdy
 Oc3rF6HMkOrF7hB0iCTctatUK4FoAvbPhMgLykwy87KGjx/c6XsQ8L2K2IQ3ZnPCoxTA
 acCu5HMksG2NmFQJgEByAyT9AMwWVKJqmPaS2f/zbcZc+LfWdBTCXhfKK3JMQteI8ACK
 5mkA==
X-Gm-Message-State: AGi0PuZR0Krookhyaj0AxVsNUnhKn8NT1J1mF4mnLQXE2C6d+4wyybZy
 SuF57MoTzlkJ7373PosesKjN6Q==
X-Google-Smtp-Source: APiQypLZA00N1dW8ljSoZlkr+fGgqdXLM+TiFQYvagUpwQkJupGh4RaE4rHmlpkYfRAkx45/ojvw1g==
X-Received: by 2002:a1c:5502:: with SMTP id j2mr32498550wmb.56.1589189768830; 
 Mon, 11 May 2020 02:36:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q17sm9013945wmk.36.2020.05.11.02.36.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 02:36:08 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 11 May 2020 11:35:53 +0200
Message-Id: <20200511093554.211493-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
References: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/9] drm/shmem-helpers: Ensure get_pages is not
 called on imported dma-buf
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

SnVzdCBhIGJpdCBvZiBsaWdodCBwYXJhbm9pYS4gQWxzbyBzcHJpbmtsZSB0aGlzIGNoZWNrIG92
ZXIKZHJtX2dlbV9zaG1lbV9nZXRfc2dfdGFibGUsIHdoaWNoIHNob3VsZCBvbmx5IGJlIGNhbGxl
ZCB3aGVuCmV4cG9ydGluZywgc2FtZSBmb3IgdGhlIHBpbi91bnBpbiBmdW5jdGlvbnMsIG9uIHdo
aWNoIGl0IHJlbGllcyB0bwp3b3JrIGNvcnJlY3RseS4KCkNjOiBHZXJkIEhvZmZtYW5uIDxrcmF4
ZWxAcmVkaGF0LmNvbT4KQ2M6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CkNjOiBOb3Jh
bGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9n
ZW1fc2htZW1faGVscGVyLmMgfCAxMCArKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hl
bHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMKaW5kZXggMTE3
YTc4NDFlMjg0Li5mNzAxMTMzODgxM2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
Z2VtX3NobWVtX2hlbHBlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hl
bHBlci5jCkBAIC0xNzAsNiArMTcwLDggQEAgaW50IGRybV9nZW1fc2htZW1fZ2V0X3BhZ2VzKHN0
cnVjdCBkcm1fZ2VtX3NobWVtX29iamVjdCAqc2htZW0pCiB7CiAJaW50IHJldDsKIAorCVdBUk5f
T04oc2htZW0tPmJhc2UuaW1wb3J0X2F0dGFjaCk7CisKIAlyZXQgPSBtdXRleF9sb2NrX2ludGVy
cnVwdGlibGUoJnNobWVtLT5wYWdlc19sb2NrKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwpA
QCAtMjI1LDYgKzIyNyw4IEBAIGludCBkcm1fZ2VtX3NobWVtX3BpbihzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKm9iaikKIHsKIAlzdHJ1Y3QgZHJtX2dlbV9zaG1lbV9vYmplY3QgKnNobWVtID0gdG9f
ZHJtX2dlbV9zaG1lbV9vYmoob2JqKTsKIAorCVdBUk5fT04oc2htZW0tPmJhc2UuaW1wb3J0X2F0
dGFjaCk7CisKIAlyZXR1cm4gZHJtX2dlbV9zaG1lbV9nZXRfcGFnZXMoc2htZW0pOwogfQogRVhQ
T1JUX1NZTUJPTChkcm1fZ2VtX3NobWVtX3Bpbik7CkBAIC0yNDAsNiArMjQ0LDggQEAgdm9pZCBk
cm1fZ2VtX3NobWVtX3VucGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogewogCXN0cnVj
dCBkcm1fZ2VtX3NobWVtX29iamVjdCAqc2htZW0gPSB0b19kcm1fZ2VtX3NobWVtX29iaihvYmop
OwogCisJV0FSTl9PTihzaG1lbS0+YmFzZS5pbXBvcnRfYXR0YWNoKTsKKwogCWRybV9nZW1fc2ht
ZW1fcHV0X3BhZ2VzKHNobWVtKTsKIH0KIEVYUE9SVF9TWU1CT0woZHJtX2dlbV9zaG1lbV91bnBp
bik7CkBAIC01MTAsNiArNTE2LDggQEAgc3RhdGljIHZvaWQgZHJtX2dlbV9zaG1lbV92bV9vcGVu
KHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQogCXN0cnVjdCBkcm1fZ2VtX3NobWVtX29iamVj
dCAqc2htZW0gPSB0b19kcm1fZ2VtX3NobWVtX29iaihvYmopOwogCWludCByZXQ7CiAKKwlXQVJO
X09OKHNobWVtLT5iYXNlLmltcG9ydF9hdHRhY2gpOworCiAJcmV0ID0gZHJtX2dlbV9zaG1lbV9n
ZXRfcGFnZXMoc2htZW0pOwogCVdBUk5fT05fT05DRShyZXQgIT0gMCk7CiAKQEAgLTYxMSw2ICs2
MTksOCBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRybV9nZW1fc2htZW1fZ2V0X3NnX3RhYmxlKHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqKQogewogCXN0cnVjdCBkcm1fZ2VtX3NobWVtX29iamVjdCAq
c2htZW0gPSB0b19kcm1fZ2VtX3NobWVtX29iaihvYmopOwogCisJV0FSTl9PTihzaG1lbS0+YmFz
ZS5pbXBvcnRfYXR0YWNoKTsKKwogCXJldHVybiBkcm1fcHJpbWVfcGFnZXNfdG9fc2coc2htZW0t
PnBhZ2VzLCBvYmotPnNpemUgPj4gUEFHRV9TSElGVCk7CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChk
cm1fZ2VtX3NobWVtX2dldF9zZ190YWJsZSk7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
