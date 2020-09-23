Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A226275B75
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 17:19:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B7A6E923;
	Wed, 23 Sep 2020 15:19:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551DB6E923
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 15:18:59 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id a17so449358wrn.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 08:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0DsCCpKvYxPY+GV4zFILK6LBWa/KKJdBK4453zhPMjg=;
 b=bhwjoy09kAk3AY7au0E0Un/CNQvaV3kduQxGLzsXAmw2UeTrAHpOAPs6arPqXc4GsF
 67PXjlF378yI8M4tWzFwlGzRyEO0ivgNC1JmeMU27++qeV5t+fXIVo4CMf5KTXIjx91M
 wk1+XtmruPtBqqczX09bpd3vmUvfOP0Qc5Ck0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0DsCCpKvYxPY+GV4zFILK6LBWa/KKJdBK4453zhPMjg=;
 b=G2OAWO1qZLp9R8AFsPgdWl5wcwQQU0HoOo21yYiAUnxApN0ssQE9NrXOX8Vjg8HQWG
 agP/aShzxFJK6+LZ4IX47IMyeo4tb3qAGNHYc09wxUtYqfSBM9dQshniMrzWDx0xyEOo
 sKVzLsrdFAPKWXZL86lmIF2RBYaeQBpkw9/G8pUVTjmeWzU1Kyh/sc7P9uphTthr1351
 J5MsN1pfGCccHWfK39TMK8VP81SpVLrmlmGEB8ORn9GBNMbfmsL9zmIf8niEU5Ibrdb+
 2JiZ1VAOfINvsYc3MmmQdu4OOj+T75R20lZmU6FtGQklWU5PbZqfLdRyrVSEluX4Q3Fx
 pK8A==
X-Gm-Message-State: AOAM531sHSDIZGKHDarqTccHb4Bo1FqeukiaTY1kjzptbHLARIFc9JZM
 MWjJSBEuW28X2CPAWH7h9WdYAw==
X-Google-Smtp-Source: ABdhPJwiDk3psN0MkuOeX06vh14qpXcve3KUeJ2+h40S9pg8k3ce8AleU0PuzscUxj/Iufuq8L2FNQ==
X-Received: by 2002:a05:6000:12c3:: with SMTP id
 l3mr191768wrx.164.1600874337981; 
 Wed, 23 Sep 2020 08:18:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b11sm140017wrt.38.2020.09.23.08.18.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 08:18:57 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 23 Sep 2020 17:18:52 +0200
Message-Id: <20200923151852.2952812-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200923105737.2943649-1-daniel.vetter@ffwll.ch>
References: <20200923105737.2943649-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/atomic: document and enforce rules around
 "spurious" EBUSY
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Simon Ser <contact@emersion.fr>,
 Pekka Paalanen <pekka.paalanen@collabora.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBkb2luZyBhbiBhdG9taWMgbW9kZXNldCB3aXRoIEFMTE9XX01PREVTRVQgZHJpdmVycyBh
cmUgYWxsb3dlZCB0bwpwdWxsIGluIGFyYml0cmFyeSBvdGhlciByZXNvdXJjZXMsIGluY2x1ZGlu
ZyBDUlRDcyAoZS5nLiB3aGVuCnJlY29uZmlndXJpbmcgZ2xvYmFsIHJlc291cmNlcykuCgpCdXQg
aW4gbm9uYmxvY2tpbmcgbW9kZSB1c2Vyc3BhY2UgaGFzIHRoZW4gbm8gaWRlYSB0aGlzIGhhcHBl
bmVkLAp3aGljaCBjYW4gbGVhZCB0byBzcHVyaW91cyBFQlVTWSBjYWxscywgYm90aDoKLSB3aGVu
IHRoYXQgb3RoZXIgQ1JUQyBpcyBjdXJyZW50bHkgYnVzeSBkb2luZyBhIHBhZ2VfZmxpcCB0aGUK
ICBBTExPV19NT0RFU0VUIGNvbW1pdCBjYW4gZmFpbCB3aXRoIGFuIEVCVVNZCi0gb24gdGhlIG90
aGVyIENSVEMgYSBub3JtYWwgYXRvbWljIGZsaXAgY2FuIGZhaWwgd2l0aCBFQlVTWSBiZWNhdXNl
CiAgb2YgdGhlIGFkZGl0aW9uYWwgY29tbWl0IGluc2VydGVkIGJ5IHRoZSBrZXJuZWwgd2l0aG91
dCB1c2Vyc3BhY2UncwogIGtub3dsZWRnZQoKRm9yIGJsb2NraW5nIGNvbW1pdHMgdGhpcyBpc24n
dCBhIHByb2JsZW0sIGJlY2F1c2UgZXZlcnlvbmUgZWxzZSB3aWxsCmp1c3QgYmxvY2sgdW50aWwg
YWxsIHRoZSBDUlRDIGFyZSByZWNvbmZpZ3VyZWQuIE9ubHkgdGhpbmcgdXNlcnNwYWNlCmNhbiBu
b3RpY2UgaXMgdGhlIGRyb3BwZWQgZnJhbWVzIHdpdGhvdXQgYW55IHJlYXNvbiBmb3Igd2h5IGZy
YW1lcyBnb3QKZHJvcHBlZC4KCkNvbnNlbnN1cyBpcyB0aGF0IHdlIG5lZWQgbmV3IHVhcGkgdG8g
aGFuZGxlIHRoaXMgcHJvcGVybHksIGJ1dCBubyBvbmUKaGFzIGFueSBpZGVhIHdoYXQgZXhhY3Rs
eSB0aGUgbmV3IHVhcGkgc2hvdWxkIGxvb2sgbGlrZS4gU2luY2UgdGhpcwpoYXMgYmVlbiBzaGlw
cGluZyBmb3IgeWVhcnMgYWxyZWFkeSBjb21wb3NpdG9ycyBuZWVkIHRvIGRlYWwgbm8gbWF0dGVy
CndoYXQsIHNvIGFzIGEgZmlyc3Qgc3RlcCBqdXN0IHRyeSB0byBlbmZvcmNlIHRoaXMgYWNyb3Nz
IGRyaXZlcnMKYmV0dGVyIHdpdGggc29tZSBjaGVja3MuCgp2MjogQWRkIGNvbW1lbnRzIGFuZCBh
IFdBUk5fT04gdG8gZW5mb3JjZSB0aGlzIG9ubHkgd2hlbiBhbGxvd2VkIC0gd2UKZG9uJ3Qgd2Fu
dCB0byBzaWxlbnRseSBjb252ZXJ0IHBhZ2UgZmxpcHMgaW50byBibG9ja2luZyBwbGFuZSB1cGRh
dGVzCmp1c3QgYmVjYXVzZSB0aGUgZHJpdmVyIGlzIGJ1Z2d5LgoKdjM6IEZpeCBpbnZlcnRlZCBX
QVJOX09OIChQZWtrYSkuCgp2NDogRHJvcCB0aGUgdWFwaSBjaGFuZ2VzLCBvbmx5IGFkZCBhIFdB
Uk5fT04gZm9yIG5vdyB0byBlbmZvcmNlIHNvbWUKcnVsZXMgZm9yIGRyaXZlcnMuCgp2NTogTWFr
ZSB0aGUgV0FSTklORyBtb3JlIGluZm9ybWF0aXZlIChEYW5pZWwpCgp2NjogQWRkIHVuY29uZGl0
aW9uYWwgZGVidWcgb3V0cHV0IGZvciBjb21wb3NpdG9yIGhhY2tlcnMgdG8gZmlndXJlCm91dCB3
aGF0J3MgZ29pbmcgb24gd2hlbiB0aGV5IGdldCBhbiBFQlVTWSAoRGFuaWVsKQoKUmVmZXJlbmNl
czogaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMTgt
SnVseS8xODIyODEuaHRtbApCdWd6aWxsYTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L3dheWxhbmQvd2VzdG9uL2lzc3Vlcy8yNCNub3RlXzk1NjgKQ2M6IERhbmllbCBTdG9uZSA8ZGFu
aWVsQGZvb2lzaGJhci5vcmc+CkNjOiBQZWtrYSBQYWFsYW5lbiA8cGVra2EucGFhbGFuZW5AY29s
bGFib3JhLmNvLnVrPgpDYzogU2ltb24gU2VyIDxjb250YWN0QGVtZXJzaW9uLmZyPgpDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2RybV9hdG9taWMuYyB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fYXRvbWljLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pYy5jCmluZGV4IDU4
NTI3ZjE1MTk4NC4uZjFhOTEyZTgwODQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2F0b21pYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljLmMKQEAgLTI4MSw2ICsy
ODEsMTAgQEAgRVhQT1JUX1NZTUJPTChfX2RybV9hdG9taWNfc3RhdGVfZnJlZSk7CiAgKiBuZWVk
ZWQuIEl0IHdpbGwgYWxzbyBncmFiIHRoZSByZWxldmFudCBDUlRDIGxvY2sgdG8gbWFrZSBzdXJl
IHRoYXQgdGhlIHN0YXRlCiAgKiBpcyBjb25zaXN0ZW50LgogICoKKyAqIFdBUk5JTkc6IERyaXZl
cnMgbWF5IG9ubHkgYWRkIG5ldyBDUlRDIHN0YXRlcyB0byBhIEBzdGF0ZSBpZgorICogZHJtX2F0
b21pY19zdGF0ZS5hbGxvd19tb2Rlc2V0IGlzIHNldCwgb3IgaWYgaXQncyBhIGRyaXZlci1pbnRl
cm5hbCBjb21taXQKKyAqIG5vdCBjcmVhdGVkIGJ5IHVzZXJzcGFjZSB0aHJvdWdoIGFuIElPQ1RM
IGNhbGwuCisgKgogICogUmV0dXJuczoKICAqCiAgKiBFaXRoZXIgdGhlIGFsbG9jYXRlZCBzdGF0
ZSBvciB0aGUgZXJyb3IgY29kZSBlbmNvZGVkIGludG8gdGhlIHBvaW50ZXIuIFdoZW4KQEAgLTEy
NjIsMTAgKzEyNjYsMTUgQEAgaW50IGRybV9hdG9taWNfY2hlY2tfb25seShzdHJ1Y3QgZHJtX2F0
b21pY19zdGF0ZSAqc3RhdGUpCiAJc3RydWN0IGRybV9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0
ZTsKIAlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubjsKIAlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9z
dGF0ZSAqY29ubl9zdGF0ZTsKKwl1bnNpZ25lZCByZXF1ZXN0ZWRfY3J0YyA9IDA7CisJdW5zaWdu
ZWQgYWZmZWN0ZWRfY3J0YyA9IDA7CiAJaW50IGksIHJldCA9IDA7CiAKIAlEUk1fREVCVUdfQVRP
TUlDKCJjaGVja2luZyAlcFxuIiwgc3RhdGUpOwogCisJZm9yX2VhY2hfbmV3X2NydGNfaW5fc3Rh
dGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLCBpKQorCQlyZXF1ZXN0ZWRfY3J0YyB8PSBk
cm1fY3J0Y19tYXNrKGNydGMpOworCiAJZm9yX2VhY2hfb2xkbmV3X3BsYW5lX2luX3N0YXRlKHN0
YXRlLCBwbGFuZSwgb2xkX3BsYW5lX3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUsIGkpIHsKIAkJcmV0
ID0gZHJtX2F0b21pY19wbGFuZV9jaGVjayhvbGRfcGxhbmVfc3RhdGUsIG5ld19wbGFuZV9zdGF0
ZSk7CiAJCWlmIChyZXQpIHsKQEAgLTEzMTMsNiArMTMyMiwyNiBAQCBpbnQgZHJtX2F0b21pY19j
aGVja19vbmx5KHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKIAkJfQogCX0KIAorCWZv
cl9lYWNoX25ld19jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwgaSkK
KwkJYWZmZWN0ZWRfY3J0YyB8PSBkcm1fY3J0Y19tYXNrKGNydGMpOworCisJLyoKKwkgKiBGb3Ig
Y29tbWl0cyB0aGF0IGFsbG93IG1vZGVzZXRzIGRyaXZlcnMgY2FuIGFkZCBvdGhlciBDUlRDcyB0
byB0aGUKKwkgKiBhdG9taWMgY29tbWl0LCBlLmcuIHdoZW4gdGhleSBuZWVkIHRvIHJlYWxsb2Nh
dGUgZ2xvYmFsIHJlc291cmNlcy4KKwkgKiBUaGlzIGNhbiBjYXVzZSBzcHVyaW91cyBFQlVTWSwg
d2hpY2ggcm9icyBjb21wb3NpdG9ycyBvZiBhIHZlcnkKKwkgKiBlZmZlY3RpdmUgc2FuaXR5IGNo
ZWNrIGZvciB0aGVpciBkcmF3aW5nIGxvb3AuIFRoZXJlZm9yIG9ubHkgYWxsb3cKKwkgKiBkcml2
ZXJzIHRvIGFkZCB1bnJlbGF0ZWQgQ1JUQyBzdGF0ZXMgZm9yIG1vZGVzZXQgY29tbWl0cy4KKwkg
KgorCSAqIEZJWE1FOiBTaG91bGQgYWRkIGFmZmVjdGVkX2NydGMgbWFzayB0byB0aGUgQVRPTUlD
IElPQ1RMIGFzIGFuIG91dHB1dAorCSAqIHNvIGNvbXBvc2l0b3JzIGtub3cgd2hhdCdzIGdvaW5n
IG9uLgorCSAqLworCWlmIChhZmZlY3RlZF9jcnRjICE9IHJlcXVlc3RlZF9jcnRjKSB7CisJCURS
TV9ERUJVR19BVE9NSUMoImRyaXZlciBhZGRlZCBDUlRDIHRvIGNvbW1pdDogcmVxdWVzdGVkIDB4
JXgsIGFmZmVjdGVkIDB4JTB4XG4iLAorCQkJCSByZXF1ZXN0ZWRfY3J0YywgYWZmZWN0ZWRfY3J0
Yyk7CisJCVdBUk4oIXN0YXRlLT5hbGxvd19tb2Rlc2V0LCAiYWRkaW5nIENSVEMgbm90IGFsbG93
ZWQgd2l0aG91dCBtb2Rlc2V0czogcmVxdWVzdGVkIDB4JXgsIGFmZmVjdGVkIDB4JTB4XG4iLAor
CQkgICAgIHJlcXVlc3RlZF9jcnRjLCBhZmZlY3RlZF9jcnRjKTsKKwl9CisKIAlyZXR1cm4gMDsK
IH0KIEVYUE9SVF9TWU1CT0woZHJtX2F0b21pY19jaGVja19vbmx5KTsKLS0gCjIuMjguMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
