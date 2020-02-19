Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1A516418A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:22:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D43516EB48;
	Wed, 19 Feb 2020 10:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 018E86E9EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:21:39 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id p9so5869308wmc.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zBGyfIEZ/eK+u9ah92tPDVEX0uvnD8lrrYEtM+U9GUc=;
 b=P1ZsrkgJxTP9s/2P6DLwoBhGIJkZ19RpM+wzVbE58Bb9buV1U51bfuDJ/dNa7M69Fn
 yW9OvdxS88holpFWsCIX+kLsfUe2ENd78QB0+g7jR/gWMqtE5fgP8NgwmnRy62cMo2PO
 87jncis7ubaWNpH1p3ulJsBsaJ0LJpSDtwHxo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zBGyfIEZ/eK+u9ah92tPDVEX0uvnD8lrrYEtM+U9GUc=;
 b=paa/O1peU2tSXS7iA26vPvJUPysM7vqGnDVkmn1j1GExpTT1hG+T3cCZnNmANvKvdO
 IJrgiy2pN9gckd70KBECZ+Q5BWycRw382tuiNNFG/Q+Qi+p0LnY9cZ4kjqY948DWYtjz
 LDR+pmV95wvNiGXH/16EinjB4QR78ylLIoAIBnF8KHEAi073hTXME8IKgpswvIX/ltLr
 wNmldV26jI84mWmq22/VVLlbNkB9rg0u4zwRzfEyqZs6supLcY7pzmnDYJeK7Z8Bs9km
 hnCuSgmSxRx3PD6sWW9o0k0d5F0GuZxQuvHISxyZHYebV+cGchFX8C7pz2c4vwjYjOrQ
 KEww==
X-Gm-Message-State: APjAAAWvB/AWIKJCgDocwCWTnkVqQWb6c8eoIUfqmoCk8PPuuJMvDOT4
 QIjKBeFGl1niXc4o2JykxFAi9g==
X-Google-Smtp-Source: APXvYqxTJAXLjwbfcfMxnaRQbeq++9QHmYOsZJZEWOPdtZBwNtKc/MdjXoIgM2TScbkwzNeDtXTymw==
X-Received: by 2002:a1c:7205:: with SMTP id n5mr9508591wmc.9.1582107698627;
 Wed, 19 Feb 2020 02:21:38 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.21.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:21:38 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:20:36 +0100
Message-Id: <20200219102122.1607365-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/52] drm/udl: Use drmm_add_final_kfree
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
Cc: Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGlzIHdlIGNhbiBkcm9wIHRoZSBmaW5hbCBrZnJlZSBmcm9tIHRoZSByZWxlYXNlIGZ1
bmN0aW9uLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRl
bC5jb20+CkNjOiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRoYXQuY29tPgpDYzogU2VhbiBQYXVs
IDxzZWFuQHBvb3JseS5ydW4+CkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3Vz
ZS5kZT4KQ2M6IEVtaWwgVmVsaWtvdiA8ZW1pbC5sLnZlbGlrb3ZAZ21haWwuY29tPgpDYzogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6ICJOb3JhbGYgVHLDuG5uZXMi
IDxub3JhbGZAdHJvbm5lcy5vcmc+CkNjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25p
eC5kZT4KQ2M6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vdWRsL3VkbF9kcnYuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxf
ZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vdWRsL3VkbF9kcnYuYwppbmRleCBlNmMxY2Q3N2Q0ZDQu
LmQ1Yjg5NzExYWIxZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxfZHJ2LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL3VkbC91ZGxfZHJ2LmMKQEAgLTEwLDYgKzEwLDcgQEAKICNp
bmNsdWRlIDxkcm0vZHJtX2ZiX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1fZmlsZS5oPgog
I2luY2x1ZGUgPGRybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5oPgorI2luY2x1ZGUgPGRybS9kcm1f
bWFuYWdlZC5oPgogI2luY2x1ZGUgPGRybS9kcm1faW9jdGwuaD4KICNpbmNsdWRlIDxkcm0vZHJt
X3Byb2JlX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4KQEAgLTM4LDcgKzM5
LDYgQEAgc3RhdGljIHZvaWQgdWRsX2RyaXZlcl9yZWxlYXNlKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYpCiAJdWRsX2ZpbmkoZGV2KTsKIAl1ZGxfbW9kZXNldF9jbGVhbnVwKGRldik7CiAJZHJtX2Rl
dl9maW5pKGRldik7Ci0Ja2ZyZWUoZGV2KTsKIH0KIAogc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVy
IGRyaXZlciA9IHsKQEAgLTc3LDYgKzc3LDcgQEAgc3RhdGljIHN0cnVjdCB1ZGxfZGV2aWNlICp1
ZGxfZHJpdmVyX2NyZWF0ZShzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50ZXJmYWNlKQogCiAJdWRs
LT51ZGV2ID0gdWRldjsKIAl1ZGwtPmRybS5kZXZfcHJpdmF0ZSA9IHVkbDsKKwlkcm1tX2FkZF9m
aW5hbF9rZnJlZSgmdWRsLT5kcm0sIHVkbCk7CiAKIAlyID0gdWRsX2luaXQodWRsKTsKIAlpZiAo
cikgewotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
