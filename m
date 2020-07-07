Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C072178F5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:14:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 772F9892AC;
	Tue,  7 Jul 2020 20:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A286E817
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:13:06 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id z2so24325336wrp.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 13:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eTmW8GfMFV/TYGpBlf3/1N9LBDvcZT77sRHKHDyMv2U=;
 b=GL5GXtMw+oGEYvMEGD0ynq2bKINBxOKzvUDWYVHTriILNZ4e2LMTYBOLfRSdtqri/0
 8fVfJVJOm+WP7NTwU9gLBFBMCRU8A2MmLw38gaCMariAj60judwyB1sDCPok8/lVFlnY
 Pb7gt9prSymFTaCQVjSvH2HJvNNSjmu81x9wY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eTmW8GfMFV/TYGpBlf3/1N9LBDvcZT77sRHKHDyMv2U=;
 b=VUSXRH+2xyTPLZmvDr87/n+8Uc7m2m4sLqnJgPOhSXgZRretGvAbsnmAhjPjjMGIVG
 nTcgNnJyW6H5QHEDKmM7iGRM8pdOyxIBOVS7qujmyPLGi6SMqZuj/qzCfmVckR31F10j
 38mVqDD9tOv6yLhwINRqjNXfqJS4wiro+Vn+A31ny+MMYb3531xXmpcIyHtqLtAXM1lx
 Pb0cbSxEO+qZFiZyr6FYSZfAcSFLA1RaJkym2hvYk7LEeHTQDjGEcuh9aQX0z2pE8ToW
 5q7SeFv9YzZJdqvsATnx4cpJEar/PG+y51cAM251zwG7KI3qkqCC0MrKvXQb/3wB/rKz
 znhQ==
X-Gm-Message-State: AOAM531yZgf4rn5TSU5CqP+QTY9ymbgJBgwUaljPzXD642zwB/s+v47K
 W26QhPqh+ojCrQw7nIjJqgEsFuLBBnM=
X-Google-Smtp-Source: ABdhPJwmWTeCyTx0bBgTDG/B9PdUMguU6YzowcNba5ee/pIgTrKGFZT6kx1B6bzPcnRvbe3254x7bw==
X-Received: by 2002:adf:ff90:: with SMTP id j16mr36581036wrr.364.1594152785392; 
 Tue, 07 Jul 2020 13:13:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q7sm2515262wra.56.2020.07.07.13.13.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:13:04 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Jul 2020 22:12:24 +0200
Message-Id: <20200707201229.472834-21-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/25] drm/amdgpu: DC also loves to allocate
 stuff where it shouldn't
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

Tm90IGdvaW5nIHRvIGJvdGhlciB3aXRoIGEgY29tcGxldGUmcHJldHR5IGNvbW1pdCBtZXNzYWdl
LCBqdXN0Cm9mZmVuZGluZyBiYWNrdHJhY2U6CgogICAgICAgIGt2bWFsbG9jX25vZGUrMHg0Ny8w
eDgwCiAgICAgICAgZGNfY3JlYXRlX3N0YXRlKzB4MWYvMHg2MCBbYW1kZ3B1XQogICAgICAgIGRj
X2NvbW1pdF9zdGF0ZSsweGNiLzB4OWIwIFthbWRncHVdCiAgICAgICAgYW1kZ3B1X2RtX2F0b21p
Y19jb21taXRfdGFpbCsweGQzMS8weDIwMTAgW2FtZGdwdV0KICAgICAgICBjb21taXRfdGFpbCsw
eGE0LzB4MTQwIFtkcm1fa21zX2hlbHBlcl0KICAgICAgICBkcm1fYXRvbWljX2hlbHBlcl9jb21t
aXQrMHgxNTIvMHgxODAgW2RybV9rbXNfaGVscGVyXQogICAgICAgIGRybV9jbGllbnRfbW9kZXNl
dF9jb21taXRfYXRvbWljKzB4MWVhLzB4MjUwIFtkcm1dCiAgICAgICAgZHJtX2NsaWVudF9tb2Rl
c2V0X2NvbW1pdF9sb2NrZWQrMHg1NS8weDE5MCBbZHJtXQogICAgICAgIGRybV9jbGllbnRfbW9k
ZXNldF9jb21taXQrMHgyNC8weDQwIFtkcm1dCgp2MjogRm91bmQgbW9yZSBpbiBEQyBjb2RlLCBJ
J20ganVzdCBnb2luZyB0byBwaWxlIHRoZW0gYWxsIHVwLgoKQ2M6IGxpbnV4LW1lZGlhQHZnZXIu
a2VybmVsLm9yZwpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCkNjOiBsaW51eC1y
ZG1hQHZnZXIua2VybmVsLm9yZwpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYXRvbS5jICAgICAgICAg
ICAgICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1k
Z3B1X2RtLmMgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvZGMvY29yZS9kYy5j
ICAgICAgICAgIHwgNCArKystCiAzIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hdG9t
LmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hdG9tLmMKaW5kZXggNGNmYzc4NjY5OWM3
Li4xYjBjNjc0ZmFiMjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2F0
b20uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hdG9tLmMKQEAgLTEyMjYsNyAr
MTIyNiw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2F0b21fZXhlY3V0ZV90YWJsZV9sb2NrZWQoc3Ry
dWN0IGF0b21fY29udGV4dCAqY3R4LCBpbnQgaW5kZXgsCiAJZWN0eC5hYm9ydCA9IGZhbHNlOwog
CWVjdHgubGFzdF9qdW1wID0gMDsKIAlpZiAod3MpCi0JCWVjdHgud3MgPSBrY2FsbG9jKDQsIHdz
LCBHRlBfS0VSTkVMKTsKKwkJZWN0eC53cyA9IGtjYWxsb2MoNCwgd3MsIEdGUF9BVE9NSUMpOwog
CWVsc2UKIAkJZWN0eC53cyA9IE5VTEw7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rp
c3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCmluZGV4IDZhZmNjMzNmZjg0Ni4uM2Q0MWVkZGM3
OTA4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2Ft
ZGdwdV9kbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1k
Z3B1X2RtLmMKQEAgLTY4NzIsNyArNjg3Miw3IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9jb21t
aXRfcGxhbmVzKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJc3RydWN0IGRjX3N0
cmVhbV91cGRhdGUgc3RyZWFtX3VwZGF0ZTsKIAl9ICpidW5kbGU7CiAKLQlidW5kbGUgPSBremFs
bG9jKHNpemVvZigqYnVuZGxlKSwgR0ZQX0tFUk5FTCk7CisJYnVuZGxlID0ga3phbGxvYyhzaXpl
b2YoKmJ1bmRsZSksIEdGUF9BVE9NSUMpOwogCiAJaWYgKCFidW5kbGUpIHsKIAkJZG1fZXJyb3Io
IkZhaWxlZCB0byBhbGxvY2F0ZSB1cGRhdGUgYnVuZGxlXG4iKTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9jb3JlL2RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2Rpc3BsYXkvZGMvY29yZS9kYy5jCmluZGV4IDk0MmNlYjBmNjM4My4uZjlhNTg1MDllZmIyIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvZGMvY29yZS9kYy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9jb3JlL2RjLmMKQEAgLTE0NzUsOCArMTQ3
NSwxMCBAQCBib29sIGRjX3Bvc3RfdXBkYXRlX3N1cmZhY2VzX3RvX3N0cmVhbShzdHJ1Y3QgZGMg
KmRjKQogCiBzdHJ1Y3QgZGNfc3RhdGUgKmRjX2NyZWF0ZV9zdGF0ZShzdHJ1Y3QgZGMgKmRjKQog
eworCS8qIE5vIHlvdSByZWFsbHkgY2FudCBhbGxvY2F0ZSByYW5kb20gY3JhcCBoZXJlIHRoaXMg
bGF0ZSBpbgorCSAqIGF0b21pY19jb21taXRfdGFpbC4gKi8KIAlzdHJ1Y3QgZGNfc3RhdGUgKmNv
bnRleHQgPSBrdnphbGxvYyhzaXplb2Yoc3RydWN0IGRjX3N0YXRlKSwKLQkJCQkJICAgIEdGUF9L
RVJORUwpOworCQkJCQkgICAgR0ZQX0FUT01JQyk7CiAKIAlpZiAoIWNvbnRleHQpCiAJCXJldHVy
biBOVUxMOwotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
