Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53995113F3E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 11:21:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE81C6F648;
	Thu,  5 Dec 2019 10:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B6A66F648
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 10:21:23 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id p6so1923288vsj.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Dec 2019 02:21:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kubateAlTtnnzwNxUcRqx9gRGshEns1Nb1CqrwCEI6Q=;
 b=UUyYt6HqMsAqWLz2vjrrUrtTxPBBbKt4Gc2u0QuunWO4qyLi5dmMg8JTvcClOAbBrT
 Ym6on5v8sT/4it3VPZPcfkkdO50vfr3f+YS1QwiIrU6J7ny6PXhKSrPglFdVnfgmhQcD
 75q0hgCl+DAVFLA9mbw7TO8ufUgMEeg9OaM2lhvl9kkaYZfMamCixFBUWghWIjOn3ShA
 Cy1qWPTUzjwILqdwR4JqOA2GIeE35myc3bTGyPhCrwCq+p92KENmNMDLlodLd3yV43KM
 dAZXyUGOoWH5Gmk7rfdVxdCihSVclXfAl0407sHISlCWbW3xa7cwSoH3TFVKtqEI6g5s
 qHQg==
X-Gm-Message-State: APjAAAXGIT4r0I8xQc9nv0nWO7IIzjeP0Pfun+Fb3x9iX1mEhd47IwO/
 GeS+BRSFyZg4nB2h+2DS5r5kxyz4vYV/4LA/8kY=
X-Google-Smtp-Source: APXvYqxYoxX1CD2aa+2zIujI4N/3EQV9YJCTqwEqUSPGY0ikECZo2dZAY9TAm2LkKUcBRxjh/oIP5siXwIPaK6gjOQw=
X-Received: by 2002:a67:b649:: with SMTP id e9mr4834646vsm.34.1575541282159;
 Thu, 05 Dec 2019 02:21:22 -0800 (PST)
MIME-Version: 1.0
References: <20191205101417.15054-1-abdiel.janulgue@linux.intel.com>
In-Reply-To: <20191205101417.15054-1-abdiel.janulgue@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 5 Dec 2019 10:20:55 +0000
Message-ID: <CAM0jSHMgzJBsYfKvKSYrqnBqSUaFqG45eL83_kc8y_w3YdR8hg@mail.gmail.com>
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=kubateAlTtnnzwNxUcRqx9gRGshEns1Nb1CqrwCEI6Q=;
 b=AAnktMCRyBawhqdBXPHphBDUwtwYp2DlGnjq3LdZPTpx68K0kgjKt+HHKeydTgliOr
 J5V19Bm9V0l+sEn3gZomKbCmRukIh8AHA3oQGQJhmErnUh2TdzWxIFIkjwpSVBWJ8fMc
 2RY+Vcpa/kep0Y9TpX+x99ljrvAcOUHfuhgv/y347IlIs/TTIkC+hPahoK/Ck9+ptB6Q
 rcTmUBIhVYd/UKINfRAqM0K5fZzaOt0tclk8zJZBeTFaARvyZ8zs/TT8Sa7ruKOCMOpH
 uXkvlhrfksLduBIUvW8UB+s2czr5lckOCM1QE58XPQ3kpGVFGwmr8CL/CwCS0Ei6lPgC
 LWKw==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add lmem fault handler
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

T24gVGh1LCA1IERlYyAyMDE5IGF0IDEwOjE0LCBBYmRpZWwgSmFudWxndWUKPGFiZGllbC5qYW51
bGd1ZUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gRmF1bHQgaGFuZGxlciB0byBoYW5kbGUg
bWlzc2luZyBwYWdlcyBmb3IgbG1lbSBvYmplY3RzLgo+Cj4gU2lnbmVkLW9mZi1ieTogQWJkaWVs
IEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9v
bmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYyB8IDQzICsrKysrKysrKysrKysrKysrKysrKysrKwo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5oIHwgIDYgKysrKwo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwgMTUgKysrKysrKy0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmggfCAgMSArCj4gIDQgZmlsZXMg
Y2hhbmdlZCwgNjMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYwo+IGluZGV4IDBlMmJmNmI3ZTE0My4uNzhhYzhk
MTYwY2Q3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9s
bWVtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5jCj4g
QEAgLTYsOCArNiw0MCBAQAo+ICAjaW5jbHVkZSAiaW50ZWxfbWVtb3J5X3JlZ2lvbi5oIgo+ICAj
aW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5oIgo+ICAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2Vt
X2xtZW0uaCIKPiArI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9tbWFuLmgiCj4gICNpbmNsdWRlICJp
OTE1X2Rydi5oIgo+Cj4gK3ZtX2ZhdWx0X3Qgdm1fZmF1bHRfbG1lbShzdHJ1Y3Qgdm1fZmF1bHQg
KnZtZikKPiArewo+ICsgICAgICAgc3RydWN0IHZtX2FyZWFfc3RydWN0ICphcmVhID0gdm1mLT52
bWE7Cj4gKyAgICAgICBzdHJ1Y3QgaTkxNV9tbWFwX29mZnNldCAqcHJpdiA9IGFyZWEtPnZtX3By
aXZhdGVfZGF0YTsKPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBw
cml2LT5vYmo7Cj4gKyAgICAgICB1bnNpZ25lZCBsb25nIHNpemUgPSBhcmVhLT52bV9lbmQgLSBh
cmVhLT52bV9zdGFydDsKPiArICAgICAgIGJvb2wgd3JpdGUgPSBhcmVhLT52bV9mbGFncyAmIFZN
X1dSSVRFOwo+ICsgICAgICAgdm1fZmF1bHRfdCB2bWZfcmV0Owo+ICsgICAgICAgaW50IGksIHJl
dDsKPiArCj4gKyAgICAgICAvKiBTYW5pdHkgY2hlY2sgdGhhdCB3ZSBhbGxvdyB3cml0aW5nIGlu
dG8gdGhpcyBvYmplY3QgKi8KPiArICAgICAgIGlmIChpOTE1X2dlbV9vYmplY3RfaXNfcmVhZG9u
bHkob2JqKSAmJiB3cml0ZSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIFZNX0ZBVUxUX1NJR0JV
UzsKPiArCj4gKyAgICAgICByZXQgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Cj4g
KyAgICAgICBpZiAocmV0KQo+ICsgICAgICAgICAgICAgICByZXR1cm4gaTkxNV9lcnJvcl90b192
bWZfZmF1bHQocmV0KTsKCkRvbid0IHdlIG5lZWQgdG8gaGFuZGxlIC1FTlhJTyBpbiBpOTE1X2Vy
cm9yX3RvX3ZtZl9mYXVsdD8KCj4gKwo+ICsgICAgICAgZm9yIChpID0gMDsgaSA8IHNpemUgPj4g
UEFHRV9TSElGVDsgaSsrKSB7Cj4gKyAgICAgICAgICAgICAgIHZtZl9yZXQgPSB2bWZfaW5zZXJ0
X3BmbihhcmVhLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHVu
c2lnbmVkIGxvbmcpYXJlYS0+dm1fc3RhcnQgKyBpICogUEFHRV9TSVpFLAo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaTkxNV9nZW1fb2JqZWN0X2xtZW1faW9fcGZu
KG9iaiwgaSkpOwo+ICsgICAgICAgICAgICAgICBpZiAodm1mX3JldCAhPSBWTV9GQVVMVF9OT1BB
R0UpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gKyAgICAgICB9Cj4gKwo+ICsg
ICAgICAgaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7Cj4gKwo+ICsgICAgICAgcmV0
dXJuIHZtZl9yZXQ7Cj4gK30KPiArCj4gIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
X29wcyBpOTE1X2dlbV9sbWVtX29ial9vcHMgPSB7Cj4gICAgICAgICAuZmxhZ3MgPSBJOTE1X0dF
TV9PQkpFQ1RfSEFTX0lPTUVNLAo+Cj4gQEAgLTU2LDYgKzg4LDE3IEBAIGk5MTVfZ2VtX29iamVj
dF9sbWVtX2lvX21hcChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICAgICAgICAg
cmV0dXJuIGlvX21hcHBpbmdfbWFwX3djKCZvYmotPm1tLnJlZ2lvbi0+aW9tYXAsIG9mZnNldCwg
c2l6ZSk7Cj4gIH0KPgo+ICt1bnNpZ25lZCBsb25nIGk5MTVfZ2VtX29iamVjdF9sbWVtX2lvX3Bm
bihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgbikKPiArewo+ICsgICAgICAgc3Ry
dWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSA9IG9iai0+bW0ucmVnaW9uOwo+ICsgICAgICAg
cmVzb3VyY2Vfc2l6ZV90IG9mZnNldDsKPiArCj4gKyAgICAgICBvZmZzZXQgPSBpOTE1X2dlbV9v
YmplY3RfZ2V0X2RtYV9hZGRyZXNzKG9iaiwgbik7CgpvZmZzZXQgLT0gbWVtLT5yZWdpb24uc3Rh
cnQ7IGZvciBwb29yIG9sZCBmYWtlIGxvY2FsLW1lbW9yeS4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
