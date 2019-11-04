Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 372A3EE622
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 18:37:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32B556E791;
	Mon,  4 Nov 2019 17:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17D966E791
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 17:37:35 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id x4so6491477wmi.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Nov 2019 09:37:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PXKWmt04LLOdOQwT4J7BpfWO3zbtkR+P8tnC3gpeEXQ=;
 b=W7h5CJ31qvfsKW255VYdBzYlzfrnIWzR7IsxKZuBEXEyPSZN6Pk7p7DF5sJCpwUkoL
 kl8uPm+luSJUY18dmfoLa6CxZAqnpY3J58wFuUXGUBS3L0Bw/gmYYILfNKG5O3SrxP0w
 zcg3K/NobwGKd/RB2x9CUyIVsokpLyEZHYhY7fk7XZJSLkITW2veUTz0ALNZ/cJSLyuK
 Sm4pvd3M8jo5npLd8w77OJbBkHXu78oqu62bfIb7sOgxKUYp17rQZVphVy1JbVo1B30h
 sdTuq1MJyN6rEYCM+wfJTVrY8zT6bRbFwnZ5cc5jjFlmwECz7Uf84VS4msOC+8EIp4BM
 2Sxg==
X-Gm-Message-State: APjAAAUhRCdqmSxRmIuv+Ut2Wt+uisZ/SCEOJqBmM2CA5rSN/jygqLlf
 jOM2s4IKw59z2AtcJVNGCp1OzAua228=
X-Google-Smtp-Source: APXvYqwnBFrltg4BcDYvyP0LQfKr7LnFL2T1UPgzUktng1ER3WfNh2V8RcaPXqBQ9MI5hBomwShRrA==
X-Received: by 2002:a05:600c:21c9:: with SMTP id
 x9mr252564wmj.54.1572889053413; 
 Mon, 04 Nov 2019 09:37:33 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id l22sm32408863wrb.45.2019.11.04.09.37.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 09:37:32 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Mon,  4 Nov 2019 18:37:20 +0100
Message-Id: <20191104173720.2696-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0.rc2
In-Reply-To: <20191104173720.2696-1-daniel.vetter@ffwll.ch>
References: <20191104173720.2696-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PXKWmt04LLOdOQwT4J7BpfWO3zbtkR+P8tnC3gpeEXQ=;
 b=VAyQzyglRqNMJ3a4V+Jk2zst6aCR675sfvIjYWZoY/TUikK/EnbUf83SZsY6hQMvZ/
 qpqrMTLp8w0fMoHxqmLb1x9cV4Jrfhnir+g7hTsKlxb8muPuiiTG+25XLfQkayp2UfU3
 uqK791FxcspFJz55XB6wK9tl9Y/kCkD4f7HQs=
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: use might_lock_nested in
 get_pages annotation
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U28gc3RyaWN0bHkgc3BlYWtpbmcgdGhlIGV4aXN0aW5nIGFubm90YXRpb24gaXMgYWxzbyBvaywg
YmVjYXVzZSB3ZQpoYXZlIGEgY2hhaW4gb2YKCm9iai0+bW0ubG9jayNJOTE1X01NX0dFVF9QQUdF
UyAtPiBmc19yZWNsYWltIC0+IG9iai0+bW0ubG9jawoKKHRoZSBzaHJpbmtlciBjYW5ub3QgZ2V0
IGF0IGFuIG9iamVjdCB3aGlsZSB3ZSdyZSBpbiBnZXRfcGFnZXMsIGhlbmNlCnRoaXMgaXMgc2Fm
ZSkuIEJ1dCBpdCdzIGNvbmZ1c2luZywgc28gdHJ5IHRvIHRha2UgdGhlIHJpZ2h0IHN1YmNsYXNz
Cm9mIHRoZSBsb2NrLgoKVGhpcyBkb2VzIGEgYml0IHJlZHVjZSBvdXIgbG9ja2RlcCBiYXNlZCBj
aGVja2luZywgYnV0IHRoZW4gaXQncyBhbHNvCmxlc3MgZnJhZ2lsZSwgaW4gY2FzZSB3ZSBldmVy
IGNoYW5nZSB0aGUgbmVzdGluZyBhcm91bmQuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5m
cmFkZWFkLm9yZz4KQ2M6IEluZ28gTW9sbmFyIDxtaW5nb0ByZWRoYXQuY29tPgpDYzogV2lsbCBE
ZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcK
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggfCAzNiArKysr
KysrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMTgg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5o
CmluZGV4IGVkYWY3MTI2YTg0ZC4uZTU3NTBkNTA2Y2M5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCkBAIC0yNzEsMTAgKzI3MSwyNyBAQCB2b2lkIF9faTkx
NV9nZW1fb2JqZWN0X3NldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAog
aW50IF9fX19pOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopOwogaW50IF9faTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqKTsKIAorZW51bSBpOTE1X21tX3N1YmNsYXNzIHsgLyogbG9ja2Rl
cCBzdWJjbGFzcyBmb3Igb2JqLT5tbS5sb2NrL3N0cnVjdF9tdXRleCAqLworCUk5MTVfTU1fTk9S
TUFMID0gMCwKKwkvKgorCSAqIE9ubHkgdXNlZCBieSBzdHJ1Y3RfbXV0ZXgsIHdoZW4gY2FsbGVk
ICJyZWN1cnNpdmVseSIgZnJvbQorCSAqIGRpcmVjdC1yZWNsYWltLWVzcXVlLiBTYWZlIGJlY2F1
c2UgdGhlcmUgaXMgb25seSBldmVyeSBvbmUKKwkgKiBzdHJ1Y3RfbXV0ZXggaW4gdGhlIGVudGly
ZSBzeXN0ZW0uCisJICovCisJSTkxNV9NTV9TSFJJTktFUiA9IDEsCisJLyoKKwkgKiBVc2VkIGZv
ciBvYmotPm1tLmxvY2sgd2hlbiBhbGxvY2F0aW5nIHBhZ2VzLiBTYWZlIGJlY2F1c2UgdGhlIG9i
amVjdAorCSAqIGlzbid0IHlldCBvbiBhbnkgTFJVLCBhbmQgdGhlcmVmb3JlIHRoZSBzaHJpbmtl
ciBjYW4ndCBkZWFkbG9jayBvbgorCSAqIGl0LiBBcyBzb29uIGFzIHRoZSBvYmplY3QgaGFzIHBh
Z2VzLCBvYmotPm1tLmxvY2sgbmVzdHMgd2l0aGluCisJICogZnNfcmVjbGFpbS4KKwkgKi8KKwlJ
OTE1X01NX0dFVF9QQUdFUyA9IDEsCit9OworCiBzdGF0aWMgaW5saW5lIGludCBfX211c3RfY2hl
Y2sKIGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaikKIHsKLQltaWdodF9sb2NrKCZvYmotPm1tLmxvY2spOworCW1pZ2h0X2xvY2tfbmVzdGVk
KCZvYmotPm1tLmxvY2ssIEk5MTVfTU1fR0VUX1BBR0VTKTsKIAogCWlmIChhdG9taWNfaW5jX25v
dF96ZXJvKCZvYmotPm1tLnBhZ2VzX3Bpbl9jb3VudCkpCiAJCXJldHVybiAwOwpAQCAtMzE3LDIz
ICszMzQsNiBAQCBpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaikKIAlfX2k5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOwogfQog
Ci1lbnVtIGk5MTVfbW1fc3ViY2xhc3MgeyAvKiBsb2NrZGVwIHN1YmNsYXNzIGZvciBvYmotPm1t
LmxvY2svc3RydWN0X211dGV4ICovCi0JSTkxNV9NTV9OT1JNQUwgPSAwLAotCS8qCi0JICogT25s
eSB1c2VkIGJ5IHN0cnVjdF9tdXRleCwgd2hlbiBjYWxsZWQgInJlY3Vyc2l2ZWx5IiBmcm9tCi0J
ICogZGlyZWN0LXJlY2xhaW0tZXNxdWUuIFNhZmUgYmVjYXVzZSB0aGVyZSBpcyBvbmx5IGV2ZXJ5
IG9uZQotCSAqIHN0cnVjdF9tdXRleCBpbiB0aGUgZW50aXJlIHN5c3RlbS4KLQkgKi8KLQlJOTE1
X01NX1NIUklOS0VSID0gMSwKLQkvKgotCSAqIFVzZWQgZm9yIG9iai0+bW0ubG9jayB3aGVuIGFs
bG9jYXRpbmcgcGFnZXMuIFNhZmUgYmVjYXVzZSB0aGUgb2JqZWN0Ci0JICogaXNuJ3QgeWV0IG9u
IGFueSBMUlUsIGFuZCB0aGVyZWZvcmUgdGhlIHNocmlua2VyIGNhbid0IGRlYWRsb2NrIG9uCi0J
ICogaXQuIEFzIHNvb24gYXMgdGhlIG9iamVjdCBoYXMgcGFnZXMsIG9iai0+bW0ubG9jayBuZXN0
cyB3aXRoaW4KLQkgKiBmc19yZWNsYWltLgotCSAqLwotCUk5MTVfTU1fR0VUX1BBR0VTID0gMSwK
LX07Ci0KIGludCBfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaik7CiB2b2lkIGk5MTVfZ2VtX29iamVjdF90cnVuY2F0ZShzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKIHZvaWQgaTkxNV9nZW1fb2JqZWN0X3dyaXRlYmFjayhz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKLS0gCjIuMjQuMC5yYzIKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
