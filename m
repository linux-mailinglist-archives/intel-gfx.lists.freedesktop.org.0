Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0109830FA
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 13:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A7126E35F;
	Tue,  6 Aug 2019 11:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4172F6E35F
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 11:50:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 04:50:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="185628846"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 06 Aug 2019 04:50:48 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 446B65C1E47; Tue,  6 Aug 2019 14:50:14 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156508881763.2892.12035903141916655325@skylake-alporthouse-com>
References: <20190806090535.14807-1-chris@chris-wilson.co.uk>
 <87ftmetw3z.fsf@gaia.fi.intel.com>
 <156508881763.2892.12035903141916655325@skylake-alporthouse-com>
Date: Tue, 06 Aug 2019 14:50:14 +0300
Message-ID: <87d0hitsw9.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTA2IDExOjQwOjQ4KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVxdWVzdC5jCj4+ID4gaW5kZXggOGFjN2QxNGVjOGM5Li44MTA5NGYyNTBiZGIgMTAwNjQ0Cj4+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+PiA+IEBAIC0xMTk4LDcgKzExOTgs
NiBAQCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpfX2k5MTVfcmVxdWVzdF9jb21taXQoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEpCj4+ID4gICAgICAgICovCj4+ID4gICAgICAgbG9jYWxfYmhfZGlzYWJs
ZSgpOwo+PiA+ICAgICAgIGk5MTVfc3dfZmVuY2VfY29tbWl0KCZycS0+c2VtYXBob3JlKTsKPj4g
PiAtICAgICByY3VfcmVhZF9sb2NrKCk7IC8qIFJDVSBzZXJpYWxpc2F0aW9uIGZvciBzZXQtd2Vk
Z2VkIHByb3RlY3Rpb24gKi8KPj4gCj4+IFdlIGRvbid0IG5lZWQgdG8gcHJvdGVjdCBhZ2FpbnN0
IGF0dHIgY2hhbmdlcyBhbnltb3JlIHNvIHllcy4uLgo+PiAKPj4gPiAgICAgICBpZiAoZW5naW5l
LT5zY2hlZHVsZSkgewo+PiA+ICAgICAgICAgICAgICAgc3RydWN0IGk5MTVfc2NoZWRfYXR0ciBh
dHRyID0gcnEtPmdlbV9jb250ZXh0LT5zY2hlZDsKPj4gPiAgCj4+ID4gQEAgLTEyMjgsNyArMTIy
Nyw2IEBAIHN0cnVjdCBpOTE1X3JlcXVlc3QgKl9faTkxNV9yZXF1ZXN0X2NvbW1pdChzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSkKPj4gPiAgCj4+ID4gICAgICAgICAgICAgICBlbmdpbmUtPnNjaGVk
dWxlKHJxLCAmYXR0cik7Cj4+IAo+PiBidXQgd2lsbCBub3cgc2NoZWR1bGUgZHVyaW5nIHdlZGdl
ZC4gRGlkbid0IG5vdGljZSBhbnl0aGluZyB0aGF0Cj4+IHdvdWxkIGJsb3d1cCBvbiByZW9yZGVy
aW5nIGJ1dCBpcyB0aGlzIGludGVudGlvbmFsPwo+Cj4gSG93IGRvIHlvdSB0aGluayBpdCB3aWxs
IGJsb3cgdXA/IGVuZ2luZS0+c2NoZWR1bGUgcmVtYWlucyB1bnRvdWNoZWQKPiBvdmVyIHdlZGdl
ZCwgYW5kIGFsbCBpdCBpcyBkb2luZyBpcyB0cmF2ZXJzaW5nIHRoZSBkZXBlbmRlbmN5IGxpc3Rz
Cj4gKHdoaWNoIHJlbWFpbiBpbnRhY3QpIGFuZCB0aGUgc2NoZWR1bGVyIGxpc3QgKHdoaWNoIGlz
IGNvbnRyb2xsZWQgYnkKPiBsb2NraW5nIGFuZCBjbGVhcmVkIGluc2lkZSBlbmdpbmUtPmNhbmNl
bF9yZXF1ZXN0cywgYWZ0ZXIgd2hpY2ggcG9pbnQgaXQKPiB3aWxsIHJlbWFpbiBjbGVhciBhcyBu
b3Bfc3VibWl0X3JlcXVlc3Qgc2hvdWxkIG5vdCBjYXJlKS4KPgo+IEkgZG9uJ3QgdGhpbmsgdGhl
cmUncyBhIGJhZCBpbnRlcmFjdGlvbiB0aGVyZSBiZXR3ZWVuIGk5MTVfc2NoZWR1bGUoKQo+IGFu
ZCBub3Bfc3VibWl0X3JlcXVlc3QuLi4KCkRpZG4ndCBmaW5kIGFueXRoaW5nIHRoYXQgd291bGQg
YmxvdyB1cC4gSnVzdCBhIG5vdGFibGUgY2hhbmdlIGluCmJlaGF2aW91ciBzbyB0cmllZCB0byBw
b2tlIGFyb3VuZCBhIGJpdC4gVGhlIGxlc3Mgd2Ugc3BlY2lhbCBjYXNlCnRoZSBiZXR0ZXIgc28g
bm90aGluZyBhZ2FpbnN0IHRoZSBpZGVhLgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1p
a2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKPiAtQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
