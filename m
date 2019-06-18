Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 543B94A11C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 14:48:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DD3289F3C;
	Tue, 18 Jun 2019 12:48:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com
 [IPv6:2607:f8b0:4864:20::943])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D2B989F3C
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 12:48:41 +0000 (UTC)
Received: by mail-ua1-x943.google.com with SMTP id v20so441723uao.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 05:48:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/YvUaZmPOFYe9xCj+tHjvV5ndssAQDNr3A9R3mjMLNQ=;
 b=bmgRig3AK4O8BG8iwT96onOn1ml607wgfs16joIrIjvNmwhwJVNFigAXuO8EjEuwMT
 dJ4mrDrgc0IqNjp6pVOJkM+XZvK8/VxRAmW5Om16pspqMoNE8ibBNfacebLEOEiaWTWC
 PBCp1LAmubFdzu+TfYN/Q9yFXxoEB4YiUeFD7RQkwJDuk/4ER3c83dyykWTM3m/2CjBb
 +LaLXgliP0U+OaNzQ+RXEIINPkJlaD5Dw5qKCq/3ztTJofHB0NN0avuX6K4Dj5AxNco5
 6lErOMPvIYf8RL5MKsp8BziiJXUDERvu3J1D1+Xe9mpKT8NRToDW9iNkbesu7GhUGa8G
 LM0g==
X-Gm-Message-State: APjAAAUZXZ/3Mr8mk6G5JCR3g7EQx9mB9F64utMFy2sLFEvmuBwfPXgb
 Fx5mN1MZYofLCHfSbE5OwF8nUUaJVpr3cYQwqqSrvNCf
X-Google-Smtp-Source: APXvYqyfhEKou7X+82YAnNtT99Q9xl6Jmj2LRtF/H6qopxOw4Yr2JfUpNENwytC8XY/6fX2fEvRFBjsZEXFVs+usRm4=
X-Received: by 2002:a67:dc1:: with SMTP id 184mr32052784vsn.164.1560862120191; 
 Tue, 18 Jun 2019 05:48:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190618095258.22568-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190618095258.22568-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 18 Jun 2019 13:48:13 +0100
Message-ID: <CAM0jSHNJTz+GetMk3bB0OH1dsDH5z3ULs=316y=Q0vcxBhPB_Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=/YvUaZmPOFYe9xCj+tHjvV5ndssAQDNr3A9R3mjMLNQ=;
 b=OsZWd6UgSlHbjcF1p8692m2xcmGTVEwFBC0GNwsnDVPnuQ4ufMnu9p/DaPg6ALMDV7
 h4qFbzRFT1ih6PC0mI7NLt2KcpSrtbjLwb+SHmpMM7fuq08CNRwYZYsoT1WPux0oee7H
 06TLsfAqVUSR2uUED/1ccIV+kQ4p2WyEyGBjU+PAGQ/FMlA2b0lAx5e96QtQw3ajGSZ/
 mToRDHE00c8pnnLJPzZmYwHjCZy/bIvlvXilyWnJkxZtiMyPOwCbeP0VoJW2KDkn3yBq
 TzohqwU8yMj4kI9Haa0Akvy6AlkpdueSHc9MeOrR/Y+sP1VaLiiFHzEibVVYClh3hrI6
 qFSw==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/blt: Remove recursive vma->lock
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxOCBKdW4gMjAxOSBhdCAxMDo1MywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQXMgd2UgaGF2ZSBhbHJlYWR5IHBsdWdnZWQgdGhlIHct
PmRtYSBpbnRvIHRoZSByZXNlcnZhdGlvbl9vYmplY3QsIGFuZAo+IGhhdmUgc2V0IG91cnNlbHZl
cyB1cCB0byBhdXRvbWF0aWNhbGx5IHNpZ25hbCB0aGUgcmVxdWVzdCBhbmQgdy0+ZG1hIG9uCj4g
Y29tcGxldGlvbiwgd2UgZG8gbm90IG5lZWQgdG8gZXhwb3J0IHRoZSBycS0+ZmVuY2UgZGlyZWN0
bHkgYW5kIGp1c3QgdXNlCj4gdGhlIHctPmRtYSBmZW5jZS4KPgo+IFRoaXMgYXZvaWRzIGhhdmlu
ZyB0byB0YWtlIHRoZSByZXNlcnZhdGlvbl9sb2NrIGluc2lkZSB0aGUgd29ya2VyIHdoaWNoCj4g
Y3Jvc3MtcmVsZWFzZSBsb2NrZGVwIHdvdWxkIGNvbXBsYWluIGFib3V0LiA6KQo+Cj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1h
dHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiAtLS0KPiBQYXRjaCBiYXNlZCBv
biB0aGUgaTkxNV9hY3RpdmUgb3ZlcmhhdWwsIGJ1dCBvbiB0aGUgZmFjZSBvZiBpdCBzaG91bGQg
YmUKPiBzYWZlIHdpdGhvdXQuIEJ1dCBsZXQncyBwcmV0ZW5kIGl0IGRvZXMgbmVlZCB0aGUgb3Zl
cmhhdWwgYXMgdGhpcyBpcyBvbmUKPiBvZiB0aGUgbW90aXZhdGlvbnMgOikKPiAtQ2hyaXMKPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYyAgICAg
ICAgfCAxMCArKysrKystLS0tCj4gIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9jbGllbnRfYmx0LmMgIHwgMTEgLS0tLS0tLS0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jCj4gaW5kZXggZjI1M2VjNTc2NWFkLi44M2I1
YzVkMTNiOTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2NsaWVudF9ibHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9j
bGllbnRfYmx0LmMKPiBAQCAtMTkzLDEwICsxOTMsMTIgQEAgc3RhdGljIHZvaWQgY2xlYXJfcGFn
ZXNfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiAgICAgICAgICAgICAgICAgICAg
ICAgICBnb3RvIG91dF9yZXF1ZXN0Owo+ICAgICAgICAgfQo+Cj4gLSAgICAgICAvKiBYWFg6IG1v
cmUgZmV2ZXJpc2ggbmlnaHRtYXJlcyBhd2FpdCAqLwo+IC0gICAgICAgaTkxNV92bWFfbG9jayh2
bWEpOwo+IC0gICAgICAgZXJyID0gaTkxNV92bWFfbW92ZV90b19hY3RpdmUodm1hLCBycSwgRVhF
Q19PQkpFQ1RfV1JJVEUpOwo+IC0gICAgICAgaTkxNV92bWFfdW5sb2NrKHZtYSk7Cj4gKyAgICAg
ICAvKgo+ICsgICAgICAgICogdy0+ZG1hIGlzIGFscmVhZHkgZXhwb3J0ZWQgdmlhICh2bWF8b2Jq
KS0+cmVzdiB3ZSBuZWVkIG9ubHkKPiArICAgICAgICAqIGtlZXAgdHJhY2sgb2YgdGhlIEdQVSBh
Y3Rpdml0eSB3aXRoaW4gdGhpcyB2bWEvcmVxdWVzdCwgYW5kCj4gKyAgICAgICAgKiBwcm9wYWdh
dGUgdGhlIHNpZ25hbCBmcm9tIHRoZSByZXF1ZXN0IHRvIHctPmRtYS4KPiArICAgICAgICAqLwo+
ICsgICAgICAgZXJyID0gaTkxNV9hY3RpdmVfcmVmKCZ2bWEtPmFjdGl2ZSwgcnEtPmZlbmNlLmNv
bnRleHQsICZycS0+ZmVuY2UpOwo+ICAgICAgICAgaWYgKGVycikKPiAgICAgICAgICAgICAgICAg
Z290byBvdXRfcmVxdWVzdDsKCk9oLCB3b3cgfm9+CgpZZWFoLCBzZWVtcyB0byB3b3JrIGxvY2Fs
bHkgd2l0aCB0aGUgZXh0cmEgcmVmICsgYWN0aXZlIGNvdW50CnRyYWNraW5nLCBzbyBJIGd1ZXNz
IHNob3VsZCBmaXQgbmljZWx5IHdpdGggeW91ciBpOTE1X2FjdGl2ZS5hY3F1aXJlLApSZXZpZXdl
ZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
