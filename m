Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F3212F8F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 15:49:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 481286E79F;
	Fri,  3 May 2019 13:49:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C2CE6E79F
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 13:49:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 06:49:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,425,1549958400"; d="scan'208";a="140973593"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 03 May 2019 06:49:33 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
 <1fa5f7d8-9407-2c70-a559-594b47c429d6@linux.intel.com>
 <155689063353.3139.2461740627641851596@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7d7da028-4672-8004-1ce8-d6dd8e76572a@linux.intel.com>
Date: Fri, 3 May 2019 14:49:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155689063353.3139.2461740627641851596@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915: Assert breadcrumbs are
 correctly ordered in the signal handler
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAzLzA1LzIwMTkgMTQ6MzcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTAzIDE0OjMyOjU5KQo+Pgo+PiBPbiAwMy8wNS8yMDE5IDEyOjUy
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBJbnNpZGUgdGhlIHNpZ25hbCBoYW5kbGVyLCB3ZSBl
eHBlY3QgdGhlIHJlcXVlc3RzIHRvIGJlIG9yZGVyZWQgYnkgdGhlaXIKPj4+IGJyZWFkY3J1bWIg
c3VjaCB0aGF0IG5vIGxhdGVyIHJlcXVlc3QgbWF5IGJlIGNvbXBsZXRlIGlmIHdlIGZpbmQgYW4K
Pj4+IGVhcmxpZXIgaW5jb21wbGV0ZS4gQWRkIGFuIGFzc2VydCB0byBjaGVjayB0aGF0IHRoZSBu
ZXh0IGJyZWFkY3J1bWIKPj4+IHNob3VsZCBub3QgYmUgbG9naWNhbGx5IGJlZm9yZSB0aGUgY3Vy
cmVudC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPj4+IC0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
YnJlYWRjcnVtYnMuYyB8IDYgKysrKysrCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2JyZWFkY3J1bWJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1i
cy5jCj4+PiBpbmRleCAzY2JmZmQ0MDBiMWIuLmE2ZmZiMjVmNzJhMiAxMDA2NDQKPj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMKPj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMKPj4+IEBAIC05OSw2ICs5
OSwxMiBAQCB2b2lkIGludGVsX2VuZ2luZV9icmVhZGNydW1ic19pcnEoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQo+Pj4gICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycSA9Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGlzdF9lbnRy
eShwb3MsIHR5cGVvZigqcnEpLCBzaWduYWxfbGluayk7Cj4+PiAgICAKPj4+ICsgICAgICAgICAg
ICAgICAgICAgICBHRU1fQlVHX09OKG5leHQgIT0gJmNlLT5zaWduYWxzICYmCj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBpOTE1X3NlcW5vX3Bhc3NlZChycS0+ZmVuY2Uuc2Vx
bm8sCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBsaXN0X2VudHJ5KG5leHQsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHR5cGVvZigqcnEpLAo+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaWduYWxf
bGluayktPmZlbmNlLnNlcW5vKSk7Cj4+Cj4+IEkga25vdyBpdHMgb25seSBHRU1fQlVHX09OLCBi
dXQgd2h5IGNoZWNrIGZvciB0aGlzIGluIHRoZSBpcnEgaGFuZGxlcj8KPj4gWW91IGRvbid0IHRy
dXN0IHRoZSBpbnNlcnRpb24sIG9yIGdyb3VwIGRlbGV0aW9uPyBPciBqdXN0IGJlY3Vhc2UgaXQg
aXMKPj4gdGhlIHNtYWxsZXN0IGFtb3VudCBvZiBjb2RlIHRvIHBpZ2d5LWJhY2sgb24gZXhpc3Rp
bmcgaXRlcmF0aW9uPwo+IAo+IEF0IHRoaXMgcG9pbnQsIGl0J3MgZG9jdW1lbnRpbmcgdGhlIHJl
cXVpcmVkIHNvcnRpbmcgb2YgY2UtPnNpZ25hbHMuIFRoZQo+IHZ1bG5lcmFibGUgcGFydCBpcyBs
aXN0IGluc2VydGlvbi4gV291bGQgeW91IGxpa2Ugc29tZXRoaW5nIGxpa2UKPiAKPiBjaGVja19z
aWduYWxfb3JkZXIoY2UsIHJxKQo+IAo+IGFuZCB1c2UgaXQgYWZ0ZXIgaW5zZXJ0aW9uIGFzIHdl
bGw/Cj4gCj4gV2UgY2FuIGRvIHByZXYvbmV4dCBjaGVja2luZywganVzdCB0byBiZSBzdXJlLgoK
SSBkb24ndCBmZWVsIHN0cm9uZ2x5IGVpdGhlciB3YXkuIFdhcyBqdXN0IGN1cmlvdXMgd2h5IHlv
dSBkZWNpZGVkIHRvIApwdXQgaXQgd2hlcmUgaXQgd2FzLgoKSGVscGVyIEkgc3VwcG9zZSBpcyBi
ZXR0ZXIgc2luY2UgaXQgaXMgbW9yZSBzZWxmLWRvY3VtZW50aW5nIGFuZCBpdCdzIAplYXN5IHRv
IGNhbGwgaXQgZnJvbSBhbGwgc3RyYXRlZ2ljIHBsYWNlcy4KClJlZ2FyZHMsCgpUdnJ0a28KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
