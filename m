Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7827A38C2C7
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 11:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0656F5F5;
	Fri, 21 May 2021 09:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2E6F6F5E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 09:10:16 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 l18-20020a1ced120000b029014c1adff1edso6948689wmh.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 02:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1cn49LnC9MKqFexYQ7Z0jLWqvfPvwRgzNVyBE6xCMzo=;
 b=is09Q9qxPVyW0NgJaiKqPOqAgDwUvOEAav7i+ZL2/Ccp4gvX0OeKSQfBkc348utKqf
 cC2qOlnY1+LC6R0B9IR0gNU/DFLJLLH4+dwh9lrZyfQQJQotuzewpZvfyI8GYOI7PGhl
 czy0z5y5GEqCFxZ4qScRCiwGNYe2HLNIwMtdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1cn49LnC9MKqFexYQ7Z0jLWqvfPvwRgzNVyBE6xCMzo=;
 b=TYOzfQYfWZniH6yvXk8vFssXavQaA741e6ohWhn3oY7LEvekKrfzjiCKHXBiTrrGEN
 y4xSsBEBXdRIbyS5GGZMdPFZ3JVNI6/JzfvcnasbKniFgaBrDtUthU/hxuHZRywx4mwR
 IGSJhKGGsINlBfDOwSkPTTJghRsnZULSV0smjz67/W/9kkksYNjkFG682PRuHDoAsKiX
 RXUT1NyCxH1o09Yuw/lBdP8M67sAofA4hD14f4aRqpiDJyFIQ+hjA6XghtsoNFkev0A0
 /pkEjXPkhbAk7FBvwIVHwTAPTpK3ylF56LywUS2U3JoJMukbQr+ZR9e2kZRrdfV76t1Y
 QT/w==
X-Gm-Message-State: AOAM533CBXdR0116Eo/uHpRRt3xMyH20T2uMWmdo14WLvHr4epJkghBU
 XG3AnhlyH8I6Q2q8rfS2+ZYbvg==
X-Google-Smtp-Source: ABdhPJyT+6ranHRVQTb55siylh+EXYDlHb4SOwMXRTurfI70FKwfrCVWQUisCBlN9GVJKBZtwLJJ0A==
X-Received: by 2002:a05:600c:3510:: with SMTP id
 h16mr7502448wmq.38.1621588215236; 
 Fri, 21 May 2021 02:10:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y2sm13589457wmq.45.2021.05.21.02.10.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 02:10:14 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 May 2021 11:09:59 +0200
Message-Id: <20210521090959.1663703-11-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/11] drm/tiny:
 drm_gem_simple_display_pipe_prepare_fb is the default
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
Cc: linux-arm-kernel@lists.infradead.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 David Lechner <david@lechnology.com>, Emma Anholt <emma@anholt.net>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Andrew Jeffery <andrew@aj.id.au>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Joel Stanley <joel@jms.id.au>, Thomas Zimmermann <tzimmermann@suse.de>,
 xen-devel@lists.xenproject.org, Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R29lcyB0aHJvdWdoIGFsbCB0aGUgZHJpdmVycyBhbmQgZGVsZXRlcyB0aGUgZGVmYXVsdCBob29r
IHNpbmNlIGl0J3MKdGhlIGRlZmF1bHQgbm93LgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBKb2VsIFN0YW5sZXkgPGpvZWxAam1zLmlk
LmF1PgpDYzogQW5kcmV3IEplZmZlcnkgPGFuZHJld0Bhai5pZC5hdT4KQ2M6ICJOb3JhbGYgVHLD
uG5uZXMiIDxub3JhbGZAdHJvbm5lcy5vcmc+CkNjOiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxs
ZWlqQGxpbmFyby5vcmc+CkNjOiBFbW1hIEFuaG9sdCA8ZW1tYUBhbmhvbHQubmV0PgpDYzogRGF2
aWQgTGVjaG5lciA8ZGF2aWRAbGVjaG5vbG9neS5jb20+CkNjOiBLYW1sZXNoIEd1cnVkYXNhbmkg
PGthbWxlc2guZ3VydWRhc2FuaUBnbWFpbC5jb20+CkNjOiBPbGVrc2FuZHIgQW5kcnVzaGNoZW5r
byA8b2xla3NhbmRyX2FuZHJ1c2hjaGVua29AZXBhbS5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwu
b3JnPgpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CkNjOiBTYW0g
UmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+CkNjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5k
ZXVjaGVyQGFtZC5jb20+CkNjOiBBbmR5IFNoZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtvQGxp
bnV4LmludGVsLmNvbT4KQ2M6IGxpbnV4LWFzcGVlZEBsaXN0cy5vemxhYnMub3JnCkNjOiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IHhlbi1kZXZlbEBsaXN0cy54ZW5w
cm9qZWN0Lm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9hc3BlZWQvYXNwZWVkX2dmeF9jcnRjLmMg
fCAxIC0KIGRyaXZlcnMvZ3B1L2RybS9ndWQvZ3VkX2Rydi5jICAgICAgICAgICAgfCAxIC0KIGRy
aXZlcnMvZ3B1L2RybS9tY2RlL21jZGVfZGlzcGxheS5jICAgICAgfCAxIC0KIGRyaXZlcnMvZ3B1
L2RybS9wbDExMS9wbDExMV9kaXNwbGF5LmMgICAgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS90aW55
L2h4ODM1N2QuYyAgICAgICAgICAgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS90aW55L2lsaTkyMjUu
YyAgICAgICAgICAgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS90aW55L2lsaTkzNDEuYyAgICAgICAg
ICAgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS90aW55L2lsaTk0ODYuYyAgICAgICAgICAgfCAxIC0K
IGRyaXZlcnMvZ3B1L2RybS90aW55L21pMDI4M3F0LmMgICAgICAgICAgfCAxIC0KIGRyaXZlcnMv
Z3B1L2RybS90aW55L3JlcGFwZXIuYyAgICAgICAgICAgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS90
aW55L3N0NzU4Ni5jICAgICAgICAgICAgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS90aW55L3N0Nzcz
NXIuYyAgICAgICAgICAgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS90dmUyMDAvdHZlMjAwX2Rpc3Bs
YXkuYyAgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS94ZW4veGVuX2RybV9mcm9udF9rbXMuYyAgfCAx
IC0KIDE0IGZpbGVzIGNoYW5nZWQsIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hc3BlZWQvYXNwZWVkX2dmeF9jcnRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vYXNw
ZWVkL2FzcGVlZF9nZnhfY3J0Yy5jCmluZGV4IDA5OGY5NmQ0ZDUwZC4uODI3ZTYyYzFkYWJhIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYXNwZWVkL2FzcGVlZF9nZnhfY3J0Yy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hc3BlZWQvYXNwZWVkX2dmeF9jcnRjLmMKQEAgLTIyMCw3ICsyMjAs
NiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9zaW1wbGVfZGlzcGxheV9waXBlX2Z1bmNzIGFz
cGVlZF9nZnhfZnVuY3MgPSB7CiAJLmVuYWJsZQkJPSBhc3BlZWRfZ2Z4X3BpcGVfZW5hYmxlLAog
CS5kaXNhYmxlCT0gYXNwZWVkX2dmeF9waXBlX2Rpc2FibGUsCiAJLnVwZGF0ZQkJPSBhc3BlZWRf
Z2Z4X3BpcGVfdXBkYXRlLAotCS5wcmVwYXJlX2ZiCT0gZHJtX2dlbV9zaW1wbGVfZGlzcGxheV9w
aXBlX3ByZXBhcmVfZmIsCiAJLmVuYWJsZV92YmxhbmsJPSBhc3BlZWRfZ2Z4X2VuYWJsZV92Ymxh
bmssCiAJLmRpc2FibGVfdmJsYW5rCT0gYXNwZWVkX2dmeF9kaXNhYmxlX3ZibGFuaywKIH07CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZ3VkL2d1ZF9kcnYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9ndWQvZ3VkX2Rydi5jCmluZGV4IGU4YjY3MmRjOTgzMi4uMTkyNWRmOWMwZmI3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vZ3VkL2d1ZF9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
Z3VkL2d1ZF9kcnYuYwpAQCAtMzY0LDcgKzM2NCw2IEBAIHN0YXRpYyB2b2lkIGd1ZF9kZWJ1Z2Zz
X2luaXQoc3RydWN0IGRybV9taW5vciAqbWlub3IpCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9z
aW1wbGVfZGlzcGxheV9waXBlX2Z1bmNzIGd1ZF9waXBlX2Z1bmNzID0gewogCS5jaGVjayAgICAg
ID0gZ3VkX3BpcGVfY2hlY2ssCiAJLnVwZGF0ZQkgICAgPSBndWRfcGlwZV91cGRhdGUsCi0JLnBy
ZXBhcmVfZmIgPSBkcm1fZ2VtX3NpbXBsZV9kaXNwbGF5X3BpcGVfcHJlcGFyZV9mYiwKIH07CiAK
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnX2Z1bmNzIGd1ZF9tb2RlX2NvbmZp
Z19mdW5jcyA9IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tY2RlL21jZGVfZGlzcGxh
eS5jIGIvZHJpdmVycy9ncHUvZHJtL21jZGUvbWNkZV9kaXNwbGF5LmMKaW5kZXggNGRkYzU1ZDU4
ZjM4Li5jZTEyYTM2ZTJkYjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tY2RlL21jZGVf
ZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tY2RlL21jZGVfZGlzcGxheS5jCkBAIC0x
NDc5LDcgKzE0NzksNiBAQCBzdGF0aWMgc3RydWN0IGRybV9zaW1wbGVfZGlzcGxheV9waXBlX2Z1
bmNzIG1jZGVfZGlzcGxheV9mdW5jcyA9IHsKIAkudXBkYXRlID0gbWNkZV9kaXNwbGF5X3VwZGF0
ZSwKIAkuZW5hYmxlX3ZibGFuayA9IG1jZGVfZGlzcGxheV9lbmFibGVfdmJsYW5rLAogCS5kaXNh
YmxlX3ZibGFuayA9IG1jZGVfZGlzcGxheV9kaXNhYmxlX3ZibGFuaywKLQkucHJlcGFyZV9mYiA9
IGRybV9nZW1fc2ltcGxlX2Rpc3BsYXlfcGlwZV9wcmVwYXJlX2ZiLAogfTsKIAogaW50IG1jZGVf
ZGlzcGxheV9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkcm0pCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vcGwxMTEvcGwxMTFfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL3BsMTExL3Bs
MTExX2Rpc3BsYXkuYwppbmRleCA2ZmQ3ZjEzZjFhY2EuLmI1YTg4NTk3MzlhMiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3BsMTExL3BsMTExX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vcGwxMTEvcGwxMTFfZGlzcGxheS5jCkBAIC00NDAsNyArNDQwLDYgQEAgc3RhdGljIHN0
cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZV9mdW5jcyBwbDExMV9kaXNwbGF5X2Z1bmNzID0g
ewogCS5lbmFibGUgPSBwbDExMV9kaXNwbGF5X2VuYWJsZSwKIAkuZGlzYWJsZSA9IHBsMTExX2Rp
c3BsYXlfZGlzYWJsZSwKIAkudXBkYXRlID0gcGwxMTFfZGlzcGxheV91cGRhdGUsCi0JLnByZXBh
cmVfZmIgPSBkcm1fZ2VtX3NpbXBsZV9kaXNwbGF5X3BpcGVfcHJlcGFyZV9mYiwKIH07CiAKIHN0
YXRpYyBpbnQgcGwxMTFfY2xrX2Rpdl9jaG9vc2VfZGl2KHN0cnVjdCBjbGtfaHcgKmh3LCB1bnNp
Z25lZCBsb25nIHJhdGUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGlueS9oeDgzNTdk
LmMgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9oeDgzNTdkLmMKaW5kZXggZGE1ZGY5MzQ1MGRlLi45
YjMzYzA1NzMyYWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90aW55L2h4ODM1N2QuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9oeDgzNTdkLmMKQEAgLTE4NCw3ICsxODQsNiBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGRybV9zaW1wbGVfZGlzcGxheV9waXBlX2Z1bmNzIGh4ODM1N2Rf
cGlwZV9mdW5jcyA9IHsKIAkuZW5hYmxlID0geXgyNDBxdjI5X2VuYWJsZSwKIAkuZGlzYWJsZSA9
IG1pcGlfZGJpX3BpcGVfZGlzYWJsZSwKIAkudXBkYXRlID0gbWlwaV9kYmlfcGlwZV91cGRhdGUs
Ci0JLnByZXBhcmVfZmIgPSBkcm1fZ2VtX3NpbXBsZV9kaXNwbGF5X3BpcGVfcHJlcGFyZV9mYiwK
IH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSB5eDM1MGh2MTVfbW9k
ZSA9IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90aW55L2lsaTkyMjUuYyBiL2RyaXZl
cnMvZ3B1L2RybS90aW55L2lsaTkyMjUuYwppbmRleCA2OTI2NWQ4YTNiZWIuLjk3NmQzMjA5ZjE2
NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvaWxpOTIyNS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS90aW55L2lsaTkyMjUuYwpAQCAtMzI4LDcgKzMyOCw2IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGVfZnVuY3MgaWxpOTIyNV9waXBlX2Z1bmNz
ID0gewogCS5lbmFibGUJCT0gaWxpOTIyNV9waXBlX2VuYWJsZSwKIAkuZGlzYWJsZQk9IGlsaTky
MjVfcGlwZV9kaXNhYmxlLAogCS51cGRhdGUJCT0gaWxpOTIyNV9waXBlX3VwZGF0ZSwKLQkucHJl
cGFyZV9mYgk9IGRybV9nZW1fc2ltcGxlX2Rpc3BsYXlfcGlwZV9wcmVwYXJlX2ZiLAogfTsKIAog
c3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlIGlsaTkyMjVfbW9kZSA9IHsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90aW55L2lsaTkzNDEuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS90aW55L2lsaTkzNDEuYwppbmRleCBhZDljZTdiNGY3NmYuLjM3ZTBjMzMzOTljOCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3RpbnkvaWxpOTM0MS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS90aW55L2lsaTkzNDEuYwpAQCAtMTQwLDcgKzE0MCw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
ZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGVfZnVuY3MgaWxpOTM0MV9waXBlX2Z1bmNzID0gewogCS5l
bmFibGUgPSB5eDI0MHF2MjlfZW5hYmxlLAogCS5kaXNhYmxlID0gbWlwaV9kYmlfcGlwZV9kaXNh
YmxlLAogCS51cGRhdGUgPSBtaXBpX2RiaV9waXBlX3VwZGF0ZSwKLQkucHJlcGFyZV9mYiA9IGRy
bV9nZW1fc2ltcGxlX2Rpc3BsYXlfcGlwZV9wcmVwYXJlX2ZiLAogfTsKIAogc3RhdGljIGNvbnN0
IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlIHl4MjQwcXYyOV9tb2RlID0gewpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3RpbnkvaWxpOTQ4Ni5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvaWxp
OTQ4Ni5jCmluZGV4IDc1YWExNDc2YzY2Yy4uZTlhNjNmNGIyOTkzIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vdGlueS9pbGk5NDg2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvaWxp
OTQ4Ni5jCkBAIC0xNTMsNyArMTUzLDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fc2ltcGxl
X2Rpc3BsYXlfcGlwZV9mdW5jcyB3YXZlc2hhcmVfcGlwZV9mdW5jcyA9IHsKIAkuZW5hYmxlID0g
d2F2ZXNoYXJlX2VuYWJsZSwKIAkuZGlzYWJsZSA9IG1pcGlfZGJpX3BpcGVfZGlzYWJsZSwKIAku
dXBkYXRlID0gbWlwaV9kYmlfcGlwZV91cGRhdGUsCi0JLnByZXBhcmVfZmIgPSBkcm1fZ2VtX3Np
bXBsZV9kaXNwbGF5X3BpcGVfcHJlcGFyZV9mYiwKIH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
ZHJtX2Rpc3BsYXlfbW9kZSB3YXZlc2hhcmVfbW9kZSA9IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS90aW55L21pMDI4M3F0LmMgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9taTAyODNxdC5j
CmluZGV4IDgyZmQxYWQzNDEzZi4uMDIzZGU0OWU3YThlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vdGlueS9taTAyODNxdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90aW55L21pMDI4M3F0
LmMKQEAgLTE0NCw3ICsxNDQsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9zaW1wbGVfZGlz
cGxheV9waXBlX2Z1bmNzIG1pMDI4M3F0X3BpcGVfZnVuY3MgPSB7CiAJLmVuYWJsZSA9IG1pMDI4
M3F0X2VuYWJsZSwKIAkuZGlzYWJsZSA9IG1pcGlfZGJpX3BpcGVfZGlzYWJsZSwKIAkudXBkYXRl
ID0gbWlwaV9kYmlfcGlwZV91cGRhdGUsCi0JLnByZXBhcmVfZmIgPSBkcm1fZ2VtX3NpbXBsZV9k
aXNwbGF5X3BpcGVfcHJlcGFyZV9mYiwKIH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Rp
c3BsYXlfbW9kZSBtaTAyODNxdF9tb2RlID0gewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3RpbnkvcmVwYXBlci5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvcmVwYXBlci5jCmluZGV4IDJj
ZWUwN2EyZTAwYi4uMDA3ZDlkNTlmMDFjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGlu
eS9yZXBhcGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvcmVwYXBlci5jCkBAIC04NjEs
NyArODYxLDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZV9m
dW5jcyByZXBhcGVyX3BpcGVfZnVuY3MgPSB7CiAJLmVuYWJsZSA9IHJlcGFwZXJfcGlwZV9lbmFi
bGUsCiAJLmRpc2FibGUgPSByZXBhcGVyX3BpcGVfZGlzYWJsZSwKIAkudXBkYXRlID0gcmVwYXBl
cl9waXBlX3VwZGF0ZSwKLQkucHJlcGFyZV9mYiA9IGRybV9nZW1fc2ltcGxlX2Rpc3BsYXlfcGlw
ZV9wcmVwYXJlX2ZiLAogfTsKIAogc3RhdGljIGludCByZXBhcGVyX2Nvbm5lY3Rvcl9nZXRfbW9k
ZXMoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS90aW55L3N0NzU4Ni5jIGIvZHJpdmVycy9ncHUvZHJtL3Rpbnkvc3Q3NTg2LmMKaW5k
ZXggMDVkYjk4MGNjMDQ3Li4xYmU1NWJlZDYwOWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS90aW55L3N0NzU4Ni5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90aW55L3N0NzU4Ni5jCkBAIC0y
NjgsNyArMjY4LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlw
ZV9mdW5jcyBzdDc1ODZfcGlwZV9mdW5jcyA9IHsKIAkuZW5hYmxlCQk9IHN0NzU4Nl9waXBlX2Vu
YWJsZSwKIAkuZGlzYWJsZQk9IHN0NzU4Nl9waXBlX2Rpc2FibGUsCiAJLnVwZGF0ZQkJPSBzdDc1
ODZfcGlwZV91cGRhdGUsCi0JLnByZXBhcmVfZmIJPSBkcm1fZ2VtX3NpbXBsZV9kaXNwbGF5X3Bp
cGVfcHJlcGFyZV9mYiwKIH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9k
ZSBzdDc1ODZfbW9kZSA9IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90aW55L3N0Nzcz
NXIuYyBiL2RyaXZlcnMvZ3B1L2RybS90aW55L3N0NzczNXIuYwppbmRleCBlYzlkYzgxN2EyY2Mu
LjEyMjMyMGRiNWQzOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Rpbnkvc3Q3NzM1ci5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS90aW55L3N0NzczNXIuYwpAQCAtMTM2LDcgKzEzNiw2IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGVfZnVuY3Mgc3Q3NzM1
cl9waXBlX2Z1bmNzID0gewogCS5lbmFibGUJCT0gc3Q3NzM1cl9waXBlX2VuYWJsZSwKIAkuZGlz
YWJsZQk9IG1pcGlfZGJpX3BpcGVfZGlzYWJsZSwKIAkudXBkYXRlCQk9IG1pcGlfZGJpX3BpcGVf
dXBkYXRlLAotCS5wcmVwYXJlX2ZiCT0gZHJtX2dlbV9zaW1wbGVfZGlzcGxheV9waXBlX3ByZXBh
cmVfZmIsCiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHN0NzczNXJfY2ZnIGpkX3QxODAwM190
MDFfY2ZnID0gewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R2ZTIwMC90dmUyMDBfZGlz
cGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL3R2ZTIwMC90dmUyMDBfZGlzcGxheS5jCmluZGV4IDUw
ZTFmYjcxODY5Zi4uMTdiOGM4ZGQxNjlkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHZl
MjAwL3R2ZTIwMF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3R2ZTIwMC90dmUyMDBf
ZGlzcGxheS5jCkBAIC0zMTYsNyArMzE2LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fc2lt
cGxlX2Rpc3BsYXlfcGlwZV9mdW5jcyB0dmUyMDBfZGlzcGxheV9mdW5jcyA9IHsKIAkuZW5hYmxl
ID0gdHZlMjAwX2Rpc3BsYXlfZW5hYmxlLAogCS5kaXNhYmxlID0gdHZlMjAwX2Rpc3BsYXlfZGlz
YWJsZSwKIAkudXBkYXRlID0gdHZlMjAwX2Rpc3BsYXlfdXBkYXRlLAotCS5wcmVwYXJlX2ZiID0g
ZHJtX2dlbV9zaW1wbGVfZGlzcGxheV9waXBlX3ByZXBhcmVfZmIsCiAJLmVuYWJsZV92Ymxhbmsg
PSB0dmUyMDBfZGlzcGxheV9lbmFibGVfdmJsYW5rLAogCS5kaXNhYmxlX3ZibGFuayA9IHR2ZTIw
MF9kaXNwbGF5X2Rpc2FibGVfdmJsYW5rLAogfTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS94ZW4veGVuX2RybV9mcm9udF9rbXMuYyBiL2RyaXZlcnMvZ3B1L2RybS94ZW4veGVuX2RybV9m
cm9udF9rbXMuYwppbmRleCAzNzEyMDJlYmU5MDAuLmNmZGE3NDQ5MDc2NSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3hlbi94ZW5fZHJtX2Zyb250X2ttcy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS94ZW4veGVuX2RybV9mcm9udF9rbXMuYwpAQCAtMzAyLDcgKzMwMiw2IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGVfZnVuY3MgZGlzcGxheV9mdW5jcyA9
IHsKIAkubW9kZV92YWxpZCA9IGRpc3BsYXlfbW9kZV92YWxpZCwKIAkuZW5hYmxlID0gZGlzcGxh
eV9lbmFibGUsCiAJLmRpc2FibGUgPSBkaXNwbGF5X2Rpc2FibGUsCi0JLnByZXBhcmVfZmIgPSBk
cm1fZ2VtX3NpbXBsZV9kaXNwbGF5X3BpcGVfcHJlcGFyZV9mYiwKIAkuY2hlY2sgPSBkaXNwbGF5
X2NoZWNrLAogCS51cGRhdGUgPSBkaXNwbGF5X3VwZGF0ZSwKIH07Ci0tIAoyLjMxLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
