Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EE4FD8B8
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 10:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A246E239;
	Fri, 15 Nov 2019 09:21:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 795026E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 09:21:32 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id a15so10122989wrf.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 01:21:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ofNJ8QQd5sGKrd+MvK2ikuebIJLqvpUQ1kyGZQwtx/I=;
 b=on1/RGbbKokq1csyeesvVZWIFAD/d7mA7WIQErwVQHgadlUTcvE98VKouie//6yBDO
 p5QDECbcQc4B0XcSgl+Ka06AvLH/mxOh9pzjRHiXZrKb/X1F+9rxUeXr+7YCmX8nNRmH
 8xcZGXeLVmkg0AaY0nly8IwxN3oVS++t6v9J+ksOTnNHcsfTEl8ITAD/gNqsPivrhboE
 FiV5OPDfSVBsQ4aCDO9M4vUM/AHii8xMIBdO77Eob9uBOmfget4eWo6GK1Jk2HlfB+8k
 6eUWkhlVla6DWv/npyjLeiKy9/Xcy5xN0ltp+w45cHZHQkRpW5ALFFctmlxhrB/o9qx6
 +PzA==
X-Gm-Message-State: APjAAAW8YjvRHs/K9ziPSsYKVSzfnMWHCifB3ixNAebaLts6g3MXFtFN
 T9QXHuA6ujJrOEaxl0/cmE5+wA==
X-Google-Smtp-Source: APXvYqyQKoodCSy68a/nZvolemA/RUEMw97i8haQjEdjkNAIk+Di+W/dIlbZO269UWOLN4VoIfMQEA==
X-Received: by 2002:adf:f44a:: with SMTP id f10mr13999917wrp.63.1573809691156; 
 Fri, 15 Nov 2019 01:21:31 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id 11sm8987506wmi.8.2019.11.15.01.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 01:21:30 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 15 Nov 2019 10:21:16 +0100
Message-Id: <20191115092120.4445-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ofNJ8QQd5sGKrd+MvK2ikuebIJLqvpUQ1kyGZQwtx/I=;
 b=Om/NhQzSdKpM6y/70DSZwXeDQIzy3oww63dVXF+OkGU5AZ0pB+zj8FG7NKM/EXiRWC
 tsVz9AeWnDSaawt4fCt6LuYisC6aoim0bUIYwOgMWHoKxnN/px9yPhnVw6hqWCdYnapQ
 5K/8mdZ77+F6o0wD71fQz9k/MvOSGh1krio6I=
Subject: [Intel-gfx] [PATCH 4/8] drm/rockchip: Use
 drm_gem_fb_create_with_dirty
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgcm9ja2NoaXAgd291bGQgc3dpdGNoIG92ZXIgdG8gdGhlIGdlbmVyaWMgZmJkZXYgc2V0dXAg
d2UgY291bGQKZ3JhYmFnZSBjb2xsZWN0IGV2ZW4gbW9yZSBvZiBhbGwgdGhpcyBjb2RlIChhbGwg
b2YgdGhlIHJlbWFpbmluZyBmYgpoYW5kbGluZyBjb2RlIHJlYWxseSkuCgpTaWduZWQtb2ZmLWJ5
OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFNhbmR5IEh1YW5n
IDxoamNAcm9jay1jaGlwcy5jb20+CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2gu
ZGU+CkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2ZiLmMgfCA1NCArLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDUzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYyBiL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwppbmRleCBjYTAxMjM0YzAzN2MuLjA4MWRiZGFhMGIw
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9mYi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwpAQCAtNTMs
NjQgKzUzLDEyIEBAIHJvY2tjaGlwX2ZiX2FsbG9jKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIGNv
bnN0IHN0cnVjdCBkcm1fbW9kZV9mYl9jbWQyICptb2RlX2NtCiAJcmV0dXJuIGZiOwogfQogCi1z
dGF0aWMgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqCi1yb2NrY2hpcF91c2VyX2ZiX2NyZWF0ZShz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwKLQkJCWNv
bnN0IHN0cnVjdCBkcm1fbW9kZV9mYl9jbWQyICptb2RlX2NtZCkKLXsKLQljb25zdCBzdHJ1Y3Qg
ZHJtX2Zvcm1hdF9pbmZvICppbmZvID0gZHJtX2dldF9mb3JtYXRfaW5mbyhkZXYsCi0JCQkJCQkJ
CSBtb2RlX2NtZCk7Ci0Jc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmI7Ci0Jc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmpzW1JPQ0tDSElQX01BWF9GQl9CVUZGRVJdOwotCXN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb2JqOwotCWludCBudW1fcGxhbmVzID0gbWluX3QoaW50LCBpbmZvLT5udW1fcGxh
bmVzLCBST0NLQ0hJUF9NQVhfRkJfQlVGRkVSKTsKLQlpbnQgcmV0OwotCWludCBpOwotCi0JZm9y
IChpID0gMDsgaSA8IG51bV9wbGFuZXM7IGkrKykgewotCQl1bnNpZ25lZCBpbnQgd2lkdGggPSBt
b2RlX2NtZC0+d2lkdGggLyAoaSA/IGluZm8tPmhzdWIgOiAxKTsKLQkJdW5zaWduZWQgaW50IGhl
aWdodCA9IG1vZGVfY21kLT5oZWlnaHQgLyAoaSA/IGluZm8tPnZzdWIgOiAxKTsKLQkJdW5zaWdu
ZWQgaW50IG1pbl9zaXplOwotCi0JCW9iaiA9IGRybV9nZW1fb2JqZWN0X2xvb2t1cChmaWxlX3By
aXYsIG1vZGVfY21kLT5oYW5kbGVzW2ldKTsKLQkJaWYgKCFvYmopIHsKLQkJCURSTV9ERVZfRVJS
T1IoZGV2LT5kZXYsCi0JCQkJICAgICAgIkZhaWxlZCB0byBsb29rdXAgR0VNIG9iamVjdFxuIik7
Ci0JCQlyZXQgPSAtRU5YSU87Ci0JCQlnb3RvIGVycl9nZW1fb2JqZWN0X3VucmVmZXJlbmNlOwot
CQl9Ci0KLQkJbWluX3NpemUgPSAoaGVpZ2h0IC0gMSkgKiBtb2RlX2NtZC0+cGl0Y2hlc1tpXSAr
Ci0JCQltb2RlX2NtZC0+b2Zmc2V0c1tpXSArCi0JCQl3aWR0aCAqIGluZm8tPmNwcFtpXTsKLQot
CQlpZiAob2JqLT5zaXplIDwgbWluX3NpemUpIHsKLQkJCWRybV9nZW1fb2JqZWN0X3B1dF91bmxv
Y2tlZChvYmopOwotCQkJcmV0ID0gLUVJTlZBTDsKLQkJCWdvdG8gZXJyX2dlbV9vYmplY3RfdW5y
ZWZlcmVuY2U7Ci0JCX0KLQkJb2Jqc1tpXSA9IG9iajsKLQl9Ci0KLQlmYiA9IHJvY2tjaGlwX2Zi
X2FsbG9jKGRldiwgbW9kZV9jbWQsIG9ianMsIGkpOwotCWlmIChJU19FUlIoZmIpKSB7Ci0JCXJl
dCA9IFBUUl9FUlIoZmIpOwotCQlnb3RvIGVycl9nZW1fb2JqZWN0X3VucmVmZXJlbmNlOwotCX0K
LQotCXJldHVybiBmYjsKLQotZXJyX2dlbV9vYmplY3RfdW5yZWZlcmVuY2U6Ci0JZm9yIChpLS07
IGkgPj0gMDsgaS0tKQotCQlkcm1fZ2VtX29iamVjdF9wdXRfdW5sb2NrZWQob2Jqc1tpXSk7Ci0J
cmV0dXJuIEVSUl9QVFIocmV0KTsKLX0KLQogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fbW9kZV9j
b25maWdfaGVscGVyX2Z1bmNzIHJvY2tjaGlwX21vZGVfY29uZmlnX2hlbHBlcnMgPSB7CiAJLmF0
b21pY19jb21taXRfdGFpbCA9IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90YWlsX3JwbSwKIH07
CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnX2Z1bmNzIHJvY2tjaGlwX2Ry
bV9tb2RlX2NvbmZpZ19mdW5jcyA9IHsKLQkuZmJfY3JlYXRlID0gcm9ja2NoaXBfdXNlcl9mYl9j
cmVhdGUsCisJLmZiX2NyZWF0ZSA9IGRybV9nZW1fZmJfY3JlYXRlLAogCS5vdXRwdXRfcG9sbF9j
aGFuZ2VkID0gZHJtX2ZiX2hlbHBlcl9vdXRwdXRfcG9sbF9jaGFuZ2VkLAogCS5hdG9taWNfY2hl
Y2sgPSBkcm1fYXRvbWljX2hlbHBlcl9jaGVjaywKIAkuYXRvbWljX2NvbW1pdCA9IGRybV9hdG9t
aWNfaGVscGVyX2NvbW1pdCwKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
