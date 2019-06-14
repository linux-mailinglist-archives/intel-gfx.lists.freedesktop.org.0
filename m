Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EAD468BD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 22:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D17C89219;
	Fri, 14 Jun 2019 20:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E45689219
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 20:19:10 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id 89so620310uab.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 13:19:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OfmW1y9yiA5je0bISy1JZhfq548qDRRHByG+0NHktnw=;
 b=Q6BrSJMzDm9oLSenyaoHxQTmerEPPORP7BTxX4FWlUOUxMlxPmcLhbnpzbfQVLCmJK
 zkzC7D1MVyTj8l/cE8VD3aRnNPcLjD/ZZl7gbxFk7FvBosdIr7ZGA/w6JN2mDYjS6U94
 Kzp2H2ou4JB8Tp+xHjq4fQQmv02yQj7E+gXP/TiMFTV0SnYfvqfggcbh4eOVnyzVAvOG
 9zir5g2TPBzLM8O3SxVTFKZ+4ZnIGSFDnUMxWLK0so39q1jIZ+EDFIch5F+/651xCpnF
 UiFBLX2eNNycMUF/qgxMrEFSpNFq3Jx3mkIW9JCrfTyBs10hxTNUM8A+DiTfjLNid49T
 6oLQ==
X-Gm-Message-State: APjAAAU2DUA/ocFSX+A8EmK8wp9QRHVi1Nz+SNjRaQdFGXdXKuOh0PJJ
 BSW9BNiRavcbjcBCbsVzQRRrHi1UxpIXy36pYN8=
X-Google-Smtp-Source: APXvYqyMkUOz+P2fQNRXwc0b/zYNNa1aISpB+5t6dwrOEcvKOKCcGRloPCgKrU8ZkaRB2sSNaKjr0gaO5LcCltSR8MU=
X-Received: by 2002:ab0:2705:: with SMTP id s5mr10986332uao.104.1560543549552; 
 Fri, 14 Jun 2019 13:19:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-36-chris@chris-wilson.co.uk>
 <CAM0jSHNBM-ow8LnyBZe1tp7ZcAE1-V9LiGV9=svarQrqP4nhOQ@mail.gmail.com>
 <156054228965.4513.10521691270666765118@skylake-alporthouse-com>
 <156054323194.4609.10322814362363782962@skylake-alporthouse-com>
In-Reply-To: <156054323194.4609.10322814362363782962@skylake-alporthouse-com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 14 Jun 2019 21:18:43 +0100
Message-ID: <CAM0jSHMM+sh4HCKKiWvRmtbxQ=3QjowXjh-5rq3+heopJKydGg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=OfmW1y9yiA5je0bISy1JZhfq548qDRRHByG+0NHktnw=;
 b=AEyfDR6bR0+70qmphYwQpOjN68D+R/kdU/jcm/CLc8XMv73B2fe8JjGvtpG60vCDnj
 1VIUvC0crr21jWtAzr6OgrFAVtxBAf9VwLKZiUJIY2K6a71jvepuYNKM0RV8uc+zoAIq
 FW6Pn+GhKNxyZkes0rdEl+4xB/P7w7T8At7zVbts1q2wYVSXLW93JVCB8sVI5bGl6k0L
 fwjioEk75d6HXGBr3ZBJU5WpMLJuTRDghBpZHEStt2U9ZNxgf5F/FiwazdYFBNiOsoE+
 +he8IBwAeGGyNTTEPXsdD+6Ao8EQFcenV553nri+jsQHYitouHNVEK9pOWMySPiE2F5D
 KNtg==
Subject: Re: [Intel-gfx] [PATCH 35/39] drm/i915: Pin pages before waiting
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNCBKdW4gMjAxOSBhdCAyMToxMywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTQg
MjA6NTg6MDkpCj4gPiBRdW90aW5nIE1hdHRoZXcgQXVsZCAoMjAxOS0wNi0xNCAyMDo1MzoyNikK
PiA+ID4gT24gRnJpLCAxNCBKdW4gMjAxOSBhdCAwODoxMSwgQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+ID4gPiA+IEBAIC02NywxMCArNjEsMTcgQEAgaTkx
NV9nZW1fb2JqZWN0X3NldF90b193Y19kb21haW4oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwgYm9vbCB3cml0ZSkKPiA+ID4gPiAgICAgICAgICAqIGNvbnRpbnVlIHRvIGFzc3VtZSB0
aGF0IHRoZSBvYmogcmVtYWluZWQgb3V0IG9mIHRoZSBDUFUgY2FjaGVkCj4gPiA+ID4gICAgICAg
ICAgKiBkb21haW4uCj4gPiA+ID4gICAgICAgICAgKi8KPiA+ID4gPiAtICAgICAgIHJldCA9IGk5
MTVfZ2VtX29iamVjdF9waW5fcGFnZXMob2JqKTsKPiA+ID4gPiArICAgICAgIHJldCA9IGk5MTVf
Z2VtX29iamVjdF9waW5fcGFnZXNfYXN5bmMob2JqKTsKPiA+ID4gPiAgICAgICAgIGlmIChyZXQp
Cj4gPiA+ID4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4KPiA+ID4gPiArICAg
ICAgIHJldCA9IGk5MTVfZ2VtX29iamVjdF93YWl0KG9iaiwKPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIEk5MTVfV0FJVF9JTlRFUlJVUFRJQkxFIHwKPiA+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICh3cml0ZSA/IEk5MTVfV0FJVF9BTEwg
OiAwKSwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE1BWF9TQ0hF
RFVMRV9USU1FT1VUKTsKPiA+ID4gPiArICAgICAgIGlmIChyZXQpCj4gPiA+ID4gKyAgICAgICAg
ICAgICAgIGdvdG8gb3V0X3VucGluOwo+ID4gPiA+ICsKPiA+ID4KPiA+ID4gRG8gd2Ugc29tZWhv
dyBwcm9wYWdhdGUgYSBwb3RlbnRpYWwgZXJyb3IgZnJvbSBhIHdvcmtlciB0byB0aGUKPiA+ID4g
b2JqZWN0X3dhaXQoKT8gT3Igc2hvdWxkIHdlIGJlIGxvb2tpbmcgYXQgb2JqLT5tbS5wYWdlcyBo
ZXJlPwo+ID4KPiA+IFllYWgsIEkndmUgcHJvcGFnYXRlZCBzdWNoIGVycm9ycyBlbHNld2hlcmUg
KHByaW5jaXBhbGx5IGFsb25nIHRoZQo+ID4gZmVuY2VzKS4gV2hhdCB5b3UgYXJlIHN1Z2dlc3Rp
bmcgaXMgdGFudGFtb3VudCB0byBtYWtpbmcKPiA+IGk5MTVfZ2VtX29iamVjdF93YWl0KCkgcmVw
b3J0IGFuIGVycm9yLCBhbmQgSSBoYXZlIGJhZCBtZW1vcmllcyBmcm9tIGFsbAo+ID4gdGhlIHVu
aGFuZGxlZCAtRUlPIGluIHRoZSBwYXN0LiBIb3dldmVyLCB0aGF0IGZlZWxzIHRoZSBuYXR1cmFs
IHRoaW5nIHRvCj4gPiBkbywgc28gbGV0cyBnaXZlIGl0IGEgd2hpcmwuCj4KPiBTbyB3ZSBuZWVk
IHRvIGNoZWNrIGZvciBlcnJvciBwYWdlcyBhbnl3YXksIGJlY2F1c2Ugd2UgY2FuJ3QgcnVsZSBv
dXQgYQo+IHJhY2UgYmV0d2VlbiB0aGUgcGluX3BhZ2VzX2FzeW5jIGFuZCBpOTE1X2dlbV9vYmpl
Y3Rfd2FpdC4KPgo+IFRoZXJlJ3MgcGxlbnR5IG9mIGR1cGxpY2F0ZWQgY29kZSBmb3IgcGluX3Bh
Z2VzX2FzeW5jLCBvYmplY3Rfd2FpdCwKPiBjaGVjayBwYWdlcyBzbyBJIHNob3VsZCByZWZhY3Rv
ciB0aGF0IGludG8gYSB2YXJpYW50LAo+IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXNfd2FpdCgp
ID8KClllYWgsIG1ha2VzIHNlbnNlIHRvIG1lLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
