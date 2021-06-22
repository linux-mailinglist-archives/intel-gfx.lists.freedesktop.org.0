Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5593B0AE4
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 18:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E528A6E821;
	Tue, 22 Jun 2021 16:55:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2E7D6E81D
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 16:55:31 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 h21-20020a1ccc150000b02901d4d33c5ca0so2708819wmb.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 09:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=alI8IW7ceIVR5GkdBwlxYMJXZdabM6O8bGMLLcoibIk=;
 b=PA89EpCVBw7LVWE3M6rD3b29Sn2YxnPF9C6xHlBXLijvg2oDkiMfGO1WfzdL7APYBd
 gDw8M0tWiC7DaBAQJoutpuiVh8k/KMLchw56h4fCpA2d7zFpfTo+3vHByQwmLPS3rJCm
 Y4B3w5D9tEEKDebHWmWocTlk5wf9W7hRDdz/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=alI8IW7ceIVR5GkdBwlxYMJXZdabM6O8bGMLLcoibIk=;
 b=JiCu+YPBj0xGIyvzK0+ycns2U2XcH+aGBzzdA5P023EJnDAKwXzU+QY+UxWTQ+Dydu
 IYvc0NbWnvQqJn2o+YUXSGW5zoE86dyB5Kj8+fFq3TcCOCtp1rApYJvO2JSvZjrHfOyO
 Z+oDX11pR/xmNZRZKAtD6uEuL6Gb7ABMdDQ4Nh7h5awSmAadULszi+307nfnyeG3yzRA
 FQRKINPI+8e7SzySaSPKpVqhkdAIfzfaEqPAbAwTetLBQFNgowZPj3HOAxJgJvf/I7gx
 4/GKjaE0LHXEUEb7/h4JGUjReBceTumZH3eQEppiDzBxN2XamQ2d8xk6gH20iGpPnv1H
 p6Rw==
X-Gm-Message-State: AOAM530b6Z5VD8l/3KFVCZaUBZ6txY4NhQRlyAynI5ufG8TRSvmErUl8
 qxi4foZWQ44Oc2yUI6rADNbUxg==
X-Google-Smtp-Source: ABdhPJwpqsQM2rveAkEffx++xxhvdDvefVuM8QIt9EG8oIqRofuW7SGXfSsOcvl6voitTizs3+smtg==
X-Received: by 2002:a05:600c:358b:: with SMTP id
 p11mr5330052wmq.112.1624380930488; 
 Tue, 22 Jun 2021 09:55:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l23sm3632342wmc.5.2021.06.22.09.55.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:55:30 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Jun 2021 18:55:08 +0200
Message-Id: <20210622165511.3169559-13-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/15] drm/simple-helper:
 drm_gem_simple_display_pipe_prepare_fb as default
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyB0ZWRpb3VzIHRvIHJldmlldyB0aGlzIGFsbCB0aGUgdGltZSwgYW5kIG15IGF1ZGl0IHNo
b3dlZCB0aGF0CmFyY3BndSBhY3R1YWxseSBmb3Jnb3QgdG8gc2V0IHRoaXMuCgpNYWtlIHRoaXMg
dGhlIGRlZmF1bHQgYW5kIHN0b3Agd29ycnlpbmcuCgpBZ2FpbiBJIHNwcmlua2xlZCBXQVJOX09O
X09OQ0Ugb24gdG9wIHRvIG1ha2Ugc3VyZSB3ZSBkb24ndCBoYXZlCnN0cmFuZ2UgY29tYmluYXRp
b25zIG9mIGhvb2tzOiBjbGVhbnVwX2ZiIHdpdGhvdXQgcHJlcGFyZV9mYiBkb2Vzbid0Cm1ha2Ug
c2Vuc2UsIGFuZCBzaW5jZSBzaW1wbGVyIGRyaXZlcnMgYXJlIGFsbCBuZXcgdGhleSBiZXR0ZXIg
YmUgR0VNCmJhc2VkIGRyaXZlcnMuCgp2MjogV2FybiBhbmQgYmFpbCB3aGVuIGl0J3MgX25vdF8g
YSBHRU0gZHJpdmVyIChOb3JhbGYpCgpDYzogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5l
cy5vcmc+CkFja2VkLWJ5OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KU2ln
bmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBN
YWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzog
TWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgpDYzogVGhvbWFzIFppbW1lcm1hbm4g
PHR6aW1tZXJtYW5uQHN1c2UuZGU+CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+
CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2RybV9zaW1wbGVfa21zX2hlbHBlci5jIHwgMTIgKysrKysrKysrKy0tCiBpbmNsdWRlL2RybS9k
cm1fc2ltcGxlX2ttc19oZWxwZXIuaCAgICAgfCAgNyArKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQs
IDE1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2RybV9zaW1wbGVfa21zX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zaW1w
bGVfa21zX2hlbHBlci5jCmluZGV4IDBiMDk1YTMxM2M0NC4uNzM1ZjRmMzRiY2M0IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3NpbXBsZV9rbXNfaGVscGVyLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9zaW1wbGVfa21zX2hlbHBlci5jCkBAIC05LDYgKzksOCBAQAogI2luY2x1
ZGUgPGRybS9kcm1fYXRvbWljLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+
CiAjaW5jbHVkZSA8ZHJtL2RybV9icmlkZ2UuaD4KKyNpbmNsdWRlIDxkcm0vZHJtX2Rydi5oPgor
I2luY2x1ZGUgPGRybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuaD4KICNpbmNsdWRlIDxkcm0vZHJt
X21hbmFnZWQuaD4KICNpbmNsdWRlIDxkcm0vZHJtX3BsYW5lX2hlbHBlci5oPgogI2luY2x1ZGUg
PGRybS9kcm1fcHJvYmVfaGVscGVyLmg+CkBAIC0yMjUsOCArMjI3LDE0IEBAIHN0YXRpYyBpbnQg
ZHJtX3NpbXBsZV9rbXNfcGxhbmVfcHJlcGFyZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwK
IAlzdHJ1Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGUgKnBpcGU7CiAKIAlwaXBlID0gY29udGFp
bmVyX29mKHBsYW5lLCBzdHJ1Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGUsIHBsYW5lKTsKLQlp
ZiAoIXBpcGUtPmZ1bmNzIHx8ICFwaXBlLT5mdW5jcy0+cHJlcGFyZV9mYikKLQkJcmV0dXJuIDA7
CisJaWYgKCFwaXBlLT5mdW5jcyB8fCAhcGlwZS0+ZnVuY3MtPnByZXBhcmVfZmIpIHsKKwkJaWYg
KFdBUk5fT05fT05DRSghZHJtX2NvcmVfY2hlY2tfZmVhdHVyZShwbGFuZS0+ZGV2LCBEUklWRVJf
R0VNKSkpCisJCQlyZXR1cm4gMDsKKworCQlXQVJOX09OX09OQ0UocGlwZS0+ZnVuY3MgJiYgcGlw
ZS0+ZnVuY3MtPmNsZWFudXBfZmIpOworCisJCXJldHVybiBkcm1fZ2VtX3NpbXBsZV9kaXNwbGF5
X3BpcGVfcHJlcGFyZV9mYihwaXBlLCBzdGF0ZSk7CisJfQogCiAJcmV0dXJuIHBpcGUtPmZ1bmNz
LT5wcmVwYXJlX2ZiKHBpcGUsIHN0YXRlKTsKIH0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2Ry
bV9zaW1wbGVfa21zX2hlbHBlci5oIGIvaW5jbHVkZS9kcm0vZHJtX3NpbXBsZV9rbXNfaGVscGVy
LmgKaW5kZXggZWY5OTQ0ZTljNWZjLi4zNjNhOWE4YzM1ODcgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUv
ZHJtL2RybV9zaW1wbGVfa21zX2hlbHBlci5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9zaW1wbGVf
a21zX2hlbHBlci5oCkBAIC0xMTYsOCArMTE2LDExIEBAIHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3Bs
YXlfcGlwZV9mdW5jcyB7CiAJICogdGhlIGRvY3VtZW50YXRpb24gZm9yIHRoZSAmZHJtX3BsYW5l
X2hlbHBlcl9mdW5jcy5wcmVwYXJlX2ZiIGhvb2sgZm9yCiAJICogbW9yZSBkZXRhaWxzLgogCSAq
Ci0JICogRHJpdmVycyB3aGljaCBhbHdheXMgaGF2ZSB0aGVpciBidWZmZXJzIHBpbm5lZCBzaG91
bGQgdXNlCi0JICogZHJtX2dlbV9zaW1wbGVfZGlzcGxheV9waXBlX3ByZXBhcmVfZmIoKSBmb3Ig
dGhpcyBob29rLgorCSAqIEZvciBHRU0gZHJpdmVycyB3aG8gbmVpdGhlciBoYXZlIGEgQHByZXBh
cmVfZmIgbm90IEBjbGVhbnVwX2ZiIGhvb2sKKwkgKiBzZXQgZHJtX2dlbV9zaW1wbGVfZGlzcGxh
eV9waXBlX3ByZXBhcmVfZmIoKSBpcyBjYWxsZWQgYXV0b21hdGljYWxseQorCSAqIHRvIGltcGxl
bWVudCB0aGlzLiBPdGhlciBkcml2ZXJzIHdoaWNoIG5lZWQgYWRkaXRpb25hbCBwbGFuZQorCSAq
IHByb2Nlc3NpbmcgY2FuIGNhbGwgZHJtX2dlbV9zaW1wbGVfZGlzcGxheV9waXBlX3ByZXBhcmVf
ZmIoKSBmcm9tCisJICogdGhlaXIgQHByZXBhcmVfZmIgaG9vay4KIAkgKi8KIAlpbnQgKCpwcmVw
YXJlX2ZiKShzdHJ1Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGUgKnBpcGUsCiAJCQkgIHN0cnVj
dCBkcm1fcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKTsKLS0gCjIuMzIuMC5yYzIKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
