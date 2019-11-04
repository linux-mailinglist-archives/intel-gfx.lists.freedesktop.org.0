Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A643EDE00
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 12:50:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8776E2F8;
	Mon,  4 Nov 2019 11:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 648C06E2F8
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 11:50:21 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id z26so3127688wmi.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Nov 2019 03:50:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Z75mTwRId82Wvhu4KGu4K20BW1ywA8U5riiIsqEbRMw=;
 b=k2taxJdRmnSIZXCSRaK51sQ4ECMiEuOKHKiOtQ6FpDi5tXwvdZGBz28OVcXVn1fpbv
 tyEvfYmoWCDmgK3j6rwCUhJLlGbupa13n7cxfA/C4ahjDhr2CaYIlJ12bNmlFjHP2xWZ
 fV5Ta2laPvf2DICb1Ctt3LkyXlQwUf0WZfOaM40OiGLjIZf7kLqTJhXpL+jj/sq0gf7X
 1t4fZO2Vyr/aQRzV8V9ULN3LKqlVx9dSCkW8YZoAgpVEky0lHe+kHmbpPDTzXu/9Yg75
 AA0leCqAa7wUJB3vkzlxHmTFNMJQGU6LqeyD3GsOjfpB1Hk6wUd/51fdKFTet6vZTNuK
 E59Q==
X-Gm-Message-State: APjAAAW5Pr7VSV9V7C/vnAHwSgQS7hUMkYhO+4Jj7eMlVuXs0hJFpqX2
 D12oB2hM77le0Q0Me9Zs0Sg1hESAfWo=
X-Google-Smtp-Source: APXvYqzl8Wy2eS+nH+UHvb3QzVV0YaIVCYBviLHWzFjM7I+pSM7esQDiDkNm32dz2s265pmf2SMOtg==
X-Received: by 2002:a1c:4089:: with SMTP id n131mr23367977wma.86.1572868219475; 
 Mon, 04 Nov 2019 03:50:19 -0800 (PST)
Received: from jheikkil-mobl.ger.corp.intel.com
 ([2001:999:41:bb05:8513:f1e8:1ad2:b5bb])
 by smtp.gmail.com with ESMTPSA id j3sm9182511wrs.70.2019.11.04.03.50.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 03:50:18 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Nov 2019 13:50:09 +0200
Message-Id: <20191104115009.15961-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Z75mTwRId82Wvhu4KGu4K20BW1ywA8U5riiIsqEbRMw=;
 b=jhCH0rMXq6hSeqcy3DALU0f1WLye1tT1+1mUoZhsVeAFcSBRsAztTatQ9aSdxAfD33
 Y9tGSBroB7NNu0RoLxUeFYNbe3bKDEsPO0A7r5Cv8GJOb+MbSFaAwSc71oWOwxBTeDEz
 qo9FvMuHDZrBHNGZrSN+6VKB0pp9Oaea+nQyzoa8TCavNgRP7jM85AXNGGyh5j518bOV
 sj2+YLMY6B96lwqcW6Gh4rBg6PPqtjZh7X6ccpnCEL3/JlBgEz5kSIdKNrlwJ5rNK9QU
 r2CVg8mb7YSAW8cG4fiNm5eUjc9HnLRaNqqajTZEsoTnIRwft6mhLz/76raq2xxmU2yW
 fuIg==
Subject: [Intel-gfx] [PATCH] drm/i915: Display WA2006604312 is needed from
 ICL onwards
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

V0EyMDA2NjA0MzEyIGlzIGxpc3RlZCBmb3IgZGV2aWNlcyBmcm9tIEljZWxha2Ugb253YXJkLgoK
U2lnbmVkLW9mZi1ieTogSnVoYS1QZWtrYSBIZWlra2lsYSA8anVoYXBla2thLmhlaWtraWxhQGdt
YWlsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZTI5
ZTgwYWU1Njk4Li43MWFjNGZlNWZiNDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCkBAIC01OTgxLDcgKzU5ODEsNyBAQCBzdGF0aWMgYm9vbCBuZWVk
c19zY2FsZXJjbGtfd2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJICAg
ICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCS8qIFdh
XzIwMDY2MDQzMTI6aWNsICovCi0JaWYgKGNydGNfc3RhdGUtPnNjYWxlcl9zdGF0ZS5zY2FsZXJf
dXNlcnMgPiAwICYmIElTX0lDRUxBS0UoZGV2X3ByaXYpKQorCWlmIChjcnRjX3N0YXRlLT5zY2Fs
ZXJfc3RhdGUuc2NhbGVyX3VzZXJzID4gMCAmJiBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQog
CQlyZXR1cm4gdHJ1ZTsKIAogCXJldHVybiBmYWxzZTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
