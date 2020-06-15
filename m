Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1205A1F9B9E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 17:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1EC6E347;
	Mon, 15 Jun 2020 15:10:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A8DF6E342
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 15:10:33 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id c71so14990514wmd.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 08:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x8EY5DrwIqYCISh22w/ZjbbsN1OT/NHPAQzEZAe1lHA=;
 b=OxtyBVrTV+qRGlT+fPFx7bRibi/txYJQipLHc/Mvz49GaQ3L0w6ta7OUeGAG1dS2Xc
 EbmgylBwj3z0BREKrK25CZFALyxz/nzBNZoRAKl+RVocHEfX17F2BTIvQg1OFuaLzB5w
 sV6zjjQinP65G9lITxNhbE6lMjx3kESlgtGW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x8EY5DrwIqYCISh22w/ZjbbsN1OT/NHPAQzEZAe1lHA=;
 b=H05mh2EEh/FbZ4y6IBxQ/4Wo2s/YDtSz3XFzQ64Ei279qT0S4lxhG3lzVOT74Hu/kj
 i0Ea3bXJjW7spf8OPE7uU6izeEmyi2vmHistiail10jgdG9noZlRW85TjzthNHGIJWuF
 m4Utt8SPvP7IlPvCybK99o+Tu1OZfxkhMX4sFSsrzLIcyglm3QilqI3/QMnMBm1c8Mdw
 11xqYye+X2nvSXRo0ux5m3yOhfEsMku0Gfoqti+g9LQL16dlEItGd5etCU+530kM8ePD
 GSExluqGWyV+DarGhFRSHCJk221bgSJVokllhI5TAc1W8SokM1XskEauYV0bOnmVEIDw
 zCfA==
X-Gm-Message-State: AOAM533sMngQAq1bKCThQMz7Jxej7nmCk0d+niy5JN4LzuhFeu3CG04s
 AdlLQ6fD56LD+ZggF0yw0zDZZg==
X-Google-Smtp-Source: ABdhPJwjB3ZYz9R27zwG4SdPTcvEvD5BFuWKcak59WiEumHRIBCHUyZUT4AWRBT4ymjUKuMC0Hs2VQ==
X-Received: by 2002:a1c:3b43:: with SMTP id i64mr14109088wma.112.1592233832197; 
 Mon, 15 Jun 2020 08:10:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 50sm26874935wra.1.2020.06.15.08.10.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 08:10:31 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 15 Jun 2020 17:10:26 +0200
Message-Id: <20200615151026.2339113-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/shmem-helper: Fix obj->filp derefence
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
Cc: Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBicm9rZSB0aGF0IGluIG15IHJlZmFjdG9yaW5nOgoKY29tbWl0IDdkMmNkNzJhOWFhM2RmMzYw
NGNhZmQxNjlhMmQ0YTUyNWFmYjY4Y2EKQXV0aG9yOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPgpEYXRlOiAgIEZyaSBNYXkgMjkgMTY6MDU6NDIgMjAyMCArMDIwMAoKICAg
IGRybS9zaG1lbS1oZWxwZXJzOiBTaW1wbGlmeSBkbWEtYnVmIGltcG9ydGluZwoKUmVwb3J0ZWQt
Ynk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpGaXhlczogN2QyY2Q3
MmE5YWEzICgiZHJtL3NobWVtLWhlbHBlcnM6IFNpbXBsaWZ5IGRtYS1idWYgaW1wb3J0aW5nIikK
Q2M6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+CkNjOiBU
aG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6IEdlcmQgSG9mZm1hbm4g
PGtyYXhlbEByZWRoYXQuY29tPgpDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KQ2M6
IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgpTaWduZWQtb2ZmLWJ5OiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
ZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyB8IDIwICsrKysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX3NobWVtX2hlbHBlci5jCmluZGV4IDBhN2UzYjY2NGJjMi4uM2U3ZWU0MDdhMTdjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwpAQCAtNzAsMTUgKzcwLDE3IEBA
IF9fZHJtX2dlbV9zaG1lbV9jcmVhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc2l6ZV90IHNp
emUsIGJvb2wgcHJpdmF0ZSkKIAltdXRleF9pbml0KCZzaG1lbS0+dm1hcF9sb2NrKTsKIAlJTklU
X0xJU1RfSEVBRCgmc2htZW0tPm1hZHZfbGlzdCk7CiAKLQkvKgotCSAqIE91ciBidWZmZXJzIGFy
ZSBrZXB0IHBpbm5lZCwgc28gYWxsb2NhdGluZyB0aGVtCi0JICogZnJvbSB0aGUgTU9WQUJMRSB6
b25lIGlzIGEgcmVhbGx5IGJhZCBpZGVhLCBhbmQKLQkgKiBjb25mbGljdHMgd2l0aCBDTUEuIFNl
ZSBjb21tZW50cyBhYm92ZSBuZXdfaW5vZGUoKQotCSAqIHdoeSB0aGlzIGlzIHJlcXVpcmVkIF9h
bmRfIGV4cGVjdGVkIGlmIHlvdSdyZQotCSAqIGdvaW5nIHRvIHBpbiB0aGVzZSBwYWdlcy4KLQkg
Ki8KLQltYXBwaW5nX3NldF9nZnBfbWFzayhvYmotPmZpbHAtPmZfbWFwcGluZywgR0ZQX0hJR0hV
U0VSIHwKLQkJCSAgICAgX19HRlBfUkVUUllfTUFZRkFJTCB8IF9fR0ZQX05PV0FSTik7CisJaWYg
KCFwcml2YXRlKSB7CisJCS8qCisJCSAqIE91ciBidWZmZXJzIGFyZSBrZXB0IHBpbm5lZCwgc28g
YWxsb2NhdGluZyB0aGVtCisJCSAqIGZyb20gdGhlIE1PVkFCTEUgem9uZSBpcyBhIHJlYWxseSBi
YWQgaWRlYSwgYW5kCisJCSAqIGNvbmZsaWN0cyB3aXRoIENNQS4gU2VlIGNvbW1lbnRzIGFib3Zl
IG5ld19pbm9kZSgpCisJCSAqIHdoeSB0aGlzIGlzIHJlcXVpcmVkIF9hbmRfIGV4cGVjdGVkIGlm
IHlvdSdyZQorCQkgKiBnb2luZyB0byBwaW4gdGhlc2UgcGFnZXMuCisJCSAqLworCQltYXBwaW5n
X3NldF9nZnBfbWFzayhvYmotPmZpbHAtPmZfbWFwcGluZywgR0ZQX0hJR0hVU0VSIHwKKwkJCQkg
ICAgIF9fR0ZQX1JFVFJZX01BWUZBSUwgfCBfX0dGUF9OT1dBUk4pOworCX0KIAogCXJldHVybiBz
aG1lbTsKIAotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
