Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB03A83DCB
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 01:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026606E45C;
	Tue,  6 Aug 2019 23:24:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 333B46E45C
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 23:24:05 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id i18so42396115pgl.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Aug 2019 16:24:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=U3xPG6RLu2GaTo1r2OFI6hv/OQS8puAUAAph5dkbuE0=;
 b=iuSaZpLALPlRTkXIw8Kstaec4pP0skPIRoU5j9ZjeUrBLxSDNLxiAr2JqboN3GVPB3
 rGhRar8siYz1zHcxfL1CUY//b/HvzX/hqXmhu7s4Ftw8w5dqyUg6yJlIkJKtjmDZRcHF
 o2RhgrdmimaBAenu3mIgdcjleEeeoEWqNQ4yFWq18osmL7MyZZNxGcBW6gx5Z117dj4y
 3c9wt07cfG/9K4fSMeHrD/i9T4KDXMrWxlNyb8qOEiK4kTdgt2fFo3lfBg93dfK4cOFa
 wdmG2O+MeEx1lJsgMBN34AsdgZ7B7yi802rCSpxMK/UjpTYfeo0sm8PSIED7qWAJCR85
 4wTw==
X-Gm-Message-State: APjAAAX1uGALpLPtjqul3hTYCix4UuOQipB2Eo0x7EEBHdbeQ1y5k3UM
 rt8h9IoiX3Nx7NakTDlfwPA=
X-Google-Smtp-Source: APXvYqwVID6ZMWYaHiIqcF+Z2ZFgWkeQGojygFfAKicT99UBjZxprokgZgtdHSQL85l1kZImSPXvCA==
X-Received: by 2002:a17:90b:8d8:: with SMTP id
 ds24mr5409015pjb.135.1565133844576; 
 Tue, 06 Aug 2019 16:24:04 -0700 (PDT)
Received: from ldmartin-desk1 ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id s11sm89721008pgv.13.2019.08.06.16.24.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 16:24:03 -0700 (PDT)
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
X-Google-Original-From: Lucas De Marchi <lucas.demarchi@gmail.com>
Date: Tue, 6 Aug 2019 16:23:53 -0700
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190806232353.GA8519@ldmartin-desk1>
References: <20190730224753.14907-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730224753.14907-1-jose.souza@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=U3xPG6RLu2GaTo1r2OFI6hv/OQS8puAUAAph5dkbuE0=;
 b=VNQX7nYi3wOCGS2e7UBNh3Y/MYNLXNLtiiOCJzqEUx2je3hp5sqd59k+C6NMY0iY5B
 5QVSnDyUB78jW/APo2m9c7IkWPKeFbUeA9B1kDvJ8TB5o2X1CWg7N8tvpxlwHWC0J11Z
 uUuWCxxyUek+w/Hx9040pLmTAv6SRS0eRF7ZUre4P8YnlT6LRHyjPDVJSw4xSyJNvefN
 O8vPGy0TEPCYr+IF7ZYbyAmKy11gjUnF8qZducocxYZBRkMBakDsJa9/RH7E0tviOIVu
 ElFG/LUYyb7kq2GZyKFeQ3Q2CpvS6fLCM2ENXUFlOfBiLB+4/gr+jTYmCVrZV1tGPEen
 JYXQ==
Subject: Re: [Intel-gfx] [PATCH v7 1/4] drm/i915/bdw+: Move misc display IRQ
 handling to it own function
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDM6NDc6NTBQTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPkp1c3QgbW92aW5nIGl0IHRvIHJlZHVjZSB0aGUgdGFicyBhbmQgYXZvaWQgYnJlYWsgY29k
ZSBsaW5lcy4KPk5vIGJlaGF2aW9yIGNoYW5nZXMgaW50ZW5kZWQgaGVyZS4KPgo+djI6Cj4tIFJl
YWRpbmcgbWlzYyBkaXNwbGF5IElSUSBvdXRzaWRlIG9mIGdlbjhfZGVfbWlzY19pcnFfaGFuZGxl
cigpIGFzCj5vdGhlciBpcnEgaGFuZGxlcnMgKERoaW5ha2FyYW4pCj4KPkNjOiBEaGluYWthcmFu
IFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KPlJldmlld2VkLWJ5OiBE
aGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KPlJldmll
d2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj5TaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KClJldmll
d2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCkx1Y2Fz
IERlIE1hcmNoaQoKPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCA0NSAr
KysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0KPiAxIGZpbGUgY2hhbmdlZCwgMjUgaW5z
ZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+aW5k
ZXggZmJlMTNiYWNkNWI3Li5mNTQ3NDQ2NDQyODAgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
Cj5AQCAtMjk4Miw2ICsyOTgyLDI4IEBAIHN0YXRpYyB1MzIgZ2VuOF9kZV9waXBlX2ZhdWx0X21h
c2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IAkJcmV0dXJuIEdFTjhfREVf
UElQRV9JUlFfRkFVTFRfRVJST1JTOwo+IH0KPgo+K3N0YXRpYyB2b2lkCj4rZ2VuOF9kZV9taXNj
X2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIGlpcikK
Pit7Cj4rCWJvb2wgZm91bmQgPSBmYWxzZTsKPisKPisJaWYgKGlpciAmIEdFTjhfREVfTUlTQ19H
U0UpIHsKPisJCWludGVsX29wcmVnaW9uX2FzbGVfaW50cihkZXZfcHJpdik7Cj4rCQlmb3VuZCA9
IHRydWU7Cj4rCX0KPisKPisJaWYgKGlpciAmIEdFTjhfREVfRURQX1BTUikgewo+KwkJdTMyIHBz
cl9paXIgPSBJOTE1X1JFQUQoRURQX1BTUl9JSVIpOwo+Kwo+KwkJaW50ZWxfcHNyX2lycV9oYW5k
bGVyKGRldl9wcml2LCBwc3JfaWlyKTsKPisJCUk5MTVfV1JJVEUoRURQX1BTUl9JSVIsIHBzcl9p
aXIpOwo+KwkJZm91bmQgPSB0cnVlOwo+Kwl9Cj4rCj4rCWlmICghZm91bmQpCj4rCQlEUk1fRVJS
T1IoIlVuZXhwZWN0ZWQgREUgTWlzYyBpbnRlcnJ1cHRcbiIpOwo+K30KPisKPiBzdGF0aWMgaXJx
cmV0dXJuX3QKPiBnZW44X2RlX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwgdTMyIG1hc3Rlcl9jdGwpCj4gewo+QEAgLTI5OTIsMjkgKzMwMTQsMTIgQEAgZ2Vu
OF9kZV9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBt
YXN0ZXJfY3RsKQo+IAlpZiAobWFzdGVyX2N0bCAmIEdFTjhfREVfTUlTQ19JUlEpIHsKPiAJCWlp
ciA9IEk5MTVfUkVBRChHRU44X0RFX01JU0NfSUlSKTsKPiAJCWlmIChpaXIpIHsKPi0JCQlib29s
IGZvdW5kID0gZmFsc2U7Cj4tCj4gCQkJSTkxNV9XUklURShHRU44X0RFX01JU0NfSUlSLCBpaXIp
Owo+IAkJCXJldCA9IElSUV9IQU5ETEVEOwo+LQo+LQkJCWlmIChpaXIgJiBHRU44X0RFX01JU0Nf
R1NFKSB7Cj4tCQkJCWludGVsX29wcmVnaW9uX2FzbGVfaW50cihkZXZfcHJpdik7Cj4tCQkJCWZv
dW5kID0gdHJ1ZTsKPi0JCQl9Cj4tCj4tCQkJaWYgKGlpciAmIEdFTjhfREVfRURQX1BTUikgewo+
LQkJCQl1MzIgcHNyX2lpciA9IEk5MTVfUkVBRChFRFBfUFNSX0lJUik7Cj4tCj4tCQkJCWludGVs
X3Bzcl9pcnFfaGFuZGxlcihkZXZfcHJpdiwgcHNyX2lpcik7Cj4tCQkJCUk5MTVfV1JJVEUoRURQ
X1BTUl9JSVIsIHBzcl9paXIpOwo+LQkJCQlmb3VuZCA9IHRydWU7Cj4tCQkJfQo+LQo+LQkJCWlm
ICghZm91bmQpCj4tCQkJCURSTV9FUlJPUigiVW5leHBlY3RlZCBERSBNaXNjIGludGVycnVwdFxu
Iik7Cj4tCQl9Cj4tCQllbHNlCj4rCQkJZ2VuOF9kZV9taXNjX2lycV9oYW5kbGVyKGRldl9wcml2
LCBpaXIpOwo+KwkJfSBlbHNlIHsKPiAJCQlEUk1fRVJST1IoIlRoZSBtYXN0ZXIgY29udHJvbCBp
bnRlcnJ1cHQgbGllZCAoREUgTUlTQykhXG4iKTsKPisJCX0KPiAJfQo+Cj4gCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDExICYmIChtYXN0ZXJfY3RsICYgR0VOMTFfREVfSFBEX0lSUSkpIHsK
Pi0tIAo+Mi4yMi4wCj4KPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj5JbnRlbC1nZnggbWFpbGluZyBsaXN0Cj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj5odHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
