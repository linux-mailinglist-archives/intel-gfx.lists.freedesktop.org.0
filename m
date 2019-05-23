Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A54FA27EEF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 15:59:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1365389EA9;
	Thu, 23 May 2019 13:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5FFC89EA9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 13:59:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16655895-1500050 for multiple; Thu, 23 May 2019 14:59:42 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190523114620.19335-1-lionel.g.landwerlin@intel.com>
 <20190523114620.19335-3-lionel.g.landwerlin@intel.com>
 <155861233043.28319.5452168515708280707@skylake-alporthouse-com>
 <52899af3-5f7a-b93a-8610-9054765d1f57@intel.com>
In-Reply-To: <52899af3-5f7a-b93a-8610-9054765d1f57@intel.com>
Message-ID: <155861998217.28319.181082569082578511@skylake-alporthouse-com>
Date: Thu, 23 May 2019 14:59:42 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: add syncobj timeline support
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNS0yMyAxNDo0Njo0MikKPiBPbiAyMy8w
NS8yMDE5IDEyOjUyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA1LTIzIDEyOjQ2OjIwKQo+ID4+IC0gICAgICAgICAgICAgICBzeW5jb2Jq
ID0gZHJtX3N5bmNvYmpfZmluZChmaWxlLCBmZW5jZS5oYW5kbGUpOwo+ID4+IC0gICAgICAgICAg
ICAgICBpZiAoIXN5bmNvYmopIHsKPiA+PiAtICAgICAgICAgICAgICAgICAgICAgICBEUk1fREVC
VUcoIkludmFsaWQgc3luY29iaiBoYW5kbGUgcHJvdmlkZWRcbiIpOwo+ID4+IC0gICAgICAgICAg
ICAgICAgICAgICAgIGVyciA9IC1FTk9FTlQ7Cj4gPj4gLSAgICAgICAgICAgICAgICAgICAgICAg
Z290byBlcnI7Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKHVzZXJfZmVuY2UuZmxh
Z3MgJiBfX0k5MTVfRVhFQ19GRU5DRV9VTktOT1dOX0ZMQUdTKSB7Cj4gPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBlcnIgPSAtRUlOVkFMOwo+ID4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgfQo+
ID4+ICsKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAodXNlcl9mZW5jZS5mbGFncyAm
IEk5MTVfRVhFQ19GRU5DRV9XQUlUKSB7Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBlcnIgPSBkcm1fc3luY29ial9maW5kX2ZlbmNlKAo+ID4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBmaWxlLCB1c2VyX2ZlbmNlLmhhbmRsZSwgdXNlcl9mZW5j
ZS52YWx1ZSwKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRFJN
X1NZTkNPQkpfV0FJVF9GTEFHU19XQUlUX0ZPUl9TVUJNSVQsCj4gPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICZzeW5jb2JqLCAmZmVuY2UpOwo+ID4gSXMgdGhpcyBz
dGlsbCBhIHN5bmNocm9ub3VzIHdhaXQ/IFRoYXQgd291bGQgYmUgYW4gdW5mb3J0dW5hdGUgY2hh
bmdlIGluCj4gPiBiZWhhdmlvdXIgYW5kIGFudGl0aGVzaXMgdG8gaGF2aW5nIGEgc2NoZWR1bGVy
Lgo+ID4gLUNocmlzCj4gPgo+IE5vdCBzdXJlIHdoYXQgeW91IG1lYW4gYnkgc3luY2hyb25vdXMg
d2FpdC4KCmRybV9zeW5jb2JqX2ZpbmRfZmVuY2UoKSBoYXMgYW4gb3Blbi1jb2RlZCB3YWl0X2V2
ZW50IGxvb3AuIFRoYXQgaXMKc3luY2hyb25vdXMgYW5kIGluY29uc2lzdGVudCB3aXRoIHVzaW5n
IGEgc2NoZWR1bGVyOyB3aGVyZSBvbmUgb25seSBuZWVkCnRvIHJldHVybiBhIHByb3h5IGZlbmNl
IHRoYXQgd2lsbCBiZSBwb3B1bGF0ZWQgd2hlbiB0aGUgc3luY3B0IGlzIGtub3duLAphbmQgYmUg
c2lnbmFsZWQgYXMgYSByZXN1bHQgb2YgdGhhdCBzeW5jcHQuCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
