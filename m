Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A191641E3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD5396EBAF;
	Wed, 19 Feb 2020 10:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B11AA6EB86
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:31 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id e8so5033180wrm.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5l4b2TzFxj13a9gF/hefgYjp+ixSKuPIEzJSuPD5Vdg=;
 b=QR6eBcxAuWmgI5SpKVzerxl0wg1wjtPoCiM67gTMIYIsv6p0v57wIk3GI46+qro8E3
 Ga3rO1E2tymAl4ebfdbkvsMvPl5MFYvnkykizHinHQQCvLcgHm1ySLTBhvjkWvIawmSH
 NGZXzqQuzvsTitrKke6Ibweb0BEuw5JZ0CM5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5l4b2TzFxj13a9gF/hefgYjp+ixSKuPIEzJSuPD5Vdg=;
 b=tNPXcMgd+h8X66UhmFg+jP3d4vZwQmC/BRzhp1p6qv/W2kvJFyll2epPn4Je+u/0A8
 S+I2s35QmovEPbB9HcfQq90DvfbdRHUYGsHv3yBANwQkqzq60Ho8Xz26nV6xFowupwcy
 CRDWFz3hTdv251qCzZKzNmQH9qQh/GgayEdV4MhQNq7KdKSwKoAWzCC9whISInFCfpAl
 NApObKPuhSfKWRDBTfs5DZTdyXcCwtOebva9KiyhjLVcripVSluGZcW+klsRUEFlFisZ
 H0K+n96LQNlRuLxtDW8vmsKnr3h/7Mwfr8eN+VDVnuaTtRhEhe1CDKHryvTyW43DSX8Y
 AMew==
X-Gm-Message-State: APjAAAU7pBf3n8IS7FiD1Ei7j9CFYrIpH77Iknh3rcwyvkEACy7ppnUp
 +keu9Eh+WPuHsWlp9LWURLKrWFoclTw=
X-Google-Smtp-Source: APXvYqy5hmgMt5f7p4jAqmJHX5pAVS7sDYPzws1v19cXaqPPiXmkjaLkS1uSVl4WfiaodSlvJmVb4Q==
X-Received: by 2002:a5d:5452:: with SMTP id w18mr33451326wrv.333.1582107750414; 
 Wed, 19 Feb 2020 02:22:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:29 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:20 +0100
Message-Id: <20200219102122.1607365-51-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 50/52] drm/udl: Drop explicit
 drm_mode_config_cleanup call
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
Cc: Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyByaWdodCBhYm92ZSB0aGUgZHJtX2Rldl9wdXQoKS4KClRoaXMgYWxsb3dzIHVzIHRvIGRl
bGV0ZSBhIGJpdCBvZiBvbmlvbiB1bndpbmRpbmcgaW4KdWRsX21vZGVzZXRfaW5pdCgpLgoKU2ln
bmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBE
YXZlIEFpcmxpZSA8YWlybGllZEByZWRoYXQuY29tPgpDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3Js
eS5ydW4+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogVGhv
bWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkNjOiBFbWlsIFZlbGlrb3YgPGVt
aWwubC52ZWxpa292QGdtYWlsLmNvbT4KQ2M6IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQu
Y29tPgpDYzogIk5vcmFsZiBUcsO4bm5lcyIgPG5vcmFsZkB0cm9ubmVzLm9yZz4KQ2M6IFRob21h
cyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogU2FtIFJhdm5ib3JnIDxzYW1AcmF2
bmJvcmcub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5jICAgICB8ICAxIC0K
IGRyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5oICAgICB8ICAxIC0KIGRyaXZlcnMvZ3B1L2Ry
bS91ZGwvdWRsX21vZGVzZXQuYyB8IDIxICsrKysrKy0tLS0tLS0tLS0tLS0tLQogMyBmaWxlcyBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxfZHJ2
LmMKaW5kZXggOGI3OGMzNTZiZWI1Li5iNDQ3ZmIwNTNlNzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS91ZGwvdWRsX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS91ZGwvdWRsX2Rydi5j
CkBAIC0zNyw3ICszNyw2IEBAIERFRklORV9EUk1fR0VNX0ZPUFModWRsX2RyaXZlcl9mb3BzKTsK
IHN0YXRpYyB2b2lkIHVkbF9kcml2ZXJfcmVsZWFzZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQog
ewogCXVkbF9maW5pKGRldik7Ci0JdWRsX21vZGVzZXRfY2xlYW51cChkZXYpOwogfQogCiBzdGF0
aWMgc3RydWN0IGRybV9kcml2ZXIgZHJpdmVyID0gewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3VkbC91ZGxfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9kcnYuaAppbmRleCBl
NjcyMjdjNDRjYzQuLjFkZTdlYjFiNmFhYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Vk
bC91ZGxfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxfZHJ2LmgKQEAgLTY4LDcg
KzY4LDYgQEAgc3RydWN0IHVkbF9kZXZpY2UgewogCiAvKiBtb2Rlc2V0ICovCiBpbnQgdWRsX21v
ZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKLXZvaWQgdWRsX21vZGVzZXRfY2xl
YW51cChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKIHN0cnVjdCBkcm1fY29ubmVjdG9yICp1ZGxf
Y29ubmVjdG9yX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldik7CiAKIHN0cnVjdCB1cmIgKnVk
bF9nZXRfdXJiKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3VkbC91ZGxfbW9kZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxfbW9kZXNl
dC5jCmluZGV4IGQ1OWViYWM3MGIxNS4uY2FkMGM4N2Y4ZGU2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vdWRsL3VkbF9tb2Rlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxf
bW9kZXNldC5jCkBAIC00NjgsNyArNDY4LDkgQEAgaW50IHVkbF9tb2Rlc2V0X2luaXQoc3RydWN0
IGRybV9kZXZpY2UgKmRldikKIAlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwogCWlu
dCByZXQ7CiAKLQlkcm1fbW9kZV9jb25maWdfaW5pdChkZXYpOworCXJldCA9IGRybV9tb2RlX2Nv
bmZpZ19pbml0KGRldik7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKIAogCWRldi0+bW9kZV9j
b25maWcubWluX3dpZHRoID0gNjQwOwogCWRldi0+bW9kZV9jb25maWcubWluX2hlaWdodCA9IDQ4
MDsKQEAgLTQ4MiwxMCArNDg0LDggQEAgaW50IHVkbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9k
ZXZpY2UgKmRldikKIAlkZXYtPm1vZGVfY29uZmlnLmZ1bmNzID0gJnVkbF9tb2RlX2Z1bmNzOwog
CiAJY29ubmVjdG9yID0gdWRsX2Nvbm5lY3Rvcl9pbml0KGRldik7Ci0JaWYgKElTX0VSUihjb25u
ZWN0b3IpKSB7Ci0JCXJldCA9IFBUUl9FUlIoY29ubmVjdG9yKTsKLQkJZ290byBlcnJfZHJtX21v
ZGVfY29uZmlnX2NsZWFudXA7Ci0JfQorCWlmIChJU19FUlIoY29ubmVjdG9yKSkKKwkJcmV0dXJu
IFBUUl9FUlIoY29ubmVjdG9yKTsKIAogCWZvcm1hdF9jb3VudCA9IEFSUkFZX1NJWkUodWRsX3Np
bXBsZV9kaXNwbGF5X3BpcGVfZm9ybWF0cyk7CiAKQEAgLTQ5NCwxOCArNDk0LDkgQEAgaW50IHVk
bF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAkJCQkJICAgdWRsX3NpbXBs
ZV9kaXNwbGF5X3BpcGVfZm9ybWF0cywKIAkJCQkJICAgZm9ybWF0X2NvdW50LCBOVUxMLCBjb25u
ZWN0b3IpOwogCWlmIChyZXQpCi0JCWdvdG8gZXJyX2RybV9tb2RlX2NvbmZpZ19jbGVhbnVwOwor
CQlyZXR1cm4gcmV0OwogCiAJZHJtX21vZGVfY29uZmlnX3Jlc2V0KGRldik7CiAKIAlyZXR1cm4g
MDsKLQotZXJyX2RybV9tb2RlX2NvbmZpZ19jbGVhbnVwOgotCWRybV9tb2RlX2NvbmZpZ19jbGVh
bnVwKGRldik7Ci0JcmV0dXJuIHJldDsKLX0KLQotdm9pZCB1ZGxfbW9kZXNldF9jbGVhbnVwKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYpCi17Ci0JZHJtX21vZGVfY29uZmlnX2NsZWFudXAoZGV2KTsK
IH0KLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
