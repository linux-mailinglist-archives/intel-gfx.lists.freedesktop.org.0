Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A712C239
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19BEF89F55;
	Tue, 28 May 2019 09:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE6B589E52
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:03:41 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id w37so30609979edw.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 02:03:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jemw2QjWxU+UFHjYLKdEyQ9knTBj8Nqm3v5Mrc95+O8=;
 b=Qjg5NopLvee36CNeGsVfW0bb3uGBWnR9+ZjXOPyxTaE2OBRYnMQlQwJ6fCqde4jlmM
 ukcaimZdTZzlZTuX7JiEHvAihSe4VbFWg4GEiIAYddbnxyUufRKC7YqN30w5SMEQGVDC
 n16WAnmoDw0w33FUNUt8vDRmKHStnPZG8ECxNrNbs8DrEkMs9m8t2Gbq6xQ81mEhLY3M
 zbzuTRH+BJhFvvHqIFiM2+Y3oz/7wIbG+Ajuq80+fMskFkeBSpq1Ef29GnCx3ob1eWQF
 +DbMEPhmQrjZ3mk2f2yOhByJuLG8O1MA72FkSSdLHqBJ9TH3eFGgD2q001vb75lI1Gaz
 zhlQ==
X-Gm-Message-State: APjAAAU1S2siizZFYFmDEYUSP48S0mm1nZkjSK7U5ErfthzSoM5NjMNU
 xBnPPLqmxeEXzE8pbgyufArKBw==
X-Google-Smtp-Source: APXvYqzRmMQx8hio/CkC+ykYBbXTDds6GiLnz4oTtSmCC0xHsSsFWfJG1JCAR/ZOcV6FU9c5NjgHVQ==
X-Received: by 2002:a50:ad2b:: with SMTP id
 y40mr126347451edc.237.1559034218893; 
 Tue, 28 May 2019 02:03:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id x49sm4072656edm.25.2019.05.28.02.03.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 02:03:38 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Tue, 28 May 2019 11:02:50 +0200
Message-Id: <20190528090304.9388-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
References: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jemw2QjWxU+UFHjYLKdEyQ9knTBj8Nqm3v5Mrc95+O8=;
 b=Q2Q/sGFS+3ztGuIG6HjyW4WqtF83a09htVuw4GKSsgH3cHm7dGKzhjvGuCPzzPDkgL
 E1/NRgZTaeTYcHOps+FhdcT1PbSFGvlgKFkIBRaH+zrG9UMsmLLURLcCTjDwxR0xLIN3
 KwwuXSGHz0AEiTSHK9LXqpPeWcu8jfLUGcaEQ=
Subject: [Intel-gfx] [PATCH 19/33] fbdev: unify unlink_framebuffer paths
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Mikulas Patocka <mpatocka@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIHNvbWUgcmVhc29ucyB0aGUgcG1fdnRfc3dpdGNoX3VucmVnaXN0ZXIgY2FsbCB3YXMgbWlz
c2luZyBmcm9tIHRoZQpkaXJlY3QgdW5yZWdpc3Rlcl9mcmFtZWJ1ZmZlciBwYXRoLiBGaXggdGhp
cy4KCnYyOiBmYmluZm8tPmRldiBpcyB1c2VkIHRvIGRlY2lkZWQgd2hldGhlciB1bmxpbmtfZnJh
bWVidWZmZXIgaGFzIGJlZW4KY2FsbGVkIGFscmVhZHkuIEkgYm90Y2hlZCB0aGF0IGluIHYxLiBN
YWtlIHRoaXMgYWxsIGNsZWFyZXIgYnkKaW5saW5pbmcgX191bmxpbmtfZnJhbWVidWZmZXIuCgp2
MzogRml4IHR5cG9lIGluIHN1YmplY3QgKE1hYXJ0ZW4pLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBTYW0gUmF2bmJv
cmcgPHNhbUByYXZuYm9yZy5vcmc+ClJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1h
YXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IEJhcnRsb21pZWogWm9sbmllcmtp
ZXdpY3ogPGIuem9sbmllcmtpZUBzYW1zdW5nLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiAiTWljaGHFgiBNaXJvc8WCYXciIDxtaXJxLWxpbnV4QHJl
cmUucW1xbS5wbD4KQ2M6IFBldGVyIFJvc2luIDxwZWRhQGF4ZW50aWEuc2U+CkNjOiBIYW5zIGRl
IEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgpDYzogTWlrdWxhcyBQYXRvY2thIDxtcGF0b2Nr
YUByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jIHwgNDcg
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNl
cnRpb25zKCspLCAyNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2Zi
ZGV2L2NvcmUvZmJtZW0uYyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jCmluZGV4
IGYzYmNhZDMwZDNiYS4uYmVlNDVlOTQwNWI4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpZGVvL2Zi
ZGV2L2NvcmUvZmJtZW0uYworKysgYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYwpA
QCAtMTcyMiwxNSArMTcyMiwzMCBAQCBzdGF0aWMgdm9pZCB1bmJpbmRfY29uc29sZShzdHJ1Y3Qg
ZmJfaW5mbyAqZmJfaW5mbykKIAljb25zb2xlX3VubG9jaygpOwogfQogCi1zdGF0aWMgdm9pZCBf
X3VubGlua19mcmFtZWJ1ZmZlcihzdHJ1Y3QgZmJfaW5mbyAqZmJfaW5mbyk7Ci0KLXN0YXRpYyB2
b2lkIGRvX3VucmVnaXN0ZXJfZnJhbWVidWZmZXIoc3RydWN0IGZiX2luZm8gKmZiX2luZm8pCit2
b2lkIHVubGlua19mcmFtZWJ1ZmZlcihzdHJ1Y3QgZmJfaW5mbyAqZmJfaW5mbykKIHsKLQl1bmJp
bmRfY29uc29sZShmYl9pbmZvKTsKKwlpbnQgaTsKKworCWkgPSBmYl9pbmZvLT5ub2RlOworCWlm
IChXQVJOX09OKGkgPCAwIHx8IGkgPj0gRkJfTUFYIHx8IHJlZ2lzdGVyZWRfZmJbaV0gIT0gZmJf
aW5mbykpCisJCXJldHVybjsKKworCWlmICghZmJfaW5mby0+ZGV2KQorCQlyZXR1cm47CisKKwlk
ZXZpY2VfZGVzdHJveShmYl9jbGFzcywgTUtERVYoRkJfTUFKT1IsIGkpKTsKIAogCXBtX3Z0X3N3
aXRjaF91bnJlZ2lzdGVyKGZiX2luZm8tPmRldik7CiAKLQlfX3VubGlua19mcmFtZWJ1ZmZlcihm
Yl9pbmZvKTsKKwl1bmJpbmRfY29uc29sZShmYl9pbmZvKTsKKworCWZiX2luZm8tPmRldiA9IE5V
TEw7Cit9CitFWFBPUlRfU1lNQk9MKHVubGlua19mcmFtZWJ1ZmZlcik7CisKK3N0YXRpYyB2b2lk
IGRvX3VucmVnaXN0ZXJfZnJhbWVidWZmZXIoc3RydWN0IGZiX2luZm8gKmZiX2luZm8pCit7CisJ
dW5saW5rX2ZyYW1lYnVmZmVyKGZiX2luZm8pOwogCWlmIChmYl9pbmZvLT5waXhtYXAuYWRkciAm
JgogCSAgICAoZmJfaW5mby0+cGl4bWFwLmZsYWdzICYgRkJfUElYTUFQX0RFRkFVTFQpKQogCQlr
ZnJlZShmYl9pbmZvLT5waXhtYXAuYWRkcik7CkBAIC0xNzUzLDI4ICsxNzY4LDYgQEAgc3RhdGlj
IHZvaWQgZG9fdW5yZWdpc3Rlcl9mcmFtZWJ1ZmZlcihzdHJ1Y3QgZmJfaW5mbyAqZmJfaW5mbykK
IAlwdXRfZmJfaW5mbyhmYl9pbmZvKTsKIH0KIAotc3RhdGljIHZvaWQgX191bmxpbmtfZnJhbWVi
dWZmZXIoc3RydWN0IGZiX2luZm8gKmZiX2luZm8pCi17Ci0JaW50IGk7Ci0KLQlpID0gZmJfaW5m
by0+bm9kZTsKLQlpZiAoV0FSTl9PTihpIDwgMCB8fCBpID49IEZCX01BWCB8fCByZWdpc3RlcmVk
X2ZiW2ldICE9IGZiX2luZm8pKQotCQlyZXR1cm47Ci0KLQlpZiAoZmJfaW5mby0+ZGV2KSB7Ci0J
CWRldmljZV9kZXN0cm95KGZiX2NsYXNzLCBNS0RFVihGQl9NQUpPUiwgaSkpOwotCQlmYl9pbmZv
LT5kZXYgPSBOVUxMOwotCX0KLX0KLQotdm9pZCB1bmxpbmtfZnJhbWVidWZmZXIoc3RydWN0IGZi
X2luZm8gKmZiX2luZm8pCi17Ci0JX191bmxpbmtfZnJhbWVidWZmZXIoZmJfaW5mbyk7Ci0KLQl1
bmJpbmRfY29uc29sZShmYl9pbmZvKTsKLX0KLUVYUE9SVF9TWU1CT0wodW5saW5rX2ZyYW1lYnVm
ZmVyKTsKLQogLyoqCiAgKiByZW1vdmVfY29uZmxpY3RpbmdfZnJhbWVidWZmZXJzIC0gcmVtb3Zl
IGZpcm13YXJlLWNvbmZpZ3VyZWQgZnJhbWVidWZmZXJzCiAgKiBAYTogbWVtb3J5IHJhbmdlLCB1
c2VycyBvZiB3aGljaCBhcmUgdG8gYmUgcmVtb3ZlZAotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
