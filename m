Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D300DAAAB5
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 20:18:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 858956E0A6;
	Thu,  5 Sep 2019 18:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7765B6E0A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 18:18:43 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id a23so1367672edv.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Sep 2019 11:18:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=obFAoJjwX5LVICOlIHTt1Y/s9EsFMUSE1s849zGP32Q=;
 b=ab7g6CpF6UBVYNyuQjvRfuJcWXDPinQxtV9D1rHqzYUlzPToZ6yYfOOpD2FhCJZo2a
 5GOKwzH38MN1ayD5Y88zbv4tE+wp9EHs2+5sT4j1ARLjbylzWQSFTPxKmMACiScOVw1F
 /MzrH2H0+kvGxKiQr4qOXewu+OKASzgl5K3wXz/IkqiOMOzWXJImCN8zQvFG7qPX2FXQ
 71kVxU26evxRq3aMh4OML6Kf9h7nEtZH1YmiyOLN3W7BnblNOiaCx/Mc9pw4mTu5gc9Q
 2VZbKXckn2QPbaQN1K7fVTCvl1Oq/v2jg9wsDk4bmsxAxcn29/z4eTeuKtuY0XVdEZng
 c/fA==
X-Gm-Message-State: APjAAAV+uRM0U6ZH2IrQXjSwTBPSvODDWnj+MVtB9yqSOgrJa59ZbJ6w
 h4y9DQrKkbnfpQB+IKAPfX7Y+A==
X-Google-Smtp-Source: APXvYqyzaG6Yf4kQ2QY6XayOtQGL5hNQW9zxGYl73+F4ofPJ6wblCKH7JO8eJ2dauX6xy0MRG8TzBg==
X-Received: by 2002:aa7:d8c8:: with SMTP id k8mr5400533eds.8.1567707522004;
 Thu, 05 Sep 2019 11:18:42 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id v8sm305107ejk.29.2019.09.05.11.18.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 11:18:41 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  5 Sep 2019 20:18:34 +0200
Message-Id: <20190905181834.6234-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190903190642.32588-1-daniel.vetter@ffwll.ch>
References: <20190903190642.32588-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=obFAoJjwX5LVICOlIHTt1Y/s9EsFMUSE1s849zGP32Q=;
 b=fCjtWKHVKfNPVHweI4Dr39tiJQOVJ5Csyxs7DuVOxRDIxrjpp2gtRtuxU0N4SsSRj2
 cX52YmzJXNLBuI2D5qMYuo7im9kxNTogPs6pUJAlilJzDMBFSPWDmOF6lG518UPHrTUi
 hY81BqfZm6U1jwMN/BEPNL6bmMMme8hJhthkc=
Subject: [Intel-gfx] [PATCH] drm/atomic: Take the atomic toys away from X
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, stable@vger.kernel.org,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>,
 Adam Jackson <ajax@redhat.com>, Alex Deucher <alexdeucher@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIC1tb2Rlc2V0dGluZyBkZHggaGFzIGEgdG90YWxseSBicm9rZW4gaWRlYSBvZiBob3cgYXRv
bWljIHdvcmtzOgotIGRvZXNuJ3QgZGlzYWJsZSBvbGQgY29ubmVjdG9ycywgYXNzdW1pbmcgdGhl
eSBnZXQgYXV0by1kaXNhYmxlIGxpa2UKICB3aXRoIHRoZSBsZWdhY3kgc2V0Y3J0YwotIGFzc3Vt
ZXMgQVNZTkNfRkxJUCBpcyB3aXJlZCB0aHJvdWdoIGZvciB0aGUgYXRvbWljIGlvY3RsCi0gbm90
IGEgc2luZ2xlIGNhbGwgdG8gVEVTVF9PTkxZCgpJb3cgdGhlIGltcGxlbWVudGF0aW9uIGlzIGEg
MToxIHRyYW5zbGF0aW9uIG9mIGxlZ2FjeSBpb2N0bHMgdG8KYXRvbWljLCB3aGljaCBpcyBhKSBi
cm9rZW4gYikgcG9pbnRsZXNzLgoKV2UgYWxyZWFkeSBoYXZlIGJ1Z3MgaW4gYm90aCBpOTE1IGFu
ZCBhbWRncHUtREMgd2hlcmUgdGhpcyBwcmV2ZW50cyB1cwpmcm9tIGVuYWJsaW5nIG5lYXQgZmVh
dHVyZXMuCgpJZiBhbnlvbmUgZXZlciBjYXJlcyBhYm91dCBhdG9taWMgaW4gWCB3ZSBjYW4gZWFz
aWx5IGFkZCBhIG5ldyBhdG9taWMKbGV2ZWwgKHJlcS0+dmFsdWUgPT0gMikgZm9yIFggdG8gZ2V0
IGJhY2sgdGhlIHNoaW55IHRveXMuCgpTaW5jZSB0aGVzZSBicm9rZW4gdmVyc2lvbnMgb2YgLW1v
ZGVzZXR0aW5nIGhhdmUgYmVlbiBzaGlwcGluZywKdGhlcmUncyByZWFsbHkgbm8gb3RoZXIgd2F5
IHRvIGdldCBvdXQgb2YgdGhpcyBiaW5kLgoKdjI6Ci0gYWRkIGFuIGluZm9ybWF0aW9uYWwgZG1l
c2cgb3V0cHV0IChSb2IsIEFqYXgpCi0gcmVvcmRlciBhZnRlciB0aGUgRFJJVkVSX0FUT01JQyBj
aGVjayB0byBhdm9pZCB1c2VsZXNzIG5vaXNlIChJbGlhKQotIGFsbG93IHJlcS0+dmFsdWUgPiAy
IHNvIHRoYXQgWCBjYW4gZG8gYW5vdGhlciBhdHRlbXB0IGF0IGF0b21pYyBpbgogIHRoZSBmdXR1
cmUKCkNjOiBJbGlhIE1pcmtpbiA8aW1pcmtpbkBhbHVtLm1pdC5lZHU+ClJlZmVyZW5jZXM6IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy94b3JnL3hzZXJ2ZXIvaXNzdWVzLzYyOQpSZWZl
cmVuY2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcveG9yZy94c2VydmVyL21lcmdl
X3JlcXVlc3RzLzE4MApSZWZlcmVuY2VzOiBhYmJjMDY5N2Q1ZmIgKCJkcm0vZmI6IHJldmVydCB0
aGUgaTkxNSBBY3R1YWxseSBjb25maWd1cmUgdW50aWxlZCBkaXNwbGF5cyBmcm9tIG1hc3RlciIp
CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29t
PgpSZXZpZXdlZC1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4gKHYxKQpSZXZpZXdlZC1ieTogTmljaG9sYXMgS2F6bGF1c2thcyA8bmljaG9s
YXMua2F6bGF1c2thc0BhbWQuY29tPiAodjEpCkNjOiBNaWNoZWwgRMOkbnplciA8bWljaGVsQGRh
ZW56ZXIubmV0PgpDYzogQWxleCBEZXVjaGVyIDxhbGV4ZGV1Y2hlckBnbWFpbC5jb20+CkNjOiBB
ZGFtIEphY2tzb24gPGFqYXhAcmVkaGF0LmNvbT4KQWNrZWQtYnk6IEFkYW0gSmFja3NvbiA8YWph
eEByZWRoYXQuY29tPgpDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+CkNjOiBEYXZpZCBB
aXJsaWUgPGFpcmxpZWRAbGludXguaWU+CkNjOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5j
b20+CkFja2VkLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+CkNjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1faW9jdGwuYyB8IDcgKysrKysr
LQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1faW9jdGwuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
aW9jdGwuYwppbmRleCAyYzEyMGM1OGY3MmQuLjU2YWE4YmJiM2E4YyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2RybV9pb2N0bC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1faW9jdGwu
YwpAQCAtMzM2LDcgKzMzNiwxMiBAQCBkcm1fc2V0Y2xpZW50Y2FwKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsIHZvaWQgKmRhdGEsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2KQogCWNhc2UgRFJN
X0NMSUVOVF9DQVBfQVRPTUlDOgogCQlpZiAoIWRybV9jb3JlX2NoZWNrX2ZlYXR1cmUoZGV2LCBE
UklWRVJfQVRPTUlDKSkKIAkJCXJldHVybiAtRU9QTk9UU1VQUDsKLQkJaWYgKHJlcS0+dmFsdWUg
PiAxKQorCQkvKiBUaGUgbW9kZXNldHRpbmcgRERYIGhhcyBhIHRvdGFsbHkgYnJva2VuIGlkZWEg
b2YgYXRvbWljLiAqLworCQlpZiAoc3Ryc3RyKGN1cnJlbnQtPmNvbW0sICJYIikgJiYgcmVxLT52
YWx1ZSA9PSAxKSB7CisJCQlwcl9pbmZvKCJicm9rZW4gYXRvbWljIG1vZGVzZXQgdXNlcnNwYWNl
IGRldGVjdGVkLCBkaXNhYmxpbmcgYXRvbWljXG4iKTsKKwkJCXJldHVybiAtRU9QTk9UU1VQUDsK
KwkJfQorCQlpZiAocmVxLT52YWx1ZSA+IDIpCiAJCQlyZXR1cm4gLUVJTlZBTDsKIAkJZmlsZV9w
cml2LT5hdG9taWMgPSByZXEtPnZhbHVlOwogCQlmaWxlX3ByaXYtPnVuaXZlcnNhbF9wbGFuZXMg
PSByZXEtPnZhbHVlOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
