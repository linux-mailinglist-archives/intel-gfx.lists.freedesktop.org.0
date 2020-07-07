Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 272192178F3
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:14:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B49F891B1;
	Tue,  7 Jul 2020 20:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A42736E7E6
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:13:05 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id o8so456676wmh.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 13:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v6mLNvmwV0mXXFCJp1CZ5e+LEhcYSNx/dxx3MEMckRw=;
 b=I+82JJmua6H54T91fmYUr8DAr6NrwnR+mkHvBYi78d5aDPpW3+51mLiZmLWpatmsVZ
 7UZkmP80kTFgcoEpPk4rtMeZpVJWOIuNxSW1ZScEeiy2ttA5BTAFxF1utpsJipJarIxb
 cjMyFkg21+NB7V8zjtGNczY53Qq7GLqyckRu4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v6mLNvmwV0mXXFCJp1CZ5e+LEhcYSNx/dxx3MEMckRw=;
 b=Sea6eluSKo/TYVWAEG1mnKGEvYHY6vc56BscjUSRcgZX05cXjefFrEOWmam8ftDecu
 Goy3CUnVPAUo31Nw0t14rP5WI4JFnt0h6Jm+YphUKo7s/41qYzvozn6FYtVc+SkrRF2b
 aoV+iygJqclySNh3f5fCCKNYTg+PQZIEztObueFlcZApWukhUTPl+bGksT39X7WUY0j/
 udZ9Inevq41RCbmxT4sRVKGJnDRJhqfMsvuXsgzNcRyuPhZR3qoQAxTBj4j3njJSKrxy
 TvP3ix9yJQF8P87YSMiYOsASM+5Tzm6f2Qjp08UsJeacL5DTEBf2Xbb1vZqxNXPBQo9h
 k+Kg==
X-Gm-Message-State: AOAM533PLSs0KDfmCjS5dOm5yVuW2vfnTatML/7zsubLJ/9K95uVCzlS
 FhQiF1vgO+WaF2E5qgxCeAs8SA==
X-Google-Smtp-Source: ABdhPJwb8lrdzNzimlB7WFs1FDrPYBlKDSPiN4WBOCVQt3QuE500w5Nk7OIYzGADJypoV3zm1LNAIA==
X-Received: by 2002:a1c:44e:: with SMTP id 75mr5900441wme.139.1594152784201;
 Tue, 07 Jul 2020 13:13:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q7sm2515262wra.56.2020.07.07.13.13.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:13:03 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Jul 2020 22:12:23 +0200
Message-Id: <20200707201229.472834-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/25] drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in
 scheduler code
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

TXkgZG1hLWZlbmNlIGxvY2tkZXAgYW5ub3RhdGlvbnMgY2F1Z2h0IGFuIGludmVyc2lvbiBiZWNh
dXNlIHdlCmFsbG9jYXRlIG1lbW9yeSB3aGVyZSB3ZSByZWFsbHkgc2hvdWxkbid0OgoKCWttZW1f
Y2FjaGVfYWxsb2MrMHgyYi8weDZkMAoJYW1kZ3B1X2ZlbmNlX2VtaXQrMHgzMC8weDMzMCBbYW1k
Z3B1XQoJYW1kZ3B1X2liX3NjaGVkdWxlKzB4MzA2LzB4NTUwIFthbWRncHVdCglhbWRncHVfam9i
X3J1bisweDEwZi8weDI2MCBbYW1kZ3B1XQoJZHJtX3NjaGVkX21haW4rMHgxYjkvMHg0OTAgW2dw
dV9zY2hlZF0KCWt0aHJlYWQrMHgxMmUvMHgxNTAKClRyb3VibGUgcmlnaHQgbm93IGlzIHRoYXQg
bG9ja2RlcCBvbmx5IHZhbGlkYXRlcyBhZ2FpbnN0IEdGUF9GUywgd2hpY2gKd291bGQgYmUgZ29v
ZCBlbm91Z2ggZm9yIHNocmlua2Vycy4gQnV0IGZvciBtbXVfbm90aWZpZXJzIHdlIGFjdHVhbGx5
Cm5lZWQgIUdGUF9BVE9NSUMsIHNpbmNlIHRoZXkgY2FuIGJlIGNhbGxlZCBmcm9tIGFueSBwYWdl
IGxhdW5kZXJpbmcsCmV2ZW4gaWYgR0ZQX05PRlMgb3IgR0ZQX05PSU8gYXJlIHNldC4KCkkgZ3Vl
c3Mgd2Ugc2hvdWxkIGltcHJvdmUgdGhlIGxvY2tkZXAgYW5ub3RhdGlvbnMgZm9yCmZzX3JlY2xh
aW1fYWNxdWlyZS9yZWxlYXNlLgoKT2ZjIHJlYWwgZml4IGlzIHRvIHByb3Blcmx5IHByZWFsbG9j
YXRlIHRoaXMgZmVuY2UgYW5kIHN0dWZmIGl0IGludG8KdGhlIGFtZGdwdSBqb2Igc3RydWN0dXJl
LiBCdXQgR0ZQX0FUT01JQyBnZXRzIHRoZSBsb2NrZGVwIHNwbGF0IG91dCBvZgp0aGUgd2F5LgoK
djI6IFR3byBtb3JlIGFsbG9jYXRpb25zIGluIHNjaGVkdWxlciBwYXRocy4KCkZyaXN0IG9uZToK
CglfX2ttYWxsb2MrMHg1OC8weDcyMAoJYW1kZ3B1X3ZtaWRfZ3JhYisweDEwMC8weGNhMCBbYW1k
Z3B1XQoJYW1kZ3B1X2pvYl9kZXBlbmRlbmN5KzB4ZjkvMHgxMjAgW2FtZGdwdV0KCWRybV9zY2hl
ZF9lbnRpdHlfcG9wX2pvYisweDNmLzB4NDQwIFtncHVfc2NoZWRdCglkcm1fc2NoZWRfbWFpbisw
eGY5LzB4NDkwIFtncHVfc2NoZWRdCgpTZWNvbmQgb25lOgoKCWttZW1fY2FjaGVfYWxsb2MrMHgy
Yi8weDZkMAoJYW1kZ3B1X3N5bmNfZmVuY2UrMHg3ZS8weDExMCBbYW1kZ3B1XQoJYW1kZ3B1X3Zt
aWRfZ3JhYisweDg2Yi8weGNhMCBbYW1kZ3B1XQoJYW1kZ3B1X2pvYl9kZXBlbmRlbmN5KzB4Zjkv
MHgxMjAgW2FtZGdwdV0KCWRybV9zY2hlZF9lbnRpdHlfcG9wX2pvYisweDNmLzB4NDQwIFtncHVf
c2NoZWRdCglkcm1fc2NoZWRfbWFpbisweGY5LzB4NDkwIFtncHVfc2NoZWRdCgpDYzogbGludXgt
bWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
Q2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZmVuY2UuYyB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMu
YyAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3N5bmMuYyAgfCAy
ICstCiAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2UuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jCmluZGV4IDhkODQ5NzU4ODVj
ZC4uYTA4OWE4MjdmZGZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZmVuY2UuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVu
Y2UuYwpAQCAtMTQzLDcgKzE0Myw3IEBAIGludCBhbWRncHVfZmVuY2VfZW1pdChzdHJ1Y3QgYW1k
Z3B1X3JpbmcgKnJpbmcsIHN0cnVjdCBkbWFfZmVuY2UgKipmLAogCXVpbnQzMl90IHNlcTsKIAlp
bnQgcjsKIAotCWZlbmNlID0ga21lbV9jYWNoZV9hbGxvYyhhbWRncHVfZmVuY2Vfc2xhYiwgR0ZQ
X0tFUk5FTCk7CisJZmVuY2UgPSBrbWVtX2NhY2hlX2FsbG9jKGFtZGdwdV9mZW5jZV9zbGFiLCBH
RlBfQVRPTUlDKTsKIAlpZiAoZmVuY2UgPT0gTlVMTCkKIAkJcmV0dXJuIC1FTk9NRU07CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYwppbmRleCAyNjdmYTQ1ZGRiNjYuLmEz
MzNjYTJkNGRkZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2lkcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYwpAQCAt
MjA4LDcgKzIwOCw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3ZtaWRfZ3JhYl9pZGxlKHN0cnVjdCBh
bWRncHVfdm0gKnZtLAogCWlmIChyaW5nLT52bWlkX3dhaXQgJiYgIWRtYV9mZW5jZV9pc19zaWdu
YWxlZChyaW5nLT52bWlkX3dhaXQpKQogCQlyZXR1cm4gYW1kZ3B1X3N5bmNfZmVuY2Uoc3luYywg
cmluZy0+dm1pZF93YWl0KTsKIAotCWZlbmNlcyA9IGttYWxsb2NfYXJyYXkoc2l6ZW9mKHZvaWQg
KiksIGlkX21nci0+bnVtX2lkcywgR0ZQX0tFUk5FTCk7CisJZmVuY2VzID0ga21hbGxvY19hcnJh
eShzaXplb2Yodm9pZCAqKSwgaWRfbWdyLT5udW1faWRzLCBHRlBfQVRPTUlDKTsKIAlpZiAoIWZl
bmNlcykKIAkJcmV0dXJuIC1FTk9NRU07CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfc3luYy5jCmluZGV4IDhlYTZjNDk1MjllNy4uYWYyMmI1MjZjZWM5IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMKQEAgLTE2MCw3ICsxNjAsNyBAQCBpbnQgYW1k
Z3B1X3N5bmNfZmVuY2Uoc3RydWN0IGFtZGdwdV9zeW5jICpzeW5jLCBzdHJ1Y3QgZG1hX2ZlbmNl
ICpmKQogCWlmIChhbWRncHVfc3luY19hZGRfbGF0ZXIoc3luYywgZikpCiAJCXJldHVybiAwOwog
Ci0JZSA9IGttZW1fY2FjaGVfYWxsb2MoYW1kZ3B1X3N5bmNfc2xhYiwgR0ZQX0tFUk5FTCk7CisJ
ZSA9IGttZW1fY2FjaGVfYWxsb2MoYW1kZ3B1X3N5bmNfc2xhYiwgR0ZQX0FUT01JQyk7CiAJaWYg
KCFlKQogCQlyZXR1cm4gLUVOT01FTTsKIAotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
