Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFF62184AE
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 12:09:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49C5B6E201;
	Wed,  8 Jul 2020 10:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B0896E201
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 10:09:01 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id y18so26511436lfh.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 03:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M3H+5qylInswpdsjQXFgv+NJ/7xAbIsNFT8dG6g3nOk=;
 b=AlurKhrfcHeLMKuwdJtaqb+QrceABRImQ5Iu6+WiOcp9GwujxrL/uXy9CJb4SbzPSg
 hUwL+aMJnChTlOYAuWLSDpGF/dXtVdudcJepWTtPQK9OGx1mu9jfetjm4p1zgDx3VDUI
 m2CH6OeVlJWCJKmQRc5yfn/xObisQkiCVCamODMP4UzX1Ygwbtp2Z9tVuabkus7vZc9U
 /iYStfbFsx3d56amEBxl3ANWvBHAMnfZ/fO1MsmR43ZD2Yfg88/8L5Nr22qGfETYfGyL
 yTyOgvpgRSIkbeLaPrkH46CH064mHKB3R2U5vgUI6MHxlnWciD1X0r/yV9p80QfUXzCO
 6u3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M3H+5qylInswpdsjQXFgv+NJ/7xAbIsNFT8dG6g3nOk=;
 b=rccEXudy7qI5g2A12Aq6rfczItt2WHYnghgjfs2qB01aJ/Qu/GKmqNBjS1h9HQ3drT
 7guEwsTLKqWI5sw7ty3TCCNFWweQaostZZNiYh+cFwXuNzrJ1Kw57kPS4iOi6b7BeChA
 TDQ+7t0STkG3T9MhS/4dzo/70hlZ1kToZ4pCzcn/XY7FmDMAWQrlC8mGOHUZelo36wa4
 xMb1XvIGu+AD9xZn2iB5CZfOoNIkoJeygrIqxPjfI1fChEEYebS/qefqGxoCRr+Ko+kS
 RSOO7bLXeGoiP0Sf05hwBfJuuveGYMWA6wnY/ST/yyKrEr4KavA20fTNeb9oRxWWePn2
 E+Iw==
X-Gm-Message-State: AOAM531KU89q7NXlQaM0/4uGmHEuqvJG6KOCcONX5QT07ogIMHrgJHeu
 3jsOdwvYA7ja0LCiVjs28vUhcHQirksq2A==
X-Google-Smtp-Source: ABdhPJwoROLK0qr/iIaeJm+EnncoB27kvQMtfD7nD9ITreWdR/bF2vcSzBzznP0p5bx+1UBH5BT7XQ==
X-Received: by 2002:ac2:5c49:: with SMTP id s9mr36404461lfp.90.1594202939457; 
 Wed, 08 Jul 2020 03:08:59 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id y22sm801870ljn.2.2020.07.08.03.08.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jul 2020 03:08:58 -0700 (PDT)
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal@hardline.pl>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 12:08:42 +0200
Message-Id: <20200708100843.297655-1-michal@hardline.pl>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/uc: Extract uc usage details into
 separate debugfs
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKSXQg
aGFzIGJlZW4gcG9pbnRlZCBvdXQgdGhhdCBpbmZvcm1hdGlvbiBhYm91dCBIdUMgdXNhZ2UgZG9l
c24ndCBiZWxvbmcKaW4gZ3VjX2luZm8gZGVidWdmcy4gTGV0J3MgbW92ZSAic3VwcG9ydGVkL3Vz
ZWQvd2FudGVkIiBtYXRyaXggdG8gYQpzZXBhcmF0ZSBkZWJ1Z2ZzIGZpbGUsIGtlZXBpbmcgZ3Vj
X2luZm8gc3RyaWN0bHkgYWJvdXQgR3VDLgoKU3VnZ2VzdGVkLWJ5OiBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBN
aWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+CkNjOiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogTHVr
YXN6IEZpZWRvcm93aWN6IDxsdWthc3ouZmllZG9yb3dpY3pAaW50ZWwuY29tPgpDYzogTWljaGFs
IFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jICAgICAgICB8IDIzICsrKysr
LS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZGVidWdmcy5j
IHwgMjkgKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25z
KCspLCAxNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5j
CmluZGV4IDQ0NmE0MTk0NmY1Ni4uODYxNjU3ODk3YzBmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWMuYwpAQCAtNzMzLDI4ICs3MzMsMTkgQEAgaW50IGludGVsX2d1Y19hbGxv
Y2F0ZV9hbmRfbWFwX3ZtYShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMsIHUzMiBzaXplLAogICovCiB2
b2lkIGludGVsX2d1Y19sb2FkX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMsIHN0cnVjdCBk
cm1fcHJpbnRlciAqcCkKIHsKLQlzdHJ1Y3QgaW50ZWxfdWMgKnVjID0gY29udGFpbmVyX29mKGd1
Yywgc3RydWN0IGludGVsX3VjLCBndWMpOwogCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBndWNfdG9f
Z3QoZ3VjKTsKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwogCWlu
dGVsX3dha2VyZWZfdCB3YWtlcmVmOwogCi0JZHJtX3ByaW50ZihwLCAiW2d1Y10gc3VwcG9ydGVk
OiVzIHdhbnRlZDolcyB1c2VkOiVzXG4iLAotCQkgICB5ZXNubyhpbnRlbF91Y19zdXBwb3J0c19n
dWModWMpKSwKLQkJICAgeWVzbm8oaW50ZWxfdWNfd2FudHNfZ3VjKHVjKSksCi0JCSAgIHllc25v
KGludGVsX3VjX3VzZXNfZ3VjKHVjKSkpOwotCWRybV9wcmludGYocCwgIltodWNdIHN1cHBvcnRl
ZDolcyB3YW50ZWQ6JXMgdXNlZDolc1xuIiwKLQkJICAgeWVzbm8oaW50ZWxfdWNfc3VwcG9ydHNf
aHVjKHVjKSksCi0JCSAgIHllc25vKGludGVsX3VjX3dhbnRzX2h1Yyh1YykpLAotCQkgICB5ZXNu
byhpbnRlbF91Y191c2VzX2h1Yyh1YykpKTsKLQlkcm1fcHJpbnRmKHAsICJbc3VibWlzc2lvbl0g
c3VwcG9ydGVkOiVzIHdhbnRlZDolcyB1c2VkOiVzXG4iLAotCQkgICB5ZXNubyhpbnRlbF91Y19z
dXBwb3J0c19ndWNfc3VibWlzc2lvbih1YykpLAotCQkgICB5ZXNubyhpbnRlbF91Y193YW50c19n
dWNfc3VibWlzc2lvbih1YykpLAotCQkgICB5ZXNubyhpbnRlbF91Y191c2VzX2d1Y19zdWJtaXNz
aW9uKHVjKSkpOwotCi0JaWYgKCFpbnRlbF9ndWNfaXNfc3VwcG9ydGVkKGd1YykgfHwgIWludGVs
X2d1Y19pc193YW50ZWQoZ3VjKSkKKwlpZiAoIWludGVsX2d1Y19pc19zdXBwb3J0ZWQoZ3VjKSkg
eworCQlkcm1fcHJpbnRmKHAsICJHdUMgbm90IHN1cHBvcnRlZFxuIik7CiAJCXJldHVybjsKKwl9
CiAKLQlkcm1fcHV0cyhwLCAiXG4iKTsKKwlpZiAoIWludGVsX2d1Y19pc193YW50ZWQoZ3VjKSkg
eworCQlkcm1fcHJpbnRmKHAsICJHdUMgZGlzYWJsZWRcbiIpOworCQlyZXR1cm47CisJfQogCiAJ
aW50ZWxfdWNfZndfZHVtcCgmZ3VjLT5mdywgcCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjX2RlYnVnZnMuYwppbmRleCA5ZDE2Yjc4NGFhMGQuLjA4OWQ5ODY2MmY0
NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZGVidWdm
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2RlYnVnZnMuYwpA
QCAtNCwxNCArNCw0MSBAQAogICovCiAKICNpbmNsdWRlIDxsaW51eC9kZWJ1Z2ZzLmg+CisjaW5j
bHVkZSA8ZHJtL2RybV9wcmludC5oPgogCisjaW5jbHVkZSAiZ3QvZGVidWdmc19ndC5oIgogI2lu
Y2x1ZGUgImludGVsX2d1Y19kZWJ1Z2ZzLmgiCiAjaW5jbHVkZSAiaW50ZWxfaHVjX2RlYnVnZnMu
aCIKICNpbmNsdWRlICJpbnRlbF91Yy5oIgogI2luY2x1ZGUgImludGVsX3VjX2RlYnVnZnMuaCIK
IAorc3RhdGljIGludCB1Y191c2FnZV9zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0
YSkKK3sKKwlzdHJ1Y3QgaW50ZWxfdWMgKnVjID0gbS0+cHJpdmF0ZTsKKwlzdHJ1Y3QgZHJtX3By
aW50ZXIgcCA9IGRybV9zZXFfZmlsZV9wcmludGVyKG0pOworCisJZHJtX3ByaW50ZigmcCwgIltn
dWNdIHN1cHBvcnRlZDolcyB3YW50ZWQ6JXMgdXNlZDolc1xuIiwKKwkJICAgeWVzbm8oaW50ZWxf
dWNfc3VwcG9ydHNfZ3VjKHVjKSksCisJCSAgIHllc25vKGludGVsX3VjX3dhbnRzX2d1Yyh1Yykp
LAorCQkgICB5ZXNubyhpbnRlbF91Y191c2VzX2d1Yyh1YykpKTsKKwlkcm1fcHJpbnRmKCZwLCAi
W2h1Y10gc3VwcG9ydGVkOiVzIHdhbnRlZDolcyB1c2VkOiVzXG4iLAorCQkgICB5ZXNubyhpbnRl
bF91Y19zdXBwb3J0c19odWModWMpKSwKKwkJICAgeWVzbm8oaW50ZWxfdWNfd2FudHNfaHVjKHVj
KSksCisJCSAgIHllc25vKGludGVsX3VjX3VzZXNfaHVjKHVjKSkpOworCWRybV9wcmludGYoJnAs
ICJbc3VibWlzc2lvbl0gc3VwcG9ydGVkOiVzIHdhbnRlZDolcyB1c2VkOiVzXG4iLAorCQkgICB5
ZXNubyhpbnRlbF91Y19zdXBwb3J0c19ndWNfc3VibWlzc2lvbih1YykpLAorCQkgICB5ZXNubyhp
bnRlbF91Y193YW50c19ndWNfc3VibWlzc2lvbih1YykpLAorCQkgICB5ZXNubyhpbnRlbF91Y191
c2VzX2d1Y19zdWJtaXNzaW9uKHVjKSkpOworCisJcmV0dXJuIDA7Cit9CitERUZJTkVfR1RfREVC
VUdGU19BVFRSSUJVVEUodWNfdXNhZ2UpOworCiB2b2lkIGludGVsX3VjX2RlYnVnZnNfcmVnaXN0
ZXIoc3RydWN0IGludGVsX3VjICp1Yywgc3RydWN0IGRlbnRyeSAqZ3Rfcm9vdCkKIHsKKwlzdGF0
aWMgY29uc3Qgc3RydWN0IGRlYnVnZnNfZ3RfZmlsZSBmaWxlc1tdID0geworCQl7ICJ1c2FnZSIs
ICZ1Y191c2FnZV9mb3BzLCBOVUxMIH0sCisJfTsKIAlzdHJ1Y3QgZGVudHJ5ICpyb290OwogCiAJ
aWYgKCFndF9yb290KQpAQCAtMjUsNiArNTIsOCBAQCB2b2lkIGludGVsX3VjX2RlYnVnZnNfcmVn
aXN0ZXIoc3RydWN0IGludGVsX3VjICp1Yywgc3RydWN0IGRlbnRyeSAqZ3Rfcm9vdCkKIAlpZiAo
SVNfRVJSKHJvb3QpKQogCQlyZXR1cm47CiAKKwlpbnRlbF9ndF9kZWJ1Z2ZzX3JlZ2lzdGVyX2Zp
bGVzKHJvb3QsIGZpbGVzLCBBUlJBWV9TSVpFKGZpbGVzKSwgdWMpOworCiAJaW50ZWxfZ3VjX2Rl
YnVnZnNfcmVnaXN0ZXIoJnVjLT5ndWMsIHJvb3QpOwogCWludGVsX2h1Y19kZWJ1Z2ZzX3JlZ2lz
dGVyKCZ1Yy0+aHVjLCByb290KTsKIH0KLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
