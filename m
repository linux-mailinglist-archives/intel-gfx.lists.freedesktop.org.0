Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E742159C2
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 16:42:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 039A189E50;
	Mon,  6 Jul 2020 14:42:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3B2C89EAE
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 14:42:46 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id d17so30966970ljl.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jul 2020 07:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=219xSDumJPYjqxHQmqdoEZBw1V8je07YpNfIcKaUJFw=;
 b=DCmvuk77jTxOKMj4kD6Khk600S2n6BnGsqroJYyUoip93vy8zyf4i4aNTrBDSrKKiG
 mEinC5EOfNdbfzb3QJtKVAWC5sBL80lQz5m5JVaszuXKI82inHAFFzHNMp7BNUs3Nr+Q
 CGlu3hrT26kJ9RLxo0HzqMqnAbnaXxZT/dyVH6SwrHxZTbTjiLpn8hKeM/uVO5mMfMti
 bYXmYX0XKAcInUCuNdJIqP3XSKETaunqRFOSI2kUo6uInbO3wZu1ZZvxZwQkPOoWcB9G
 88E5p9vFS9jn9+Brl7C1EY2k+wHqBE/EeyM2qJ+w/u6d2U2mI6Y2V+NbrxcC/L5Az59U
 73rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=219xSDumJPYjqxHQmqdoEZBw1V8je07YpNfIcKaUJFw=;
 b=r+ZpgRVZgTKP1nltl+Bt7vT2aCGRp6i0qx84KyYrzZoTHBy8JGdlSLt4QgeM7D2a3m
 I1o/x2km4wldGT4YjyrL+WrGABSBSSjL/4xz9+aD5KlkG3Cypf6Rbl6QdQFNXtb+dQ+d
 ezMCfkybLZ0m3DVewcqLXFD9HOi8dKe4eQW8Uv1FsvQi8Dbv2+lT1K0s9fpgeAXltjgk
 /POSzV5ay2u2XoZzjUMmm4seYAwu7tpuwDecXpkvGm5gmoP/46E6ahM57Ygi3vfPDOuU
 uZAO2lNwS2gvN6IQRVcXItBEW6BRyjwChoiIcaPfhqEPdGel+TH/ZsBFLJe8jO79x2mZ
 U+Qw==
X-Gm-Message-State: AOAM531IEl7qDCS9zpIrgiQ8SjVwwxa/jIAYCQ7c/maXdo7EhSXZKOva
 vPmGRHFtYoniM0JRj9UZ8ie+2K7cKZ0Ggg==
X-Google-Smtp-Source: ABdhPJzqQD4JzKQ0POkLPnoWKI5WMaJE/eGoa3yhiii1K0+bzHZ0kioVSSw5Y9O98VKigASH0ybyCw==
X-Received: by 2002:a05:651c:119a:: with SMTP id
 w26mr26864215ljo.126.1594046564970; 
 Mon, 06 Jul 2020 07:42:44 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id j25sm8854662lfh.95.2020.07.06.07.42.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jul 2020 07:42:44 -0700 (PDT)
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal@hardline.pl>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 16:41:05 +0200
Message-Id: <20200706144107.204821-1-michal@hardline.pl>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915: Reboot CI if we get wedged
 during driver init
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKR2V0
dGluZyB3ZWRnZWQgZGV2aWNlIG9uIGRyaXZlciBpbml0IGlzIHByZXR0eSBtdWNoIHVucmVjb3Zl
cmFibGUuClNpbmNlIHdlJ3JlIHJ1bm5pbmcgdmFyaW91cyBzY2VuYXJpb3MgdGhhdCBtYXkgcG90
ZW50aWFsbHkgaGl0IHRoaXMgaW4KQ0kgKG1vZHVsZSByZWxvYWQgLyBzZWxmdGVzdHMgLyBob3R1
bnBsdWcpLCBhbmQgaWYgaXQgaGFwcGVucywgaXQgbWVhbnMKdGhhdCB3ZSBjYW4ndCB0cnVzdCBh
bnkgc3Vic2VxdWVudCBDSSByZXN1bHRzLCB3ZSBzaG91bGQganVzdCBhcHBseSB0aGUKdGFpbnQg
dG8gbGV0IHRoZSBDSSBrbm93IHRoYXQgaXQgc2hvdWxkIHJlYm9vdCAoQ0kgY2hlY2tzIHRhaW50
IGJldHdlZW4KdGVzdCBydW5zKS4KCnYyOiBDb21tZW50IHRoYXQgV0VER0VEX09OX0lOSVQgaXMg
bm9uLXJlY292ZXJhYmxlLCBkaXN0aW5ndWlzaAogICAgV0VER0VEX09OX0lOSVQgZnJvbSBXRURH
RURfT05fRklOSSAoQ2hyaXMpCnYzOiBBcHBlYXNlIGNoZWNrcGF0Y2gsIGZpeHVwIHNlYXJjaC1y
ZXBsYWNlIGxvZ2ljIGV4cHJlc3Npb24gbWluZGJvbWIKICAgIGluIGFzc2VydCAoQ2hyaXMpCgpT
aWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5j
b20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pY2hh
bCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogUGV0cmkgTGF0dmFs
YSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfdXNlci5jIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0
LmMgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCAg
ICAgICAgICB8IDEyICsrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfcG0uYyAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNl
dC5jICAgICAgIHwgMTMgKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmVzZXQuaCAgICAgICB8IDEwICsrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jlc2V0X3R5cGVzLmggfCAgNyArKysrKystCiA3IGZpbGVzIGNoYW5nZWQsIDMwIGlu
c2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfdXNlci5jCmluZGV4IDg0OGRlY2VlOTA2Ni4uMzRlNjA5NmYxOTZlIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNlci5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2VyLmMKQEAgLTIwMSw3ICsy
MDEsNyBAQCB2b2lkIGludGVsX2VuZ2luZXNfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQogCQkJCSAgICAgdWFiaV9ub2RlKTsKIAkJY2hhciBvbGRbc2l6ZW9m
KGVuZ2luZS0+bmFtZSldOwogCi0JCWlmIChpbnRlbF9ndF9oYXNfaW5pdF9lcnJvcihlbmdpbmUt
Pmd0KSkKKwkJaWYgKGludGVsX2d0X2hhc191bnJlY292ZXJhYmxlX2Vycm9yKGVuZ2luZS0+Z3Qp
KQogCQkJY29udGludWU7IC8qIGlnbm9yZSBpbmNvbXBsZXRlIGVuZ2luZXMgKi8KIAogCQlHRU1f
QlVHX09OKGVuZ2luZS0+Y2xhc3MgPj0gQVJSQVlfU0laRSh1YWJpX2NsYXNzZXMpKTsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndC5jCmluZGV4IGViYzI5YjZlZTg2Yy4uODc2Zjc4NzU5MDk1IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKQEAgLTUxMCw3ICs1MTAsNyBAQCBzdGF0aWMg
aW50IF9fZW5naW5lc192ZXJpZnlfd29ya2Fyb3VuZHMoc3RydWN0IGludGVsX2d0ICpndCkKIAog
c3RhdGljIHZvaWQgX19pbnRlbF9ndF9kaXNhYmxlKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7Ci0J
aW50ZWxfZ3Rfc2V0X3dlZGdlZF9vbl9pbml0KGd0KTsKKwlpbnRlbF9ndF9zZXRfd2VkZ2VkX29u
X2ZpbmkoZ3QpOwogCiAJaW50ZWxfZ3Rfc3VzcGVuZF9wcmVwYXJlKGd0KTsKIAlpbnRlbF9ndF9z
dXNwZW5kX2xhdGUoZ3QpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKaW5kZXggNGZhYzA0
Mzc1MGFhLi45ODI5NTdjYTRlNjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaApAQCAt
NTgsMTQgKzU4LDE4IEBAIHN0YXRpYyBpbmxpbmUgdTMyIGludGVsX2d0X3NjcmF0Y2hfb2Zmc2V0
KGNvbnN0IHN0cnVjdCBpbnRlbF9ndCAqZ3QsCiAJcmV0dXJuIGk5MTVfZ2d0dF9vZmZzZXQoZ3Qt
PnNjcmF0Y2gpICsgZmllbGQ7CiB9CiAKLXN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9ndF9pc193
ZWRnZWQoY29uc3Qgc3RydWN0IGludGVsX2d0ICpndCkKK3N0YXRpYyBpbmxpbmUgYm9vbCBpbnRl
bF9ndF9oYXNfdW5yZWNvdmVyYWJsZV9lcnJvcihjb25zdCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQog
ewotCXJldHVybiBfX2ludGVsX3Jlc2V0X2ZhaWxlZCgmZ3QtPnJlc2V0KTsKKwlyZXR1cm4gdGVz
dF9iaXQoSTkxNV9XRURHRURfT05fSU5JVCwgJmd0LT5yZXNldC5mbGFncykgfHwKKwkgICAgICAg
dGVzdF9iaXQoSTkxNV9XRURHRURfT05fRklOSSwgJmd0LT5yZXNldC5mbGFncyk7CiB9CiAKLXN0
YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9ndF9oYXNfaW5pdF9lcnJvcihjb25zdCBzdHJ1Y3QgaW50
ZWxfZ3QgKmd0KQorc3RhdGljIGlubGluZSBib29sIGludGVsX2d0X2lzX3dlZGdlZChjb25zdCBz
dHJ1Y3QgaW50ZWxfZ3QgKmd0KQogewotCXJldHVybiB0ZXN0X2JpdChJOTE1X1dFREdFRF9PTl9J
TklULCAmZ3QtPnJlc2V0LmZsYWdzKTsKKwlHRU1fQlVHX09OKGludGVsX2d0X2hhc191bnJlY292
ZXJhYmxlX2Vycm9yKGd0KSAmJgorCQkgICAhdGVzdF9iaXQoSTkxNV9XRURHRUQsICZndC0+cmVz
ZXQuZmxhZ3MpKTsKKworCXJldHVybiB1bmxpa2VseSh0ZXN0X2JpdChJOTE1X1dFREdFRCwgJmd0
LT5yZXNldC5mbGFncykpOwogfQogCiAjZW5kaWYgLyogX19JTlRFTF9HVF9IX18gKi8KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCmluZGV4IGYxZDUzMzNmOTQ1Ni4uMjc0YWEwZGQ3
MDUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKQEAgLTE4OCw3ICsxODgs
NyBAQCBpbnQgaW50ZWxfZ3RfcmVzdW1lKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJZW51bSBpbnRl
bF9lbmdpbmVfaWQgaWQ7CiAJaW50IGVycjsKIAotCWVyciA9IGludGVsX2d0X2hhc19pbml0X2Vy
cm9yKGd0KTsKKwllcnIgPSBpbnRlbF9ndF9oYXNfdW5yZWNvdmVyYWJsZV9lcnJvcihndCk7CiAJ
aWYgKGVycikKIAkJcmV0dXJuIGVycjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0
LmMKaW5kZXggMDE1NmYxZjVjNzM2Li42Zjk0YjY0NzlhMmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmVzZXQuYwpAQCAtODgwLDcgKzg4MCw3IEBAIHN0YXRpYyBib29sIF9faW50ZWxf
Z3RfdW5zZXRfd2VkZ2VkKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJCXJldHVybiB0cnVlOwogCiAJ
LyogTmV2ZXIgZnVsbHkgaW5pdGlhbGlzZWQsIHJlY292ZXJ5IGltcG9zc2libGUgKi8KLQlpZiAo
dGVzdF9iaXQoSTkxNV9XRURHRURfT05fSU5JVCwgJmd0LT5yZXNldC5mbGFncykpCisJaWYgKGlu
dGVsX2d0X2hhc191bnJlY292ZXJhYmxlX2Vycm9yKGd0KSkKIAkJcmV0dXJuIGZhbHNlOwogCiAJ
R1RfVFJBQ0UoZ3QsICJzdGFydFxuIik7CkBAIC0xMzQyLDcgKzEzNDIsNyBAQCBpbnQgaW50ZWxf
Z3RfdGVybWluYWxseV93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKIAlpZiAoIWludGVsX2d0
X2lzX3dlZGdlZChndCkpCiAJCXJldHVybiAwOwogCi0JaWYgKGludGVsX2d0X2hhc19pbml0X2Vy
cm9yKGd0KSkKKwlpZiAoaW50ZWxfZ3RfaGFzX3VucmVjb3ZlcmFibGVfZXJyb3IoZ3QpKQogCQly
ZXR1cm4gLUVJTzsKIAogCS8qIFJlc2V0IHN0aWxsIGluIHByb2dyZXNzPyBNYXliZSB3ZSB3aWxs
IHJlY292ZXI/ICovCkBAIC0xMzYwLDYgKzEzNjAsMTUgQEAgdm9pZCBpbnRlbF9ndF9zZXRfd2Vk
Z2VkX29uX2luaXQoc3RydWN0IGludGVsX2d0ICpndCkKIAkJICAgICBJOTE1X1dFREdFRF9PTl9J
TklUKTsKIAlpbnRlbF9ndF9zZXRfd2VkZ2VkKGd0KTsKIAlzZXRfYml0KEk5MTVfV0VER0VEX09O
X0lOSVQsICZndC0+cmVzZXQuZmxhZ3MpOworCisJLyogV2VkZ2VkIG9uIGluaXQgaXMgbm9uLXJl
Y292ZXJhYmxlICovCisJYWRkX3RhaW50X2Zvcl9DSShUQUlOVF9XQVJOKTsKK30KKwordm9pZCBp
bnRlbF9ndF9zZXRfd2VkZ2VkX29uX2Zpbmkoc3RydWN0IGludGVsX2d0ICpndCkKK3sKKwlpbnRl
bF9ndF9zZXRfd2VkZ2VkKGd0KTsKKwlzZXRfYml0KEk5MTVfV0VER0VEX09OX0ZJTkksICZndC0+
cmVzZXQuZmxhZ3MpOwogfQogCiB2b2lkIGludGVsX2d0X2luaXRfcmVzZXQoc3RydWN0IGludGVs
X2d0ICpndCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5oCmluZGV4IDhlOGQ1Zjc2
MTE2Ni4uYTBlZWM3YzExYzBjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmgK
QEAgLTQ3LDggKzQ3LDEwIEBAIGludCBpbnRlbF9ndF90ZXJtaW5hbGx5X3dlZGdlZChzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0KTsKIC8qCiAgKiBUaGVyZSdzIG5vIHVuc2V0X3dlZGdlZF9vbl9pbml0IHBh
aXJlZCB3aXRoIHRoaXMgb25lLgogICogT25jZSB3ZSdyZSB3ZWRnZWQgb24gaW5pdCwgdGhlcmUn
cyBubyBnb2luZyBiYWNrLgorICogU2FtZSB0aGluZyBmb3IgdW5zZXRfd2VkZ2VkX29uX2Zpbmku
CiAgKi8KIHZvaWQgaW50ZWxfZ3Rfc2V0X3dlZGdlZF9vbl9pbml0KHN0cnVjdCBpbnRlbF9ndCAq
Z3QpOwordm9pZCBpbnRlbF9ndF9zZXRfd2VkZ2VkX29uX2Zpbmkoc3RydWN0IGludGVsX2d0ICpn
dCk7CiAKIGludCBfX2ludGVsX2d0X3Jlc2V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGludGVsX2Vu
Z2luZV9tYXNrX3QgZW5naW5lX21hc2spOwogCkBAIC03MSwxNCArNzMsNiBAQCB2b2lkIF9faW50
ZWxfZmluaV93ZWRnZShzdHJ1Y3QgaW50ZWxfd2VkZ2VfbWUgKncpOwogCSAgICAgKFcpLT5ndDsJ
CQkJCQkJXAogCSAgICAgX19pbnRlbF9maW5pX3dlZGdlKChXKSkpCiAKLXN0YXRpYyBpbmxpbmUg
Ym9vbCBfX2ludGVsX3Jlc2V0X2ZhaWxlZChjb25zdCBzdHJ1Y3QgaW50ZWxfcmVzZXQgKnJlc2V0
KQotewotCUdFTV9CVUdfT04odGVzdF9iaXQoSTkxNV9XRURHRURfT05fSU5JVCwgJnJlc2V0LT5m
bGFncykgPwotCQkgICAhdGVzdF9iaXQoSTkxNV9XRURHRUQsICZyZXNldC0+ZmxhZ3MpIDogZmFs
c2UpOwotCi0JcmV0dXJuIHVubGlrZWx5KHRlc3RfYml0KEk5MTVfV0VER0VELCAmcmVzZXQtPmZs
YWdzKSk7Ci19Ci0KIGJvb2wgaW50ZWxfaGFzX2dwdV9yZXNldChjb25zdCBzdHJ1Y3QgaW50ZWxf
Z3QgKmd0KTsKIGJvb2wgaW50ZWxfaGFzX3Jlc2V0X2VuZ2luZShjb25zdCBzdHJ1Y3QgaW50ZWxf
Z3QgKmd0KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVz
ZXRfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0X3R5cGVzLmgK
aW5kZXggZjQzYmMzYTBmZTRmLi5hZGQ2Yjg2ZDlkMDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVzZXRfdHlwZXMuaApAQCAtMzQsMTIgKzM0LDE3IEBAIHN0cnVjdCBpbnRl
bF9yZXNldCB7CiAJICogbG9uZ2VyIHVzZSB0aGUgR1BVIC0gc2ltaWxhciB0byAjSTkxNV9XRURH
RUQgYml0LiBUaGUgZGlmZmVyZW5jZSBpbgogCSAqIGluIHRoZSB3YXkgd2UncmUgaGFuZGxpbmcg
ImZvcmNlZCIgdW53ZWRnZWQgKGUuZy4gdGhyb3VnaCBkZWJ1Z2ZzKSwKIAkgKiB3aGljaCBpcyBu
b3QgYWxsb3dlZCBpbiBjYXNlIHdlIGZhaWxlZCB0byBpbml0aWFsaXplLgorCSAqCisJICogI0k5
MTVfV0VER0VEX09OX0ZJTkkgLSBTaW1pbGFyIHRvICNJOTE1X1dFREdFRF9PTl9JTklULCBleGNl
cHQgd2UKKwkgKiB1c2UgaXQgdG8gbWFyayB0aGF0IHRoZSBHUFUgaXMgbm8gbG9uZ2VyIGF2YWls
YWJsZSAoYW5kIHByZXZlbnQKKwkgKiB1c2VycyBmcm9tIHVzaW5nIGl0KS4KIAkgKi8KIAl1bnNp
Z25lZCBsb25nIGZsYWdzOwogI2RlZmluZSBJOTE1X1JFU0VUX0JBQ0tPRkYJMAogI2RlZmluZSBJ
OTE1X1JFU0VUX01PREVTRVQJMQogI2RlZmluZSBJOTE1X1JFU0VUX0VOR0lORQkyCi0jZGVmaW5l
IEk5MTVfV0VER0VEX09OX0lOSVQJKEJJVFNfUEVSX0xPTkcgLSAyKQorI2RlZmluZSBJOTE1X1dF
REdFRF9PTl9JTklUCShCSVRTX1BFUl9MT05HIC0gMykKKyNkZWZpbmUgSTkxNV9XRURHRURfT05f
RklOSQkoQklUU19QRVJfTE9ORyAtIDIpCiAjZGVmaW5lIEk5MTVfV0VER0VECQkoQklUU19QRVJf
TE9ORyAtIDEpCiAKIAlzdHJ1Y3QgbXV0ZXggbXV0ZXg7IC8qIHNlcmlhbGlzZXMgd2VkZ2luZy91
bndlZGdpbmcgKi8KLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
