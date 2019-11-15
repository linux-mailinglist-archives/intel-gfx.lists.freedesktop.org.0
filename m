Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A13F8FD8AE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 10:21:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91DB6E209;
	Fri, 15 Nov 2019 09:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E48DB6E1A7
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 09:21:28 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id i10so10143380wrs.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 01:21:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7+oPDeQqF7gn0t6Wu9eF8AtGPXsaZV+oIAe4ESZB4+I=;
 b=hqAdFuXXKLEvAOqfiTxWQD2V2J1iI9B3D/VA+drFgxq1+mEEj1M5vTFu+RKeONgcEk
 UQCaxAOfXTrPveKOdl4C2/0b6esP5n9AwsuV4xfitlRwtYsVNLwG6e/NYeoSJO6FG0yQ
 CPf7g24SXRqJmWepAqrWBVJ7+7U8m7gCZD2Q3d+Ay+odgtHdwax/AmXLzMg0Xw6nLqat
 cUjEWoixoT4zxOK+GFCkBfZZBYc2pfbno5GFl3zswPtUt6sY8B7nOmzngGg/4pAkHW+2
 KQQ7wZ8Yqdta9KafBvepFW2ZqqHjxdA9ErUv1+YtCxenGTaspLiEyOo42QN8SPh6Rxqc
 6vBw==
X-Gm-Message-State: APjAAAWfwZ6vlUl5kf9n6eMeKBjg1Ag+iQf6yYRcXRnZwaQkxnBqfmIT
 Um41lIrVAgtOtgB1rug2yWWLrQ==
X-Google-Smtp-Source: APXvYqy4xQOZIjeRbauUeqQKIO8M/6NlQDaBlz50R0hcYWTelYUpaPnZumvxvO0yNNTq4Y5vMVVoRw==
X-Received: by 2002:a5d:4986:: with SMTP id r6mr13987202wrq.307.1573809687576; 
 Fri, 15 Nov 2019 01:21:27 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id 11sm8987506wmi.8.2019.11.15.01.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 01:21:26 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 15 Nov 2019 10:21:13 +0100
Message-Id: <20191115092120.4445-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7+oPDeQqF7gn0t6Wu9eF8AtGPXsaZV+oIAe4ESZB4+I=;
 b=D1nMy3OrU401MPI+aJZ+9RnFH1JLI19Pbqk42mTKBhcMlgKtLA87cGuH13UiQs3a+y
 cYVXByY15jz0APl458Cwg/vaesaf/W1SQQjRskOuxfz62Ng47WsHp1egIzSHBPFJgXDH
 dyFiokb2LcYIVOHet1ybxdy9ztV5RfTRvP73w=
Subject: [Intel-gfx] [PATCH 1/8] drm/fb: More paranoia in addfb checks
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Pekka Paalanen <pekka.paalanen@collabora.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LSBPdXIgbGltaXQgaXMgdWludDMyX3QsIG1ha2UgdGhhdCBleHBsaWNpdC4KCi0gVW50YW5nbGUg
dGhlIG9uZSBvdmVyZmxvdyBjaGVjaywgSSB0aGluayAoYnV0IG5vdCBzdXJlKSB0aGF0IHdpdGgK
ICBhbGwgdGhyZWUgdG9nZXRoZXIgeW91IGNvdWxkIG92ZXJmbG93IHRoZSB1aW50NjRfdCBhbmQg
aXQnZCBsb29rCiAgY29vbCBhZ2Fpbi4gSGVuY2UgdHdvIHN0ZXBzLiBBbHNvIGdvIHdpdGggdGhl
IG1vcmUgY29tbW9uIChhbmQgaW1vCiAgc2FmZXIgYXBwcm9hY2gpIG9mIHJlZHVjaW5nIHRoZSBy
YW5nZSB3ZSBhY2NlcHQsIGluc3RlYWQgb2YgdHJ5aW5nCiAgdG8gY29tcHV0ZSB0aGUgb3ZlcmZs
b3cgaW4gaGlnaCBlbm91Z2ggcHJlY2lzaW9uLgoKLSBUaGUgYWJvdmUgd291bGQgYmxvdyB1cCBp
ZiB3ZSBnZXQgYSAwIHBpdGNoZXMsIHNvIGNoZWNrIGZvciB0aGF0CiAgdG9vLCBidXQgb25seSBp
ZiBibG9ja19zaXplIGlzIGEgdGhpbmcuCgpDYzogUGVra2EgUGFhbGFuZW4gPHBla2thLnBhYWxh
bmVuQGNvbGxhYm9yYS5jby51az4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9mcmFtZWJ1ZmZlci5j
IHwgMTcgKysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZnJhbWVi
dWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZnJhbWVidWZmZXIuYwppbmRleCA1NzU2NDMx
OGNlZWEuLjMxNDFjNmVkNmRkMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9mcmFt
ZWJ1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZnJhbWVidWZmZXIuYwpAQCAtMjE0
LDE1ICsyMTQsMjAgQEAgc3RhdGljIGludCBmcmFtZWJ1ZmZlcl9jaGVjayhzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAogCQkJcmV0dXJuIC1FSU5WQUw7CiAJCX0KIAotCQlpZiAobWluX3BpdGNoID4g
VUlOVF9NQVgpCisJCWlmIChtaW5fcGl0Y2ggPiBVOF9NQVgpCiAJCQlyZXR1cm4gLUVSQU5HRTsK
IAotCQlpZiAoKHVpbnQ2NF90KSBoZWlnaHQgKiByLT5waXRjaGVzW2ldICsgci0+b2Zmc2V0c1tp
XSA+IFVJTlRfTUFYKQotCQkJcmV0dXJuIC1FUkFOR0U7CisJCWlmIChibG9ja19zaXplKSB7CisJ
CQlpZiAoci0+cGl0Y2hlc1tpXSA8IG1pbl9waXRjaCkgeworCQkJCURSTV9ERUJVR19LTVMoImJh
ZCBwaXRjaCAldSBmb3IgcGxhbmUgJWRcbiIsIHItPnBpdGNoZXNbaV0sIGkpOworCQkJCXJldHVy
biAtRUlOVkFMOworCQkJfQogCi0JCWlmIChibG9ja19zaXplICYmIHItPnBpdGNoZXNbaV0gPCBt
aW5fcGl0Y2gpIHsKLQkJCURSTV9ERUJVR19LTVMoImJhZCBwaXRjaCAldSBmb3IgcGxhbmUgJWRc
biIsIHItPnBpdGNoZXNbaV0sIGkpOwotCQkJcmV0dXJuIC1FSU5WQUw7CisJCQlpZiAoaGVpZ2h0
ID4gVThfTUFYIC8gci0+cGl0Y2hlc1tpXSkKKwkJCQlyZXR1cm4gLUVSQU5HRTsKKworCQkJaWYg
KHItPm9mZnNldHNbaV0gPiBVOF9NQVggLyByLT5waXRjaGVzW2ldIC0gaGVpZ2h0KQorCQkJCXJl
dHVybiAtRVJBTkdFOwogCQl9CiAKIAkJaWYgKHItPm1vZGlmaWVyW2ldICYmICEoci0+ZmxhZ3Mg
JiBEUk1fTU9ERV9GQl9NT0RJRklFUlMpKSB7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
