Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D7B1688F5
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:05:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0A026F57A;
	Fri, 21 Feb 2020 21:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE2C6F540
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:04:26 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id z3so3541004wru.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tXkudR8aK7IJR2SljNAElZwmO8wxlaOwEYcl+XSJ+VU=;
 b=Ye+IiJJJjRuJDrJ0RYQtDrYM+oLKsJbG3F4yv9ZWNWvHk0rHCNiTNAU27BDv3vseRK
 kWj1djCEjoZoc5m2IkMlkLt5uEp5RyUW+1d6pK4V7csn0fqIZ88nFppVzi/taB7yLjsi
 x2zo2CpmhH0jWmUAsrbeQlYiKEgBnpZ8v3hzA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tXkudR8aK7IJR2SljNAElZwmO8wxlaOwEYcl+XSJ+VU=;
 b=kIPQ1VOASGaBWdKVWwIGCaeOIGjBmzvK2R9zK1rd7tSasn85HJolbS0TkkdZSflsyZ
 85yZwijGU8XHfQv4WXH1b2s9JMplnABzyy79jWFqcqNPXVjgMuaQifY28NKGiwdgId2g
 R2wYIsGC4pJuNr39VX2ELJntxPLcbp9r/gr7wG9Wb9aN7t+rUKB+NQLOBV6trf6iiSeC
 rkak+V0zXUDl56rQsyZB0GpypbCNlhHyfuygBHZqbdhTYYGYyQ1nhprPux0ZC92k9Kqi
 vebM+V4SrwrInzWYSfqGLpX/VsAHb9N9MN23piIqqCdMu93Gmc40efauA5n7JuutJNVR
 ew8A==
X-Gm-Message-State: APjAAAWGh+zm8NxmM0Zo9mkPNlJj4pq9Bhyaw+oy5qddSENARcB3+ECv
 E75cJh8LwzfImTeZSeDAUX2AhA==
X-Google-Smtp-Source: APXvYqxY2+LYdCfOllIjuoSjcQUp+ucydpTtdTGFZU00eEgNzgFxL7ghxQBKwDhgvt4/PUjO0ERuNA==
X-Received: by 2002:adf:f491:: with SMTP id l17mr54176380wro.149.1582319065500; 
 Fri, 21 Feb 2020 13:04:25 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.04.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:04:24 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:03:12 +0100
Message-Id: <20200221210319.2245170-45-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 44/51] drm/gm12u320: Use helpers for
 shutdown/suspend/resume
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxzbyB0aGVyZSdzIGEgcmFjZSBpbiB0aGUgZGlzY29ubmVjdCBpbXBsZW1lbmF0aW9uLiBGaXJz
dCBzaHV0CmRvd24sIHRoZW4gdW5wbHVnLCBsZWF2ZXMgYSB3aW5kb3cgd2hlcmUgdXNlcnNwYWNl
IGNvdWxkIHNuZWFrCmluIGFuZCByZXN0YXJ0IHRoZSBlbnRpcmUgbWFjaGluZXJ5LgoKV2l0aCB0
aGlzIHdlIGNhbiBhbHNvIGRlbGV0ZSB0aGUgdmVyeSB1bi1hdG9taWMgZ2xvYmFsIHBpcGVfZW5h
YmxlZAp0cmFja2luZy4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgpDYzogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KQ2M6
ICJOb3JhbGYgVHLDuG5uZXMiIDxub3JhbGZAdHJvbm5lcy5vcmc+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL3RpbnkvZ20xMnUzMjAuYyB8IDE2ICsrKy0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS90aW55L2dtMTJ1MzIwLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9nbTEydTMyMC5j
CmluZGV4IDY1ZGZiODdjY2IxMy4uYzIyYjJlZTQ3MGViIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vdGlueS9nbTEydTMyMC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90aW55L2dtMTJ1MzIw
LmMKQEAgLTg4LDcgKzg4LDYgQEAgc3RydWN0IGdtMTJ1MzIwX2RldmljZSB7CiAJc3RydWN0IHVz
Yl9kZXZpY2UgICAgICAgICAgICAgICAqdWRldjsKIAl1bnNpZ25lZCBjaGFyICAgICAgICAgICAg
ICAgICAgICpjbWRfYnVmOwogCXVuc2lnbmVkIGNoYXIgICAgICAgICAgICAgICAgICAgKmRhdGFf
YnVmW0dNMTJVMzIwX0JMT0NLX0NPVU5UXTsKLQlib29sICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBwaXBlX2VuYWJsZWQ7CiAJc3RydWN0IHsKIAkJYm9vbCAgICAgICAgICAgICAgICAgICAg
IHJ1bjsKIAkJc3RydWN0IHdvcmtxdWV1ZV9zdHJ1Y3QgKndvcmtxOwpAQCAtNTg5LDcgKzU4OCw2
IEBAIHN0YXRpYyB2b2lkIGdtMTJ1MzIwX3BpcGVfZW5hYmxlKHN0cnVjdCBkcm1fc2ltcGxlX2Rp
c3BsYXlfcGlwZSAqcGlwZSwKIAogCWdtMTJ1MzIwX2ZiX21hcmtfZGlydHkocGxhbmVfc3RhdGUt
PmZiLCAmcmVjdCk7CiAJZ20xMnUzMjBfc3RhcnRfZmJfdXBkYXRlKGdtMTJ1MzIwKTsKLQlnbTEy
dTMyMC0+cGlwZV9lbmFibGVkID0gdHJ1ZTsKIH0KIAogc3RhdGljIHZvaWQgZ20xMnUzMjBfcGlw
ZV9kaXNhYmxlKHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZSAqcGlwZSkKQEAgLTU5Nyw3
ICs1OTUsNiBAQCBzdGF0aWMgdm9pZCBnbTEydTMyMF9waXBlX2Rpc2FibGUoc3RydWN0IGRybV9z
aW1wbGVfZGlzcGxheV9waXBlICpwaXBlKQogCXN0cnVjdCBnbTEydTMyMF9kZXZpY2UgKmdtMTJ1
MzIwID0gcGlwZS0+Y3J0Yy5kZXYtPmRldl9wcml2YXRlOwogCiAJZ20xMnUzMjBfc3RvcF9mYl91
cGRhdGUoZ20xMnUzMjApOwotCWdtMTJ1MzIwLT5waXBlX2VuYWJsZWQgPSBmYWxzZTsKIH0KIAog
c3RhdGljIHZvaWQgZ20xMnUzMjBfcGlwZV91cGRhdGUoc3RydWN0IGRybV9zaW1wbGVfZGlzcGxh
eV9waXBlICpwaXBlLApAQCAtNzMzLDIyICs3MzAsMTcgQEAgc3RhdGljIGludCBnbTEydTMyMF91
c2JfcHJvYmUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFjZSwKIHN0YXRpYyB2b2lkIGdt
MTJ1MzIwX3VzYl9kaXNjb25uZWN0KHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UpCiB7
CiAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IHVzYl9nZXRfaW50ZmRhdGEoaW50ZXJmYWNlKTsK
LQlzdHJ1Y3QgZ20xMnUzMjBfZGV2aWNlICpnbTEydTMyMCA9IGRldi0+ZGV2X3ByaXZhdGU7CiAK
LQlnbTEydTMyMF9zdG9wX2ZiX3VwZGF0ZShnbTEydTMyMCk7CiAJZHJtX2Rldl91bnBsdWcoZGV2
KTsKKwlkcm1fYXRvbWljX2hlbHBlcl9zaHV0ZG93bihkZXYpOwogfQogCiBzdGF0aWMgX19tYXli
ZV91bnVzZWQgaW50IGdtMTJ1MzIwX3N1c3BlbmQoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVy
ZmFjZSwKIAkJCQkJICAgcG1fbWVzc2FnZV90IG1lc3NhZ2UpCiB7CiAJc3RydWN0IGRybV9kZXZp
Y2UgKmRldiA9IHVzYl9nZXRfaW50ZmRhdGEoaW50ZXJmYWNlKTsKLQlzdHJ1Y3QgZ20xMnUzMjBf
ZGV2aWNlICpnbTEydTMyMCA9IGRldi0+ZGV2X3ByaXZhdGU7CiAKLQlpZiAoZ20xMnUzMjAtPnBp
cGVfZW5hYmxlZCkKLQkJZ20xMnUzMjBfc3RvcF9mYl91cGRhdGUoZ20xMnUzMjApOwotCi0JcmV0
dXJuIDA7CisJcmV0dXJuIGRybV9tb2RlX2NvbmZpZ19oZWxwZXJfc3VzcGVuZChkZXYpOwogfQog
CiBzdGF0aWMgX19tYXliZV91bnVzZWQgaW50IGdtMTJ1MzIwX3Jlc3VtZShzdHJ1Y3QgdXNiX2lu
dGVyZmFjZSAqaW50ZXJmYWNlKQpAQCAtNzU3LDEwICs3NDksOCBAQCBzdGF0aWMgX19tYXliZV91
bnVzZWQgaW50IGdtMTJ1MzIwX3Jlc3VtZShzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50ZXJmYWNl
KQogCXN0cnVjdCBnbTEydTMyMF9kZXZpY2UgKmdtMTJ1MzIwID0gZGV2LT5kZXZfcHJpdmF0ZTsK
IAogCWdtMTJ1MzIwX3NldF9lY29tb2RlKGdtMTJ1MzIwKTsKLQlpZiAoZ20xMnUzMjAtPnBpcGVf
ZW5hYmxlZCkKLQkJZ20xMnUzMjBfc3RhcnRfZmJfdXBkYXRlKGdtMTJ1MzIwKTsKIAotCXJldHVy
biAwOworCXJldHVybiBkcm1fbW9kZV9jb25maWdfaGVscGVyX3Jlc3VtZShkZXYpOwogfQogCiBz
dGF0aWMgY29uc3Qgc3RydWN0IHVzYl9kZXZpY2VfaWQgaWRfdGFibGVbXSA9IHsKLS0gCjIuMjQu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
