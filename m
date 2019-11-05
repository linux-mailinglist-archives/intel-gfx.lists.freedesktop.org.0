Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E039EFDEB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 14:05:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC946E323;
	Tue,  5 Nov 2019 13:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E245C6E323
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 13:05:47 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id 190so8822579vss.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Nov 2019 05:05:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P+keMr1eBCw9qNuCzqBVUMaUbhmCvZwFrdilJ5uXls0=;
 b=DKfBh0ucHLd/EeUS46ayemXUCkk2ute9XyyJCNqe/lRAvadn251Qz25InLpa62KIe0
 kG35GHoo4R115grmxscw/RaMEUq1/pmf8UmeCmbxR0dwEfNVMswDrBGzLPTjR2oc2Td7
 LFPTBzMBfzBizKPwnmW4PHoUtAq9kHDUxOsR1tmMgQz51uy4UXsSTGP1lFAMJnqn+4gK
 fqJ8e29zJu0sup1QTxpdGH/JwcwaY+/LBzW6WLO3bQjsdJuJgkMHaEwavuHawWA9ocGP
 yYQG7sBnf2yvVm6OLkQtFJkHlaABwhMgL5loCIc0kdwFm3rm81vyFHCwFTE/fxLi2JfA
 yemw==
X-Gm-Message-State: APjAAAWpxNVGyWWkEs6LaX9zELmw+AyLmBET7iMzRzodE+njHP0WZR6u
 F2aAGcSjx633jf++/62uJa4y29rpz+ldTuUX+Xueq8KV
X-Google-Smtp-Source: APXvYqzhMU4jM2H/ZlcB2Fv/Fdxq1/LlSWMTW4SzRRmYMy5lu0KVa1BjfjUyk+Jjfv9utCs3P3Nw/GrSTmLhnpOtFZE=
X-Received: by 2002:a67:d49e:: with SMTP id g30mr4792816vsj.119.1572959146823; 
 Tue, 05 Nov 2019 05:05:46 -0800 (PST)
MIME-Version: 1.0
References: <20191029165134.28567-1-matthew.auld@intel.com>
 <CAM0jSHO3McVPWCLszV30bp2wydF0TDB4pGriW05ZVBPBg0Tuuw@mail.gmail.com>
 <20191031124035.g2grwflwdu5wfobe@ahiler-desk1.fi.intel.com>
 <157255440040.14271.9619311111483787344@skylake-alporthouse-com>
In-Reply-To: <157255440040.14271.9619311111483787344@skylake-alporthouse-com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 5 Nov 2019 13:05:20 +0000
Message-ID: <CAM0jSHMq0jhS+CMJbgEo=4BJRUCqMTa-Qu4B_jTSTCE5V_8WWA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=P+keMr1eBCw9qNuCzqBVUMaUbhmCvZwFrdilJ5uXls0=;
 b=ekwIotEoU3IBf8fggQTH1Ksb24xc++wLMGH/6M1SV5jJYpyUgsrqPr7P178aCQtwBX
 zwrCl96uj2OPVuHdihucamKMv/+BawFqKIemkiUuC6ZXwOsyQ+2LPvpA6GeUK6agehBA
 B1v3k3sfInbrpk2dLICeUXTO/SgML6oeYpkNGXKuIcY6hsCd1+QyLaXQ9V7V5W/GXC1T
 a8kq6f2d2JAF/w8kxKMkBB63J0e+x6NzQexRNwlYHB/CWCqzqrYvlGcAwWSrWuUoStTL
 5UuqvTRXDrOhCepGvthEiOPKW/n7O3cpAQ8UFnlZ92rl8qO0U093/gRAQ3FluHrP3R5q
 ZMdQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lmem: add the fake lmem region
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

T24gVGh1LCAzMSBPY3QgMjAxOSBhdCAyMDo0MCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUXVvdGluZyBBcmthZGl1c3ogSGlsZXIgKDIwMTktMTAt
MzEgMTI6NDA6MzUpCj4gPiBPbiBXZWQsIE9jdCAzMCwgMjAxOSBhdCAxMDoyMjozN1BNICswMDAw
LCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgMjkgT2N0IDIwMTkgYXQgMTY6NTEs
IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4gd3JvdGU6Cj4gPiA+ID4KPiA+
ID4gPiBJbnRlbmRlZCBmb3IgdXBzdHJlYW0gdGVzdGluZyBzbyB0aGF0IHdlIGNhbiBzdGlsbCBl
eGVyY2lzZSB0aGUgTE1FTQo+ID4gPiA+IHBsdW1iaW5nIGFuZCAhaTkxNV9nZ3R0X2hhc19hcGVy
dHVyZSBwYXRocy4gU21va2UgdGVzdGVkIG9uIFNrdWxsIENhbnlvbgo+ID4gPiA+IGRldmljZS4g
VGhpcyB3b3JrcyBieSBhbGxvY2F0aW5nIGFuIGludGVsX21lbW9yeV9yZWdpb24gZm9yIGEgcmVz
ZXJ2ZWQKPiA+ID4gPiBwb3J0aW9uIG9mIHN5c3RlbSBtZW1vcnksIHdoaWNoIHdlIHRyZWF0IGxp
a2UgTE1FTS4gRm9yIHRoZSBMTUVNQkFSIHdlCj4gPiA+ID4gc3RlYWwgdGhlIGFwZXJ0dXJlIGFu
ZCAxOjEgaXQgbWFwIHRvIHRoZSBzdG9sZW4gcmVnaW9uLgo+ID4gPiA+Cj4gPiA+ID4gVG8gZW5h
YmxlIHNpbXBseSBzZXQgdGhlIGk5MTUgbW9kcGFyYW0gZmFrZV9sbWVtX3N0YXJ0PSBvbiB0aGUg
a2VybmVsCj4gPiA+ID4gY21kbGluZSB3aXRoIHRoZSBzdGFydCBvZiByZXNlcnZlZCByZWdpb24o
c2VlIG1lbW1hcD0pLiBUaGUgc2l6ZSBvZiB0aGUKPiA+ID4gPiByZWdpb24gd2UgY2FuIHVzZSBp
cyBkZXRlcm1pbmVkIGJ5IHRoZSBzaXplIG9mIHRoZSBtYXBwYWJsZSBhcGVydHVyZSwgc28KPiA+
ID4gPiB0aGUgc2l6ZSBvZiByZXNlcnZlZCByZWdpb24gc2hvdWxkIGJlID49IG1hcHBhYmxlX2Vu
ZC4gRm9yIG5vdyB3ZSBvbmx5Cj4gPiA+ID4gZW5hYmxlIGZvciB0aGUgc2VsZnRlc3RzLiBEZXBl
bmRzIG9uIENPTkZJR19EUk1fSTkxNV9VTlNUQUJMRSBiZWluZwo+ID4gPiA+IGVuYWJsZWQuCj4g
PiA+ID4KPiA+ID4gPiBlZy4gbWVtbWFwPTJHJDE2RyBpOTE1LmZha2VfbG1lbV9zdGFydD0weDQw
MDAwMDAwMAo+ID4gPgo+ID4gPiBIaSBBcmVrLAo+ID4gPgo+ID4gPiBXb3VsZCB5b3UgYmUgYWJs
ZSB0byB1cGRhdGUgdGhlIGZpLXNrbC1sbWVtIGtlcm5lbCBjbWQgbGluZSB3aXRoCj4gPiA+IHMv
aTkxNV9mYWtlX2xtZW1fc3RhcnQvaTkxNS5mYWtlX2xtZW1fc3RhcnQ/Cj4gPgo+ID4gZG9uZQo+
Cj4gPDY+WyAgNDk3Ljg5NzQ1Nl0gW2RybV0gSW50ZWwgZ3JhcGhpY3MgZmFrZSBMTUVNOiBbbWVt
IDB4MTAwMDAwMDAwLTB4MTNmZmZmZmZmXQo+IDw2PlsgIDQ5Ny44OTc0NTldIFtkcm1dIEludGVs
IGdyYXBoaWNzIGZha2UgTE1FTSBJTyBzdGFydDogNDAwMDAwMDAKPiA8Nj5bICA0OTcuODk3NDYx
XSBbZHJtXSBJbnRlbCBncmFwaGljcyBmYWtlIExNRU0gc2l6ZTogNDAwMDAwMDAKPgo+IEFsbCBw
cmVzZW50LgoKQXJlaywKCkNvdWxkIHdlIGVuYWJsZSBEUk1fSTkxNV9VTlNUQUJMRV9GQUtFX0xN
RU0gaW4gQ0k/IFRoYXQgc2hvdWxkIGdpdmUgdXMKc29tZSBjb3ZlcmFnZSBvZiB0aGUgZmFrZSBs
b2NhbC1tZW1vcnkgc2V0dXAgb24gZmktc2tsLWxtZW0uCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
