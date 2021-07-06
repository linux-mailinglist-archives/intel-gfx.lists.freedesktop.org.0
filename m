Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC283BC937
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 12:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AD9B89DE1;
	Tue,  6 Jul 2021 10:12:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D9189E19
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jul 2021 10:12:21 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 r9-20020a7bc0890000b02901f347b31d55so1302678wmh.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Jul 2021 03:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FWcWR1KixLijDYq3yaFOHXVbfDivFiiPhz55Z/ncpkI=;
 b=XmygK+nC/kzPdiummiRspIneR4nZhkuhJmlx1ZcM4rhww7vqH3rkpXOn1NP7CsHoGv
 ePu4bo4zdgR/55/VRpa3lhOBrhnlvQa8du0StPr68aSqkuykskZB+JysNb8C0SIG3aYS
 EAj3kO9qvukavPR/Gion8mQ7nzMSntB7wtigQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FWcWR1KixLijDYq3yaFOHXVbfDivFiiPhz55Z/ncpkI=;
 b=Rq+dYxIiuoPTXXgiJWXmGMVt0batQ+y6vIa9DKymOVVmV5vSlhavg//nIxDiq1rNmK
 Sfk11fFMTcUnvKlKbGGzv5BoFtysgQkSavsTtI29ooBsc5hRXINpjccvbe1b/vovV4rv
 XN5kT/LHH1R8ixdIJ/wXJBkYG5nYfYNnp3SOA+sQpW5L1iAcrmD200mGrGerTvk4mg0T
 Zqb00lyjTeTx9JUzZzzhoNWHrJjNNohYFjGuNyQvUK/27t4pCJPW7FRPtnJhiz2vX00j
 ts2RjhJuWGLyj/RSzJZSg6AOou8p0VRtT7c9OerR66+29YQkVG9igPNcHFbBz0anMNIE
 dtlw==
X-Gm-Message-State: AOAM530tKtfbZrwai05Ve5dIWf7WVA9Y47XOkUS09rFNlyCH9clqtvN+
 p1MWIuc/ZqWFVpI6wRaD67jr/A==
X-Google-Smtp-Source: ABdhPJxvsRGLwu8LOhmEBqhWi7vnF88H0eJvpBUkvsy/EpHw/6F/H7OjGx2seYG1MzzWj35IHlXrsw==
X-Received: by 2002:a05:600c:3783:: with SMTP id
 o3mr3931259wmr.123.1625566340404; 
 Tue, 06 Jul 2021 03:12:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u2sm9862739wmc.42.2021.07.06.03.12.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 03:12:20 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  6 Jul 2021 12:12:08 +0200
Message-Id: <20210706101209.3034092-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210706101209.3034092-1-daniel.vetter@ffwll.ch>
References: <20210706101209.3034092-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: Don't break exclusive fence
 ordering
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUncyBvbmx5IG9uZSBleGNsdXNpdmUgc2xvdCwgYW5kIHdlIG11c3Qgbm90IGJyZWFrIHRo
ZSBvcmRlcmluZy4KCkEgYmV0dGVyIGZpeCB3b3VsZCBiZSB0byB1cyBhIGRtYV9mZW5jZV9jaGFp
biBvciBfYXJyYXkgbGlrZSBlLmcuCmFtZGdwdSBub3cgdXNlcywgYnV0IGl0IHByb2JhYmx5IG1h
a2VzIHNlbnNlIHRvIGxpZnQgdGhpcyBpbnRvCmRtYS1yZXN2LmMgY29kZSBhcyBhIHByb3BlciBj
b25jZXB0LCBzbyB0aGF0IGRyaXZlcnMgZG9uJ3QgaGF2ZSB0bwpoYWNrIHVwIHRoZWlyIG93biBz
b2x1dGlvbiBlYWNoIG9uIHRoZWlyIG93bi4gSGVuY2UgZ28gd2l0aCB0aGUgc2ltcGxlCmZpeCBm
b3Igbm93LgoKQW5vdGhlciBvcHRpb24gaXMgdGhlIGZlbmNlIGltcG9ydCBpb2N0bCBmcm9tIEph
c29uOgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjEwNjEwMjEwOTI1LjY0
MjU4Mi03LWphc29uQGpsZWtzdHJhbmQubmV0LwoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogIlRob21hcyBIZWxsc3Ryw7ZtIiA8dGhv
bWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25A
amxla3N0cmFuZC5uZXQ+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4
ZWNidWZmZXIuYyB8IDYgKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVj
YnVmZmVyLmMKaW5kZXggNDdlMDcxNzkzNDdhLi45ZDcxN2M4ODQyZTIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpAQCAtMTc3NSw2ICsxNzc1
LDcgQEAgc3RhdGljIGludCBlYl9tb3ZlX3RvX2dwdShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICpl
YikKIAkJc3RydWN0IGk5MTVfdm1hICp2bWEgPSBldi0+dm1hOwogCQl1bnNpZ25lZCBpbnQgZmxh
Z3MgPSBldi0+ZmxhZ3M7CiAJCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSB2bWEt
Pm9iajsKKwkJYm9vbCBhc3luYywgd3JpdGU7CiAKIAkJYXNzZXJ0X3ZtYV9oZWxkKHZtYSk7CiAK
QEAgLTE4MDYsNyArMTgwNywxMCBAQCBzdGF0aWMgaW50IGViX21vdmVfdG9fZ3B1KHN0cnVjdCBp
OTE1X2V4ZWNidWZmZXIgKmViKQogCQkJCWZsYWdzICY9IH5FWEVDX09CSkVDVF9BU1lOQzsKIAkJ
fQogCi0JCWlmIChlcnIgPT0gMCAmJiAhKGZsYWdzICYgRVhFQ19PQkpFQ1RfQVNZTkMpKSB7CisJ
CWFzeW5jID0gZmxhZ3MgJiBFWEVDX09CSkVDVF9BU1lOQzsKKwkJd3JpdGUgPSBmbGFncyAmIEVY
RUNfT0JKRUNUX1dSSVRFOworCisJCWlmIChlcnIgPT0gMCAmJiAoIWFzeW5jIHx8IHdyaXRlKSkg
ewogCQkJZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X29iamVjdAogCQkJCShlYi0+cmVxdWVzdCwg
b2JqLCBmbGFncyAmIEVYRUNfT0JKRUNUX1dSSVRFKTsKIAkJfQotLSAKMi4zMi4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
