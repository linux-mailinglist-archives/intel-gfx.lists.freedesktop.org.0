Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DF22155D5
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 12:50:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9914B6E047;
	Mon,  6 Jul 2020 10:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D3B6E03B
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 10:50:07 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id q7so31450360ljm.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jul 2020 03:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cA257lTJ4D9YZU+s/1WkvT7gU8A4U/PknCXNLEUCY/8=;
 b=gxKYEiozfHgtDI/PDF/AfBfo+xEYDFNdIOvIpW0YYfB1i0ftKXXV63ss8TBrovpJOo
 kvY0pSNKcGJUaqdcVDsqCWT5EVUjF9IqOGPgjUJN07TJ7fhFHWl0uUTyVz285t/1Y+QX
 wm0TUmc2DCjKaNQ1xZ98lpzhkudnr4E+uk8McOUKittWYxz4nBcxwdpX3ijC2fFNHUFz
 T76aGGC9W8TGMuNLrXHyyZ000wDnm7GzO1TI21P9mjF6CC5vd0swt6j3SZdwsKrydMRN
 +KUbPw5HtCbfVZIB0lv5v/W1fgYBh2ONbYIZKYNgULVPxLYWWJLkWmyx5dO3l1vDZ0WU
 nlYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cA257lTJ4D9YZU+s/1WkvT7gU8A4U/PknCXNLEUCY/8=;
 b=pRi7QZiUmqQUHtg3aQBRIvsRgJoUsHYdqoThGiJ0NQEt/wcgp+LvSIdhLDrX2tLsTy
 Fscyz3PYaAkaZ94HONcAt4Wg9FHPbv/sXhfN7swumG4WRMfPnQbmeD1Uq4DR9GAir8b7
 gS27FtDiEVzlA2PGFwXLe4Wu8PK7nUQ+Z1BoRDEu6oUR+Bv7jbphkbFCbdT0zhLAmZws
 +q3tNUqFgMU9DI6xCvEnyYdthj9f0J3P2PmQ8ux/rKUsVFB33DIkaWwjwGjpVZsTKYSA
 15bmcVVw/12JH9cZLlShln8V0//CmPTWVLwH4dsVGWj7BEhbAF2j5ib7vNdBXq5+q2L2
 rTyQ==
X-Gm-Message-State: AOAM5301p7lnQF/ooZ93ZtDY2F4ZG7NHzgWSIrZ9bHmlrE+xd+SGGNzW
 dIGAxZJsmrIyphjCbGvFmzhRT9ED278=
X-Google-Smtp-Source: ABdhPJw3GWDuo5FuY5w328sRcifZwHvL67R1NC3jaQiJ9PE+h76EMexePegUqcy8uF1tCbO12ouaXg==
X-Received: by 2002:a2e:880c:: with SMTP id x12mr27734276ljh.375.1594032605731; 
 Mon, 06 Jul 2020 03:50:05 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id d6sm7728197ljc.23.2020.07.06.03.50.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jul 2020 03:50:05 -0700 (PDT)
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal@hardline.pl>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 12:49:52 +0200
Message-Id: <20200706104953.139261-1-michal@hardline.pl>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: Reboot CI if we get wedged
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
RURfT05fRklOSSAoQ2hyaXMpCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWlj
aGFsLndpbmlhcnNraUBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwu
Y29tPgpDYzogUGV0cmkgTGF0dmFsYSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuYyB8ICAyICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0LmggICAgICAgICAgfCAxMiArKysrKysrKy0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgICAgICAgfCAgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyAgICAgICB8IDEzICsrKysrKysrKysrLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmggICAgICAgfCAxMCArKy0tLS0tLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldF90eXBlcy5oIHwgIDcgKysrKysr
LQogNyBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNlci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuYwppbmRleCA4NDhkZWNl
ZTkwNjYuLjM0ZTYwOTZmMTk2ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX3VzZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfdXNlci5jCkBAIC0yMDEsNyArMjAxLDcgQEAgdm9pZCBpbnRlbF9lbmdpbmVzX2RyaXZl
cl9yZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJCQkgICAgIHVhYmlf
bm9kZSk7CiAJCWNoYXIgb2xkW3NpemVvZihlbmdpbmUtPm5hbWUpXTsKIAotCQlpZiAoaW50ZWxf
Z3RfaGFzX2luaXRfZXJyb3IoZW5naW5lLT5ndCkpCisJCWlmIChpbnRlbF9ndF9oYXNfdW5yZWNv
dmVyYWJsZV9lcnJvcihlbmdpbmUtPmd0KSkKIAkJCWNvbnRpbnVlOyAvKiBpZ25vcmUgaW5jb21w
bGV0ZSBlbmdpbmVzICovCiAKIAkJR0VNX0JVR19PTihlbmdpbmUtPmNsYXNzID49IEFSUkFZX1NJ
WkUodWFiaV9jbGFzc2VzKSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwppbmRleCBlYmMy
OWI2ZWU4NmMuLjg3NmY3ODc1OTA5NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCkBA
IC01MTAsNyArNTEwLDcgQEAgc3RhdGljIGludCBfX2VuZ2luZXNfdmVyaWZ5X3dvcmthcm91bmRz
KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAKIHN0YXRpYyB2b2lkIF9faW50ZWxfZ3RfZGlzYWJsZShz
dHJ1Y3QgaW50ZWxfZ3QgKmd0KQogewotCWludGVsX2d0X3NldF93ZWRnZWRfb25faW5pdChndCk7
CisJaW50ZWxfZ3Rfc2V0X3dlZGdlZF9vbl9maW5pKGd0KTsKIAogCWludGVsX2d0X3N1c3BlbmRf
cHJlcGFyZShndCk7CiAJaW50ZWxfZ3Rfc3VzcGVuZF9sYXRlKGd0KTsKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndC5oCmluZGV4IDRmYWMwNDM3NTBhYS4uNzIwMWY5NjcyM2Q4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0LmgKQEAgLTU4LDE0ICs1OCwxOCBAQCBzdGF0aWMgaW5saW5lIHUz
MiBpbnRlbF9ndF9zY3JhdGNoX29mZnNldChjb25zdCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAogCXJl
dHVybiBpOTE1X2dndHRfb2Zmc2V0KGd0LT5zY3JhdGNoKSArIGZpZWxkOwogfQogCi1zdGF0aWMg
aW5saW5lIGJvb2wgaW50ZWxfZ3RfaXNfd2VkZ2VkKGNvbnN0IHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
CitzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZ3RfaGFzX3VucmVjb3ZlcmFibGVfZXJyb3IoY29u
c3Qgc3RydWN0IGludGVsX2d0ICpndCkKIHsKLQlyZXR1cm4gX19pbnRlbF9yZXNldF9mYWlsZWQo
Jmd0LT5yZXNldCk7CisJcmV0dXJuIHRlc3RfYml0KEk5MTVfV0VER0VEX09OX0lOSVQsICZndC0+
cmVzZXQuZmxhZ3MpIHx8CisgICAgICAgICAgICAgICB0ZXN0X2JpdChJOTE1X1dFREdFRF9PTl9G
SU5JLCAmZ3QtPnJlc2V0LmZsYWdzKTsKIH0KIAotc3RhdGljIGlubGluZSBib29sIGludGVsX2d0
X2hhc19pbml0X2Vycm9yKGNvbnN0IHN0cnVjdCBpbnRlbF9ndCAqZ3QpCitzdGF0aWMgaW5saW5l
IGJvb2wgaW50ZWxfZ3RfaXNfd2VkZ2VkKGNvbnN0IHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7Ci0J
cmV0dXJuIHRlc3RfYml0KEk5MTVfV0VER0VEX09OX0lOSVQsICZndC0+cmVzZXQuZmxhZ3MpOwor
CUdFTV9CVUdfT04oaW50ZWxfZ3RfaGFzX3VucmVjb3ZlcmFibGVfZXJyb3IoZ3QpID8KKwkJICAg
IXRlc3RfYml0KEk5MTVfV0VER0VELCAmZ3QtPnJlc2V0LmZsYWdzKSA6IGZhbHNlKTsKKworCXJl
dHVybiB1bmxpa2VseSh0ZXN0X2JpdChJOTE1X1dFREdFRCwgJmd0LT5yZXNldC5mbGFncykpOwog
fQogCiAjZW5kaWYgLyogX19JTlRFTF9HVF9IX18gKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9wbS5jCmluZGV4IGYxZDUzMzNmOTQ1Ni4uMjc0YWEwZGQ3MDUwIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKQEAgLTE4OCw3ICsxODgsNyBAQCBpbnQgaW50ZWxfZ3Rf
cmVzdW1lKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CiAJ
aW50IGVycjsKIAotCWVyciA9IGludGVsX2d0X2hhc19pbml0X2Vycm9yKGd0KTsKKwllcnIgPSBp
bnRlbF9ndF9oYXNfdW5yZWNvdmVyYWJsZV9lcnJvcihndCk7CiAJaWYgKGVycikKIAkJcmV0dXJu
IGVycjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKaW5kZXggMDE1NmYxZjVj
NzM2Li42Zjk0YjY0NzlhMmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpA
QCAtODgwLDcgKzg4MCw3IEBAIHN0YXRpYyBib29sIF9faW50ZWxfZ3RfdW5zZXRfd2VkZ2VkKHN0
cnVjdCBpbnRlbF9ndCAqZ3QpCiAJCXJldHVybiB0cnVlOwogCiAJLyogTmV2ZXIgZnVsbHkgaW5p
dGlhbGlzZWQsIHJlY292ZXJ5IGltcG9zc2libGUgKi8KLQlpZiAodGVzdF9iaXQoSTkxNV9XRURH
RURfT05fSU5JVCwgJmd0LT5yZXNldC5mbGFncykpCisJaWYgKGludGVsX2d0X2hhc191bnJlY292
ZXJhYmxlX2Vycm9yKGd0KSkKIAkJcmV0dXJuIGZhbHNlOwogCiAJR1RfVFJBQ0UoZ3QsICJzdGFy
dFxuIik7CkBAIC0xMzQyLDcgKzEzNDIsNyBAQCBpbnQgaW50ZWxfZ3RfdGVybWluYWxseV93ZWRn
ZWQoc3RydWN0IGludGVsX2d0ICpndCkKIAlpZiAoIWludGVsX2d0X2lzX3dlZGdlZChndCkpCiAJ
CXJldHVybiAwOwogCi0JaWYgKGludGVsX2d0X2hhc19pbml0X2Vycm9yKGd0KSkKKwlpZiAoaW50
ZWxfZ3RfaGFzX3VucmVjb3ZlcmFibGVfZXJyb3IoZ3QpKQogCQlyZXR1cm4gLUVJTzsKIAogCS8q
IFJlc2V0IHN0aWxsIGluIHByb2dyZXNzPyBNYXliZSB3ZSB3aWxsIHJlY292ZXI/ICovCkBAIC0x
MzYwLDYgKzEzNjAsMTUgQEAgdm9pZCBpbnRlbF9ndF9zZXRfd2VkZ2VkX29uX2luaXQoc3RydWN0
IGludGVsX2d0ICpndCkKIAkJICAgICBJOTE1X1dFREdFRF9PTl9JTklUKTsKIAlpbnRlbF9ndF9z
ZXRfd2VkZ2VkKGd0KTsKIAlzZXRfYml0KEk5MTVfV0VER0VEX09OX0lOSVQsICZndC0+cmVzZXQu
ZmxhZ3MpOworCisJLyogV2VkZ2VkIG9uIGluaXQgaXMgbm9uLXJlY292ZXJhYmxlICovCisJYWRk
X3RhaW50X2Zvcl9DSShUQUlOVF9XQVJOKTsKK30KKwordm9pZCBpbnRlbF9ndF9zZXRfd2VkZ2Vk
X29uX2Zpbmkoc3RydWN0IGludGVsX2d0ICpndCkKK3sKKwlpbnRlbF9ndF9zZXRfd2VkZ2VkKGd0
KTsKKwlzZXRfYml0KEk5MTVfV0VER0VEX09OX0ZJTkksICZndC0+cmVzZXQuZmxhZ3MpOwogfQog
CiB2b2lkIGludGVsX2d0X2luaXRfcmVzZXQoc3RydWN0IGludGVsX2d0ICpndCkKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yZXNldC5oCmluZGV4IDhlOGQ1Zjc2MTE2Ni4uYTBlZWM3YzExYzBj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmgKQEAgLTQ3LDggKzQ3LDEwIEBA
IGludCBpbnRlbF9ndF90ZXJtaW5hbGx5X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKIC8q
CiAgKiBUaGVyZSdzIG5vIHVuc2V0X3dlZGdlZF9vbl9pbml0IHBhaXJlZCB3aXRoIHRoaXMgb25l
LgogICogT25jZSB3ZSdyZSB3ZWRnZWQgb24gaW5pdCwgdGhlcmUncyBubyBnb2luZyBiYWNrLgor
ICogU2FtZSB0aGluZyBmb3IgdW5zZXRfd2VkZ2VkX29uX2ZpbmkuCiAgKi8KIHZvaWQgaW50ZWxf
Z3Rfc2V0X3dlZGdlZF9vbl9pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwordm9pZCBpbnRlbF9n
dF9zZXRfd2VkZ2VkX29uX2Zpbmkoc3RydWN0IGludGVsX2d0ICpndCk7CiAKIGludCBfX2ludGVs
X2d0X3Jlc2V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGludGVsX2VuZ2luZV9tYXNrX3QgZW5naW5l
X21hc2spOwogCkBAIC03MSwxNCArNzMsNiBAQCB2b2lkIF9faW50ZWxfZmluaV93ZWRnZShzdHJ1
Y3QgaW50ZWxfd2VkZ2VfbWUgKncpOwogCSAgICAgKFcpLT5ndDsJCQkJCQkJXAogCSAgICAgX19p
bnRlbF9maW5pX3dlZGdlKChXKSkpCiAKLXN0YXRpYyBpbmxpbmUgYm9vbCBfX2ludGVsX3Jlc2V0
X2ZhaWxlZChjb25zdCBzdHJ1Y3QgaW50ZWxfcmVzZXQgKnJlc2V0KQotewotCUdFTV9CVUdfT04o
dGVzdF9iaXQoSTkxNV9XRURHRURfT05fSU5JVCwgJnJlc2V0LT5mbGFncykgPwotCQkgICAhdGVz
dF9iaXQoSTkxNV9XRURHRUQsICZyZXNldC0+ZmxhZ3MpIDogZmFsc2UpOwotCi0JcmV0dXJuIHVu
bGlrZWx5KHRlc3RfYml0KEk5MTVfV0VER0VELCAmcmVzZXQtPmZsYWdzKSk7Ci19Ci0KIGJvb2wg
aW50ZWxfaGFzX2dwdV9yZXNldChjb25zdCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKIGJvb2wgaW50
ZWxfaGFzX3Jlc2V0X2VuZ2luZShjb25zdCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKIApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXRfdHlwZXMuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0X3R5cGVzLmgKaW5kZXggZjQzYmMzYTBmZTRm
Li5mZTM4NmJmNTMwNmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3Jlc2V0X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXRf
dHlwZXMuaApAQCAtMzQsMTIgKzM0LDE3IEBAIHN0cnVjdCBpbnRlbF9yZXNldCB7CiAJICogbG9u
Z2VyIHVzZSB0aGUgR1BVIC0gc2ltaWxhciB0byAjSTkxNV9XRURHRUQgYml0LiBUaGUgZGlmZmVy
ZW5jZSBpbgogCSAqIGluIHRoZSB3YXkgd2UncmUgaGFuZGxpbmcgImZvcmNlZCIgdW53ZWRnZWQg
KGUuZy4gdGhyb3VnaCBkZWJ1Z2ZzKSwKIAkgKiB3aGljaCBpcyBub3QgYWxsb3dlZCBpbiBjYXNl
IHdlIGZhaWxlZCB0byBpbml0aWFsaXplLgorICAgICAgICAgKgorICAgICAgICAgKiAjSTkxNV9X
RURHRURfT05fRklOSSAtIFNpbWlsYXIgdG8gI0k5MTVfV0VER0VEX09OX0lOSVQsIGV4Y2VwdCB3
ZQorICAgICAgICAgKiB1c2UgaXQgdG8gbWFyayB0aGF0IHRoZSBHUFUgaXMgbm8gbG9uZ2VyIGF2
YWlsYWJsZSAoYW5kIHByZXZlbnQKKyAgICAgICAgICogdXNlcnMgZnJvbSB1c2luZyBpdCkuCiAJ
ICovCiAJdW5zaWduZWQgbG9uZyBmbGFnczsKICNkZWZpbmUgSTkxNV9SRVNFVF9CQUNLT0ZGCTAK
ICNkZWZpbmUgSTkxNV9SRVNFVF9NT0RFU0VUCTEKICNkZWZpbmUgSTkxNV9SRVNFVF9FTkdJTkUJ
MgotI2RlZmluZSBJOTE1X1dFREdFRF9PTl9JTklUCShCSVRTX1BFUl9MT05HIC0gMikKKyNkZWZp
bmUgSTkxNV9XRURHRURfT05fSU5JVAkoQklUU19QRVJfTE9ORyAtIDMpCisjZGVmaW5lIEk5MTVf
V0VER0VEX09OX0ZJTkkJKEJJVFNfUEVSX0xPTkcgLSAyKQogI2RlZmluZSBJOTE1X1dFREdFRAkJ
KEJJVFNfUEVSX0xPTkcgLSAxKQogCiAJc3RydWN0IG11dGV4IG11dGV4OyAvKiBzZXJpYWxpc2Vz
IHdlZGdpbmcvdW53ZWRnaW5nICovCi0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
