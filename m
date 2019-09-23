Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA60BB217
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 12:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5245C6E841;
	Mon, 23 Sep 2019 10:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com
 [IPv6:2607:f8b0:4864:20::644])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E69FA6E841
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 10:18:00 +0000 (UTC)
Received: by mail-pl1-x644.google.com with SMTP id w10so6328974plq.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 03:18:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=VfN41AG+KhtN5EttR+w0Hts+64Kvq4jnr3t8WHus3Cc=;
 b=E26yoxI7lArHQDWsSvZRmfvLu01IU3WzXNQE4Xka3UHCtSwrAFGo7Mv4LhlR9XtEAY
 QZDVqn8LAeITxRybOCFoRL8h7VLCfmcqTda0+ZnF8Ogvd6c5yqUryyzjRk6gDnXShcZ6
 jZRB8dFJS9bLYFDEIm2v36+w5ROhWnm0vk2inM748jSpYNlFmKlo5HXBVyNPujQ8RtLe
 ULlzmReVCvhfVJTwj6Zbyf7UqJBHQNOUAyKeISY3hSEr6KLYAyHqiswvJCgfdSJEqFGX
 a2GmF9bKlnNvD4ip3HABr4YxVf14dbCBAhZqISf3Qn5ur2QljGZhYBPOpYFyw1QZkTce
 DrbQ==
X-Gm-Message-State: APjAAAW1wNaprkHVu2D0FAr4q2n4bZIIjr20Mex2QDv50NjGAlWXMGI5
 ihrwdqCU4HgOQif1JTknVoAwu6vL
X-Google-Smtp-Source: APXvYqwnKbkpPxNH/PnBdqAuneLPwZgbxLj5e63oSoSB/AD+hEaq4zUdE2KQCHifuTVmFuKbE4m76w==
X-Received: by 2002:a17:902:7008:: with SMTP id
 y8mr31056548plk.176.1569233880045; 
 Mon, 23 Sep 2019 03:18:00 -0700 (PDT)
Received: from jheikkil-mobl.ger.corp.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id 16sm12123172pfn.35.2019.09.23.03.17.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 23 Sep 2019 03:17:59 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 13:17:50 +0300
Message-Id: <1569233870-15007-1-git-send-email-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=VfN41AG+KhtN5EttR+w0Hts+64Kvq4jnr3t8WHus3Cc=;
 b=B0A+wNiOC6uqxbIMt8x/z1gfI0fJAPHBPRHjEmmimx03UFu0lGrVJ5RMiIMNw9iEuD
 RKLFWYr5BN0TkJBAbh2CzpC5eIq12FMKvUhK8BGiwQbwCHMkpB9aSFvkuuzNllKvhU6T
 jFqeziE6ByVJqUwWZW9O4sKJ9MT9zBLwhn3ofZpBdtOei2C2WyWYs9C3jh4KohSE5Cwl
 AHs7gv0aMYEbsK3RI3vwa7nw1KFsI6+v61zk/3p2wOUgJJG31r8p58Qd3Ulb7b8zNq3D
 EfB/xiaBxOoG2NhXKSYqBPlZUrjm4A3prj+zaev/hQNHGjZc+So2LcOI8VFnSxEbp+pI
 zLjg==
Subject: [Intel-gfx] [PATCH] drm/i915: Allow gen11 to use over 32k long
 strides
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHN0cmlkZSBpbiBieXRlcyBtdXN0IG5vdCBleGNlZWQgdGhlIHNpemUgb2YgOEsgcGl4ZWxz
LgpMaW5lYXIgNjQgYnBwIHBpeGVsIGZvcm1hdCBtYXhpbXVtIHN0cmlkZSBpbiB0aWxlcyBpcyAx
MDI0CndoaWNoIHdvdWxkIG1lYW4gZ2VuMTEgc3VwcG9ydCA2NGsgbG9uZyBzdHJpZGUuCgpTaWdu
ZWQtb2ZmLWJ5OiBKdWhhLVBla2thIEhlaWtraWxhIDxqdWhhcGVra2EuaGVpa2tpbGFAZ21haWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgfCAz
MCArKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI0IGluc2Vy
dGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfc3ByaXRlLmMKaW5kZXggN2E3MDc4ZC4uOTQ1NmExMSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCkBAIC0zMzAsMTYgKzMzMCwzNCBAQCBza2xf
cGxhbmVfbWF4X3N0cmlkZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCQkgICAgIHVuc2ln
bmVkIGludCByb3RhdGlvbikKIHsKIAljb25zdCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvICppbmZv
ID0gZHJtX2Zvcm1hdF9pbmZvKHBpeGVsX2Zvcm1hdCk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShwbGFuZS0+YmFzZS5kZXYpOwogCWludCBjcHAgPSBpbmZv
LT5jcHBbMF07CisJaW50IG1heF9zdHJpZGVfYnl0ZXM7CisKKwlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMSkgeworCQkvKgorCQkgKiBUaGUgc3RyaWRlIGluIGJ5dGVzIG11c3Qgbm90IGV4
Y2VlZCB0aGUKKwkJICogc2l6ZSBvZiA4SyBwaXhlbHMuIExpbmVhciA2NCBicHAgcGl4ZWwgZm9y
bWF0CisJCSAqIE1heGltdW0gU3RyaWRlIGluIHRpbGVzID0gMTAyNAorCQkgKiB3aGljaCB3b3Vs
ZCBtZWFuIElDTCBzdXBwb3J0IDY0ayBsb25nIHN0cmlkZS4KKwkJICogTGluZWFyIG1vZGlmaWVy
IHNlZW1zIHRvIG5vdCB3b3JrIHdpdGggbWF4aW11bSBsZW5ndGguCisJCSAqLworCQlpZiAobW9k
aWZpZXIgPT0gRFJNX0ZPUk1BVF9NT0RfTElORUFSKQorCQkJbWF4X3N0cmlkZV9ieXRlcyA9IDY1
NTM2LTY0OworCQllbHNlCisJCQltYXhfc3RyaWRlX2J5dGVzID0gNjU1MzY7CisJfSBlbHNlIHsK
KwkJLyoKKwkJICogIlRoZSBzdHJpZGUgaW4gYnl0ZXMgbXVzdCBub3QgZXhjZWVkIHRoZQorCQkg
KiBvZiB0aGUgc2l6ZSBvZiA4SyBwaXhlbHMgYW5kIDMySyBieXRlcy4iCisJCSAqLworCQltYXhf
c3RyaWRlX2J5dGVzID0gMzI3Njg7CisJfQogCi0JLyoKLQkgKiAiVGhlIHN0cmlkZSBpbiBieXRl
cyBtdXN0IG5vdCBleGNlZWQgdGhlCi0JICogb2YgdGhlIHNpemUgb2YgOEsgcGl4ZWxzIGFuZCAz
MksgYnl0ZXMuIgotCSAqLwogCWlmIChkcm1fcm90YXRpb25fOTBfb3JfMjcwKHJvdGF0aW9uKSkK
LQkJcmV0dXJuIG1pbig4MTkyLCAzMjc2OCAvIGNwcCk7CisJCXJldHVybiBtaW4oODE5MiwgbWF4
X3N0cmlkZV9ieXRlcyAvIGNwcCk7CiAJZWxzZQotCQlyZXR1cm4gbWluKDgxOTIgKiBjcHAsIDMy
NzY4KTsKKwkJcmV0dXJuIG1pbig4MTkyICogY3BwLCBtYXhfc3RyaWRlX2J5dGVzKTsKIH0KIAog
c3RhdGljIHZvaWQKLS0gCjIuNy40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
