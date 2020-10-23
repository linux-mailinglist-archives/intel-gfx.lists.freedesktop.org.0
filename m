Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7721296F22
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:28:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7837C6E588;
	Fri, 23 Oct 2020 12:28:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 453BB6E588
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:28:23 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id k21so1015806wmi.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CIKWZlZo95cVbYauc5nK39MkcGqrdDI5iPnF8AgRfuo=;
 b=G2MDNLU5OEqsZ8521x9+uQNEJDT1a7HUFXyf+Gbwg1BXaJaqn9RM4XiErAD1tK999O
 Dhlfv0PRCOgg9bzvZlqJ+dTwZQyWJDTuC22QtlXZ3E8JfXoZUOBKabVc4cxk6KB8F/As
 F1WqgkiyU1Rxi8X1Eq2AFGGnS8XCydjRPN+U4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CIKWZlZo95cVbYauc5nK39MkcGqrdDI5iPnF8AgRfuo=;
 b=ZMHKumHt5lE4CIskDUAknCW3c5QE7ULUf9y6E+hH1AC1da6Q7Rp3Y84WuP4qbJRQwz
 gAvbXalBN96UALcMtTkhSh69tO8xckj+ckwx8LsxUJF/Q8hhstleFlMILSbHuIRXwCDU
 BKAl1VcTLRF4DqvO6IM95ciYkFgoZASQ3ta1e8d5vvOLPIOMGPZ1+Te5hSPJDGKUCyMa
 n77DaMxRJ1+ybVgs877usVwUKCH/3RdRggJFFjfQ6aAGEUz4Jl6jAkk45Jd4jUTjRKDg
 BT94mT/WExyBnwRXag7CHflucH5H2QwuF5KEjmjE986zDyuEfIx5e3iDlkzrCbHB499X
 HqSQ==
X-Gm-Message-State: AOAM531R9iWNfU2IC/YjRvYhWI3+rv7EnA4ugBKaHQkq58SbvKH7s5q/
 R47Aa8TNC9bBH6NAnj5fmyhUYg==
X-Google-Smtp-Source: ABdhPJxQZonzLZVJrB7zIn9oqJfkcxSnFPz3NkjCKh+yRwf5gOhA32Xe0wb5Q/Pj34T1hH+EgsmwkA==
X-Received: by 2002:a1c:c90b:: with SMTP id f11mr2088435wmb.54.1603456102025; 
 Fri, 23 Oct 2020 05:28:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j5sm3133451wrx.88.2020.10.23.05.28.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:28:21 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:28:09 +0200
Message-Id: <20201023122811.2374118-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122811.2374118-1-daniel.vetter@ffwll.ch>
References: <20201023122811.2374118-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/amdgpu: Paper over the drm_driver
 mangling for virt
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
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 chen gong <curry.gong@amd.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Wenhui Sheng <Wenhui.Sheng@amd.com>, shaoyunl <shaoyun.liu@amd.com>,
 Luben Tuikov <luben.tuikov@amd.com>, "Stanley.Yang" <Stanley.Yang@amd.com>,
 Dennis Li <Dennis.Li@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Bokun Zhang <Bokun.Zhang@amd.com>, Alex Deucher <alexander.deucher@amd.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>, Yintian Tao <yttao@amd.com>,
 Evan Quan <evan.quan@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Monk Liu <Monk.Liu@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJlcCB3b3JrIHRvIG1ha2UgZHJtX2RldmljZS0+ZHJpdmVyIGNvbnN0LgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IEFsZXggRGV1Y2hl
ciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogRXZhbiBRdWFuIDxldmFuLnF1YW5AYW1kLmNvbT4K
Q2M6IEZlbGl4IEt1ZWhsaW5nIDxGZWxpeC5LdWVobGluZ0BhbWQuY29tPgpDYzogSGF3a2luZyBa
aGFuZyA8SGF3a2luZy5aaGFuZ0BhbWQuY29tPgpDYzogQW5kcmV5IEdyb2R6b3Zza3kgPGFuZHJl
eS5ncm9kem92c2t5QGFtZC5jb20+CkNjOiBMdWJlbiBUdWlrb3YgPGx1YmVuLnR1aWtvdkBhbWQu
Y29tPgpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkNjOiBNb25r
IExpdSA8TW9uay5MaXVAYW1kLmNvbT4KQ2M6IFlpbnRpYW4gVGFvIDx5dHRhb0BhbWQuY29tPgpD
YzogRGVubmlzIExpIDxEZW5uaXMuTGlAYW1kLmNvbT4KQ2M6IHNoYW95dW5sIDxzaGFveXVuLmxp
dUBhbWQuY29tPgpDYzogQm9rdW4gWmhhbmcgPEJva3VuLlpoYW5nQGFtZC5jb20+CkNjOiAiU3Rh
bmxleS5ZYW5nIiA8U3RhbmxleS5ZYW5nQGFtZC5jb20+CkNjOiBXZW5odWkgU2hlbmcgPFdlbmh1
aS5TaGVuZ0BhbWQuY29tPgpDYzogY2hlbiBnb25nIDxjdXJyeS5nb25nQGFtZC5jb20+ClNpZ25l
ZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYyAgfCAgOCArKysrLS0tLQogZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZpcnQuYyB8IDEyICsrKysrKysrKysrLQog
MiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYwppbmRleCAwMjRjM2I3MGIxYWEuLjNkMzM3
ZjEzYWU0ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Ry
di5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYwpAQCAtMTA5
Myw3ICsxMDkzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkIHBjaWlkbGlz
dFtdID0gewogCiBNT0RVTEVfREVWSUNFX1RBQkxFKHBjaSwgcGNpaWRsaXN0KTsKIAotc3RhdGlj
IHN0cnVjdCBkcm1fZHJpdmVyIGttc19kcml2ZXI7CitzdHJ1Y3QgZHJtX2RyaXZlciBhbWRncHVf
a21zX2RyaXZlcjsKIAogc3RhdGljIGludCBhbWRncHVfcGNpX3Byb2JlKHN0cnVjdCBwY2lfZGV2
ICpwZGV2LAogCQkJICAgIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCkBAIC0xMTY0
LDcgKzExNjQsNyBAQCBzdGF0aWMgaW50IGFtZGdwdV9wY2lfcHJvYmUoc3RydWN0IHBjaV9kZXYg
KnBkZXYsCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAotCWFkZXYgPSBkZXZtX2RybV9kZXZf
YWxsb2MoJnBkZXYtPmRldiwgJmttc19kcml2ZXIsIHR5cGVvZigqYWRldiksIGRkZXYpOworCWFk
ZXYgPSBkZXZtX2RybV9kZXZfYWxsb2MoJnBkZXYtPmRldiwgJmFtZGdwdV9rbXNfZHJpdmVyLCB0
eXBlb2YoKmFkZXYpLCBkZGV2KTsKIAlpZiAoSVNfRVJSKGFkZXYpKQogCQlyZXR1cm4gUFRSX0VS
UihhZGV2KTsKIApAQCAtMTUwOCw3ICsxNTA4LDcgQEAgaW50IGFtZGdwdV9maWxlX3RvX2Zwcml2
KHN0cnVjdCBmaWxlICpmaWxwLCBzdHJ1Y3QgYW1kZ3B1X2Zwcml2ICoqZnByaXYpCiAJcmV0dXJu
IDA7CiB9CiAKLXN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBrbXNfZHJpdmVyID0geworc3RydWN0
IGRybV9kcml2ZXIgYW1kZ3B1X2ttc19kcml2ZXIgPSB7CiAJLmRyaXZlcl9mZWF0dXJlcyA9CiAJ
ICAgIERSSVZFUl9BVE9NSUMgfAogCSAgICBEUklWRVJfR0VNIHwKQEAgLTE1NzEsNyArMTU3MSw3
IEBAIHN0YXRpYyBpbnQgX19pbml0IGFtZGdwdV9pbml0KHZvaWQpCiAJCWdvdG8gZXJyb3JfZmVu
Y2U7CiAKIAlEUk1fSU5GTygiYW1kZ3B1IGtlcm5lbCBtb2Rlc2V0dGluZyBlbmFibGVkLlxuIik7
Ci0Ja21zX2RyaXZlci5udW1faW9jdGxzID0gYW1kZ3B1X21heF9rbXNfaW9jdGw7CisJYW1kZ3B1
X2ttc19kcml2ZXIubnVtX2lvY3RscyA9IGFtZGdwdV9tYXhfa21zX2lvY3RsOwogCWFtZGdwdV9y
ZWdpc3Rlcl9hdHB4X2hhbmRsZXIoKTsKIAogCS8qIElnbm9yZSBLRkQgaW5pdCBmYWlsdXJlcy4g
Tm9ybWFsIHdoZW4gQ09ORklHX0hTQV9BTUQgaXMgbm90IHNldC4gKi8KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92aXJ0LmMgYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfdmlydC5jCmluZGV4IGQwYWVhNWUzOTUzMS4uZGRlNGM0NDljMjg0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdmlydC5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92aXJ0LmMKQEAgLTQ1LDEzICs0
NSwyMyBAQCBib29sIGFtZGdwdV92aXJ0X21taW9fYmxvY2tlZChzdHJ1Y3QgYW1kZ3B1X2Rldmlj
ZSAqYWRldikKIAlyZXR1cm4gUlJFRzMyX05PX0tJUSgweGMwNDApID09IDB4ZmZmZmZmZmY7CiB9
CiAKK2V4dGVybiBzdHJ1Y3QgZHJtX2RyaXZlciBhbWRncHVfa21zX2RyaXZlcjsKKwogdm9pZCBh
bWRncHVfdmlydF9pbml0X3NldHRpbmcoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYpCiB7CiAJ
LyogZW5hYmxlIHZpcnR1YWwgZGlzcGxheSAqLwogCWlmIChhZGV2LT5tb2RlX2luZm8ubnVtX2Ny
dGMgPT0gMCkKIAkJYWRldi0+bW9kZV9pbmZvLm51bV9jcnRjID0gMTsKIAlhZGV2LT5lbmFibGVf
dmlydHVhbF9kaXNwbGF5ID0gdHJ1ZTsKLQlhZGV2X3RvX2RybShhZGV2KS0+ZHJpdmVyLT5kcml2
ZXJfZmVhdHVyZXMgJj0gfkRSSVZFUl9BVE9NSUM7CisKKwkvKgorCSAqIEZJWE1FOiBFaXRoZXIg
bWFrZSB2aXJ0IHN1cHBvcnQgYXRvbWljIG9yIG1ha2Ugc3VyZSB5b3UgaGF2ZSB0d28KKwkgKiBk
cm1fZHJpdmVyIHN0cnVjdHMsIHRoZXNlIGtpbmQgb2YgdHJpY2tzIGFyZSBvbmx5IG9rIHdoZW4g
dGhlcmUncworCSAqIGd1YXJhbnRlZWQgb25seSBhIHNpbmdsZSBkZXZpY2UgcGVyIHN5c3RlbS4g
VGhpcyBzaG91bGQgYWxzbyBiZSBkb25lCisJICogYmVmb3JlIHN0cnVjdCBkcm1fZGV2aWNlIGlz
IGluaXRpYWxpemVkLgorCSAqLworCWFtZGdwdV9rbXNfZHJpdmVyLmRyaXZlcl9mZWF0dXJlcyAm
PSB+RFJJVkVSX0FUT01JQzsKKwogCWFkZXYtPmNnX2ZsYWdzID0gMDsKIAlhZGV2LT5wZ19mbGFn
cyA9IDA7CiB9Ci0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
