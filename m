Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39402217ABD
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 23:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D80A6E255;
	Tue,  7 Jul 2020 21:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34A716E255
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 21:52:41 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id b25so48211686ljp.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 14:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zpPHThI0rmtMmrVW1nN4pprV3quyyvAwFDL3DXymlBA=;
 b=Ppm+crQCkOYJsP9/nBfsTJqgnpo0gUwZBOrlO76x/iZtJPDE8BZalZU9nw6C3z6XIq
 rJCh4DzPT5qT4wz6qmTB4l527e/DdR7igVHbrZsPCsC6uWgYylCINfGO3pQkLRGzaIWh
 8l3ABqaRytp14DhRHeRypSWctXVpEWOzN8TRB3WvV8PoYW15NviIlhxz94887sDZwhla
 ZjBJpECKxH69lxFnkTBxhltIu7ASAKkJUq8dpOEhHFzXhxhVIAO5mfboka3vdbuAnzpF
 ilOfbQXGf78i7hilgbvsPDMweKMKFpj2lyWJuNZ9hnVkm9Zn6//JIQA0RCXgeS2S6fRW
 TSIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zpPHThI0rmtMmrVW1nN4pprV3quyyvAwFDL3DXymlBA=;
 b=N8hFrAOdlfq6XFnBIMLl3Lro0bmmR256Zn8g6v8Pc105eqIOzG38+HcgkAq1O/0D8l
 rJXw2kxBALWmDDkim3f2dNK9CS01r20/ICOR02xZ9SH/89Ep5QkMvrL2jMVeG616DsFv
 FeCdABQFm69lzEa9UEcOQTnZjyMEc5YGR7l8cCPlQK846CfHI0JWX1sC+T2PhSqTRy8q
 aMvSxD7CzB7vXalA3HytMfyMEJBmqfiLx0RpP8HhmaAPjAdT8YmGUQTK8AMUIWTBJZN0
 KhCxbXudYRfakA3b3asa9XrO6WJYtxGeTgDBaKUv2oBneGlc2ItDcCJnKmpVZTYTKOAX
 10Lg==
X-Gm-Message-State: AOAM531yLA/SPsK8/6VfKgx1Atuc2jiH+eSgniGP1CLmr1GWL6ITF8Ch
 wS9eWet/u+ef3himJUDHYBK72RF7UMo=
X-Google-Smtp-Source: ABdhPJxIZWFib7+rKSuz70O7siMtVsBO57MxOlwbR/bD+KzN0NHcxLetwD03Z+4kwkXQfee+1uivPQ==
X-Received: by 2002:a2e:994e:: with SMTP id r14mr10491712ljj.329.1594158759179; 
 Tue, 07 Jul 2020 14:52:39 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id n9sm9797495lfd.60.2020.07.07.14.52.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 14:52:38 -0700 (PDT)
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal@hardline.pl>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jul 2020 23:52:17 +0200
Message-Id: <20200707215218.272031-1-michal@hardline.pl>
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
IFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgICAgICAgIHwgMjMgKysrKystLS0tLS0tLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19kZWJ1Z2ZzLmMgfCAyOSArKysrKysr
KysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDE2IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1
Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKaW5kZXggNDQ2YTQx
OTQ2ZjU2Li44NjE2NTc4OTdjMGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1
Yy5jCkBAIC03MzMsMjggKzczMywxOSBAQCBpbnQgaW50ZWxfZ3VjX2FsbG9jYXRlX2FuZF9tYXBf
dm1hKHN0cnVjdCBpbnRlbF9ndWMgKmd1YywgdTMyIHNpemUsCiAgKi8KIHZvaWQgaW50ZWxfZ3Vj
X2xvYWRfc3RhdHVzKHN0cnVjdCBpbnRlbF9ndWMgKmd1Yywgc3RydWN0IGRybV9wcmludGVyICpw
KQogewotCXN0cnVjdCBpbnRlbF91YyAqdWMgPSBjb250YWluZXJfb2YoZ3VjLCBzdHJ1Y3QgaW50
ZWxfdWMsIGd1Yyk7CiAJc3RydWN0IGludGVsX2d0ICpndCA9IGd1Y190b19ndChndWMpOwogCXN0
cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CiAJaW50ZWxfd2FrZXJlZl90
IHdha2VyZWY7CiAKLQlkcm1fcHJpbnRmKHAsICJbZ3VjXSBzdXBwb3J0ZWQ6JXMgd2FudGVkOiVz
IHVzZWQ6JXNcbiIsCi0JCSAgIHllc25vKGludGVsX3VjX3N1cHBvcnRzX2d1Yyh1YykpLAotCQkg
ICB5ZXNubyhpbnRlbF91Y193YW50c19ndWModWMpKSwKLQkJICAgeWVzbm8oaW50ZWxfdWNfdXNl
c19ndWModWMpKSk7Ci0JZHJtX3ByaW50ZihwLCAiW2h1Y10gc3VwcG9ydGVkOiVzIHdhbnRlZDol
cyB1c2VkOiVzXG4iLAotCQkgICB5ZXNubyhpbnRlbF91Y19zdXBwb3J0c19odWModWMpKSwKLQkJ
ICAgeWVzbm8oaW50ZWxfdWNfd2FudHNfaHVjKHVjKSksCi0JCSAgIHllc25vKGludGVsX3VjX3Vz
ZXNfaHVjKHVjKSkpOwotCWRybV9wcmludGYocCwgIltzdWJtaXNzaW9uXSBzdXBwb3J0ZWQ6JXMg
d2FudGVkOiVzIHVzZWQ6JXNcbiIsCi0JCSAgIHllc25vKGludGVsX3VjX3N1cHBvcnRzX2d1Y19z
dWJtaXNzaW9uKHVjKSksCi0JCSAgIHllc25vKGludGVsX3VjX3dhbnRzX2d1Y19zdWJtaXNzaW9u
KHVjKSksCi0JCSAgIHllc25vKGludGVsX3VjX3VzZXNfZ3VjX3N1Ym1pc3Npb24odWMpKSk7Ci0K
LQlpZiAoIWludGVsX2d1Y19pc19zdXBwb3J0ZWQoZ3VjKSB8fCAhaW50ZWxfZ3VjX2lzX3dhbnRl
ZChndWMpKQorCWlmICghaW50ZWxfZ3VjX2lzX3N1cHBvcnRlZChndWMpKSB7CisJCWRybV9wcmlu
dGYocCwgIkd1QyBub3Qgc3VwcG9ydGVkXG4iKTsKIAkJcmV0dXJuOworCX0KIAotCWRybV9wdXRz
KHAsICJcbiIpOworCWlmICghaW50ZWxfZ3VjX2lzX3dhbnRlZChndWMpKSB7CisJCWRybV9wcmlu
dGYocCwgIkd1QyBkaXNhYmxlZFxuIik7CisJCXJldHVybjsKKwl9CiAKIAlpbnRlbF91Y19md19k
dW1wKCZndWMtPmZ3LCBwKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWNfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWNfZGVidWdmcy5jCmluZGV4IDlkMTZiNzg0YWEwZC4uMDg5ZDk4NjYyZjQ2IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19kZWJ1Z2ZzLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZGVidWdmcy5jCkBAIC00LDE0ICs0LDQx
IEBACiAgKi8KIAogI2luY2x1ZGUgPGxpbnV4L2RlYnVnZnMuaD4KKyNpbmNsdWRlIDxkcm0vZHJt
X3ByaW50Lmg+CiAKKyNpbmNsdWRlICJndC9kZWJ1Z2ZzX2d0LmgiCiAjaW5jbHVkZSAiaW50ZWxf
Z3VjX2RlYnVnZnMuaCIKICNpbmNsdWRlICJpbnRlbF9odWNfZGVidWdmcy5oIgogI2luY2x1ZGUg
ImludGVsX3VjLmgiCiAjaW5jbHVkZSAiaW50ZWxfdWNfZGVidWdmcy5oIgogCitzdGF0aWMgaW50
IHVjX3VzYWdlX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQoreworCXN0cnVj
dCBpbnRlbF91YyAqdWMgPSBtLT5wcml2YXRlOworCXN0cnVjdCBkcm1fcHJpbnRlciBwID0gZHJt
X3NlcV9maWxlX3ByaW50ZXIobSk7CisKKwlkcm1fcHJpbnRmKCZwLCAiW2d1Y10gc3VwcG9ydGVk
OiVzIHdhbnRlZDolcyB1c2VkOiVzXG4iLAorCQkgICB5ZXNubyhpbnRlbF91Y19zdXBwb3J0c19n
dWModWMpKSwKKwkJICAgeWVzbm8oaW50ZWxfdWNfd2FudHNfZ3VjKHVjKSksCisJCSAgIHllc25v
KGludGVsX3VjX3VzZXNfZ3VjKHVjKSkpOworCWRybV9wcmludGYoJnAsICJbaHVjXSBzdXBwb3J0
ZWQ6JXMgd2FudGVkOiVzIHVzZWQ6JXNcbiIsCisJCSAgIHllc25vKGludGVsX3VjX3N1cHBvcnRz
X2h1Yyh1YykpLAorCQkgICB5ZXNubyhpbnRlbF91Y193YW50c19odWModWMpKSwKKwkJICAgeWVz
bm8oaW50ZWxfdWNfdXNlc19odWModWMpKSk7CisJZHJtX3ByaW50ZigmcCwgIltzdWJtaXNzaW9u
XSBzdXBwb3J0ZWQ6JXMgd2FudGVkOiVzIHVzZWQ6JXNcbiIsCisJCSAgIHllc25vKGludGVsX3Vj
X3N1cHBvcnRzX2d1Y19zdWJtaXNzaW9uKHVjKSksCisJCSAgIHllc25vKGludGVsX3VjX3dhbnRz
X2d1Y19zdWJtaXNzaW9uKHVjKSksCisJCSAgIHllc25vKGludGVsX3VjX3VzZXNfZ3VjX3N1Ym1p
c3Npb24odWMpKSk7CisKKwlyZXR1cm4gMDsKK30KK0RFRklORV9HVF9ERUJVR0ZTX0FUVFJJQlVU
RSh1Y191c2FnZSk7CisKIHZvaWQgaW50ZWxfdWNfZGVidWdmc19yZWdpc3RlcihzdHJ1Y3QgaW50
ZWxfdWMgKnVjLCBzdHJ1Y3QgZGVudHJ5ICpndF9yb290KQogeworCXN0YXRpYyBjb25zdCBzdHJ1
Y3QgZGVidWdmc19ndF9maWxlIGZpbGVzW10gPSB7CisJCXsgInVzYWdlIiwgJnVjX3VzYWdlX2Zv
cHMsIE5VTEwgfSwKKwl9OwogCXN0cnVjdCBkZW50cnkgKnJvb3Q7CiAKIAlpZiAoIWd0X3Jvb3Qp
CkBAIC0yNSw2ICs1Miw4IEBAIHZvaWQgaW50ZWxfdWNfZGVidWdmc19yZWdpc3RlcihzdHJ1Y3Qg
aW50ZWxfdWMgKnVjLCBzdHJ1Y3QgZGVudHJ5ICpndF9yb290KQogCWlmIChJU19FUlIocm9vdCkp
CiAJCXJldHVybjsKIAorCWludGVsX2d0X2RlYnVnZnNfcmVnaXN0ZXJfZmlsZXMocm9vdCwgZmls
ZXMsIEFSUkFZX1NJWkUoZmlsZXMpLCB1Yyk7CisKIAlpbnRlbF9ndWNfZGVidWdmc19yZWdpc3Rl
cigmdWMtPmd1Yywgcm9vdCk7CiAJaW50ZWxfaHVjX2RlYnVnZnNfcmVnaXN0ZXIoJnVjLT5odWMs
IHJvb3QpOwogfQotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
