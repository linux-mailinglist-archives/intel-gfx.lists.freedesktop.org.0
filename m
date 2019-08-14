Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 790368DDD9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 21:22:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 483D789BFE;
	Wed, 14 Aug 2019 19:22:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6549789BFE
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 19:22:47 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id z51so196702edz.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 12:22:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Yfxol3ghn06xKb5ZJw0r5QsldmXnimla6GmUaWotDHY=;
 b=LBBVN2Z5cfbrmtGDt8VfedfUEtXLVBEDkX0aGRPjRx+w+DBZhheOIwzQXce8vwQU42
 mmJCBRxut1WZEpDZUZnY9wJVOLRyZgzNwO5IlIN3cVqCjfFCttnJVM1HlwoOIWDiq+We
 6tAhJSwA+QLAD6BVLf4OxpXxEGHZhX+6y8DhGFcXjMj8yAeChFrVctEEhggI0H/MBbKk
 SW29iogCQeZS6l5h8ud8qhe5kPidHytRkWs5RE43xi6xxijB79+vZelQn00l9Qa4Qwoz
 iTSk1Cp/FNwp/UXKod3QV97tfq7FzJCtTeOvBgQJrIMeSI2e/Bk4zrdcu710JoCF+czq
 xEqA==
X-Gm-Message-State: APjAAAXNBFB5+VGoh0+PeR6ZXDtPX1Yz0sb13rY13V8x1i+4AIitHqsa
 J6nvs+rloCBNY1x+yexuELj1b2j0If1ArA==
X-Google-Smtp-Source: APXvYqzWJK5n7YzQip+uXfN9SDdX6aQY/vnNbuATAaZxxCxkIn+BEHYIVWA7ZnhEbkqMYHGBSdbnKA==
X-Received: by 2002:a17:907:390:: with SMTP id
 ss16mr1134228ejb.46.1565810565734; 
 Wed, 14 Aug 2019 12:22:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id k12sm118307edr.84.2019.08.14.12.22.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 12:22:44 -0700 (PDT)
Date: Wed, 14 Aug 2019 21:22:42 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Message-ID: <20190814192242.GV7444@phenom.ffwll.local>
References: <20190814124933.19056-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814124933.19056-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Yfxol3ghn06xKb5ZJw0r5QsldmXnimla6GmUaWotDHY=;
 b=QRQgoUEbVZ9mkDZS3KfOFfLWUh2P2Wf8q3clMI1m1lMZpLOU2eNIKhtXYr3D0y49HA
 0TKE2ZvpmgkZA0xnEpycHLCGysDrOyxK3eGfLkJJa6gJJ33uq+pdpB5rcLgCSRUIhUOX
 IF4uVsefS/qTywYDSBanEBVasYE3f2RkH2GVE=
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Comment userptr recursion on
 struct_mutex
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
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMDI6NDk6MzJQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBEaXNjdXNzZWQgdGhpcyBhIGJpdCB3aXRoIENocmlzLCBJIHRoaW5rIGEgY29tbWVu
dCBoZXJlIGlzIHdhcnJhbnRlZAo+IHRoYXQgdGhpcyB3aWxsIGJlIGJhZCBvbmNlIHdlIGhhdmUg
bW9yZSB0aGFuIG9uZSBpOTE1IGluc3RhbmNlLiBBbmQKPiBsb2NrZGVwIHdvbid0IGNhdGNoIGl0
Lgo+IAo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyB8IDYgKysrKysrCj4gIDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV91c2VycHRyLmMKPiBpbmRleCA3NGRhMzU2MTFkN2MuLjcwZGM1MDZhNTQyNiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYwo+IEBA
IC0xMzUsNiArMTM1LDEyIEBAIHVzZXJwdHJfbW5faW52YWxpZGF0ZV9yYW5nZV9zdGFydChzdHJ1
Y3QgbW11X25vdGlmaWVyICpfbW4sCj4gIAkJCXN3aXRjaCAobXV0ZXhfdHJ5bG9ja19yZWN1cnNp
dmUodW5sb2NrKSkgewo+ICAJCQlkZWZhdWx0Ogo+ICAJCQljYXNlIE1VVEVYX1RSWUxPQ0tfRkFJ
TEVEOgo+ICsJCQkJLyoKPiArCQkJCSAqIE5PVEU6IFRoaXMgb25seSB3b3JrcyBiZWNhdXNlIHRo
ZXJlJ3Mgb25seQo+ICsJCQkJICogZXZlciBvbmUgaTkxNS1zdHlsZSBzdHJ1Y3RfbXV0ZXggaW4g
dGhlCj4gKwkJCQkgKiBlbnRpcmUgc3lzdGVtLiBJZiB3ZSBjb3VsZCBoYXZlIHR3byBpOTE1Cj4g
KwkJCQkgKiBpbnN0YW5jZXMsIHRoaXMgd291bGQgZGVhZGxvY2suCj4gKwkJCQkgKi8KCldoaWxl
IGZpeGluZyB1cCBhbm5vdGF0aW9ucyBmb3IgdGhlIDJuZCBwYXRjaCBJIHRob3VnaCBtb3JlIGFi
b3V0IHRoaXMsCmFuZCBJJ20gbm90IHNvbGQgdGhhdCAidGhlcmUncyBvbmx5IG9uZSIgbWFrZXMg
c2Vuc2UuIFNjZW5hcmlvOgoKdGhyZWFkIEE6CmdldF9wYWdlcwotPiBtdXRleF9sb2NrKG9iai0+
bW0ubG9jaykKLT4gZnNfcmVjbGFpbQotPiBtbXVfbm90aWZpZXIgcGlja3MgcmFuZ2Ugb2YgbWVt
b3J5IHdlJ3JlIGludGVyZXN0ZWQgaW4KLT4gbXV0ZXhfbG9ja19raWxsYWJsZShzdHJ1Y3RfbXV0
ZXgpCgpXaHkgY2FuIHRoaXMgbm90IGRlYWRsb2NrIGFnYWluc3QgYW55IG90aGVyIHRocmVhZCB3
aGljaCBkb2VzOgoKbXV0ZXhfbG9jayhzdHJ1Y3RfbXV0ZXgpCi0+IGdldF9wYWdlcwotPiBtdXRl
eF9sb2NrKG9iai0+bW0ubG9jaykKClRoZXkgd291bGQgYm90aCBuZWVkIHRvIHBpY2sgdGhlIHNh
bWUgb2JqZWN0LCB0aGF0J3MgcmlnaHQgbm93IGF0IGEgMC0+MQp0cmFuc2l0aW9uIGZvciBwYWdl
c19waW5fY291bnQuIFBsdXMgYSBsb25nIGxpc3Qgb2Ygb3RoZXIgdW5oYXBweQpjaXJjdW1zdGFu
Y2VzIC4uLgoKTm90ZSB0aGF0IHRoaXMgaXMgZGlmZmVyZW50IGZyb20gdGhlIHNhbWUgYW5ub3Rh
dGlvbiBpbiBzaHJpbmtlcl9sb2NrOgpUaGF0IG9uZSBpcyBvbmx5IHVzZWQgaWYgY3VycmVudF9p
c19rc3dhcGQgaXMsIHdoaWNoIGd1YXJhbnRlZXMgd2UncmUgbm90CmhvbGRpbmcgYSBmZXcgdW5m
b3J0dW5hdGUgbG9ja3MuCi1EYW5pZWwKCj4gIAkJCQlpZiAobXV0ZXhfbG9ja19raWxsYWJsZV9u
ZXN0ZWQodW5sb2NrLCBJOTE1X01NX1NIUklOS0VSKSkgewo+ICAJCQkJCWk5MTVfZ2VtX29iamVj
dF9wdXQob2JqKTsKPiAgCQkJCQlyZXR1cm4gLUVJTlRSOwo+IC0tIAo+IDIuMjIuMAo+IAoKLS0g
CkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6
Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
