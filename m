Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9086017DC0
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 18:09:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7CB8981D;
	Wed,  8 May 2019 16:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com
 [IPv6:2607:f8b0:4864:20::844])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD3B1897FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 16:09:32 +0000 (UTC)
Received: by mail-qt1-x844.google.com with SMTP id j6so23860169qtq.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 May 2019 09:09:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jBDdhPb+qvn/dBHPY34W6OYhoJDYrZsCUgdFWJmXhQg=;
 b=nnF9+zwpqfdbK/TBDkZ2y7dQmxSahI5h3j7CFLHk3K9/FPLzZOXoswFSu8MZL+Seqs
 tbUCTdNzgJBnFcshwrkZuYlr6heQ+wc/1xPZ4J1WDUxO7+dpEUbQuxWElY51k9ynANAp
 OuqedfdQUHQW7N7lA8EHX8glRiaCe19tRjCf1kAfZtu7Bs1Uam89OxVJVL1whKJ9WnCf
 LgmCmkShJSnyHW4Z1bYSVhZiUrCOCEfOvqYUwmvss3Bum7kpAO4hanexRJMcZGjht074
 RRDq/RfJkmOXfS05OguFhOwiEp955kWg/rYkuMw2GYtqSd7XOGk0sGJoAG0rxFQD/9QZ
 mAXQ==
X-Gm-Message-State: APjAAAV/DHdPAQ5lgQskbclmMjadvx1NjqhqlKIDnwvHyY6phUI3Waia
 jsxcC7PVcJnyT6D9lk/KA4A3OQ==
X-Google-Smtp-Source: APXvYqz3BkF1Qr3TY1H40IC6hNnysDhF/ttV0uVWbbCMkYDmRlBpGzF2CKd00XJHZiO8yMtinvrRWw==
X-Received: by 2002:a0c:c48c:: with SMTP id u12mr31976887qvi.107.1557331771260; 
 Wed, 08 May 2019 09:09:31 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id s50sm10936877qts.39.2019.05.08.09.09.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 09:09:30 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Date: Wed,  8 May 2019 12:09:09 -0400
Message-Id: <20190508160920.144739-5-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190508160920.144739-1-sean@poorly.run>
References: <20190508160920.144739-1-sean@poorly.run>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jBDdhPb+qvn/dBHPY34W6OYhoJDYrZsCUgdFWJmXhQg=;
 b=Ft9PFxIBMfyN28mPrgM6P62aRECybosI1mJJaW9qfxvLpvdaBI+WzNOlIIMaOlZG5S
 oao1Qti+HwbpkPomoqCNo6BjP/zkxfT88z2hQz3RMrtopjfZTvOsXN3i1DI5TU51Cbu2
 vF9MvwH3EtJo8a7iH9z79T267LWl0Nfukisoy7yPzPfXtSzjd6eH3ioAl3Qb9+GTlKLW
 bRwC1OMUUuWJkaIwbY7ulWBY1isF6vSnaA51P7jKtk14PSeqz6p6n+t8lEmQV2OHOcUl
 go9psES4Sd8dIznn6RX8ek4wvpC9lJHkAKLq3hcHgeiF/a0BHk+YXx3J9M7rFhTbKwn9
 3lbw==
Subject: [Intel-gfx] [PATCH v4 04/11] drm: Convert
 connector_helper_funcs->atomic_check to accept drm_atomic_state
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, nouveau@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Sean Paul <seanpaul@chromium.org>, Ben Skeggs <bskeggs@redhat.com>,
 intel-gfx@lists.freedesktop.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+CgpFdmVyeW9uZSB3aG8gaW1w
bGVtZW50cyBjb25uZWN0b3JfaGVscGVyX2Z1bmNzLT5hdG9taWNfY2hlY2sgcmVhY2hlcwppbnRv
IHRoZSBjb25uZWN0b3Igc3RhdGUgdG8gZ2V0IHRoZSBhdG9taWMgc3RhdGUuIEluc3RlYWQgb2Yg
Y29udGludWluZwp0aGlzIHBhdHRlcm4sIGNoYW5nZSB0aGUgY2FsbGJhY2sgc2lnbmF0dXJlIHRv
IGp1c3QgZ2l2ZSBhdG9taWMgc3RhdGUKYW5kIGxldCB0aGUgZHJpdmVyIGRldGVybWluZSB3aGF0
IGl0IGRvZXMgYW5kIGRvZXMgbm90IG5lZWQgZnJvbSBpdC4KCkV2ZW50dWFsbHkgYWxsIGF0b21p
YyBmdW5jdGlvbnMgc2hvdWxkIGRvIHRoaXMsIGJ1dCB0aGF0J3MganVzdCB0b28gbXVjaApidXN5
IHdvcmsgZm9yIG1lLgoKQ2hhbmdlcyBpbiB2MzoKLSBBZGRlZCB0byB0aGUgc2V0CkNoYW5nZXMg
aW4gdjQ6Ci0gTm9uZQoKTGluayB0byB2MzogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3BhdGNoL21zZ2lkLzIwMTkwNTAyMTk0OTU2LjIxODQ0MS01LXNlYW5AcG9vcmx5LnJ1bgoK
Q2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAbGludXguaW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5A
bGludXguaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PgpDYzogQmVuIFNrZWdncyA8YnNrZWdnc0ByZWRoYXQuY29tPgpDYzogTGF1cmVudCBQaW5jaGFy
dCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgpDYzogS2llcmFuIEJpbmdoYW0g
PGtpZXJhbi5iaW5naGFtK3JlbmVzYXNAaWRlYXNvbmJvYXJkLmNvbT4KQ2M6IEVyaWMgQW5ob2x0
IDxlcmljQGFuaG9sdC5uZXQ+CkFja2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwu
Y2g+ClNpZ25lZC1vZmYtYnk6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX2hlbHBlci5jICAgICAgfCAgNCArKy0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9hdG9taWMuYyAgICAgIHwgIDggKysrKystLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX21zdC5jICAgICAgfCAgNyArKysrLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3Nkdm8uYyAgICAgICAgfCAgOSArKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3R2LmMgICAgICAgICAgfCAgOCArKysrKy0tLQogZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvZGlzcG52NTAvZGlzcC5jICB8ICA1ICsrKy0tCiBkcml2ZXJzL2dwdS9kcm0vcmNh
ci1kdS9yY2FyX2x2ZHMuYyAgICAgIHwgMTIgKysrKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0v
dmM0L3ZjNF90eHAuYyAgICAgICAgICAgIHwgIDcgKysrKy0tLQogaW5jbHVkZS9kcm0vZHJtX21v
ZGVzZXRfaGVscGVyX3Z0YWJsZXMuaCB8ICAyICstCiAxMCBmaWxlcyBjaGFuZ2VkLCAzNyBpbnNl
cnRpb25zKCspLCAyNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2F0b21pY19oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX2hlbHBlci5j
CmluZGV4IGU4YjcxODdhODQ5NC4uZWU5NDVkNmYxY2JhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vZHJtX2F0b21pY19oZWxwZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21p
Y19oZWxwZXIuYwpAQCAtNjgzLDcgKzY4Myw3IEBAIGRybV9hdG9taWNfaGVscGVyX2NoZWNrX21v
ZGVzZXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJfQogCiAJCWlmIChmdW5jcy0+YXRvbWlj
X2NoZWNrKQotCQkJcmV0ID0gZnVuY3MtPmF0b21pY19jaGVjayhjb25uZWN0b3IsIG5ld19jb25u
ZWN0b3Jfc3RhdGUpOworCQkJcmV0ID0gZnVuY3MtPmF0b21pY19jaGVjayhjb25uZWN0b3IsIHN0
YXRlKTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7CiAKQEAgLTcyNSw3ICs3MjUsNyBAQCBk
cm1fYXRvbWljX2hlbHBlcl9jaGVja19tb2Rlc2V0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJ
CQljb250aW51ZTsKIAogCQlpZiAoZnVuY3MtPmF0b21pY19jaGVjaykKLQkJCXJldCA9IGZ1bmNz
LT5hdG9taWNfY2hlY2soY29ubmVjdG9yLCBuZXdfY29ubmVjdG9yX3N0YXRlKTsKKwkJCXJldCA9
IGZ1bmNzLT5hdG9taWNfY2hlY2soY29ubmVjdG9yLCBzdGF0ZSk7CiAJCWlmIChyZXQpCiAJCQly
ZXR1cm4gcmV0OwogCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2F0
b21pYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfYXRvbWljLmMKaW5kZXggYjg0NGU4
ODQwYzZmLi5lOGE1YjgyZTkyNDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2F0b21pYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2F0b21pYy5jCkBA
IC0xMDMsMTIgKzEwMywxNCBAQCBpbnQgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3JfYXRvbWljX3Nl
dF9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogfQogCiBpbnQgaW50
ZWxfZGlnaXRhbF9jb25uZWN0b3JfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpj
b25uLAotCQkJCQkgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm5ld19zdGF0ZSkKKwkJCQkJ
IHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
cl9zdGF0ZSAqbmV3X3N0YXRlID0KKwkJZHJtX2F0b21pY19nZXRfbmV3X2Nvbm5lY3Rvcl9zdGF0
ZShzdGF0ZSwgY29ubik7CiAJc3RydWN0IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlICpu
ZXdfY29ubl9zdGF0ZSA9CiAJCXRvX2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKG5ld19z
dGF0ZSk7CiAJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9sZF9zdGF0ZSA9Ci0JCWRybV9h
dG9taWNfZ2V0X29sZF9jb25uZWN0b3Jfc3RhdGUobmV3X3N0YXRlLT5zdGF0ZSwgY29ubik7CisJ
CWRybV9hdG9taWNfZ2V0X29sZF9jb25uZWN0b3Jfc3RhdGUoc3RhdGUsIGNvbm4pOwogCXN0cnVj
dCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSAqb2xkX2Nvbm5fc3RhdGUgPQogCQl0b19p
bnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZShvbGRfc3RhdGUpOwogCXN0cnVjdCBkcm1fY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKQEAgLTExOCw3ICsxMjAsNyBAQCBpbnQgaW50ZWxfZGlnaXRh
bF9jb25uZWN0b3JfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uLAogCWlm
ICghbmV3X3N0YXRlLT5jcnRjKQogCQlyZXR1cm4gMDsKIAotCWNydGNfc3RhdGUgPSBkcm1fYXRv
bWljX2dldF9uZXdfY3J0Y19zdGF0ZShuZXdfc3RhdGUtPnN0YXRlLCBuZXdfc3RhdGUtPmNydGMp
OworCWNydGNfc3RhdGUgPSBkcm1fYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgbmV3
X3N0YXRlLT5jcnRjKTsKIAogCS8qCiAJICogVGhlc2UgcHJvcGVydGllcyBhcmUgaGFuZGxlZCBi
eSBmYXN0c2V0LCBhbmQgbWlnaHQgbm90IGVuZApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9tc3Qu
YwppbmRleCAxOWQ4MWNlZjJhYjYuLjg5Y2ZlYzEyOGJhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHBfbXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHBfbXN0LmMKQEAgLTE0Myw5ICsxNDMsMTAgQEAgc3RhdGljIGludCBpbnRlbF9kcF9tc3Rf
Y29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAKIHN0YXRpYyBp
bnQKIGludGVsX2RwX21zdF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5l
Y3RvciwKLQkJCSAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm5ld19jb25uX3N0YXRlKQor
CQkJICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCiB7Ci0Jc3RydWN0IGRybV9hdG9t
aWNfc3RhdGUgKnN0YXRlID0gbmV3X2Nvbm5fc3RhdGUtPnN0YXRlOworCXN0cnVjdCBkcm1fY29u
bmVjdG9yX3N0YXRlICpuZXdfY29ubl9zdGF0ZSA9CisJCWRybV9hdG9taWNfZ2V0X25ld19jb25u
ZWN0b3Jfc3RhdGUoc3RhdGUsIGNvbm5lY3Rvcik7CiAJc3RydWN0IGRybV9jb25uZWN0b3Jfc3Rh
dGUgKm9sZF9jb25uX3N0YXRlID0KIAkJZHJtX2F0b21pY19nZXRfb2xkX2Nvbm5lY3Rvcl9zdGF0
ZShzdGF0ZSwgY29ubmVjdG9yKTsKIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25u
ZWN0b3IgPQpAQCAtMTU1LDcgKzE1Niw3IEBAIGludGVsX2RwX21zdF9hdG9taWNfY2hlY2soc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAlzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9n
eV9tZ3IgKm1ncjsKIAlpbnQgcmV0OwogCi0JcmV0ID0gaW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jf
YXRvbWljX2NoZWNrKGNvbm5lY3RvciwgbmV3X2Nvbm5fc3RhdGUpOworCXJldCA9IGludGVsX2Rp
Z2l0YWxfY29ubmVjdG9yX2F0b21pY19jaGVjayhjb25uZWN0b3IsIHN0YXRlKTsKIAlpZiAocmV0
KQogCQlyZXR1cm4gcmV0OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oCmluZGV4IGY4YzdiMjkx
ZmRjMy4uODg1NzFiOGU4ZDYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaApAQCAtMjQ4MSw3
ICsyNDgxLDcgQEAgaW50IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX2F0b21pY19zZXRfcHJvcGVy
dHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAkJCQkJCXN0cnVjdCBkcm1fcHJv
cGVydHkgKnByb3BlcnR5LAogCQkJCQkJdTY0IHZhbCk7CiBpbnQgaW50ZWxfZGlnaXRhbF9jb25u
ZWN0b3JfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uLAotCQkJCQkgc3Ry
dWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm5ld19zdGF0ZSk7CisJCQkJCSBzdHJ1Y3QgZHJtX2F0
b21pY19zdGF0ZSAqc3RhdGUpOwogc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKgogaW50ZWxf
ZGlnaXRhbF9jb25uZWN0b3JfZHVwbGljYXRlX3N0YXRlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpj
b25uZWN0b3IpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zZHZv
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zZHZvLmMKaW5kZXggNjhmNDk3NDkzZDQz
Li43MmVhMTY0Yjk3MWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nk
dm8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zZHZvLmMKQEAgLTIzNDIsOSAr
MjM0MiwxMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3JfZnVuY3MgaW50ZWxf
c2R2b19jb25uZWN0b3JfZnVuY3MgPSB7CiB9OwogCiBzdGF0aWMgaW50IGludGVsX3Nkdm9fYXRv
bWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uLAotCQkJCSAgIHN0cnVjdCBkcm1f
Y29ubmVjdG9yX3N0YXRlICpuZXdfY29ubl9zdGF0ZSkKKwkJCQkgICBzdHJ1Y3QgZHJtX2F0b21p
Y19zdGF0ZSAqc3RhdGUpCiB7Ci0Jc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlID0gbmV3
X2Nvbm5fc3RhdGUtPnN0YXRlOworCXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpuZXdfY29u
bl9zdGF0ZSA9CisJCWRybV9hdG9taWNfZ2V0X25ld19jb25uZWN0b3Jfc3RhdGUoc3RhdGUsIGNv
bm4pOwogCXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpvbGRfY29ubl9zdGF0ZSA9CiAJCWRy
bV9hdG9taWNfZ2V0X29sZF9jb25uZWN0b3Jfc3RhdGUoc3RhdGUsIGNvbm4pOwogCXN0cnVjdCBp
bnRlbF9zZHZvX2Nvbm5lY3Rvcl9zdGF0ZSAqb2xkX3N0YXRlID0KQEAgLTIzNTYsMTMgKzIzNTcs
MTMgQEAgc3RhdGljIGludCBpbnRlbF9zZHZvX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqY29ubiwKIAkgICAgKG1lbWNtcCgmb2xkX3N0YXRlLT50diwgJm5ld19zdGF0ZS0+dHYs
IHNpemVvZihvbGRfc3RhdGUtPnR2KSkgfHwKIAkgICAgIG1lbWNtcCgmb2xkX2Nvbm5fc3RhdGUt
PnR2LCAmbmV3X2Nvbm5fc3RhdGUtPnR2LCBzaXplb2Yob2xkX2Nvbm5fc3RhdGUtPnR2KSkpKSB7
CiAJCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9Ci0JCQlkcm1fYXRvbWljX2dl
dF9uZXdfY3J0Y19zdGF0ZShuZXdfY29ubl9zdGF0ZS0+c3RhdGUsCisJCQlkcm1fYXRvbWljX2dl
dF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwKIAkJCQkJCSAgICAgIG5ld19jb25uX3N0YXRlLT5jcnRj
KTsKIAogCQljcnRjX3N0YXRlLT5jb25uZWN0b3JzX2NoYW5nZWQgPSB0cnVlOwogCX0KIAotCXJl
dHVybiBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9hdG9taWNfY2hlY2soY29ubiwgbmV3X2Nvbm5f
c3RhdGUpOworCXJldHVybiBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9hdG9taWNfY2hlY2soY29u
biwgc3RhdGUpOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3JfaGVscGVy
X2Z1bmNzIGludGVsX3Nkdm9fY29ubmVjdG9yX2hlbHBlcl9mdW5jcyA9IHsKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3R2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF90di5jCmluZGV4IDM5MjRjNDk0NGUxZi4uYTQxYzViNDY3YzE0IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90di5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3R2LmMKQEAgLTE4MTcsMTYgKzE4MTcsMTggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBk
cm1fY29ubmVjdG9yX2Z1bmNzIGludGVsX3R2X2Nvbm5lY3Rvcl9mdW5jcyA9IHsKIH07CiAKIHN0
YXRpYyBpbnQgaW50ZWxfdHZfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IsCi0JCQkJIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpuZXdfc3RhdGUpCisJCQkJ
IHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
cl9zdGF0ZSAqbmV3X3N0YXRlOwogCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3Rh
dGU7CiAJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9sZF9zdGF0ZTsKIAorCW5ld19zdGF0
ZSA9IGRybV9hdG9taWNfZ2V0X25ld19jb25uZWN0b3Jfc3RhdGUoc3RhdGUsIGNvbm5lY3Rvcik7
CiAJaWYgKCFuZXdfc3RhdGUtPmNydGMpCiAJCXJldHVybiAwOwogCi0Jb2xkX3N0YXRlID0gZHJt
X2F0b21pY19nZXRfb2xkX2Nvbm5lY3Rvcl9zdGF0ZShuZXdfc3RhdGUtPnN0YXRlLCBjb25uZWN0
b3IpOwotCW5ld19jcnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUobmV3
X3N0YXRlLT5zdGF0ZSwgbmV3X3N0YXRlLT5jcnRjKTsKKwlvbGRfc3RhdGUgPSBkcm1fYXRvbWlj
X2dldF9vbGRfY29ubmVjdG9yX3N0YXRlKHN0YXRlLCBjb25uZWN0b3IpOworCW5ld19jcnRjX3N0
YXRlID0gZHJtX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIG5ld19zdGF0ZS0+Y3J0
Yyk7CiAKIAlpZiAob2xkX3N0YXRlLT50di5tb2RlICE9IG5ld19zdGF0ZS0+dHYubW9kZSB8fAog
CSAgICBvbGRfc3RhdGUtPnR2Lm1hcmdpbnMubGVmdCAhPSBuZXdfc3RhdGUtPnR2Lm1hcmdpbnMu
bGVmdCB8fApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlz
cC5jIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAvZGlzcC5jCmluZGV4IDRiMTY1
MGY1MTk1NS4uN2JhMzczZjQ5M2IyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVh
dS9kaXNwbnY1MC9kaXNwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvZGlzcG52NTAv
ZGlzcC5jCkBAIC05NDgsMTEgKzk0OCwxMiBAQCBudjUwX21zdGNfZ2V0X21vZGVzKHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiAKIHN0YXRpYyBpbnQKIG52NTBfbXN0Y19hdG9taWNf
Y2hlY2soc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKLQkJICAgICAgIHN0cnVjdCBk
cm1fY29ubmVjdG9yX3N0YXRlICpuZXdfY29ubl9zdGF0ZSkKKwkJICAgICAgIHN0cnVjdCBkcm1f
YXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKLQlzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUg
PSBuZXdfY29ubl9zdGF0ZS0+c3RhdGU7CiAJc3RydWN0IG52NTBfbXN0YyAqbXN0YyA9IG52NTBf
bXN0Yyhjb25uZWN0b3IpOwogCXN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyID0g
Jm1zdGMtPm1zdG0tPm1ncjsKKwlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqbmV3X2Nvbm5f
c3RhdGUgPQorCQlkcm1fYXRvbWljX2dldF9uZXdfY29ubmVjdG9yX3N0YXRlKHN0YXRlLCBjb25u
ZWN0b3IpOwogCXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpvbGRfY29ubl9zdGF0ZSA9CiAJ
CWRybV9hdG9taWNfZ2V0X29sZF9jb25uZWN0b3Jfc3RhdGUoc3RhdGUsIGNvbm5lY3Rvcik7CiAJ
c3RydWN0IGRybV9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3JjYXItZHUvcmNhcl9sdmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmNhci1kdS9yY2Fy
X2x2ZHMuYwppbmRleCA2MjBiNTFhYWIyOTEuLjViODFiYTJhN2YyNyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3JjYXItZHUvcmNhcl9sdmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3Jj
YXItZHUvcmNhcl9sdmRzLmMKQEAgLTkyLDEzICs5MiwxNSBAQCBzdGF0aWMgaW50IHJjYXJfbHZk
c19jb25uZWN0b3JfZ2V0X21vZGVzKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiB9
CiAKIHN0YXRpYyBpbnQgcmNhcl9sdmRzX2Nvbm5lY3Rvcl9hdG9taWNfY2hlY2soc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvciwKLQkJCQkJICAgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0
YXRlICpzdGF0ZSkKKwkJCQkJICAgIHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsK
IAlzdHJ1Y3QgcmNhcl9sdmRzICpsdmRzID0gY29ubmVjdG9yX3RvX3JjYXJfbHZkcyhjb25uZWN0
b3IpOwogCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpwYW5lbF9tb2RlOworCXN0cnVj
dCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlOwogCXN0cnVjdCBkcm1fY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZTsKIAotCWlmICghc3RhdGUtPmNydGMpCisJY29ubl9zdGF0ZSA9IGRybV9h
dG9taWNfZ2V0X25ld19jb25uZWN0b3Jfc3RhdGUoc3RhdGUsIGNvbm5lY3Rvcik7CisJaWYgKCFj
b25uX3N0YXRlLT5jcnRjKQogCQlyZXR1cm4gMDsKIAogCWlmIChsaXN0X2VtcHR5KCZjb25uZWN0
b3ItPm1vZGVzKSkgewpAQCAtMTEwLDkgKzExMiw5IEBAIHN0YXRpYyBpbnQgcmNhcl9sdmRzX2Nv
bm5lY3Rvcl9hdG9taWNfY2hlY2soc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAkJ
CQkgICAgICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSwgaGVhZCk7CiAKIAkvKiBXZSdyZSBub3Qg
YWxsb3dlZCB0byBtb2RpZnkgdGhlIHJlc29sdXRpb24uICovCi0JY3J0Y19zdGF0ZSA9IGRybV9h
dG9taWNfZ2V0X2NydGNfc3RhdGUoc3RhdGUtPnN0YXRlLCBzdGF0ZS0+Y3J0Yyk7Ci0JaWYgKElT
X0VSUihjcnRjX3N0YXRlKSkKLQkJcmV0dXJuIFBUUl9FUlIoY3J0Y19zdGF0ZSk7CisJY3J0Y19z
dGF0ZSA9IGRybV9hdG9taWNfZ2V0X2NydGNfc3RhdGUoc3RhdGUsIGNvbm5fc3RhdGUtPmNydGMp
OworCWlmICghY3J0Y19zdGF0ZSkKKwkJcmV0dXJuIC1FSU5WQUw7CiAKIAlpZiAoY3J0Y19zdGF0
ZS0+bW9kZS5oZGlzcGxheSAhPSBwYW5lbF9tb2RlLT5oZGlzcGxheSB8fAogCSAgICBjcnRjX3N0
YXRlLT5tb2RlLnZkaXNwbGF5ICE9IHBhbmVsX21vZGUtPnZkaXNwbGF5KQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfdHhwLmMgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF90
eHAuYwppbmRleCBjOGI4OWE3OGY5ZjQuLjk2ZjkxYzFiNGI2ZSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3ZjNC92YzRfdHhwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfdHhw
LmMKQEAgLTIyMSwxNyArMjIxLDE4IEBAIHN0YXRpYyBjb25zdCB1MzIgdHhwX2ZtdHNbXSA9IHsK
IH07CiAKIHN0YXRpYyBpbnQgdmM0X3R4cF9jb25uZWN0b3JfYXRvbWljX2NoZWNrKHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uLAotCQkJCQlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29u
bl9zdGF0ZSkKKwkJCQkJICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCiB7CisJc3Ry
dWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGU7CiAJc3RydWN0IGRybV9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlOwogCXN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiOwogCWludCBpOwog
CisJY29ubl9zdGF0ZSA9IGRybV9hdG9taWNfZ2V0X25ld19jb25uZWN0b3Jfc3RhdGUoc3RhdGUs
IGNvbm4pOwogCWlmICghY29ubl9zdGF0ZS0+d3JpdGViYWNrX2pvYiB8fCAhY29ubl9zdGF0ZS0+
d3JpdGViYWNrX2pvYi0+ZmIpCiAJCXJldHVybiAwOwogCi0JY3J0Y19zdGF0ZSA9IGRybV9hdG9t
aWNfZ2V0X25ld19jcnRjX3N0YXRlKGNvbm5fc3RhdGUtPnN0YXRlLAotCQkJCQkJICAgY29ubl9z
dGF0ZS0+Y3J0Yyk7CisJY3J0Y19zdGF0ZSA9IGRybV9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRl
KHN0YXRlLCBjb25uX3N0YXRlLT5jcnRjKTsKIAogCWZiID0gY29ubl9zdGF0ZS0+d3JpdGViYWNr
X2pvYi0+ZmI7CiAJaWYgKGZiLT53aWR0aCAhPSBjcnRjX3N0YXRlLT5tb2RlLmhkaXNwbGF5IHx8
CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oIGIv
aW5jbHVkZS9kcm0vZHJtX21vZGVzZXRfaGVscGVyX3Z0YWJsZXMuaAppbmRleCBhYTUwOWMxMDcw
ODMuLjJjZGY1OGRhNGM5MCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX21vZGVzZXRfaGVs
cGVyX3Z0YWJsZXMuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fbW9kZXNldF9oZWxwZXJfdnRhYmxl
cy5oCkBAIC0xMDIzLDcgKzEwMjMsNyBAQCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfZnVu
Y3MgewogCSAqIGRlYWRsb2NrLgogCSAqLwogCWludCAoKmF0b21pY19jaGVjaykoc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvciwKLQkJCSAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0
ZSAqc3RhdGUpOworCQkJICAgIHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSk7CiAKIAkv
KioKIAkgKiBAYXRvbWljX2NvbW1pdDoKLS0gClNlYW4gUGF1bCwgU29mdHdhcmUgRW5naW5lZXIs
IEdvb2dsZSAvIENocm9taXVtIE9TCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
