Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4959D102E01
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 22:09:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5748D6E8EB;
	Tue, 19 Nov 2019 21:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 302706E409
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 21:08:53 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id q70so4781460wme.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 13:08:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y5re2skVyJQ7FpMrRORrHIC5wQLtJ6SKEG1wsk2e/c8=;
 b=SVFDkLjASvyEeQ4/FWzdMnKfa4rMNq/FBQeukbVTDc5c2S5PTiCdWtNeu0pIePqi4W
 hrS4NHY0xObse1sVN1f9VFtkTzxtiOKm6pQtqows8DZT6gSJsXttjyEYeQRr5LAxNlK6
 5+mecI22KV7k2BkVZV6XwjHNRlYiotdlrcbO0Uz1kwLHwdWHiKnWtfufkCmiCY0CfRQY
 pfhP0Tb/2U5zztAVPwnuRKb1BmBSX18iurZtSjc00MuksUZ/XHBuuuzt8pxHzWL8dm07
 24qI8E2cPj9KIYqKWpnLMrp4zO0T7ATz5S1WSnUIarmkBJ2LQI/Le+vVbCkVv6CHqz8E
 brRQ==
X-Gm-Message-State: APjAAAX/d716RZUQsVusdxRVnoSDybKhmJXQuMiKnmrjntGxRzdrv/aM
 K8+em0qaCOBPrx/V1qkiXGzjygZiQKs=
X-Google-Smtp-Source: APXvYqxn4yUMFVNXmX0Xjpq+0vGRwbmPXPP6r0C+gI7qXZ1ejuLf1nVKs6zO925z06kdmayUJfilyw==
X-Received: by 2002:a05:600c:2911:: with SMTP id
 i17mr8204593wmd.83.1574197731570; 
 Tue, 19 Nov 2019 13:08:51 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id z14sm28005126wrl.60.2019.11.19.13.08.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 13:08:50 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 19 Nov 2019 22:08:42 +0100
Message-Id: <20191119210844.16947-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119210844.16947-1-daniel.vetter@ffwll.ch>
References: <20191119210844.16947-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y5re2skVyJQ7FpMrRORrHIC5wQLtJ6SKEG1wsk2e/c8=;
 b=CtdDUX6ku/xkoV851l2hN+CPJdfXJJF7vzF85lu3Rs4abv8F6/wEHa0YUGyEZum8AD
 aE9GVZmVMJJqnb4QYj6A0QvtB6cqajcCVa0VZxeBlONCgKYHdIyQRzN1uuAoKONPEOZ7
 sUqF8Aux8kdMpdEaWOOX1ljq52drczoeqW3Bk=
Subject: [Intel-gfx] [PATCH 1/3] drm/modeset: Prime modeset lock vs dma_resv
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
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBraW5kYSByZWFsbHkgaGFyZCB0byBnZXQgdGhpcyB3cm9uZyBvbiBhIGRyaXZlciB3aXRo
IGJvdGggZGlzcGxheQphbmQgZG1hX3Jlc3YgbG9ja2luZy4gQnV0IHdobyBldmVyIGtub3dzLCBz
byBiZXR0ZXIgdG8gbWFrZSBzdXJlIHRoYXQKcmVhbGx5IGFsbCBkcml2ZXJzIG5lc3QgdGhlc2Ug
dGhlIHNhbWUgd2F5LgoKRm9yIGFjdHVhbCBsb2NrIHNlbWFudGljcyB0aGUgYWNxdWlyZSBjb250
ZXh0IG5lc3RpbmcgZG9lc24ndCBtYXR0ZXIuCkJ1dCB0byB0ZWFjaCBsb2NrZGVwIHdoYXQncyBn
b2luZyBvbiB3aXRoIHd3X211dGV4IHRoZSBhY3F1aXJlIGN0eCBpcwphIGZha2UgbG9ja2RlcCBs
b2NrLCBoZW5jZSBmcm9tIGEgbG9ja2RlcCBwb3YgaXQgZG9lcyBtYXR0ZXIuIFRoYXQncwp3aHkg
SSBmaWd1cmVkIGJldHRlciB0byBpbmNsdWRlIGl0LgoKQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxt
YWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9tb2RlX2NvbmZpZy5jIHwgMjggKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVfY29uZmlnLmMgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX21vZGVfY29uZmlnLmMKaW5kZXggM2I1NzBhNDA0OTMzLi4wOGU2ZWZm
NmExNzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9jb25maWcuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVfY29uZmlnLmMKQEAgLTI3LDYgKzI3LDcgQEAKICNp
bmNsdWRlIDxkcm0vZHJtX2ZpbGUuaD4KICNpbmNsdWRlIDxkcm0vZHJtX21vZGVfY29uZmlnLmg+
CiAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPgorI2luY2x1ZGUgPGxpbnV4L2RtYS1yZXN2Lmg+
CiAKICNpbmNsdWRlICJkcm1fY3J0Y19pbnRlcm5hbC5oIgogI2luY2x1ZGUgImRybV9pbnRlcm5h
bC5oIgpAQCAtNDE1LDYgKzQxNiwzMyBAQCB2b2lkIGRybV9tb2RlX2NvbmZpZ19pbml0KHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYpCiAJZGV2LT5tb2RlX2NvbmZpZy5udW1fY3J0YyA9IDA7CiAJZGV2
LT5tb2RlX2NvbmZpZy5udW1fZW5jb2RlciA9IDA7CiAJZGV2LT5tb2RlX2NvbmZpZy5udW1fdG90
YWxfcGxhbmUgPSAwOworCisJaWYgKElTX0VOQUJMRUQoQ09ORklHX0xPQ0tERVApKSB7CisJCXN0
cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0eCBtb2Rlc2V0X2N0eDsKKwkJc3RydWN0IHd3X2Fj
cXVpcmVfY3R4IHJlc3ZfY3R4OworCQlzdHJ1Y3QgZG1hX3Jlc3YgcmVzdjsKKwkJaW50IHJldDsK
KworCQlkbWFfcmVzdl9pbml0KCZyZXN2KTsKKworCQlkcm1fbW9kZXNldF9hY3F1aXJlX2luaXQo
Jm1vZGVzZXRfY3R4LCAwKTsKKwkJcmV0ID0gZHJtX21vZGVzZXRfbG9jaygmZGV2LT5tb2RlX2Nv
bmZpZy5jb25uZWN0aW9uX211dGV4LAorCQkJCSAgICAgICAmbW9kZXNldF9jdHgpOworCQlpZiAo
cmV0ID09IC1FREVBRExLKQorCQkJcmV0ID0gZHJtX21vZGVzZXRfYmFja29mZigmbW9kZXNldF9j
dHgpOworCisJCXd3X2FjcXVpcmVfaW5pdCgmcmVzdl9jdHgsICZyZXNlcnZhdGlvbl93d19jbGFz
cyk7CisJCXJldCA9IGRtYV9yZXN2X2xvY2soJnJlc3YsICZyZXN2X2N0eCk7CisJCWlmIChyZXQg
PT0gLUVERUFETEspCisJCQlkbWFfcmVzdl9sb2NrX3Nsb3coJnJlc3YsICZyZXN2X2N0eCk7CisK
KwkJZG1hX3Jlc3ZfdW5sb2NrKCZyZXN2KTsKKwkJd3dfYWNxdWlyZV9maW5pKCZyZXN2X2N0eCk7
CisKKwkJZHJtX21vZGVzZXRfZHJvcF9sb2NrcygmbW9kZXNldF9jdHgpOworCQlkcm1fbW9kZXNl
dF9hY3F1aXJlX2ZpbmkoJm1vZGVzZXRfY3R4KTsKKwkJZG1hX3Jlc3ZfZmluaSgmcmVzdik7CisJ
fQogfQogRVhQT1JUX1NZTUJPTChkcm1fbW9kZV9jb25maWdfaW5pdCk7CiAKLS0gCjIuMjQuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
