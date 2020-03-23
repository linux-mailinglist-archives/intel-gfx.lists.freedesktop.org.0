Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F6018F7A0
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:52:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD04E6E260;
	Mon, 23 Mar 2020 14:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 121C06E250
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:51:00 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id h9so17432522wrc.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xn0XXOeheSX/LDac3pG8Cvhtu2NIuIWTYQkrsycx4bU=;
 b=chccHnonJxHv0Lqj5UuYLXi9jULvSru1KpcqEIgsZp5fOgQdrYw7RK/RIs7zgdrkBM
 +GlJ+YM2kx+8vrwaxMKBK9WpKG7EzfpFRAh5QdcmatmUGI5xz7lDZ2TtcO3CsfGYv4mF
 utglDC+RV/vTLudztFe8aHw6FeorgH4MgYrW8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xn0XXOeheSX/LDac3pG8Cvhtu2NIuIWTYQkrsycx4bU=;
 b=tKbV3Rvdn6/EHF8OHfF15dr9c55kLmzz1vHqH7J9NX++By1wR/S0aJKOOn4ut07VAt
 SDg0YdoxVy0ea/Vv/mxdLE2iZd/7oPtf0q2Dck15HEu6LgxDxtgah5lmP5qr47PnMukI
 LASrJcDCje6AVSlnGC/AumrtcpLKI1KsleKBhv9Apm2hFozsqQCyGLQ0i76P/3Dzs0kr
 Ph/RtpvZOQa2IbNHssHTJme6tW3xCFxhNYVyI2YXWX/Z9jEXs6npQWl++lUke6gl7zXy
 HR/2d01snxIH69saQfAMosvYUCLgPYLTXhS+DNy3CoBJWvQg5EVLFstWcifm4QOKK/Dz
 qM1Q==
X-Gm-Message-State: ANhLgQ0nutDuGRQeptDR9NetqKy2l+fh/DSCKnaeuhcpZqapowQAvkrU
 sFZApNs9WnLobW1k96vuKspqGA==
X-Google-Smtp-Source: ADFU+vvNTuyYcyc0RNLIAiJ3rxRyI0Htp7aw/++NvQEvoF0kIDBEN5aWcXdJguxBmK+NGG90+pWP+g==
X-Received: by 2002:adf:dc92:: with SMTP id r18mr24388809wrj.76.1584975058647; 
 Mon, 23 Mar 2020 07:50:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:57 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:43 +0100
Message-Id: <20200323144950.3018436-45-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 44/51] drm/gm12u320: Use helpers for
 shutdown/suspend/resume
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxzbyB0aGVyZSdzIGEgcmFjZSBpbiB0aGUgZGlzY29ubmVjdCBpbXBsZW1lbmF0aW9uLiBGaXJz
dCBzaHV0CmRvd24sIHRoZW4gdW5wbHVnLCBsZWF2ZXMgYSB3aW5kb3cgd2hlcmUgdXNlcnNwYWNl
IGNvdWxkIHNuZWFrCmluIGFuZCByZXN0YXJ0IHRoZSBlbnRpcmUgbWFjaGluZXJ5LgoKV2l0aCB0
aGlzIHdlIGNhbiBhbHNvIGRlbGV0ZSB0aGUgdmVyeSB1bi1hdG9taWMgZ2xvYmFsIHBpcGVfZW5h
YmxlZAp0cmFja2luZy4KClJldmlld2VkLWJ5OiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRo
YXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4KQ2M6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+CkNjOiAiTm9yYWxm
IFRyw7hubmVzIiA8bm9yYWxmQHRyb25uZXMub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS90aW55
L2dtMTJ1MzIwLmMgfCAxNiArKystLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dGlueS9nbTEydTMyMC5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYwppbmRleCA5
ZmI1NzlmYzM0MTIuLjk2MjdjYmMzZWM2NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Rp
bnkvZ20xMnUzMjAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9nbTEydTMyMC5jCkBAIC04
OCw3ICs4OCw2IEBAIHN0cnVjdCBnbTEydTMyMF9kZXZpY2UgewogCXN0cnVjdCB1c2JfZGV2aWNl
ICAgICAgICAgICAgICAgKnVkZXY7CiAJdW5zaWduZWQgY2hhciAgICAgICAgICAgICAgICAgICAq
Y21kX2J1ZjsKIAl1bnNpZ25lZCBjaGFyICAgICAgICAgICAgICAgICAgICpkYXRhX2J1ZltHTTEy
VTMyMF9CTE9DS19DT1VOVF07Ci0JYm9vbCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGlw
ZV9lbmFibGVkOwogCXN0cnVjdCB7CiAJCWJvb2wgICAgICAgICAgICAgICAgICAgICBydW47CiAJ
CXN0cnVjdCB3b3JrcXVldWVfc3RydWN0ICp3b3JrcTsKQEAgLTU4OSw3ICs1ODgsNiBAQCBzdGF0
aWMgdm9pZCBnbTEydTMyMF9waXBlX2VuYWJsZShzdHJ1Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3Bp
cGUgKnBpcGUsCiAKIAlnbTEydTMyMF9mYl9tYXJrX2RpcnR5KHBsYW5lX3N0YXRlLT5mYiwgJnJl
Y3QpOwogCWdtMTJ1MzIwX3N0YXJ0X2ZiX3VwZGF0ZShnbTEydTMyMCk7Ci0JZ20xMnUzMjAtPnBp
cGVfZW5hYmxlZCA9IHRydWU7CiB9CiAKIHN0YXRpYyB2b2lkIGdtMTJ1MzIwX3BpcGVfZGlzYWJs
ZShzdHJ1Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGUgKnBpcGUpCkBAIC01OTcsNyArNTk1LDYg
QEAgc3RhdGljIHZvaWQgZ20xMnUzMjBfcGlwZV9kaXNhYmxlKHN0cnVjdCBkcm1fc2ltcGxlX2Rp
c3BsYXlfcGlwZSAqcGlwZSkKIAlzdHJ1Y3QgZ20xMnUzMjBfZGV2aWNlICpnbTEydTMyMCA9IHBp
cGUtPmNydGMuZGV2LT5kZXZfcHJpdmF0ZTsKIAogCWdtMTJ1MzIwX3N0b3BfZmJfdXBkYXRlKGdt
MTJ1MzIwKTsKLQlnbTEydTMyMC0+cGlwZV9lbmFibGVkID0gZmFsc2U7CiB9CiAKIHN0YXRpYyB2
b2lkIGdtMTJ1MzIwX3BpcGVfdXBkYXRlKHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZSAq
cGlwZSwKQEAgLTczMywyMiArNzMwLDE3IEBAIHN0YXRpYyBpbnQgZ20xMnUzMjBfdXNiX3Byb2Jl
KHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UsCiBzdGF0aWMgdm9pZCBnbTEydTMyMF91
c2JfZGlzY29ubmVjdChzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50ZXJmYWNlKQogewogCXN0cnVj
dCBkcm1fZGV2aWNlICpkZXYgPSB1c2JfZ2V0X2ludGZkYXRhKGludGVyZmFjZSk7Ci0Jc3RydWN0
IGdtMTJ1MzIwX2RldmljZSAqZ20xMnUzMjAgPSBkZXYtPmRldl9wcml2YXRlOwogCi0JZ20xMnUz
MjBfc3RvcF9mYl91cGRhdGUoZ20xMnUzMjApOwogCWRybV9kZXZfdW5wbHVnKGRldik7CisJZHJt
X2F0b21pY19oZWxwZXJfc2h1dGRvd24oZGV2KTsKIH0KIAogc3RhdGljIF9fbWF5YmVfdW51c2Vk
IGludCBnbTEydTMyMF9zdXNwZW5kKHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UsCiAJ
CQkJCSAgIHBtX21lc3NhZ2VfdCBtZXNzYWdlKQogewogCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYg
PSB1c2JfZ2V0X2ludGZkYXRhKGludGVyZmFjZSk7Ci0Jc3RydWN0IGdtMTJ1MzIwX2RldmljZSAq
Z20xMnUzMjAgPSBkZXYtPmRldl9wcml2YXRlOwogCi0JaWYgKGdtMTJ1MzIwLT5waXBlX2VuYWJs
ZWQpCi0JCWdtMTJ1MzIwX3N0b3BfZmJfdXBkYXRlKGdtMTJ1MzIwKTsKLQotCXJldHVybiAwOwor
CXJldHVybiBkcm1fbW9kZV9jb25maWdfaGVscGVyX3N1c3BlbmQoZGV2KTsKIH0KIAogc3RhdGlj
IF9fbWF5YmVfdW51c2VkIGludCBnbTEydTMyMF9yZXN1bWUoc3RydWN0IHVzYl9pbnRlcmZhY2Ug
KmludGVyZmFjZSkKQEAgLTc1NywxMCArNzQ5LDggQEAgc3RhdGljIF9fbWF5YmVfdW51c2VkIGlu
dCBnbTEydTMyMF9yZXN1bWUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFjZSkKIAlzdHJ1
Y3QgZ20xMnUzMjBfZGV2aWNlICpnbTEydTMyMCA9IGRldi0+ZGV2X3ByaXZhdGU7CiAKIAlnbTEy
dTMyMF9zZXRfZWNvbW9kZShnbTEydTMyMCk7Ci0JaWYgKGdtMTJ1MzIwLT5waXBlX2VuYWJsZWQp
Ci0JCWdtMTJ1MzIwX3N0YXJ0X2ZiX3VwZGF0ZShnbTEydTMyMCk7CiAKLQlyZXR1cm4gMDsKKwly
ZXR1cm4gZHJtX21vZGVfY29uZmlnX2hlbHBlcl9yZXN1bWUoZGV2KTsKIH0KIAogc3RhdGljIGNv
bnN0IHN0cnVjdCB1c2JfZGV2aWNlX2lkIGlkX3RhYmxlW10gPSB7Ci0tIAoyLjI1LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
