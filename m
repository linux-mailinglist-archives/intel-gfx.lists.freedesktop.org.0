Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DC13B1E95
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 18:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A44C66E96A;
	Wed, 23 Jun 2021 16:25:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C69B26E961
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 16:25:03 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id bg14so4889980ejb.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 09:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=evd9uRpnK0uEjS2cLGzJbOTA3IaXIFBWw8o9hBWCnsw=;
 b=glE1Uxd0Hao5qbW/fH1Z4ZyZBgpIor+OuYYnxiZbpXsQTVVO6qEKin78RTxpzMCeSf
 +DyyS6t1k5MIrjBBOv+qpnwcIQ5IOxdT/Gm/HP7kTgoXK+OUhQPDits2HNArqthZ2BmK
 WXoTBVi+Q9Ja48+f7AO/6Y+w1FKGcPr6awfx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=evd9uRpnK0uEjS2cLGzJbOTA3IaXIFBWw8o9hBWCnsw=;
 b=kgNU1ufvjJritm07o+EQ8fzO37cq2EG4X5Pmh2gRBKS/Vlo1bZfafgQvNnyEtNVVFB
 6bhYdxqrQtA0w08NnvmyL0H5+dTn8pJ7tIH7fwY0yXDIgdhfWpPlJk1W6coqy5Y776N8
 2mgSfDISyHZqIGmvip0w5hHhy+z8KDkB14zi/VbRac9ObykPvS6OQQkB+WwysTigTPLW
 XuG19KuJPPOtaegXdOfLfuUK9cDdoJwvQd0viIT5WXVLQVSz8IJABNdfE4yot6+tK3RY
 s1cXRRpHcdSGGSm1VoaZCdEyacb/RDVz37IP78kjCPIY4to+Cn5NFHnQYCBOrfNxUulp
 Q2dg==
X-Gm-Message-State: AOAM53006ZlzEg06ZOmCDZ9XsP9hjBYsXr5AwovYfha4m0J+3AdlR+C9
 NR5NLu/78Nvmji7/KjyZXUR0ldmOq1gGbA==
X-Google-Smtp-Source: ABdhPJy15JtfO+Vgum0gt4CFdtOtR76N4UGUKK6T3O9Hm7qYaUp75WqGCJQuhtaXn+CEyNP+fXdBGg==
X-Received: by 2002:a17:906:e108:: with SMTP id
 gj8mr932050ejb.90.1624465502238; 
 Wed, 23 Jun 2021 09:25:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b8sm308926edr.42.2021.06.23.09.25.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jun 2021 09:25:01 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 23 Jun 2021 18:24:56 +0200
Message-Id: <20210623162456.3373469-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
In-Reply-To: <20210622165511.3169559-13-daniel.vetter@ffwll.ch>
References: <20210622165511.3169559-13-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/simple-helper:
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
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
YSBHRU0gZHJpdmVyIChOb3JhbGYpCgp2MzogSXQncyBuZWl0aGVyIC4uLiBub3IsIG5vdCBub3Qg
KFNhbSkKCkNjOiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CkNjOiBOb3JhbGYgVHLD
uG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KQWNrZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9y
YWxmQHRyb25uZXMub3JnPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+CkNjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+CkNj
OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6IERhdmlkIEFpcmxp
ZSA8YWlybGllZEBsaW51eC5pZT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3NpbXBsZV9rbXNfaGVscGVyLmMgfCAxMiArKysrKysr
KysrLS0KIGluY2x1ZGUvZHJtL2RybV9zaW1wbGVfa21zX2hlbHBlci5oICAgICB8ICA3ICsrKysr
LS0KIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3NpbXBsZV9rbXNfaGVscGVyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX3NpbXBsZV9rbXNfaGVscGVyLmMKaW5kZXggMGIwOTVhMzEzYzQ0Li43
MzVmNGYzNGJjYzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc2ltcGxlX2ttc19o
ZWxwZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3NpbXBsZV9rbXNfaGVscGVyLmMKQEAg
LTksNiArOSw4IEBACiAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWMuaD4KICNpbmNsdWRlIDxkcm0v
ZHJtX2F0b21pY19oZWxwZXIuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2JyaWRnZS5oPgorI2luY2x1
ZGUgPGRybS9kcm1fZHJ2Lmg+CisjaW5jbHVkZSA8ZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5o
PgogI2luY2x1ZGUgPGRybS9kcm1fbWFuYWdlZC5oPgogI2luY2x1ZGUgPGRybS9kcm1fcGxhbmVf
aGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9wcm9iZV9oZWxwZXIuaD4KQEAgLTIyNSw4ICsy
MjcsMTQgQEAgc3RhdGljIGludCBkcm1fc2ltcGxlX2ttc19wbGFuZV9wcmVwYXJlX2ZiKHN0cnVj
dCBkcm1fcGxhbmUgKnBsYW5lLAogCXN0cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZSAqcGlw
ZTsKIAogCXBpcGUgPSBjb250YWluZXJfb2YocGxhbmUsIHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3Bs
YXlfcGlwZSwgcGxhbmUpOwotCWlmICghcGlwZS0+ZnVuY3MgfHwgIXBpcGUtPmZ1bmNzLT5wcmVw
YXJlX2ZiKQotCQlyZXR1cm4gMDsKKwlpZiAoIXBpcGUtPmZ1bmNzIHx8ICFwaXBlLT5mdW5jcy0+
cHJlcGFyZV9mYikgeworCQlpZiAoV0FSTl9PTl9PTkNFKCFkcm1fY29yZV9jaGVja19mZWF0dXJl
KHBsYW5lLT5kZXYsIERSSVZFUl9HRU0pKSkKKwkJCXJldHVybiAwOworCisJCVdBUk5fT05fT05D
RShwaXBlLT5mdW5jcyAmJiBwaXBlLT5mdW5jcy0+Y2xlYW51cF9mYik7CisKKwkJcmV0dXJuIGRy
bV9nZW1fc2ltcGxlX2Rpc3BsYXlfcGlwZV9wcmVwYXJlX2ZiKHBpcGUsIHN0YXRlKTsKKwl9CiAK
IAlyZXR1cm4gcGlwZS0+ZnVuY3MtPnByZXBhcmVfZmIocGlwZSwgc3RhdGUpOwogfQpkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kcm0vZHJtX3NpbXBsZV9rbXNfaGVscGVyLmggYi9pbmNsdWRlL2RybS9k
cm1fc2ltcGxlX2ttc19oZWxwZXIuaAppbmRleCBlZjk5NDRlOWM1ZmMuLmNmMDcxMzJkNGVlOCAx
MDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX3NpbXBsZV9rbXNfaGVscGVyLmgKKysrIGIvaW5j
bHVkZS9kcm0vZHJtX3NpbXBsZV9rbXNfaGVscGVyLmgKQEAgLTExNiw4ICsxMTYsMTEgQEAgc3Ry
dWN0IGRybV9zaW1wbGVfZGlzcGxheV9waXBlX2Z1bmNzIHsKIAkgKiB0aGUgZG9jdW1lbnRhdGlv
biBmb3IgdGhlICZkcm1fcGxhbmVfaGVscGVyX2Z1bmNzLnByZXBhcmVfZmIgaG9vayBmb3IKIAkg
KiBtb3JlIGRldGFpbHMuCiAJICoKLQkgKiBEcml2ZXJzIHdoaWNoIGFsd2F5cyBoYXZlIHRoZWly
IGJ1ZmZlcnMgcGlubmVkIHNob3VsZCB1c2UKLQkgKiBkcm1fZ2VtX3NpbXBsZV9kaXNwbGF5X3Bp
cGVfcHJlcGFyZV9mYigpIGZvciB0aGlzIGhvb2suCisJICogRm9yIEdFTSBkcml2ZXJzIHdobyBu
ZWl0aGVyIGhhdmUgYSBAcHJlcGFyZV9mYiBub3IgQGNsZWFudXBfZmIgaG9vaworCSAqIHNldCBk
cm1fZ2VtX3NpbXBsZV9kaXNwbGF5X3BpcGVfcHJlcGFyZV9mYigpIGlzIGNhbGxlZCBhdXRvbWF0
aWNhbGx5CisJICogdG8gaW1wbGVtZW50IHRoaXMuIE90aGVyIGRyaXZlcnMgd2hpY2ggbmVlZCBh
ZGRpdGlvbmFsIHBsYW5lCisJICogcHJvY2Vzc2luZyBjYW4gY2FsbCBkcm1fZ2VtX3NpbXBsZV9k
aXNwbGF5X3BpcGVfcHJlcGFyZV9mYigpIGZyb20KKwkgKiB0aGVpciBAcHJlcGFyZV9mYiBob29r
LgogCSAqLwogCWludCAoKnByZXBhcmVfZmIpKHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlw
ZSAqcGlwZSwKIAkJCSAgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpOwotLSAK
Mi4zMi4wLnJjMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
