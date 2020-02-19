Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E0B16418C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:22:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 658F86EB52;
	Wed, 19 Feb 2020 10:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2F746EB30
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:21:51 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id z3so27595555wru.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:21:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Dh+h123bCHKEifl005lcLLj+b1SNMqbXcgH++6BKO1o=;
 b=iTjPsPk64jJsWTNo2ENnof9YjZO5s2n0SkROUEQHyg9XcovxzPHyLkZGo88QPvTVZq
 BlGIq9rXTHkbWSKHh3Eu7H33LZKAaiQ3mwjKg9UB/Jx7qQSND9pk5L7RL4qSULMmlL6E
 VCdJoMRI0Aie6qZUxs2ej0N2ExxIR5WEp8lZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dh+h123bCHKEifl005lcLLj+b1SNMqbXcgH++6BKO1o=;
 b=jLURVaQcwcYZGE9GQDP/9JiihHkCrkpvG+uyF2xOnIuprPdbGsK34b8GJEQoIBsT8/
 IqJt/4y5hoYL9efCSbxrJw1oLDWdUW3kwmvAW0uUnuPCf4OFy8RIyEO8UXljT8Z/twRN
 AFAdTvhDmchZ0Ke5LbFyUPpmjvxtsLFY3GB9hNfxFweL+PRRHJsIfFUhUCTEhzK8X1Fp
 VS+LbTjUC2C3FWSdaHjP9ApG1rnS72oy/bha1pBs6HJSW2QMYL0pjQtC7q3gK98Ve0mD
 qOFMyTLhc5EyLgGP5hizno+MUeUd266VfM2gzBxyjd88JGxZ9Jn19srvAJBUzoQySYOw
 EZ5A==
X-Gm-Message-State: APjAAAUfRx+hXfBtE5kTqVy1FSfkWL4YwNPlVtCDT6lziCKoBNR/fPBF
 yFJoXADfsFm197hVThn6R5B8Cw==
X-Google-Smtp-Source: APXvYqz1NarCJJY9ejf8GJKo+4Tu5qDpSLiZO3ySfykZSN4LQuAKGymih2Kog1Rx9tSbEZoirMHcow==
X-Received: by 2002:adf:c54e:: with SMTP id s14mr33820773wrf.385.1582107710557; 
 Wed, 19 Feb 2020 02:21:50 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.21.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:21:50 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:20:46 +0100
Message-Id: <20200219102122.1607365-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/52] drm/repaper: Use drmm_add_final_kfree
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
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGlzIHdlIGNhbiBkcm9wIHRoZSBmaW5hbCBrZnJlZSBmcm9tIHRoZSByZWxlYXNlIGZ1
bmN0aW9uLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRl
bC5jb20+CkNjOiAiTm9yYWxmIFRyw7hubmVzIiA8bm9yYWxmQHRyb25uZXMub3JnPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS90aW55L3JlcGFwZXIuYyB8IDUgKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3RpbnkvcmVwYXBlci5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvcmVwYXBlci5jCmluZGV4
IGY1ZWJjYWY3ZWUzYS4uZGY1NjU0ZWY1M2VlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
dGlueS9yZXBhcGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvcmVwYXBlci5jCkBAIC0z
MSw2ICszMSw3IEBACiAjaW5jbHVkZSA8ZHJtL2RybV9mb3JtYXRfaGVscGVyLmg+CiAjaW5jbHVk
ZSA8ZHJtL2RybV9nZW1fY21hX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1fZ2VtX2ZyYW1l
YnVmZmVyX2hlbHBlci5oPgorI2luY2x1ZGUgPGRybS9kcm1fbWFuYWdlZC5oPgogI2luY2x1ZGUg
PGRybS9kcm1fbW9kZXMuaD4KICNpbmNsdWRlIDxkcm0vZHJtX3JlY3QuaD4KICNpbmNsdWRlIDxk
cm0vZHJtX3Byb2JlX2hlbHBlci5oPgpAQCAtOTEwLDEzICs5MTEsMTAgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBkcm1fbW9kZV9jb25maWdfZnVuY3MgcmVwYXBlcl9tb2RlX2NvbmZpZ19mdW5jcyA9
IHsKIAogc3RhdGljIHZvaWQgcmVwYXBlcl9yZWxlYXNlKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0p
CiB7Ci0Jc3RydWN0IHJlcGFwZXJfZXBkICplcGQgPSBkcm1fdG9fZXBkKGRybSk7Ci0KIAlEUk1f
REVCVUdfRFJJVkVSKCJcbiIpOwogCiAJZHJtX21vZGVfY29uZmlnX2NsZWFudXAoZHJtKTsKIAlk
cm1fZGV2X2ZpbmkoZHJtKTsKLQlrZnJlZShlcGQpOwogfQogCiBzdGF0aWMgY29uc3QgdWludDMy
X3QgcmVwYXBlcl9mb3JtYXRzW10gPSB7CkBAIC0xMDI0LDYgKzEwMjIsNyBAQCBzdGF0aWMgaW50
IHJlcGFwZXJfcHJvYmUoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKIAkJa2ZyZWUoZXBkKTsKIAkJ
cmV0dXJuIHJldDsKIAl9CisJZHJtbV9hZGRfZmluYWxfa2ZyZWUoZHJtLCBlcGQpOwogCiAJZHJt
X21vZGVfY29uZmlnX2luaXQoZHJtKTsKIAlkcm0tPm1vZGVfY29uZmlnLmZ1bmNzID0gJnJlcGFw
ZXJfbW9kZV9jb25maWdfZnVuY3M7Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
