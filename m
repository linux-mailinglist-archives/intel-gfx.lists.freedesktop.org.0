Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D6D22E65
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8216889293;
	Mon, 20 May 2019 08:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D9B789258
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:22:33 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id m4so22530190edd.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 01:22:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5Yi2X1g2LDOK5pARSqfDRbgYny8Ht12DRNhi7B8kudE=;
 b=a196KSLUCD6JNfAilLJ5Ig0KA7sbhqvggmSPq7KzH6aAw5R5FSTQAT8bNeJr8X8PSi
 RJOlGBQE/GN7T6EvHoyZGO+a3BoSK+t0EBMjfRi711x5gFj8iB7FyN8iqGQP7wLwnbuk
 9nq03jXILVqxi+pBU8C/Hl5px+HtTWK3TdGT0SRYKhRZhgpIbsyXNWuhegmC9lDYQ0JD
 Y/UML0sBrCqmpVaXG37Ph6cJxoEKiM4Z8uMRz0VkDDHJ2DWnMJATSC+4f6nd7qWD7J+P
 M6rJCkw0i08/fNW6U/UZUVpv2bTrTXXqqO5aNwVO17xWLkcnVem86ySLcoWii23IHsZz
 M1YQ==
X-Gm-Message-State: APjAAAUnc4hqGRgWmKAH7hnEHeFF3UbvSkQ+cXFMu2BcrCEeY31R74ok
 oTvADsVH/HfMKm0NMdP0GGub/A==
X-Google-Smtp-Source: APXvYqx1KMcrcgpQkz4bO2jVYqWxeEYutnIUAq9EK8LkqC8rGjLsuq/dv8waUJ8jpDkNsjUkAr/k7w==
X-Received: by 2002:a17:906:2cd1:: with SMTP id
 r17mr57422258ejr.101.1558340550757; 
 Mon, 20 May 2019 01:22:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:30 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 10:21:50 +0200
Message-Id: <20190520082216.26273-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5Yi2X1g2LDOK5pARSqfDRbgYny8Ht12DRNhi7B8kudE=;
 b=G0YJ7vs27y+V7OdMp+ENPD1lSgTa7pNGdeswUFxkTwXtbtAumSLGCgWrIYQVT55Q9W
 1QcmoAdHvvy0lrdBljaNzs8QH2Pl1vBp/eZd4v9sjDPKQ3L6aCcyxlfACZbPsj5X2VZr
 s61clzBKGrQItY414cJdscFjWMzl/7+tRX4ho=
Subject: [Intel-gfx] [PATCH 07/33] fbdev/aty128fb: Remove dead code
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
Cc: linux-fbdev@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Paul Mackerras <paulus@samba.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW90aXZhdGVkIGJlY2F1c2UgaXQgY29udGFpbnMgYSBzdHJ1Y3QgZGlzcGxheSwgd2hpY2ggaXMg
YSBmYmNvbgppbnRlcm5hbCBkYXRhIHN0cnVjdHVyZSB0aGF0IEkgd2FudCB0byByZW5hbWUuIEl0
IHNlZW1zIHRvIGhhdmUgYmVlbgpmb3JtZXJseSB1c2VkIGluIGRyaXZlcnMsIGJ1dCB0aGF0J3Mg
dmVyeSBsb25nIHRpbWUgYWdvLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+CkNjOiBQYXVsIE1hY2tlcnJhcyA8cGF1bHVzQHNhbWJhLm9yZz4K
Q2M6IGxpbnV4LWZiZGV2QHZnZXIua2VybmVsLm9yZwotLS0KIGRyaXZlcnMvdmlkZW8vZmJkZXYv
YXR5L2F0eTEyOGZiLmMgfCA2NCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCA2NCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2Zi
ZGV2L2F0eS9hdHkxMjhmYi5jIGIvZHJpdmVycy92aWRlby9mYmRldi9hdHkvYXR5MTI4ZmIuYwpp
bmRleCA2Y2M0Njg2N2ZmNTcuLmMwMjJhZDdhNDljMiAxMDA2NDQKLS0tIGEvZHJpdmVycy92aWRl
by9mYmRldi9hdHkvYXR5MTI4ZmIuYworKysgYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2F0eS9hdHkx
MjhmYi5jCkBAIC0yMzQ5LDcwICsyMzQ5LDYgQEAgc3RhdGljIGludCBhdHkxMjhmYl9pb2N0bChz
dHJ1Y3QgZmJfaW5mbyAqaW5mbywgdV9pbnQgY21kLCB1X2xvbmcgYXJnKQogCXJldHVybiAtRUlO
VkFMOwogfQogCi0jaWYgMAotICAgIC8qCi0gICAgICogIEFjY2VsZXJhdGVkIGZ1bmN0aW9ucwot
ICAgICAqLwotCi1zdGF0aWMgaW5saW5lIHZvaWQgYXR5MTI4X3JlY3Rjb3B5KGludCBzcmN4LCBp
bnQgc3JjeSwgaW50IGRzdHgsIGludCBkc3R5LAotCQkJCSAgIHVfaW50IHdpZHRoLCB1X2ludCBo
ZWlnaHQsCi0JCQkJICAgc3RydWN0IGZiX2luZm9fYXR5MTI4ICpwYXIpCi17Ci0JdTMyIHNhdmVf
ZHBfZGF0YXR5cGUsIHNhdmVfZHBfY250bCwgZHN0dmFsOwotCi0JaWYgKCF3aWR0aCB8fCAhaGVp
Z2h0KQotCQlyZXR1cm47Ci0KLQlkc3R2YWwgPSBkZXB0aF90b19kc3QocGFyLT5jdXJyZW50X3Bh
ci5jcnRjLmRlcHRoKTsKLQlpZiAoZHN0dmFsID09IERTVF8yNEJQUCkgewotCQlzcmN4ICo9IDM7
Ci0JCWRzdHggKj0gMzsKLQkJd2lkdGggKj0gMzsKLQl9IGVsc2UgaWYgKGRzdHZhbCA9PSAtRUlO
VkFMKSB7Ci0JCXByaW50aygiYXR5MTI4ZmI6IGludmFsaWQgZGVwdGggb3IgUkdCQVxuIik7Ci0J
CXJldHVybjsKLQl9Ci0KLQl3YWl0X2Zvcl9maWZvKDIsIHBhcik7Ci0Jc2F2ZV9kcF9kYXRhdHlw
ZSA9IGF0eV9sZF9sZTMyKERQX0RBVEFUWVBFKTsKLQlzYXZlX2RwX2NudGwgICAgID0gYXR5X2xk
X2xlMzIoRFBfQ05UTCk7Ci0KLQl3YWl0X2Zvcl9maWZvKDYsIHBhcik7Ci0JYXR5X3N0X2xlMzIo
U1JDX1lfWCwgKHNyY3kgPDwgMTYpIHwgc3JjeCk7Ci0JYXR5X3N0X2xlMzIoRFBfTUlYLCBST1Az
X1NSQ0NPUFkgfCBEUF9TUkNfUkVDVCk7Ci0JYXR5X3N0X2xlMzIoRFBfQ05UTCwgRFNUX1hfTEVG
VF9UT19SSUdIVCB8IERTVF9ZX1RPUF9UT19CT1RUT00pOwotCWF0eV9zdF9sZTMyKERQX0RBVEFU
WVBFLCBzYXZlX2RwX2RhdGF0eXBlIHwgZHN0dmFsIHwgU1JDX0RTVENPTE9SKTsKLQotCWF0eV9z
dF9sZTMyKERTVF9ZX1gsIChkc3R5IDw8IDE2KSB8IGRzdHgpOwotCWF0eV9zdF9sZTMyKERTVF9I
RUlHSFRfV0lEVEgsIChoZWlnaHQgPDwgMTYpIHwgd2lkdGgpOwotCi0JcGFyLT5ibGl0dGVyX21h
eV9iZV9idXN5ID0gMTsKLQotCXdhaXRfZm9yX2ZpZm8oMiwgcGFyKTsKLQlhdHlfc3RfbGUzMihE
UF9EQVRBVFlQRSwgc2F2ZV9kcF9kYXRhdHlwZSk7Ci0JYXR5X3N0X2xlMzIoRFBfQ05UTCwgc2F2
ZV9kcF9jbnRsKTsKLX0KLQotCi0gICAgLyoKLSAgICAgKiBUZXh0IG1vZGUgYWNjZWxlcmF0ZWQg
ZnVuY3Rpb25zCi0gICAgICovCi0KLXN0YXRpYyB2b2lkIGZiY29uX2F0eTEyOF9ibW92ZShzdHJ1
Y3QgZGlzcGxheSAqcCwgaW50IHN5LCBpbnQgc3gsIGludCBkeSwKLQkJCSAgICAgICBpbnQgZHgs
IGludCBoZWlnaHQsIGludCB3aWR0aCkKLXsKLQlzeCAgICAgKj0gZm9udHdpZHRoKHApOwotCXN5
ICAgICAqPSBmb250aGVpZ2h0KHApOwotCWR4ICAgICAqPSBmb250d2lkdGgocCk7Ci0JZHkgICAg
ICo9IGZvbnRoZWlnaHQocCk7Ci0Jd2lkdGggICo9IGZvbnR3aWR0aChwKTsKLQloZWlnaHQgKj0g
Zm9udGhlaWdodChwKTsKLQotCWF0eTEyOF9yZWN0Y29weShzeCwgc3ksIGR4LCBkeSwgd2lkdGgs
IGhlaWdodCwKLQkJCShzdHJ1Y3QgZmJfaW5mb19hdHkxMjggKilwLT5mYl9pbmZvKTsKLX0KLSNl
bmRpZiAvKiAwICovCi0KIHN0YXRpYyB2b2lkIGF0eTEyOF9zZXRfc3VzcGVuZChzdHJ1Y3QgYXR5
MTI4ZmJfcGFyICpwYXIsIGludCBzdXNwZW5kKQogewogCXUzMglwbWd0OwotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
