Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCECA83015
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 12:53:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7CC6E357;
	Tue,  6 Aug 2019 10:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 779E16E357
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 10:53:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17903685-1500050 for multiple; Tue, 06 Aug 2019 11:53:39 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87ftmetw3z.fsf@gaia.fi.intel.com>
References: <20190806090535.14807-1-chris@chris-wilson.co.uk>
 <87ftmetw3z.fsf@gaia.fi.intel.com>
Message-ID: <156508881763.2892.12035903141916655325@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 06 Aug 2019 11:53:37 +0100
Subject: Re: [Intel-gfx] [PATCH 01/22] drm/i915/gem: Make caps.scheduler
 static
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTA2IDExOjQwOjQ4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlcXVlc3QuYwo+ID4gaW5kZXggOGFjN2QxNGVjOGM5Li44MTA5NGYyNTBiZGIgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiA+IEBAIC0xMTk4LDcgKzExOTgs
NiBAQCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpfX2k5MTVfcmVxdWVzdF9jb21taXQoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEpCj4gPiAgICAgICAgKi8KPiA+ICAgICAgIGxvY2FsX2JoX2Rpc2FibGUo
KTsKPiA+ICAgICAgIGk5MTVfc3dfZmVuY2VfY29tbWl0KCZycS0+c2VtYXBob3JlKTsKPiA+IC0g
ICAgIHJjdV9yZWFkX2xvY2soKTsgLyogUkNVIHNlcmlhbGlzYXRpb24gZm9yIHNldC13ZWRnZWQg
cHJvdGVjdGlvbiAqLwo+IAo+IFdlIGRvbid0IG5lZWQgdG8gcHJvdGVjdCBhZ2FpbnN0IGF0dHIg
Y2hhbmdlcyBhbnltb3JlIHNvIHllcy4uLgo+IAo+ID4gICAgICAgaWYgKGVuZ2luZS0+c2NoZWR1
bGUpIHsKPiA+ICAgICAgICAgICAgICAgc3RydWN0IGk5MTVfc2NoZWRfYXR0ciBhdHRyID0gcnEt
PmdlbV9jb250ZXh0LT5zY2hlZDsKPiA+ICAKPiA+IEBAIC0xMjI4LDcgKzEyMjcsNiBAQCBzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpfX2k5MTVfcmVxdWVzdF9jb21taXQoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEpCj4gPiAgCj4gPiAgICAgICAgICAgICAgIGVuZ2luZS0+c2NoZWR1bGUocnEsICZhdHRy
KTsKPiAKPiBidXQgd2lsbCBub3cgc2NoZWR1bGUgZHVyaW5nIHdlZGdlZC4gRGlkbid0IG5vdGlj
ZSBhbnl0aGluZyB0aGF0Cj4gd291bGQgYmxvd3VwIG9uIHJlb3JkZXJpbmcgYnV0IGlzIHRoaXMg
aW50ZW50aW9uYWw/CgpIb3cgZG8geW91IHRoaW5rIGl0IHdpbGwgYmxvdyB1cD8gZW5naW5lLT5z
Y2hlZHVsZSByZW1haW5zIHVudG91Y2hlZApvdmVyIHdlZGdlZCwgYW5kIGFsbCBpdCBpcyBkb2lu
ZyBpcyB0cmF2ZXJzaW5nIHRoZSBkZXBlbmRlbmN5IGxpc3RzCih3aGljaCByZW1haW4gaW50YWN0
KSBhbmQgdGhlIHNjaGVkdWxlciBsaXN0ICh3aGljaCBpcyBjb250cm9sbGVkIGJ5CmxvY2tpbmcg
YW5kIGNsZWFyZWQgaW5zaWRlIGVuZ2luZS0+Y2FuY2VsX3JlcXVlc3RzLCBhZnRlciB3aGljaCBw
b2ludCBpdAp3aWxsIHJlbWFpbiBjbGVhciBhcyBub3Bfc3VibWl0X3JlcXVlc3Qgc2hvdWxkIG5v
dCBjYXJlKS4KCkkgZG9uJ3QgdGhpbmsgdGhlcmUncyBhIGJhZCBpbnRlcmFjdGlvbiB0aGVyZSBi
ZXR3ZWVuIGk5MTVfc2NoZWR1bGUoKQphbmQgbm9wX3N1Ym1pdF9yZXF1ZXN0Li4uCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
