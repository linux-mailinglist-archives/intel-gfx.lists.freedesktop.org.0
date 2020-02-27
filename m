Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C4C1726B8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:17:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1CB96ED1B;
	Thu, 27 Feb 2020 18:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B5F6ED05
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:16:17 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id c84so408376wme.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XH8HTUf+N983dtr3AIooE5hJOMY5xFR/UBpOsmUWfIc=;
 b=jBqiUuXVh/JvEPipboAuXj5XTLXkZ653TgrBZRVEUYce1lqQQ1NF6ER3HLGYfAX4UB
 J68ARKFjIsdYaeyLanHA4/nYkX5rdrVqDhN7sfsACMUjAy0f6ePOLt+gEzkEV2Yr4sZ5
 YePxoooDN+WrFAdSqT628QgnmFAXltgaUaCrA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XH8HTUf+N983dtr3AIooE5hJOMY5xFR/UBpOsmUWfIc=;
 b=ESRDVgLux0PXsrrg5CZBnL9lIuL5YUp39k6gmWWLbrkuZGSD2KVZVNCRhGGFRt0rmP
 2k1KZn0JnpzLtzQTg4fVpefH/IDAcAr4KuQIkCOYBo9Rs/2RxQ/CXrpd7fe8+azDneye
 zQ+UanlJOr1UgcsqOoy+LXLrMZzuefdyck46zjil+JQ4iUoL7iK7GOQtqG2WEItVZc5w
 DJZQdKXsdtKIjC8JLHeGc37iorfLInnKvowkvvweSm7yVZU/dbnwcWDK4+Qt/gSXQtjd
 B2bm3PbYqAgrjVVmP1KaTre9BTsNSsiYv/+O1QLUX3UHo+gCxLnp43nqwjAMuALelE19
 lz0A==
X-Gm-Message-State: APjAAAUsABDumA4Vy4qX9ikqnLrjsinYrhEeZbBCvgjoqJo6p4tNhZ60
 pO7msGUBuBnwWiQ8eJ/rYnNpKQ==
X-Google-Smtp-Source: APXvYqxCJ7pjwNsD57hr7a7J+I8OTlXejrkTgzdaMEIRKxXonn5EVsjHkCo0KzWPeU7M/N12HjkftQ==
X-Received: by 2002:a1c:1b4d:: with SMTP id b74mr26180wmb.33.1582827376145;
 Thu, 27 Feb 2020 10:16:16 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.16.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:16:15 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:15:08 +0100
Message-Id: <20200227181522.2711142-38-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 37/51] drm/rockchip: Drop explicit
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
 Francesco Lavra <francescolavra.fl@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 m.felsch@pengutronix.de, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyAoYWxtb3N0LCB0aGVyZSdzIHNvbWUgaW9tbXUgc3R1ZmYgd2l0aG91dCBzaWduaWZpY2Fu
Y2UpIHJpZ2h0CmFib3ZlIHRoZSBkcm1fZGV2X3B1dCgpLgoKVGhpcyBpcyBtYWRlIHBvc3NpYmxl
IGJ5IGEgcHJlY2VlZGluZyBwYXRjaCB3aGljaCBhZGRlZCBhIGRybW1fCmNsZWFudXAgYWN0aW9u
IHRvIGRybV9tb2RlX2NvbmZpZ19pbml0KCksIGhlbmNlIGFsbCB3ZSBuZWVkIHRvIGRvIHRvCmVu
c3VyZSB0aGF0IGRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKCkgaXMgcnVuIG9uIGZpbmFsIGRybV9k
ZXZpY2UKY2xlYW51cCBpcyBjaGVjayB0aGUgbmV3IGVycm9yIGNvZGUgZm9yIF9pbml0KCkuCgpB
c2lkZTogQW5vdGhlciBkcml2ZXIgd2l0aCBhIGJpdCBtdWNoIGRldm1fa3phbGxvYywgd2hpY2gg
c2hvdWxkCnByb2JhYmx5IHVzZSBkcm1tX2t6YWxsb2MgaW5zdGVhZCAuLi4KCnYyOiBFeHBsYWlu
IHdoeSB0aGlzIGNsZWFudXAgaXMgcG9zc2libGUgKExhdXJlbnQpLgoKdjM6IEp1bXAgb3V0IGF0
IHRoZSByaWdodCBsYWJlbCAoRnJhbmNlc2NvKQoKQ2M6IEZyYW5jZXNjbyBMYXZyYSA8ZnJhbmNl
c2NvbGF2cmEuZmxAZ21haWwuY29tPgpDYzogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5j
aGFydEBpZGVhc29uYm9hcmQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+
CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIHwg
MTIgKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA4IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCmlu
ZGV4IDIwZWNiMTUwOGEyMi4uOWIyNTAyZjkyMDE4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKQEAgLTEzNSw3ICsxMzUsOSBAQCBzdGF0aWMgaW50IHJv
Y2tjaGlwX2RybV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIAlpZiAocmV0KQogCQlnb3RvIGVy
cl9mcmVlOwogCi0JZHJtX21vZGVfY29uZmlnX2luaXQoZHJtX2Rldik7CisJcmV0ID0gZHJtX21v
ZGVfY29uZmlnX2luaXQoZHJtX2Rldik7CisJaWYgKHJldCkKKwkJZ290byBlcnJfaW9tbXVfY2xl
YW51cDsKIAogCXJvY2tjaGlwX2RybV9tb2RlX2NvbmZpZ19pbml0KGRybV9kZXYpOwogCkBAIC0x
NzMsMTIgKzE3NSw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHJtX2JpbmQoc3RydWN0IGRldmlj
ZSAqZGV2KQogCXJvY2tjaGlwX2RybV9mYmRldl9maW5pKGRybV9kZXYpOwogZXJyX3VuYmluZF9h
bGw6CiAJY29tcG9uZW50X3VuYmluZF9hbGwoZGV2LCBkcm1fZGV2KTsKLWVycl9tb2RlX2NvbmZp
Z19jbGVhbnVwOgotCWRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKGRybV9kZXYpOworZXJyX2lvbW11
X2NsZWFudXA6CiAJcm9ja2NoaXBfaW9tbXVfY2xlYW51cChkcm1fZGV2KTsKIGVycl9mcmVlOgot
CWRybV9kZXYtPmRldl9wcml2YXRlID0gTlVMTDsKLQlkZXZfc2V0X2RydmRhdGEoZGV2LCBOVUxM
KTsKIAlkcm1fZGV2X3B1dChkcm1fZGV2KTsKIAlyZXR1cm4gcmV0OwogfQpAQCAtMTk0LDExICsx
OTMsOCBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9kcm1fdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRl
dikKIAogCWRybV9hdG9taWNfaGVscGVyX3NodXRkb3duKGRybV9kZXYpOwogCWNvbXBvbmVudF91
bmJpbmRfYWxsKGRldiwgZHJtX2Rldik7Ci0JZHJtX21vZGVfY29uZmlnX2NsZWFudXAoZHJtX2Rl
dik7CiAJcm9ja2NoaXBfaW9tbXVfY2xlYW51cChkcm1fZGV2KTsKIAotCWRybV9kZXYtPmRldl9w
cml2YXRlID0gTlVMTDsKLQlkZXZfc2V0X2RydmRhdGEoZGV2LCBOVUxMKTsKIAlkcm1fZGV2X3B1
dChkcm1fZGV2KTsKIH0KIAotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
