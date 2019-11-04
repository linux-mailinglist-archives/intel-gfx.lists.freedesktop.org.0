Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7E1EE621
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 18:37:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D89666E78F;
	Mon,  4 Nov 2019 17:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65F356E78E
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 17:37:33 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id a15so18087649wrf.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Nov 2019 09:37:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q42A9GE6rbKyvGuSxAml40ibzM2Hb1uuhq9f3IXuc4Y=;
 b=niD+P2JJa+A/owMX5QIrieHH0XOYMobEhIhkSX/uT9sRtP3J3cTsDJYFOoCetwtAaL
 wWJgM36WxXqALJuz6MDGNytxVsMb9p7gXeRXIpB5+nxSC9P0l2EeDBCK5b3d2ScYmTbH
 m8wPsiGI2/d9i9k0+0nn/SoBEPNMrcn1jGcEIxMapruMC4m7ah2Q1P6GuxrtJkaZEClW
 E7KOOq4+qXaaQYFXPJk4saZlu3pzk/7M6b6afTHrspV9SLmD+qPbP3NN8qatQLL725xP
 BFgotE8H0SQ8x7DS7gdf2BWTyF31RNW9gxsJI6oAH4riOu57VO0DUPKMTXSH8+j1WgVX
 C7eQ==
X-Gm-Message-State: APjAAAWMVRdA0PJIaKlGE96cD7KdTIRBC1Rd8pD7LE+xk7zz7/TttlX/
 8TyCOHB8VFjhKH32lCJMw6evrv7Xegc=
X-Google-Smtp-Source: APXvYqyZGwOKtaoeBaHT91cDJ8JsAllkAP5LrJWjODhvvXVM7htvxjcm6lrzfjLAuEk+9Ke+1UEPnA==
X-Received: by 2002:adf:d18b:: with SMTP id v11mr25588251wrc.308.1572889051786; 
 Mon, 04 Nov 2019 09:37:31 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id l22sm32408863wrb.45.2019.11.04.09.37.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 09:37:30 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Mon,  4 Nov 2019 18:37:19 +0100
Message-Id: <20191104173720.2696-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0.rc2
In-Reply-To: <20191104173720.2696-1-daniel.vetter@ffwll.ch>
References: <20191104173720.2696-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q42A9GE6rbKyvGuSxAml40ibzM2Hb1uuhq9f3IXuc4Y=;
 b=cWzsrd68SdlOV0Q302wyR11tF2fkJQituuofoLZ+F7zHH+FsGdI5n7j9ewIP4i68t1
 gXlwqq2sifm3AD7OAy94JW+f9rDRDD+4V6dymz3aeo86ZQANScxbAns0LeqfbDoHpwA7
 ceGpUMSuTsUpfDA7pjN3SCRZORqyFTw2D4K3U=
Subject: [Intel-gfx] [PATCH 2/3] lockdep: add might_lock_nested()
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TmVjZXNzYXJ5IHRvIGFubm90YXRlIGZ1bmN0aW9ucyB3aGVyZSB3ZSBtaWdodCBhY3F1aXJlIGEK
bXV0ZXhfbG9ja19uZXN0ZWQoKSBvciBzaW1pbGFyLiBOZWVkZWQgYnkgaTkxNS4KCkFja2VkLWJ5
OiBQZXRlciBaaWpsc3RyYSAoSW50ZWwpIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KU2lnbmVkLW9m
Zi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBQZXRlciBa
aWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+CkNjOiBJbmdvIE1vbG5hciA8bWluZ29AcmVk
aGF0LmNvbT4KQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+CkNjOiBsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnCi0tLQogaW5jbHVkZS9saW51eC9sb2NrZGVwLmggfCA4ICsrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9sb2NrZGVwLmggYi9pbmNsdWRlL2xpbnV4L2xvY2tkZXAuaAppbmRleCBlMGVjYTk0
ZTU4YzguLmM0MTU1NDM2ZTZmYyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9sb2NrZGVwLmgK
KysrIGIvaW5jbHVkZS9saW51eC9sb2NrZGVwLmgKQEAgLTYyOCw2ICs2MjgsMTMgQEAgZG8gewkJ
CQkJCQkJCVwKIAlsb2NrX2FjcXVpcmUoJihsb2NrKS0+ZGVwX21hcCwgMCwgMCwgMSwgMSwgTlVM
TCwgX1RISVNfSVBfKTsJXAogCWxvY2tfcmVsZWFzZSgmKGxvY2spLT5kZXBfbWFwLCAwLCBfVEhJ
U19JUF8pOwkJCVwKIH0gd2hpbGUgKDApCisjIGRlZmluZSBtaWdodF9sb2NrX25lc3RlZChsb2Nr
LCBzdWJjbGFzcykgCQkJCVwKK2RvIHsJCQkJCQkJCQlcCisJdHlwZWNoZWNrKHN0cnVjdCBsb2Nr
ZGVwX21hcCAqLCAmKGxvY2spLT5kZXBfbWFwKTsJCVwKKwlsb2NrX2FjcXVpcmUoJihsb2NrKS0+
ZGVwX21hcCwgc3ViY2xhc3MsIDAsIDEsIDEsIE5VTEwsCQlcCisJCSAgICAgX1RISVNfSVBfKTsJ
CQkJCVwKKwlsb2NrX3JlbGVhc2UoJihsb2NrKS0+ZGVwX21hcCwgMCwgX1RISVNfSVBfKTsJCVwK
K30gd2hpbGUgKDApCiAKICNkZWZpbmUgbG9ja2RlcF9hc3NlcnRfaXJxc19lbmFibGVkKCkJZG8g
ewkJCQlcCiAJCVdBUk5fT05DRShkZWJ1Z19sb2NrcyAmJiAhY3VycmVudC0+bG9ja2RlcF9yZWN1
cnNpb24gJiYJXApAQCAtNjUwLDYgKzY1Nyw3IEBAIGRvIHsJCQkJCQkJCQlcCiAjZWxzZQogIyBk
ZWZpbmUgbWlnaHRfbG9jayhsb2NrKSBkbyB7IH0gd2hpbGUgKDApCiAjIGRlZmluZSBtaWdodF9s
b2NrX3JlYWQobG9jaykgZG8geyB9IHdoaWxlICgwKQorIyBkZWZpbmUgbWlnaHRfbG9ja19uZXN0
ZWQobG9jaywgc3ViY2xhc3MpIGRvIHsgfSB3aGlsZSAoMCkKICMgZGVmaW5lIGxvY2tkZXBfYXNz
ZXJ0X2lycXNfZW5hYmxlZCgpIGRvIHsgfSB3aGlsZSAoMCkKICMgZGVmaW5lIGxvY2tkZXBfYXNz
ZXJ0X2lycXNfZGlzYWJsZWQoKSBkbyB7IH0gd2hpbGUgKDApCiAjIGRlZmluZSBsb2NrZGVwX2Fz
c2VydF9pbl9pcnEoKSBkbyB7IH0gd2hpbGUgKDApCi0tIAoyLjI0LjAucmMyCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
