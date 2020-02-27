Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7A5172676
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:16:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E8C6ECE7;
	Thu, 27 Feb 2020 18:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C3FA6ECE3
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:15:50 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id x7so2145447wrr.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mt0LsOXPHC2Mb9wycvJ+FxYXLYhKToWbMHDbBuIFXi8=;
 b=DYs6vHmriVHX67Do1X6BVtcvGgrwkfh1uFCJ5bUu3S68/brefQJUyCX5QVuZM9FrZM
 rLUe+sE3UyXV7/zpSyzfQSrfG1JsEfBvWUxTZsrUDZmKBd33EFjCf91bmtkHfhLfxcxD
 uU6Nd/t/Lkbj7oo2JYUWbIxXeLZnNDh3H4Vsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mt0LsOXPHC2Mb9wycvJ+FxYXLYhKToWbMHDbBuIFXi8=;
 b=pXuw4FKs2V2l8QrXiBJHcddNiEHolMwQFAmk+JeqneLecwcAFRRZ/Wk6aFStuNDIKi
 yjScmKdzciupEpDd0+1gAB3830pVfxQMoXAtcXvjkB5frf0QAYNOO2/avqV/kWVjMzRS
 NG2qK1NSQCvXQzWIv6ySl4zBzYz9rZU2O4oSvmgDxDGwLaMSLH2Kq9rbEibKowasH4EV
 YOqW1O+DZpUnWzzSft0uYq2DFah4ZctoD+bvcFhAQbQibFwa+ro/TSN4ULGWdLUAmEOp
 idZn2j+brQjY6nwblHOyNnxP737N8w6f2Kvb+tMhHyV5S2frht8HUEOb43J8ysVhNcPM
 ZHaQ==
X-Gm-Message-State: APjAAAVfj8WjjqIWyVvCNSp4DoPWHZ+ph0GCJ5YjUgWOKsdAHVRovavh
 wPK2udmcdPSCfXMej5EMbv9FUwWuixc=
X-Google-Smtp-Source: APXvYqyGX7uJqxJ2Tp5Uu8wZY2N9Xk5sB+wO3ckPRP+zlrzO3k4cbPFBKRQHIbLjECx4YCFFEFONEw==
X-Received: by 2002:adf:fc08:: with SMTP id i8mr151945wrr.104.1582827348717;
 Thu, 27 Feb 2020 10:15:48 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:48 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:46 +0100
Message-Id: <20200227181522.2711142-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/51] drm/repaper: Use drmm_add_final_kfree
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
 m.felsch@pengutronix.de,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@intel.com>, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGlzIHdlIGNhbiBkcm9wIHRoZSBmaW5hbCBrZnJlZSBmcm9tIHRoZSByZWxlYXNlIGZ1
bmN0aW9uLgoKUmV2aWV3ZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3Jn
PgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4K
Q2M6ICJOb3JhbGYgVHLDuG5uZXMiIDxub3JhbGZAdHJvbm5lcy5vcmc+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL3RpbnkvcmVwYXBlci5jIHwgNSArKy0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGlu
eS9yZXBhcGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9yZXBhcGVyLmMKaW5kZXggZjVlYmNh
ZjdlZTNhLi5kZjU2NTRlZjUzZWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90aW55L3Jl
cGFwZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9yZXBhcGVyLmMKQEAgLTMxLDYgKzMx
LDcgQEAKICNpbmNsdWRlIDxkcm0vZHJtX2Zvcm1hdF9oZWxwZXIuaD4KICNpbmNsdWRlIDxkcm0v
ZHJtX2dlbV9jbWFfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9nZW1fZnJhbWVidWZmZXJf
aGVscGVyLmg+CisjaW5jbHVkZSA8ZHJtL2RybV9tYW5hZ2VkLmg+CiAjaW5jbHVkZSA8ZHJtL2Ry
bV9tb2Rlcy5oPgogI2luY2x1ZGUgPGRybS9kcm1fcmVjdC5oPgogI2luY2x1ZGUgPGRybS9kcm1f
cHJvYmVfaGVscGVyLmg+CkBAIC05MTAsMTMgKzkxMSwxMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGRybV9tb2RlX2NvbmZpZ19mdW5jcyByZXBhcGVyX21vZGVfY29uZmlnX2Z1bmNzID0gewogCiBz
dGF0aWMgdm9pZCByZXBhcGVyX3JlbGVhc2Uoc3RydWN0IGRybV9kZXZpY2UgKmRybSkKIHsKLQlz
dHJ1Y3QgcmVwYXBlcl9lcGQgKmVwZCA9IGRybV90b19lcGQoZHJtKTsKLQogCURSTV9ERUJVR19E
UklWRVIoIlxuIik7CiAKIAlkcm1fbW9kZV9jb25maWdfY2xlYW51cChkcm0pOwogCWRybV9kZXZf
ZmluaShkcm0pOwotCWtmcmVlKGVwZCk7CiB9CiAKIHN0YXRpYyBjb25zdCB1aW50MzJfdCByZXBh
cGVyX2Zvcm1hdHNbXSA9IHsKQEAgLTEwMjQsNiArMTAyMiw3IEBAIHN0YXRpYyBpbnQgcmVwYXBl
cl9wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQogCQlrZnJlZShlcGQpOwogCQlyZXR1cm4g
cmV0OwogCX0KKwlkcm1tX2FkZF9maW5hbF9rZnJlZShkcm0sIGVwZCk7CiAKIAlkcm1fbW9kZV9j
b25maWdfaW5pdChkcm0pOwogCWRybS0+bW9kZV9jb25maWcuZnVuY3MgPSAmcmVwYXBlcl9tb2Rl
X2NvbmZpZ19mdW5jczsKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
