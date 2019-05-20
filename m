Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBFD22E5A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47EB78925B;
	Mon, 20 May 2019 08:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98D0B89255
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:22:28 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id j12so22534212eds.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 01:22:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eGgrLKE2df25ULz21985aqzcbzro9NwOlgEwwTc5Zzc=;
 b=q5tdR4mSAuLlAmW0H6ulUePRVmN02auUqXiyzgpcZC0GdzMrMHNlZUOmUd6htiTSOm
 pBPBhquMh+Pv3G03dPk5TAlEVAlDQU6giQrI0tr8NrAvCEJWLxyqpKg7wADkxhTiGaK1
 0MrNVQw6mVel6Td94A7LudjGFdhRzIZyA6uf1jsPXq98bl55hwNp7l0ulBuesIJG8Gvd
 4DDIg6DtgAbxweaQYHJbz9U9rLdN4uBiacrTO2SLddlFuXUjKPZzgAE1h2xcu+OdwT+r
 IE7a2b3JMOEDXyR820jPa518zkk8uZq7Bzs2Vs9BJ14U0Et9LA26yrTXr51TbNMc3vz6
 Tx1w==
X-Gm-Message-State: APjAAAXEqfLeyrqpTzrx+byi1iqrcmDib2d+Y+InY6nJxPTAKRL0Q8CK
 NelhiBfgxBq1n/8oIhn5B6dFBA==
X-Google-Smtp-Source: APXvYqx7YzC0MJ93NDDxrKOPv8V2UlfbQHlJo8bGF+j+Ew1CJ09B+PCH5y8spsqLQYD7mw+uuSgrTw==
X-Received: by 2002:a17:906:a950:: with SMTP id
 hh16mr20399701ejb.136.1558340547229; 
 Mon, 20 May 2019 01:22:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id t25sm3021263ejx.8.2019.05.20.01.22.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:22:26 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 20 May 2019 10:21:47 +0200
Message-Id: <20190520082216.26273-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eGgrLKE2df25ULz21985aqzcbzro9NwOlgEwwTc5Zzc=;
 b=imk5KPXbRHmyM+OGJsrvU50iu0pRYSH4CQqAEYUC50IR7Unb8WAmHx/5xDSKShl4Ms
 md2CbhXU/wCTBL9n61NPg+DXyNyuLx//HhKu7qBKwmA6U/dMwqcXtR/aG1FezRv5EDZk
 lLWq9pUMZUOD2LKJFQRnQCeul+IsxkHvQfMv8=
Subject: [Intel-gfx] [PATCH 04/33] vt: More locking checks
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>,
 Adam Borowski <kilobyte@angband.pl>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Martin Hostettler <textshell@uchuujin.de>,
 Mikulas Patocka <mpatocka@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBob25lc3RseSBoYXZlIG5vIGlkZWEgd2hhdCB0aGUgc3VidGxlIGRpZmZlcmVuY2VzIGJldHdl
ZW4KY29uX2lzX3Zpc2libGUsIGNvbl9pc19mZyAoaW50ZXJuYWwgdG8gdnQuYykgYW5kIGNvbl9p
c19ib3VuZCBhcmUuIEJ1dAppdCBsb29rcyBsaWtlIGJvdGggdmMtPnZjX2Rpc3BsYXlfZmcgYW5k
IGNvbl9kcml2ZXJfbWFwIGFyZSBwcm90ZWN0ZWQKYnkgdGhlIGNvbnNvbGVfbG9jaywgc28gcHJv
YmFibHkgYmV0dGVyIGlmIHdlIGhvbGQgdGhhdCB3aGVuIGNoZWNraW5nCnRoaXMuCgpUbyBkbyB0
aGF0IEkgaGFkIHRvIGRlaW5saW5lIHRoZSBjb25faXNfdmlzaWJsZSBmdW5jdGlvbi4KClNpZ25l
ZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogR3Jl
ZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KQ2M6IE5pY29sYXMg
UGl0cmUgPG5pY29sYXMucGl0cmVAbGluYXJvLm9yZz4KQ2M6IE1hcnRpbiBIb3N0ZXR0bGVyIDx0
ZXh0c2hlbGxAdWNodXVqaW4uZGU+CkNjOiBBZGFtIEJvcm93c2tpIDxraWxvYnl0ZUBhbmdiYW5k
LnBsPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IE1pa3Vs
YXMgUGF0b2NrYSA8bXBhdG9ja2FAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL3R0eS92dC92dC5j
ICAgICAgICAgICAgfCAxNiArKysrKysrKysrKysrKysrCiBpbmNsdWRlL2xpbnV4L2NvbnNvbGVf
c3RydWN0LmggfCAgNSArLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3Z0L3Z0LmMgYi9kcml2ZXJz
L3R0eS92dC92dC5jCmluZGV4IDhiNGIzYTQ5ZWMzMy4uMGVkMjM0YWM1YTZiIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3R0eS92dC92dC5jCisrKyBiL2RyaXZlcnMvdHR5L3Z0L3Z0LmMKQEAgLTM4MTQs
NiArMzgxNCw4IEBAIGludCBjb25faXNfYm91bmQoY29uc3Qgc3RydWN0IGNvbnN3ICpjc3cpCiB7
CiAJaW50IGksIGJvdW5kID0gMDsKIAorCVdBUk5fQ09OU09MRV9VTkxPQ0tFRCgpOworCiAJZm9y
IChpID0gMDsgaSA8IE1BWF9OUl9DT05TT0xFUzsgaSsrKSB7CiAJCWlmIChjb25fZHJpdmVyX21h
cFtpXSA9PSBjc3cpIHsKIAkJCWJvdW5kID0gMTsKQEAgLTM4MjUsNiArMzgyNywyMCBAQCBpbnQg
Y29uX2lzX2JvdW5kKGNvbnN0IHN0cnVjdCBjb25zdyAqY3N3KQogfQogRVhQT1JUX1NZTUJPTChj
b25faXNfYm91bmQpOwogCisvKioKKyAqIGNvbl9pc192aXNpYmxlIC0gY2hlY2tzIHdoZXRoZXIg
dGhlIGN1cnJlbnQgY29uc29sZSBpcyB2aXNpYmxlCisgKiBAdmM6IHZpcnR1YWwgY29uc29sZQor
ICoKKyAqIFJFVFVSTlM6IHplcm8gaWYgbm90IHZpc2libGUsIG5vbnplcm8gaWYgdmlzaWJsZQor
ICovCitib29sIGNvbl9pc192aXNpYmxlKGNvbnN0IHN0cnVjdCB2Y19kYXRhICp2YykKK3sKKwlX
QVJOX0NPTlNPTEVfVU5MT0NLRUQoKTsKKworCXJldHVybiAqdmMtPnZjX2Rpc3BsYXlfZmcgPT0g
dmM7Cit9CitFWFBPUlRfU1lNQk9MKGNvbl9pc192aXNpYmxlKTsKKwogLyoqCiAgKiBjb25fZGVi
dWdfZW50ZXIgLSBwcmVwYXJlIHRoZSBjb25zb2xlIGZvciB0aGUga2VybmVsIGRlYnVnZ2VyCiAg
KiBAc3c6IGNvbnNvbGUgZHJpdmVyCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2NvbnNvbGVf
c3RydWN0LmggYi9pbmNsdWRlL2xpbnV4L2NvbnNvbGVfc3RydWN0LmgKaW5kZXggZWQ3OThlMTE0
NjYzLi4yNGQ0YzE2ZTNhZTAgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvY29uc29sZV9zdHJ1
Y3QuaAorKysgYi9pbmNsdWRlL2xpbnV4L2NvbnNvbGVfc3RydWN0LmgKQEAgLTE2OCw5ICsxNjgs
NiBAQCBleHRlcm4gdm9pZCB2Y19TQUsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKTsKIAogI2Rl
ZmluZSBDVVJfREVGQVVMVCBDVVJfVU5ERVJMSU5FCiAKLXN0YXRpYyBpbmxpbmUgYm9vbCBjb25f
aXNfdmlzaWJsZShjb25zdCBzdHJ1Y3QgdmNfZGF0YSAqdmMpCi17Ci0JcmV0dXJuICp2Yy0+dmNf
ZGlzcGxheV9mZyA9PSB2YzsKLX0KK2Jvb2wgY29uX2lzX3Zpc2libGUoY29uc3Qgc3RydWN0IHZj
X2RhdGEgKnZjKTsKIAogI2VuZGlmIC8qIF9MSU5VWF9DT05TT0xFX1NUUlVDVF9IICovCi0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
