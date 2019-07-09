Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F856381D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 16:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3256E062;
	Tue,  9 Jul 2019 14:47:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F616E062
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 14:47:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17186538-1500050 for multiple; Tue, 09 Jul 2019 15:46:58 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-3-chris@chris-wilson.co.uk>
 <87bly31d6k.fsf@gaia.fi.intel.com>
In-Reply-To: <87bly31d6k.fsf@gaia.fi.intel.com>
Message-ID: <156268361605.9375.15654002765088071824@skylake-alporthouse-com>
Date: Tue, 09 Jul 2019 15:46:56 +0100
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/gtt: Wrap page_table with
 page_directory
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTA5IDE1OjQzOjE1KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiAgc3RhdGljIHN0cnVjdCBp
OTE1X3BhZ2VfZGlyZWN0b3J5ICpfX2FsbG9jX3BkKHZvaWQpCj4gPiAgewo+ID4gICAgICAgc3Ry
dWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKnBkOwo+ID4gIAo+ID4gICAgICAgcGQgPSBrbWFsbG9j
KHNpemVvZigqcGQpLCBJOTE1X0dGUF9BTExPV19GQUlMKTsKPiA+IC0KPiA+ICAgICAgIGlmICh1
bmxpa2VseSghcGQpKQo+ID4gICAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ICAKPiA+IC0g
ICAgIG1lbXNldCgmcGQtPmJhc2UsIDAsIHNpemVvZihwZC0+YmFzZSkpOwo+ID4gLSAgICAgYXRv
bWljX3NldCgmcGQtPnVzZWQsIDApOwo+ID4gKyAgICAgYXRvbWljX3NldChweF91c2VkKHBkKSwg
MCk7Cj4gPiAgICAgICBzcGluX2xvY2tfaW5pdCgmcGQtPmxvY2spOwo+ID4gIAo+ID4gLSAgICAg
LyogZm9yIHNhZmV0eSAqLwo+ID4gLSAgICAgcGQtPmVudHJ5WzBdID0gTlVMTDsKPiAKPiBQZXJo
YXBzIHllcyB0aGlzIGlzIHN1cGVyZmx1b3VzIGFzIHdlIChhbG1vc3QpIGFsd2F5cyBpbml0IGFm
dGVyIHRoaXMsCj4gb3IgaW4gdGhlIG5leHQgY2FsbCB0byB2bS4gVGhlIGJsb3dvdXQgd291bGQg
YmUgY2xlYXJlciBpZiB3ZSBmb3JnZXQsCj4gYnV0IGNhbiBsaXZlIHdpdGhvdXQuCgpGdXJ0aGVy
IGRvd24gdGhlIGxpbmUsIHdlIGRvbid0IGV2ZW4gYWxsb2NhdGUgaXQgaWYgd2UgZG9uJ3QgdXNl
IGl0IDopCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
