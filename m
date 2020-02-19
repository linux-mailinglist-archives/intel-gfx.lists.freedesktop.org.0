Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1775F1641C6
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 808336EB91;
	Wed, 19 Feb 2020 10:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E1336EB8D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:18 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id w12so27534622wrt.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CMpRLsmk2k79rSr4KQhFtq3ElR3/0UtAr1kCQ3We7NU=;
 b=O3jdQvb+9ovBVXNh5T60os5D7I3PwklUDEkTtY9Fd9ZxslmOCcFYC4A2/yLdbjk032
 FqeYnBrZcoCUFlQD3eyk2D16mIxakVQz+p2j+tZpcJ1x1CHjgdVbt6bxwMknwRIuv5/G
 z2vcwp88Gn5ikRGxdl6YqzL3Jl41rKE2zmDO8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CMpRLsmk2k79rSr4KQhFtq3ElR3/0UtAr1kCQ3We7NU=;
 b=GieAVfBO7nTtuk348ddXmC9bCs5WtZjogl+JZWAmvl+NAyGlrAqrXFq4SWVCymLhYO
 azxJ3n0y4Yne4jStLZy9ZDy75DxyQjFvx1ml1vNRJExUAiFx5Jpybi0WAXxIZov8uOvS
 9FoNsEdaYuRybFh+x0WjmI69ixqVe+3WG6ItffBpsDf5kBwh75a5P+FQUM9XDBLQTOCF
 5+/Sm0ODF49WH5BqDueArILyg/YlPOK2ckWChDeVIEldc52+uezaYxS/1w9+QIub7kLA
 WmBAjTDcuTHI+76A6OyFJWXSshcKqdz6RAObVaNIsIDn9472mDeVkC58Zp7NmYs10cnU
 XIaQ==
X-Gm-Message-State: APjAAAVNFOMO0L/4CBmNRZMGwB7XzhiNWTWjbG4N+sfx5QklO6t03Opb
 /9ybJFw56p7IVJQD6FPck+jcgA==
X-Google-Smtp-Source: APXvYqwzq2IJDg4cLJQDZGtlmKCnczEtj6OtQr/NmLMYBmqn9J5kT1N+Crv5wlJsBfOekrIHBGRkOg==
X-Received: by 2002:adf:a35e:: with SMTP id d30mr32693147wrb.33.1582107736797; 
 Wed, 19 Feb 2020 02:22:16 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:16 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:08 +0100
Message-Id: <20200219102122.1607365-39-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 38/52] drm/rockchip: Drop explicit
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyAoYWxtb3N0LCB0aGVyZSdzIHNvbWUgaW9tbXUgc3R1ZmYgd2l0aG91dCBzaWduaWZpY2Fu
Y2UpIHJpZ2h0CmFib3ZlIHRoZSBkcm1fZGV2X3B1dCgpLgoKQXNpZGU6IEFub3RoZXIgZHJpdmVy
IHdpdGggYSBiaXQgbXVjaCBkZXZtX2t6YWxsb2MsIHdoaWNoIHNob3VsZApwcm9iYWJseSB1c2Ug
ZHJtbV9remFsbG9jIGluc3RlYWQgLi4uCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5j
b20+CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5j
IHwgMTAgKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYwpp
bmRleCAyMGVjYjE1MDhhMjIuLmQwZWJhMjFlZWJjOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCkBAIC0xMzUsNyArMTM1LDkgQEAgc3RhdGljIGludCBy
b2NrY2hpcF9kcm1fYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYpCiAJaWYgKHJldCkKIAkJZ290byBl
cnJfZnJlZTsKIAotCWRybV9tb2RlX2NvbmZpZ19pbml0KGRybV9kZXYpOworCXJldCA9IGRybV9t
b2RlX2NvbmZpZ19pbml0KGRybV9kZXYpOworCWlmIChyZXQpCisJCWdvdG8gZXJyX2ZyZWU7CiAK
IAlyb2NrY2hpcF9kcm1fbW9kZV9jb25maWdfaW5pdChkcm1fZGV2KTsKIApAQCAtMTc0LDExICsx
NzYsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2RybV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikK
IGVycl91bmJpbmRfYWxsOgogCWNvbXBvbmVudF91bmJpbmRfYWxsKGRldiwgZHJtX2Rldik7CiBl
cnJfbW9kZV9jb25maWdfY2xlYW51cDoKLQlkcm1fbW9kZV9jb25maWdfY2xlYW51cChkcm1fZGV2
KTsKIAlyb2NrY2hpcF9pb21tdV9jbGVhbnVwKGRybV9kZXYpOwogZXJyX2ZyZWU6Ci0JZHJtX2Rl
di0+ZGV2X3ByaXZhdGUgPSBOVUxMOwotCWRldl9zZXRfZHJ2ZGF0YShkZXYsIE5VTEwpOwogCWRy
bV9kZXZfcHV0KGRybV9kZXYpOwogCXJldHVybiByZXQ7CiB9CkBAIC0xOTQsMTEgKzE5Myw4IEBA
IHN0YXRpYyB2b2lkIHJvY2tjaGlwX2RybV91bmJpbmQoc3RydWN0IGRldmljZSAqZGV2KQogCiAJ
ZHJtX2F0b21pY19oZWxwZXJfc2h1dGRvd24oZHJtX2Rldik7CiAJY29tcG9uZW50X3VuYmluZF9h
bGwoZGV2LCBkcm1fZGV2KTsKLQlkcm1fbW9kZV9jb25maWdfY2xlYW51cChkcm1fZGV2KTsKIAly
b2NrY2hpcF9pb21tdV9jbGVhbnVwKGRybV9kZXYpOwogCi0JZHJtX2Rldi0+ZGV2X3ByaXZhdGUg
PSBOVUxMOwotCWRldl9zZXRfZHJ2ZGF0YShkZXYsIE5VTEwpOwogCWRybV9kZXZfcHV0KGRybV9k
ZXYpOwogfQogCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
