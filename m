Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D15E1073EE
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 15:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DA7F6E348;
	Fri, 22 Nov 2019 14:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 874A16E348
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 14:17:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 06:17:46 -0800
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="201531285"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO [10.252.19.231])
 ([10.252.19.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Nov 2019 06:17:45 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191122112152.660743-1-chris@chris-wilson.co.uk>
 <20191122112152.660743-2-chris@chris-wilson.co.uk>
 <70521c9b-0118-4d56-22fd-3fe8bea5424c@linux.intel.com>
 <157442814042.2524.14421308033601241707@skylake-alporthouse-com>
 <3a59045b-0d21-04c0-1b95-a1410949d4eb@linux.intel.com>
 <157443091989.2524.15344680099563528720@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b433daf6-63e2-c493-3822-f94110eba946@linux.intel.com>
Date: Fri, 22 Nov 2019 14:17:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157443091989.2524.15344680099563528720@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/selftests: Flush the active
 callbacks
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

Ck9uIDIyLzExLzIwMTkgMTM6NTUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTIyIDEzOjQzOjE3KQo+Pgo+PiBPbiAyMi8xMS8yMDE5IDEzOjA5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTEx
LTIyIDEzOjAxOjU2KQo+Pj4+Cj4+Pj4gT24gMjIvMTEvMjAxOSAxMToyMSwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBCZWZvcmUgY2hlY2tpbmcgdGhlIGN1cnJlbnQgaTkxNV9hY3RpdmUgc3Rh
dGUgZm9yIHRoZSBhc3luY2hyb25vdXMgd29yawo+Pj4+PiB3ZSBzdWJtaXR0ZWQsIGZsdXNoIGFu
eSBvbmdvaW5nIGNhbGxiYWNrLiBUaGlzIGVuc3VyZXMgdGhhdCBvdXIgc2FtcGxpbmcKPj4+Pj4g
aXMgcm9idXN0IGFuZCBkb2VzIG5vdCBzcG9yYWRpY2FsbHkgZmFpbCBkdWUgdG8gYmFkIHRpbWlu
ZyBhcyB0aGUgd29yawo+Pj4+PiBpcyBydW5uaW5nIG9uIGFub3RoZXIgY3B1Lgo+Pj4+Pgo+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Pj4+Pj4gLS0tCj4+Pj4+ICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9jb250
ZXh0LmMgfCAxOSArKysrKysrKysrKysrLS0tLS0tCj4+Pj4+ICAgICAxIGZpbGUgY2hhbmdlZCwg
MTMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYwo+Pj4+PiBpbmRleCAzNTg2YWY2MzYzMDQu
LjkzOTc5ODMzODI0MiAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
c2VsZnRlc3RfY29udGV4dC5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Nl
bGZ0ZXN0X2NvbnRleHQuYwo+Pj4+PiBAQCAtNDgsMjAgKzQ4LDI1IEBAIHN0YXRpYyBpbnQgY29u
dGV4dF9zeW5jKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPj4+Pj4gICAgIAo+Pj4+PiAgICAg
ICAgIG11dGV4X2xvY2soJnRsLT5tdXRleCk7Cj4+Pj4+ICAgICAgICAgZG8gewo+Pj4+PiAtICAg
ICAgICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+Pj4+PiArICAgICAgICAgICAgIHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+Pj4+PiAgICAgICAgICAgICAgICAgbG9uZyB0aW1lb3V0
Owo+Pj4+PiAgICAgCj4+Pj4+IC0gICAgICAgICAgICAgZmVuY2UgPSBpOTE1X2FjdGl2ZV9mZW5j
ZV9nZXQoJnRsLT5sYXN0X3JlcXVlc3QpOwo+Pj4+PiAtICAgICAgICAgICAgIGlmICghZmVuY2Up
Cj4+Pj4+ICsgICAgICAgICAgICAgaWYgKGxpc3RfZW1wdHkoJnRsLT5yZXF1ZXN0cykpCj4+Pj4+
ICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+Pj4+PiAgICAgCj4+Pj4+IC0gICAgICAg
ICAgICAgdGltZW91dCA9IGRtYV9mZW5jZV93YWl0X3RpbWVvdXQoZmVuY2UsIGZhbHNlLCBIWiAv
IDEwKTsKPj4+Pj4gKyAgICAgICAgICAgICBycSA9IGxpc3RfbGFzdF9lbnRyeSgmdGwtPnJlcXVl
c3RzLCB0eXBlb2YoKnJxKSwgbGluayk7Cj4+Pj4+ICsgICAgICAgICAgICAgaTkxNV9yZXF1ZXN0
X2dldChycSk7Cj4+Pj4+ICsKPj4+Pj4gKyAgICAgICAgICAgICB0aW1lb3V0ID0gaTkxNV9yZXF1
ZXN0X3dhaXQocnEsIDAsIEhaIC8gMTApOwo+Pj4+PiAgICAgICAgICAgICAgICAgaWYgKHRpbWVv
dXQgPCAwKQo+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSB0aW1lb3V0Owo+Pj4+
PiAgICAgICAgICAgICAgICAgZWxzZQo+Pj4+PiAtICAgICAgICAgICAgICAgICAgICAgaTkxNV9y
ZXF1ZXN0X3JldGlyZV91cHRvKHRvX3JlcXVlc3QoZmVuY2UpKTsKPj4+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgIGk5MTVfcmVxdWVzdF9yZXRpcmVfdXB0byhycSk7Cj4+Pj4+ICAgICAKPj4+Pj4g
LSAgICAgICAgICAgICBkbWFfZmVuY2VfcHV0KGZlbmNlKTsKPj4+Pj4gKyAgICAgICAgICAgICBz
cGluX2xvY2tfaXJxKCZycS0+bG9jayk7Cj4+Pj4+ICsgICAgICAgICAgICAgc3Bpbl91bmxvY2tf
aXJxKCZycS0+bG9jayk7Cj4+Pj4KPj4+PiBVZ2guLiB0aGlzIGF0IGxlYXN0IG5lZWRzIGEgY29t
bWVudC4KPj4+Pgo+Pj4+IFdoYXQgaXMgdGhlIGFjdHVhbCByYWNlPwo+Pj4KPj4+IFdlIGNvbXBs
ZXRlIHRoZSBzeW5jIGJlZm9yZSB0aGUgaW50ZXJydXB0IGhhbmRsZXIncyBpcnEgd29yayBoYXMK
Pj4+IGZpbmlzaGVkIGV4ZWN1dGluZyB0aGUgY2FsbGJhY2sgdG8gbWFyayB0aGUgYmFycmllciBh
cyBjb21wbGV0ZWQuCj4+PiBTbyB3aGVuIHdlIGxvb2sgYXQgd2hldGhlciB0aGUgZW5naW5lIGlz
IHBhcmtlZCBvciBub3QsIHdlIHNlZSB0aGUgc3RhdGUKPj4+IGJlZm9yZSB0aGUgcmVxdWVzdCBo
YXMgZmluaXNoZWQgcHJvY2Vzc2luZyBhbmQgZmluZCBpdCBzdGlsbCBhY3RpdmUuCj4+Cj4+IFlv
dSBtZWFuIGk5MTVfYWN0aXZlX2ZlbmNlX2dldCByZXR1cm5zIG5vdCByZWFsbHkgbGFzdCByZXF1
ZXN0PyBIb3cgY2FuCj4+IHRoYXQgYmU/IE9yIHRoZSBrZXkgaXMganVzdCBpbnRlbF9lbmdpbmVf
cG1fZmx1c2g/Cj4gCj4gVGhlIGFjdGl2ZSBpbmdyZWRpZW50IGluIHRoaXMgcGF0Y2ggc2hvdWxk
IGJlIHVzaW5nIHRoZSB0bC0+cmVxdWVzdHMKPiBpbnN0ZWFkIG9mIHRsLT5sYXN0X3JlcXVlc3Qg
YW5kIHRoZW4gdXNpbmcgcG1fZmx1c2goKQo+IAo+IExvb2tpbmcgYXQgd2hhdCB3YXMgdGhlcmUg
YmVmb3JlOgo+Pj4+PiAtICAgICAgICAgICAgIGZlbmNlID0gaTkxNV9hY3RpdmVfZmVuY2VfZ2V0
KCZ0bC0+bGFzdF9yZXF1ZXN0KTsKPiAKPiBpcyBkZWZpbml0ZWx5IHdoZXJlIEkgd2VudCAieWlr
ZXMsIGlmIHdlIGFyZSBza2lwcGluZyBiZWNhdXNlCj4gbGFzdF9yZXF1ZXN0IGlzIE5VTEwsIHdl
IGhhZCBiZXR0ZXIgbWFrZSBzdXJlIHRoYXQgdGhlIGJhcnJpZXIgY2FsbGJhY2tzCj4gb24gdGhl
IHJxLT5mZW5jZS5jYl9saXN0IHdlcmUgZXhlY3V0ZWQiIHdoaWNoIG1lYW5zIHdhaXRpbmcgdW50
aWwgdGhlCj4gaW50ZXJydXB0IGhhbmRsZXIgZHJvcHBlZCBycS0+bG9jay4KPiAKPiBMb29raW5n
IGF0IHRoZSBjb2RlIHRoYXQgaXMgdGhlcmUgbm93LCByZXRpcmluZyB0aGUga25vd24gbGlzdCBv
Zgo+IHJlcXVlc3RzIChhbmQgdGhlbiBsb29waW5nIHRoZSBlbmdpbmVfcGFyayBhZGRpdGlvbikg
c2hvdWxkIGJlIGFjY3VyYXRlLgoKSG0gSSBoYXRlIHRoaXMgdmVyeSBpbnRpbWF0ZSBrbm93bGVk
Z2Ugb2Ygb3BlcmF0aW9uLiBBbmQgSSBhbSBzdGlsbCBub3QgCmZvbGxvd2luZy4gOiggSXMgc29t
ZSBwYXRoIGJ5cGFzc2luZyBhZGRpbmcgdG8gdGwtPmxhc3RfcmVxdWVzdD8KCkkgc2VlIHRoYXQg
dGhlIHNlbGZ0ZXN0IGRvZXMgdHdvIHRoaW5ncywgZmlyc3QgaGFzIGk5MTVfYWN0aXZlX2lzX2lk
bGUgCndoaWNoIG5lZWRzIHRoZSBjb250ZXh0IHRvIGJlIHJldGlyZWQuCgpTZWNvbmQgYml0IGlz
IGludGVsX2VuZ2luZV9wbV9pc19hd2FrZSB3aGljaCBhbG9uZSB3b3VsZCBiZSBoYW5kbGVkIGJ5
IAppbnRlbF9lbmdpbmVfZ3RfcG1fZmx1c2guCgpTbyB0aGUgZmlyc3QgaTkxNV9hY3RpdmVfaXNf
aWRsZSBjaGVjayBpcyB0aGUgcHJvYmxlbWF0aWMgb25lIEkgdGhpbmsuCgpSZWdhcmRzLAoKVHZy
dGtvCgoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
