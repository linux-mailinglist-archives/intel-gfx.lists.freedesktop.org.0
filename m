Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0307210DB5
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 16:28:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 821E76E907;
	Wed,  1 Jul 2020 14:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E09A6E907
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 14:28:09 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id h22so20087278lji.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Jul 2020 07:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z0K7pFQJwJZaIxyLEza0xR+KwVS+Vvemw9DfNuHGRQU=;
 b=PruDM5EJZ1OZsc12ZqbVJkSmznao9077T7R9uG2wxZP1Vw+/PrEy2xWY/Eu/J88QWf
 TJTC41ve77K7iITsc+vmpm4mYMr2wbLQODXRhyckgjCVsfp56Le+CYNZtersXL9+r50k
 9TbrwNBxXoOTr4CXwghd0Kp2O1+U2IvY8NZezwwuuYrUiFNLNu1meV9/v7YUS/tfa61B
 xGmVIuE623IDQy4GYfdWCJwcpS+OiU6UohkfXcPe2faf6+t8NqB/QliWt4tXoFDu42ot
 ysw8VNK2l5zV9l9OOSsRvCJXaKZx0WVDo9lYsNy0w5HUDFnAvKyvd7WOEddDOX6XvyZo
 5JZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z0K7pFQJwJZaIxyLEza0xR+KwVS+Vvemw9DfNuHGRQU=;
 b=rYuylCgwzGkxL0ak6IJk7f32SZbpmEWpimvSuExrs49q3BdlbIjpQ/xEVBmlxrD8CB
 8hwEiM9/hpwLFR5++swFHPX09DiGH2jbTP860CeShEqVkcptN5EJagkoEQoXR6hr+kaI
 7koAvJn/+33g+Tey11MPu7YKGjzBztvOtPp27cnEBWPpHURIQMr1Iw3qwqvaga7c2/QY
 RKbiJVzU3NgjQGZ2C4Hp6LGX0av11F23KO4NnQPnxGGc0tcoz0aqFC2T89t2TMf7P7e4
 RjbJ8fa4zIRHYHbnkcWGnNnc7tj//EpVWpPRUH91b/NMnf3lvW21rX/T2IAyjUsxtO7o
 7IZg==
X-Gm-Message-State: AOAM532h+8UBu30/bRPY74hT3XS8j01UoqwMjisOppeAE7rJmQkfkcER
 80oN1D7uiLX2Zrjzplv7bIu6jlYrfas=
X-Google-Smtp-Source: ABdhPJykisXsMzkHbqRJZ0pjJg1BC9L2+GzuyvOX00/BnirpwXmFJjrtp3cvI8+AcGSBrHCMFck85g==
X-Received: by 2002:a2e:1508:: with SMTP id s8mr13018997ljd.52.1593613687428; 
 Wed, 01 Jul 2020 07:28:07 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id q1sm2110120lfp.42.2020.07.01.07.28.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 07:28:06 -0700 (PDT)
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal@hardline.pl>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 16:27:52 +0200
Message-Id: <20200701142752.419878-1-michal@hardline.pl>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Expand guc_info debugfs with more
 information
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

RnJvbTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKVGhl
IGluZm9ybWF0aW9uIGFib3V0IHBsYXRmb3JtL2RyaXZlci91c2VyIHZpZXcgb2YgR3VDIGZpcm13
YXJlIHVzYWdlCmN1cnJlbnRseSByZXF1aXJlcyB1c2VyIHRvIGVpdGhlciBnbyB0aHJvdWdoIGtl
cm5lbCBsb2cgb3IgcGFyc2UgdGhlCmNvbWJpbmF0aW9uIG9mICJlbmFibGVfZ3VjIiBtb2RwYXJh
bSBhbmQgdmFyaW91cyBkZWJ1Z2ZzIGVudHJpZXMuCkxldCdzIGtlZXAgdGhpbmdzIHNpbXBsZSBh
bmQgYWRkIGEgInN1cHBvcnRlZC91c2VkL3dhbnRlZCIgbWF0cml4CihhbHJlYWR5IHVzZWQgaW50
ZXJuYWxseSBieSBpOTE1KSBpbiBndWNfaW5mbyBkZWJ1Z2ZzLgoKU2lnbmVkLW9mZi1ieTogTWlj
aGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgpDYzogRGFuaWVsZSBD
ZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IEx1a2Fz
eiBGaWVkb3Jvd2ljeiA8bHVrYXN6LmZpZWRvcm93aWN6QGludGVsLmNvbT4KQ2M6IE1pY2hhbCBX
YWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jIHwgMjMgKysrKysrKysrKysrKysrKy0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKaW5kZXggODYxNjU3ODk3YzBmLi40NDZhNDE5NDZm
NTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jCkBAIC03MzMsMTkgKzcz
MywyOCBAQCBpbnQgaW50ZWxfZ3VjX2FsbG9jYXRlX2FuZF9tYXBfdm1hKHN0cnVjdCBpbnRlbF9n
dWMgKmd1YywgdTMyIHNpemUsCiAgKi8KIHZvaWQgaW50ZWxfZ3VjX2xvYWRfc3RhdHVzKHN0cnVj
dCBpbnRlbF9ndWMgKmd1Yywgc3RydWN0IGRybV9wcmludGVyICpwKQogeworCXN0cnVjdCBpbnRl
bF91YyAqdWMgPSBjb250YWluZXJfb2YoZ3VjLCBzdHJ1Y3QgaW50ZWxfdWMsIGd1Yyk7CiAJc3Ry
dWN0IGludGVsX2d0ICpndCA9IGd1Y190b19ndChndWMpOwogCXN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZSA9IGd0LT51bmNvcmU7CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CiAKLQlpZiAo
IWludGVsX2d1Y19pc19zdXBwb3J0ZWQoZ3VjKSkgewotCQlkcm1fcHJpbnRmKHAsICJHdUMgbm90
IHN1cHBvcnRlZFxuIik7CisJZHJtX3ByaW50ZihwLCAiW2d1Y10gc3VwcG9ydGVkOiVzIHdhbnRl
ZDolcyB1c2VkOiVzXG4iLAorCQkgICB5ZXNubyhpbnRlbF91Y19zdXBwb3J0c19ndWModWMpKSwK
KwkJICAgeWVzbm8oaW50ZWxfdWNfd2FudHNfZ3VjKHVjKSksCisJCSAgIHllc25vKGludGVsX3Vj
X3VzZXNfZ3VjKHVjKSkpOworCWRybV9wcmludGYocCwgIltodWNdIHN1cHBvcnRlZDolcyB3YW50
ZWQ6JXMgdXNlZDolc1xuIiwKKwkJICAgeWVzbm8oaW50ZWxfdWNfc3VwcG9ydHNfaHVjKHVjKSks
CisJCSAgIHllc25vKGludGVsX3VjX3dhbnRzX2h1Yyh1YykpLAorCQkgICB5ZXNubyhpbnRlbF91
Y191c2VzX2h1Yyh1YykpKTsKKwlkcm1fcHJpbnRmKHAsICJbc3VibWlzc2lvbl0gc3VwcG9ydGVk
OiVzIHdhbnRlZDolcyB1c2VkOiVzXG4iLAorCQkgICB5ZXNubyhpbnRlbF91Y19zdXBwb3J0c19n
dWNfc3VibWlzc2lvbih1YykpLAorCQkgICB5ZXNubyhpbnRlbF91Y193YW50c19ndWNfc3VibWlz
c2lvbih1YykpLAorCQkgICB5ZXNubyhpbnRlbF91Y191c2VzX2d1Y19zdWJtaXNzaW9uKHVjKSkp
OworCisJaWYgKCFpbnRlbF9ndWNfaXNfc3VwcG9ydGVkKGd1YykgfHwgIWludGVsX2d1Y19pc193
YW50ZWQoZ3VjKSkKIAkJcmV0dXJuOwotCX0KIAotCWlmICghaW50ZWxfZ3VjX2lzX3dhbnRlZChn
dWMpKSB7Ci0JCWRybV9wcmludGYocCwgIkd1QyBkaXNhYmxlZFxuIik7Ci0JCXJldHVybjsKLQl9
CisJZHJtX3B1dHMocCwgIlxuIik7CiAKIAlpbnRlbF91Y19md19kdW1wKCZndWMtPmZ3LCBwKTsK
IAotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
