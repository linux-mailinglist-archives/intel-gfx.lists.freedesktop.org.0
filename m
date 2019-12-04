Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE50113169
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 18:59:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CCBC6E943;
	Wed,  4 Dec 2019 17:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D27986E943
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 17:59:13 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id x18so353747vsq.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Dec 2019 09:59:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5++rL2+NdoxmECnG7Y7P3K91RBreSM6vPigaASUxa88=;
 b=fHTs9rffr/ORvyGXxvS09tdhAjQ7AxbZCoUVjMAKm5ku+mqmGCsPDVwmtfPMDwDDlo
 mMKxNFfMNnZvWhcxtXeGXhxwb63lHe0Y1B+Y8P3uV1LizDLFSll02/xFb/owiQBY1God
 g192B2Viy21BZneCsADueHI78keO02wxwV7BxNcD6QVTuF3Bf+X2KrZ3tte4LcCUmj3e
 +g1nUQeh3p6AN1iv2iNs2Eh3gn+qb81Cxo6dWonyfHVeQ7y90tuB8enuPddQsN47qDiB
 BgOwbvyhEQYgmUsZY38kEQy+ipNB0rZhL1PkIdp2aC0alvfCNOL3g9Ssvk3VVz8ohbJ3
 z5kA==
X-Gm-Message-State: APjAAAX3h13RhUqr4GFbstFz41CHz7+9/fMlU9LTNKIh7w+rdrAkRjCL
 gxtUtDHylx6pA1xJByHjiDcarN1Zo+y2fNQKqAE6vQ==
X-Google-Smtp-Source: APXvYqwsXyxqkTueyICB0LmCL/ri7wXmdtZjg2dAeqFlTqNUv1vNCyyrUFrUTzerVcx2Uy0CUMwcXZWP73nBMB05leY=
X-Received: by 2002:a67:2ec4:: with SMTP id u187mr2515744vsu.119.1575482352837; 
 Wed, 04 Dec 2019 09:59:12 -0800 (PST)
MIME-Version: 1.0
References: <20191204162803.3841140-1-chris@chris-wilson.co.uk>
 <CAM0jSHNa9G=wuhx8VNZ8Q2Q61jJq_hM+d-=BNxwS5BrGNHbD3Q@mail.gmail.com>
 <157548027430.19640.9653852255478125449@skylake-alporthouse-com>
In-Reply-To: <157548027430.19640.9653852255478125449@skylake-alporthouse-com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 4 Dec 2019 17:58:46 +0000
Message-ID: <CAM0jSHMcOhbrTeSbZQjEzrjs1F=n4934QWW7P2b7O81HgYWMXw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=5++rL2+NdoxmECnG7Y7P3K91RBreSM6vPigaASUxa88=;
 b=EjNUrWc0Z6aiHF/3OkTYtZ4NSmuZPlpHbgBUFlnn2BcUHw6BXo/6Xk12Lon+TCAo1i
 eLFhj6stf4W/FNNmsj9sx/u0AcFpD0rfDvKI4JnjaDaNzz3KhlPOb42QY00KRwAXWWNF
 n9XuuJYL/qtJZe52PJr6ol8QR4jTTfaJDPR9SxXi4vA+KGmUFAuhl9RM/MvH/X+ZpdKS
 M/PT0KcPh8oKV2o/oO9bVYVqxCPuknvLBNxrX48s/TCtUFiB+tb/DDQnRDubB/WV5rio
 YDiKudV51Q3mGH0DRTCbsDABDnh+Fdap63aD3cRwyX5Ztc0r8v8CNvL1+Dg8X3xsMAIF
 rCfw==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Hook user-extensions upto
 MMAP_OFFSET_IOCTL
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
Cc: Chris Wilson <ickle@braswell.alporthouse.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCA0IERlYyAyMDE5IGF0IDE3OjI0LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBRdW90aW5nIE1hdHRoZXcgQXVsZCAoMjAxOS0xMi0wNCAx
Njo1MjoxMikKPiA+IE9uIFdlZCwgNCBEZWMgMjAxOSBhdCAxNjoyOSwgQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+ID4gPgo+ID4gPiBGcm9tOiBDaHJpcyBX
aWxzb24gPGlja2xlQGJyYXN3ZWxsLmFscG9ydGhvdXNlLmNvbT4KPiA+ID4KPiA+ID4gQ2FsbCBp
OTE1X3VzZXJfZXh0ZW5zaW9ucygpIHRvIHZhbGlkYXRlIHRoZSBhcmctPmV4dGVuc2lvbnMgcG9p
bnRlciwgYW5kCj4gPiA+IHNvIHJldHVybiBjb25zaXN0ZW50IGVycm9yIG51bWJlcnMgZm9yIHRo
ZSBmdXR1cmUuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gPiBDYzogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFu
dWxndWVAbGludXguaW50ZWwuY29tPgo+ID4gPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1
bGRAaW50ZWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9tbWFuLmMgfCA4ICsrKysrKy0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiA+ID4gaW5kZXggMzdhYWJiZmE4NjlhLi4zYTNmMzBiYzhh
YzcgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9t
bWFuLmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
Ywo+ID4gPiBAQCAtMTcsNiArMTcsNyBAQAo+ID4gPiAgI2luY2x1ZGUgImk5MTVfZ2VtX29iamVj
dC5oIgo+ID4gPiAgI2luY2x1ZGUgImk5MTVfZ2VtX21tYW4uaCIKPiA+ID4gICNpbmNsdWRlICJp
OTE1X3RyYWNlLmgiCj4gPiA+ICsjaW5jbHVkZSAiaTkxNV91c2VyX2V4dGVuc2lvbnMuaCIKPiA+
ID4gICNpbmNsdWRlICJpOTE1X3ZtYS5oIgo+ID4gPgo+ID4gPiAgc3RhdGljIGlubGluZSBib29s
Cj4gPiA+IEBAIC02MTcsOSArNjE4LDEyIEBAIGk5MTVfZ2VtX21tYXBfb2Zmc2V0X2lvY3RsKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gPiA+ICAgICAgICAgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRldik7Cj4gPiA+ICAgICAgICAgc3RydWN0
IGRybV9pOTE1X2dlbV9tbWFwX29mZnNldCAqYXJncyA9IGRhdGE7Cj4gPiA+ICAgICAgICAgZW51
bSBpOTE1X21tYXBfdHlwZSB0eXBlOwo+ID4gPiArICAgICAgIGludCBlcnI7Cj4gPiA+Cj4gPiA+
IC0gICAgICAgaWYgKGFyZ3MtPmV4dGVuc2lvbnMpCj4gPiA+IC0gICAgICAgICAgICAgICByZXR1
cm4gLUVJTlZBTDsKPiA+ID4gKyAgICAgICBlcnIgPSBpOTE1X3VzZXJfZXh0ZW5zaW9ucyh1NjRf
dG9fdXNlcl9wdHIoYXJncy0+ZXh0ZW5zaW9ucyksCj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgTlVMTCwgMCwgTlVMTCk7Cj4gPiA+ICsgICAgICAgaWYgKGVycikKPiA+
ID4gKyAgICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4gPgo+ID4gRG9uJ3Qgd2UgaGF2ZSB0byBj
aGVjayBnZXRfdXNlciBmaXJzdCBvbiB0aGUgcHRyPwo+Cj4gTm8sIGl0J3MgY2hlY2tlZCBieSBp
OTE1X3VzZXJfZXh0ZW5zaW9ucygpLiBJdCdzIGEgYml0IHJlZHVuZGFudCBpbiB0aGUKPiBvdGhl
ciBjYWxsZXJzIDopIFNpbmNlIHRoZSBmaXJzdCB0aGluZyB3ZSBkbyBpcyB3aGlsZSAoZXh0KS4K
Pgo+IEkgaGF2ZSBzb21lIG1lbW9yeSBvZiBzdGFydGluZyBvdXQgd2l0aCBOVUxMIGJlaW5nIGFu
IGVycm9yIGZvcgo+IGk5MTVfdXNlcl9leHRlbnNpb25zLCBidXQgd2Ugc2V0dGxlZCBvbiB3aGls
ZShleHQpIGZvciBhIGNvbXBhY3QKPiBub24tcmVjdXJzaXZlIGxvb3AuCgpSZXZpZXdlZC1ieTog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKPiAtQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
