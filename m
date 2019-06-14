Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E10FF46AE8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A48898C2;
	Fri, 14 Jun 2019 20:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93340897E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:37:21 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id p26so5270740edr.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:37:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WzT6U0WhgobdeP303rEiKhwYgKLzSzO8WG/ZfKn+9Ns=;
 b=rMFsp9O9sT3KMN1nnoTSMjwQOKowLczQ2wB18ol7rgxbCJ9ZHrtmFf/VBDWHwEn0g+
 pOI9HhuNRiNlFy0DSJDmPsHbqw0h3h8x+Gh0JwlbgVUOjksYl84WpMhFo2p7jpAKgrzv
 fN2qf/okQq71Yh5/67FaZZOr2pw/LL7cn+jMsWcDy+x3E+MldIX3W08SC1YXl0VbQvUf
 vhBberq+UItKBjDK7HOKHS7GJeEqFh/HmQbQpKFI0QBj5Kvm6hjI52x1wxG62XkNIOmw
 7B8Ipz/inyhpqTKAkOWhIUgbc5spOeXJfug+Bd8PmcTcJQNh0py78Dw7XJWF0jVF0dmi
 MtmA==
X-Gm-Message-State: APjAAAVRvQvG+waLTjx07vMYGqvA/xjlj5GikdQysVwHcWVZb3kuI1HK
 JCSGPaAhXDmc+MiauzTT1AFVTV87e4U=
X-Google-Smtp-Source: APXvYqylEP6VyuIhHG5p3/sL+186wPgoa2pmMLwABLQV0tmBldXeHZ4unRx2OIkygJ0mAII9+YulCg==
X-Received: by 2002:a50:b13b:: with SMTP id k56mr62380262edd.192.1560544639295; 
 Fri, 14 Jun 2019 13:37:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.37.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:18 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 14 Jun 2019 22:36:06 +0200
Message-Id: <20190614203615.12639-51-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WzT6U0WhgobdeP303rEiKhwYgKLzSzO8WG/ZfKn+9Ns=;
 b=fUYqy5EX7S68buoXknbSdujJXaPoDAre4KSzShpXZfYThrGGy9PdcaIqxb1nz1sRMk
 EWImsJ3LOqnEGRIRuNyMp2FKO45TaUP+a/pxN5Smn/AKpy4hRkC9voLQAlyTwTpOSlLE
 T4KHaZZR8/P1bE6FX7aKhQO0ij0AeqVs22XQU=
Subject: [Intel-gfx] [PATCH 50/59] drm/vc4: Use drm_gem_fb_prepare_fb
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

dmM0IGhhcyBzd2l0Y2hlZCB0byB1c2luZyBkcm1fZmItPm9ialtdLCBzbyB3ZSBjYW4ganVzdCB1
c2UgdGhlIGhlbHBlcgp1bmNoYW5nZWQuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IEVyaWMgQW5ob2x0IDxlcmljQGFuaG9sdC5uZXQ+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfcGxhbmUuYyB8IDUgKy0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vdmM0L3ZjNF9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfcGxh
bmUuYwppbmRleCA0NDFlMDZkNDVjODkuLmY1OWY4YzQwNGQ4MCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3ZjNC92YzRfcGxhbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9w
bGFuZS5jCkBAIC0xMTMyLDEwICsxMTMyLDcgQEAgc3RhdGljIGludCB2YzRfcHJlcGFyZV9mYihz
dHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKIAlpZiAoIXN0YXRlLT5mYikKIAkJcmV0dXJuIDA7CiAK
LQlibyA9IHRvX3ZjNF9ibygmZHJtX2ZiX2NtYV9nZXRfZ2VtX29iaihzdGF0ZS0+ZmIsIDApLT5i
YXNlKTsKLQotCWZlbmNlID0gcmVzZXJ2YXRpb25fb2JqZWN0X2dldF9leGNsX3JjdShiby0+YmFz
ZS5iYXNlLnJlc3YpOwotCWRybV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwgZmVu
Y2UpOworCWRybV9nZW1fZmJfcHJlcGFyZV9mYihwbGFuZSwgc3RhdGUpOwogCiAJaWYgKHBsYW5l
LT5zdGF0ZS0+ZmIgPT0gc3RhdGUtPmZiKQogCQlyZXR1cm4gMDsKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
