Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F672178EF
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323C66E7E5;
	Tue,  7 Jul 2020 20:13:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC89D6E7D9
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:13:01 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id f18so38532594wrs.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 13:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y1VbY5ZB/L6W9r0Bvi97djdXHD1/JVCuEPc3nxQDtTg=;
 b=LR4PlS7gyq2GSGWIRhk4IPyybwdSoLRvHe+WFW+jhPBv5lNTmi6seJwHISY0CmTie7
 1i/ph6/DDjBC8Qsa6egY5ZnqeTfFNDNk3kLXXj9T1G31UXZUU+e/4yj4fR4u4tVxqUCf
 7zSzmWfrfWk92EDswnhtEzhq2gyUqgAQQxH1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y1VbY5ZB/L6W9r0Bvi97djdXHD1/JVCuEPc3nxQDtTg=;
 b=Z/CVYq7cWVdmBOfqjN4xJvs/rSkmCbnfhZVeFJVivhIJmdMo3NEOEjl6QNG9gRZfIh
 b5Y+NrTzhMzvcWqwEhclMH5SKzIj6pc2AjGLmlU3mGCVMxwU6OT741M8issxwhKESdAi
 IJ93ljniFMRzQBfWZqNeyZbdK0tlkfn32Ieq4SdUhGn6nIdcXpLv2PIjFLtzdcprIktN
 v+THp3bu1lKEJPa62Kc66VBRtfu6SGT+94hEeSc7BIhAvAP/d/DMgBP9/668qQnXOKWR
 SHcmwGyzVq5wqPtp9ejUDEpko80TprqUkmRh/1bLTgRhFS1x+Uqq9SUEWZbi57C0v7bQ
 ATaw==
X-Gm-Message-State: AOAM531Z7KXY9wXk/rFMKsM+YT1EJWyZfSa1ROq312C8zftoDX8U2qVm
 x6IBJqmQiMPHWNnTPfxIDSQ2nQ==
X-Google-Smtp-Source: ABdhPJzGrQ2RgMrK/l+05vdZJ29xKjThN5zLPU4hxr+GDdUU7CiSnj5b5zHZxNDIQZnGaFx+fLeNvQ==
X-Received: by 2002:a5d:4051:: with SMTP id w17mr53069228wrp.183.1594152780339; 
 Tue, 07 Jul 2020 13:13:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q7sm2515262wra.56.2020.07.07.13.12.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:12:59 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Jul 2020 22:12:20 +0200
Message-Id: <20200707201229.472834-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/25] drm/atomic-helper: Add dma-fence
 annotations
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 amd-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBhIGJpdCBkaXNhcHBvaW50aW5nIHNpbmNlIHdlIG5lZWQgdG8gc3BsaXQgdGhlIGFu
bm90YXRpb25zCm92ZXIgYWxsIHRoZSBkaWZmZXJlbnQgcGFydHMuCgpJIHdhcyBjb25zaWRlcmlu
ZyBqdXN0IGxlYWtpbmcgdGhlIGNyaXRpY2FsIHNlY3Rpb24gaW50byB0aGUKLT5hdG9taWNfY29t
bWl0X3RhaWwgY2FsbGJhY2sgb2YgZWFjaCBkcml2ZXIuIEJ1dCB0aGF0IHdvdWxkIG1lYW4gd2UK
bmVlZCB0byBwYXNzIHRoZSBmZW5jZV9jb29raWUgaW50byBlYWNoIGRyaXZlciAodGhlcmUncyBh
IHRvdGFsIG9mIDEzCmltcGxlbWVudGF0aW9ucyBvZiB0aGlzIGhvb2sgcmlnaHQgbm93KSwgc28g
YmFkIGZsYWcgZGF5LiBBbmQgYWxzbyBhCmJpdCBsZWFreSBhYnN0cmFjdGlvbi4KCkhlbmNlIGp1
c3QgZG8gaXQgZnVuY3Rpb24tYnktZnVuY3Rpb24uCgpDYzogbGludXgtbWVkaWFAdmdlci5rZXJu
ZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKQ2M6IGxpbnV4LXJkbWFA
dmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19oZWxwZXIuYyB8IDE2ICsrKysr
KysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2F0b21pY19oZWxwZXIuYwppbmRleCBjNmJmOTcyMmI1MWIuLmY2N2VlNTEzYTdjYyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfaGVscGVyLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9hdG9taWNfaGVscGVyLmMKQEAgLTE1NTAsNiArMTU1MCw3IEBAIEVYUE9S
VF9TWU1CT0woZHJtX2F0b21pY19oZWxwZXJfd2FpdF9mb3JfZmxpcF9kb25lKTsKIHZvaWQgZHJt
X2F0b21pY19oZWxwZXJfY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKm9sZF9z
dGF0ZSkKIHsKIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gb2xkX3N0YXRlLT5kZXY7CisJYm9v
bCBmZW5jZV9jb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOwogCiAJZHJtX2F0
b21pY19oZWxwZXJfY29tbWl0X21vZGVzZXRfZGlzYWJsZXMoZGV2LCBvbGRfc3RhdGUpOwogCkBA
IC0xNTYxLDYgKzE1NjIsOCBAQCB2b2lkIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90YWlsKHN0
cnVjdCBkcm1fYXRvbWljX3N0YXRlICpvbGRfc3RhdGUpCiAKIAlkcm1fYXRvbWljX2hlbHBlcl9j
b21taXRfaHdfZG9uZShvbGRfc3RhdGUpOwogCisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZl
bmNlX2Nvb2tpZSk7CisKIAlkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl92YmxhbmtzKGRldiwg
b2xkX3N0YXRlKTsKIAogCWRybV9hdG9taWNfaGVscGVyX2NsZWFudXBfcGxhbmVzKGRldiwgb2xk
X3N0YXRlKTsKQEAgLTE1ODAsNiArMTU4Myw3IEBAIEVYUE9SVF9TWU1CT0woZHJtX2F0b21pY19o
ZWxwZXJfY29tbWl0X3RhaWwpOwogdm9pZCBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfdGFpbF9y
cG0oc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKm9sZF9zdGF0ZSkKIHsKIAlzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2ID0gb2xkX3N0YXRlLT5kZXY7CisJYm9vbCBmZW5jZV9jb29raWUgPSBkbWFfZmVu
Y2VfYmVnaW5fc2lnbmFsbGluZygpOwogCiAJZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X21vZGVz
ZXRfZGlzYWJsZXMoZGV2LCBvbGRfc3RhdGUpOwogCkBAIC0xNTkyLDYgKzE1OTYsOCBAQCB2b2lk
IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90YWlsX3JwbShzdHJ1Y3QgZHJtX2F0b21pY19zdGF0
ZSAqb2xkX3N0YXRlKQogCiAJZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X2h3X2RvbmUob2xkX3N0
YXRlKTsKIAorCWRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhmZW5jZV9jb29raWUpOworCiAJZHJt
X2F0b21pY19oZWxwZXJfd2FpdF9mb3JfdmJsYW5rcyhkZXYsIG9sZF9zdGF0ZSk7CiAKIAlkcm1f
YXRvbWljX2hlbHBlcl9jbGVhbnVwX3BsYW5lcyhkZXYsIG9sZF9zdGF0ZSk7CkBAIC0xNjA3LDYg
KzE2MTMsOSBAQCBzdGF0aWMgdm9pZCBjb21taXRfdGFpbChzdHJ1Y3QgZHJtX2F0b21pY19zdGF0
ZSAqb2xkX3N0YXRlKQogCWt0aW1lX3Qgc3RhcnQ7CiAJczY0IGNvbW1pdF90aW1lX21zOwogCXVu
c2lnbmVkIGludCBpLCBuZXdfc2VsZl9yZWZyZXNoX21hc2sgPSAwOworCWJvb2wgZmVuY2VfY29v
a2llOworCisJZmVuY2VfY29va2llID0gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsKIAog
CWZ1bmNzID0gZGV2LT5tb2RlX2NvbmZpZy5oZWxwZXJfcHJpdmF0ZTsKIApAQCAtMTYzNSw2ICsx
NjQ0LDggQEAgc3RhdGljIHZvaWQgY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUg
Km9sZF9zdGF0ZSkKIAkJaWYgKG5ld19jcnRjX3N0YXRlLT5zZWxmX3JlZnJlc2hfYWN0aXZlKQog
CQkJbmV3X3NlbGZfcmVmcmVzaF9tYXNrIHw9IEJJVChpKTsKIAorCWRtYV9mZW5jZV9lbmRfc2ln
bmFsbGluZyhmZW5jZV9jb29raWUpOworCiAJaWYgKGZ1bmNzICYmIGZ1bmNzLT5hdG9taWNfY29t
bWl0X3RhaWwpCiAJCWZ1bmNzLT5hdG9taWNfY29tbWl0X3RhaWwob2xkX3N0YXRlKTsKIAllbHNl
CkBAIC0xNzkwLDYgKzE4MDEsNyBAQCBpbnQgZHJtX2F0b21pY19oZWxwZXJfY29tbWl0KHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCiAJCQkgICAgIGJvb2wgbm9uYmxvY2spCiB7CiAJaW50IHJldDsK
Kwlib29sIGZlbmNlX2Nvb2tpZTsKIAogCWlmIChzdGF0ZS0+YXN5bmNfdXBkYXRlKSB7CiAJCXJl
dCA9IGRybV9hdG9taWNfaGVscGVyX3ByZXBhcmVfcGxhbmVzKGRldiwgc3RhdGUpOwpAQCAtMTgx
Miw2ICsxODI0LDggQEAgaW50IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKKwlmZW5jZV9jb29raWUgPSBk
bWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOworCiAJaWYgKCFub25ibG9jaykgewogCQlyZXQg
PSBkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl9mZW5jZXMoZGV2LCBzdGF0ZSwgdHJ1ZSk7CiAJ
CWlmIChyZXQpCkBAIC0xODQ5LDYgKzE4NjMsNyBAQCBpbnQgZHJtX2F0b21pY19oZWxwZXJfY29t
bWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJICovCiAKIAlkcm1fYXRvbWljX3N0YXRlX2dl
dChzdGF0ZSk7CisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJaWYg
KG5vbmJsb2NrKQogCQlxdWV1ZV93b3JrKHN5c3RlbV91bmJvdW5kX3dxLCAmc3RhdGUtPmNvbW1p
dF93b3JrKTsKIAllbHNlCkBAIC0xODU3LDYgKzE4NzIsNyBAQCBpbnQgZHJtX2F0b21pY19oZWxw
ZXJfY29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJcmV0dXJuIDA7CiAKIGVycjoKKwlk
bWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2VfY29va2llKTsKIAlkcm1fYXRvbWljX2hlbHBl
cl9jbGVhbnVwX3BsYW5lcyhkZXYsIHN0YXRlKTsKIAlyZXR1cm4gcmV0OwogfQotLSAKMi4yNy4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
