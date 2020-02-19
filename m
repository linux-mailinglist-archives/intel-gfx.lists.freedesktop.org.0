Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E5B1641E4
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 724A36EBAE;
	Wed, 19 Feb 2020 10:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF3D6EB58
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:08 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id n10so25585034wrm.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j6THFp6AG4GHfhNGPDUxvX1xl7YrFlEjP83iYxHAXrg=;
 b=II97WZQEemEOCvxmtZjCFmXnOaYUxIaZiCNRWZYfcxh76VhNC/REdqUKnwG4hasj53
 Suzfin86drwenEG5S2qpXsvZloDpklyajmeTRJv5hoSORfJ369gyw2Fsgjn3lrLV0HAB
 6H+oEJipl3XVZMDePBoj9a+Al/z7AZGhQ/rHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j6THFp6AG4GHfhNGPDUxvX1xl7YrFlEjP83iYxHAXrg=;
 b=nmEbrWGCwFXIIc2IumwVK7xGQyq7xvPS1/qakI8Y6jILNoG4aLjf2XAp2vbJlgD5Xr
 MgpaYWEjmPbfkRshX7+DQlMAyg4xYweN2lA6IXz+ik0yrRf/aCOIcGOa1BSS8hHlp4yN
 kNVsxkFrECfk8nTbZUwuDRamT2hGQxhgN0z16qz4FlzF+ozsakwlfOGs2vHM5lv3wLrD
 9MhaAV3MavVdc2Q/o21Gmfv7Mo4YTnLy6kaaREo05DzXNu5RGS7S3/VtkyxKjmPmDGY8
 39KZT1zdVnzPksKjrECrefKy4zqv9zPl4pW09u7ltXcDfnlZykmatHeF/QFPt49McKPH
 aJkw==
X-Gm-Message-State: APjAAAW/G8u+NMG5eP1hs4xaqq9Tu37QriJajZ9WMEZllQHO21Ez90I5
 vrELjS4Iu2ggr398SP7RbY6/2A==
X-Google-Smtp-Source: APXvYqySG1/Os6NThGfBV6gSL6bmM+gb0fX74bVHA0PhviFzs2Z30QO+x1XnwFR00QIFFJ3wtBI6ig==
X-Received: by 2002:adf:f406:: with SMTP id g6mr35537076wro.189.1582107727387; 
 Wed, 19 Feb 2020 02:22:07 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:06 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:00 +0100
Message-Id: <20200219102122.1607365-31-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 30/52] drm/cirrus: Drop explicit
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgY2FuIGV2ZW4gZGVsZXRlIHRoZSBkcm1fZHJpdmVyLnJlbGVhc2UgaG9vayBub3chCgpTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IERh
dmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+CkNjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxA
cmVkaGF0LmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNj
OiAiTm9yYWxmIFRyw7hubmVzIiA8bm9yYWxmQHRyb25uZXMub3JnPgpDYzogU2FtIFJhdm5ib3Jn
IDxzYW1AcmF2bmJvcmcub3JnPgpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1
c2UuZGU+CkNjOiB2aXJ0dWFsaXphdGlvbkBsaXN0cy5saW51eC1mb3VuZGF0aW9uLm9yZwotLS0K
IGRyaXZlcnMvZ3B1L2RybS9jaXJydXMvY2lycnVzLmMgfCAyMSArKysrKysrKysrKy0tLS0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vY2lycnVzL2NpcnJ1cy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2NpcnJ1cy9jaXJydXMuYwppbmRleCBhOWQ3ODlhNTY1MzYuLjZhYzAyODY4MTBlYyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2NpcnJ1cy9jaXJydXMuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vY2lycnVzL2NpcnJ1cy5jCkBAIC01MTAsMTEgKzUxMCwxNSBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGRybV9tb2RlX2NvbmZpZ19mdW5jcyBjaXJydXNfbW9kZV9jb25maWdfZnVuY3MgPSB7
CiAJLmF0b21pY19jb21taXQgPSBkcm1fYXRvbWljX2hlbHBlcl9jb21taXQsCiB9OwogCi1zdGF0
aWMgdm9pZCBjaXJydXNfbW9kZV9jb25maWdfaW5pdChzdHJ1Y3QgY2lycnVzX2RldmljZSAqY2ly
cnVzKQorc3RhdGljIGludCBjaXJydXNfbW9kZV9jb25maWdfaW5pdChzdHJ1Y3QgY2lycnVzX2Rl
dmljZSAqY2lycnVzKQogewogCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSAmY2lycnVzLT5kZXY7
CisJaW50IHJldDsKKworCXJldCA9IGRybV9tb2RlX2NvbmZpZ19pbml0KGRldik7CisJaWYgKHJl
dCkKKwkJcmV0dXJuIHJldDsKIAotCWRybV9tb2RlX2NvbmZpZ19pbml0KGRldik7CiAJZGV2LT5t
b2RlX2NvbmZpZy5taW5fd2lkdGggPSAwOwogCWRldi0+bW9kZV9jb25maWcubWluX2hlaWdodCA9
IDA7CiAJZGV2LT5tb2RlX2NvbmZpZy5tYXhfd2lkdGggPSBDSVJSVVNfTUFYX1BJVENIIC8gMjsK
QEAgLTUyMiwxNSArNTI2LDEyIEBAIHN0YXRpYyB2b2lkIGNpcnJ1c19tb2RlX2NvbmZpZ19pbml0
KHN0cnVjdCBjaXJydXNfZGV2aWNlICpjaXJydXMpCiAJZGV2LT5tb2RlX2NvbmZpZy5wcmVmZXJy
ZWRfZGVwdGggPSAxNjsKIAlkZXYtPm1vZGVfY29uZmlnLnByZWZlcl9zaGFkb3cgPSAwOwogCWRl
di0+bW9kZV9jb25maWcuZnVuY3MgPSAmY2lycnVzX21vZGVfY29uZmlnX2Z1bmNzOworCisJcmV0
dXJuIDA7CiB9CiAKIC8qIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAqLwogCi1zdGF0aWMgdm9pZCBjaXJydXNfcmVsZWFz
ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQotewotCWRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKGRl
dik7Ci19Ci0KIERFRklORV9EUk1fR0VNX0ZPUFMoY2lycnVzX2ZvcHMpOwogCiBzdGF0aWMgc3Ry
dWN0IGRybV9kcml2ZXIgY2lycnVzX2RyaXZlciA9IHsKQEAgLTU0NCw3ICs1NDUsNiBAQCBzdGF0
aWMgc3RydWN0IGRybV9kcml2ZXIgY2lycnVzX2RyaXZlciA9IHsKIAogCS5mb3BzCQkgPSAmY2ly
cnVzX2ZvcHMsCiAJRFJNX0dFTV9TSE1FTV9EUklWRVJfT1BTLAotCS5yZWxlYXNlICAgICAgICAg
PSBjaXJydXNfcmVsZWFzZSwKIH07CiAKIHN0YXRpYyBpbnQgY2lycnVzX3BjaV9wcm9iZShzdHJ1
Y3QgcGNpX2RldiAqcGRldiwKQEAgLTU5MSw3ICs1OTEsOSBAQCBzdGF0aWMgaW50IGNpcnJ1c19w
Y2lfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJaWYgKGNpcnJ1cy0+bW1pbyA9PSBOVUxM
KQogCQlnb3RvIGVycl91bm1hcF92cmFtOwogCi0JY2lycnVzX21vZGVfY29uZmlnX2luaXQoY2ly
cnVzKTsKKwlyZXQgPSBjaXJydXNfbW9kZV9jb25maWdfaW5pdChjaXJydXMpOworCWlmIChyZXQp
CisJCWdvdG8gZXJyX2NsZWFudXA7CiAKIAlyZXQgPSBjaXJydXNfY29ubl9pbml0KGNpcnJ1cyk7
CiAJaWYgKHJldCA8IDApCkBAIC02MTMsNyArNjE1LDYgQEAgc3RhdGljIGludCBjaXJydXNfcGNp
X3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAogCXJldHVybiAwOwogCiBlcnJfY2xlYW51cDoK
LQlkcm1fbW9kZV9jb25maWdfY2xlYW51cChkZXYpOwogCWlvdW5tYXAoY2lycnVzLT5tbWlvKTsK
IGVycl91bm1hcF92cmFtOgogCWlvdW5tYXAoY2lycnVzLT52cmFtKTsKLS0gCjIuMjQuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
