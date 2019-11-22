Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D1810738B
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 14:43:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 751CF6E0AB;
	Fri, 22 Nov 2019 13:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7E96E0AB
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 13:43:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 05:43:21 -0800
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="201520030"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO [10.252.19.231])
 ([10.252.19.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Nov 2019 05:43:20 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191122112152.660743-1-chris@chris-wilson.co.uk>
 <20191122112152.660743-2-chris@chris-wilson.co.uk>
 <70521c9b-0118-4d56-22fd-3fe8bea5424c@linux.intel.com>
 <157442814042.2524.14421308033601241707@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3a59045b-0d21-04c0-1b95-a1410949d4eb@linux.intel.com>
Date: Fri, 22 Nov 2019 13:43:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157442814042.2524.14421308033601241707@skylake-alporthouse-com>
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

Ck9uIDIyLzExLzIwMTkgMTM6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTIyIDEzOjAxOjU2KQo+Pgo+PiBPbiAyMi8xMS8yMDE5IDExOjIx
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBCZWZvcmUgY2hlY2tpbmcgdGhlIGN1cnJlbnQgaTkx
NV9hY3RpdmUgc3RhdGUgZm9yIHRoZSBhc3luY2hyb25vdXMgd29yawo+Pj4gd2Ugc3VibWl0dGVk
LCBmbHVzaCBhbnkgb25nb2luZyBjYWxsYmFjay4gVGhpcyBlbnN1cmVzIHRoYXQgb3VyIHNhbXBs
aW5nCj4+PiBpcyByb2J1c3QgYW5kIGRvZXMgbm90IHNwb3JhZGljYWxseSBmYWlsIGR1ZSB0byBi
YWQgdGltaW5nIGFzIHRoZSB3b3JrCj4+PiBpcyBydW5uaW5nIG9uIGFub3RoZXIgY3B1Lgo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9jb250ZXh0
LmMgfCAxOSArKysrKysrKysrKysrLS0tLS0tCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5z
ZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfY29udGV4dC5jCj4+PiBpbmRleCAzNTg2YWY2MzYzMDQuLjkzOTc5ODMzODI0
MiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRl
eHQuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5j
Cj4+PiBAQCAtNDgsMjAgKzQ4LDI1IEBAIHN0YXRpYyBpbnQgY29udGV4dF9zeW5jKHN0cnVjdCBp
bnRlbF9jb250ZXh0ICpjZSkKPj4+ICAgIAo+Pj4gICAgICAgIG11dGV4X2xvY2soJnRsLT5tdXRl
eCk7Cj4+PiAgICAgICAgZG8gewo+Pj4gLSAgICAgICAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZTsKPj4+ICsgICAgICAgICAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4+PiAgICAg
ICAgICAgICAgICBsb25nIHRpbWVvdXQ7Cj4+PiAgICAKPj4+IC0gICAgICAgICAgICAgZmVuY2Ug
PSBpOTE1X2FjdGl2ZV9mZW5jZV9nZXQoJnRsLT5sYXN0X3JlcXVlc3QpOwo+Pj4gLSAgICAgICAg
ICAgICBpZiAoIWZlbmNlKQo+Pj4gKyAgICAgICAgICAgICBpZiAobGlzdF9lbXB0eSgmdGwtPnJl
cXVlc3RzKSkKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4+PiAgICAKPj4+IC0g
ICAgICAgICAgICAgdGltZW91dCA9IGRtYV9mZW5jZV93YWl0X3RpbWVvdXQoZmVuY2UsIGZhbHNl
LCBIWiAvIDEwKTsKPj4+ICsgICAgICAgICAgICAgcnEgPSBsaXN0X2xhc3RfZW50cnkoJnRsLT5y
ZXF1ZXN0cywgdHlwZW9mKCpycSksIGxpbmspOwo+Pj4gKyAgICAgICAgICAgICBpOTE1X3JlcXVl
c3RfZ2V0KHJxKTsKPj4+ICsKPj4+ICsgICAgICAgICAgICAgdGltZW91dCA9IGk5MTVfcmVxdWVz
dF93YWl0KHJxLCAwLCBIWiAvIDEwKTsKPj4+ICAgICAgICAgICAgICAgIGlmICh0aW1lb3V0IDwg
MCkKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gdGltZW91dDsKPj4+ICAgICAgICAg
ICAgICAgIGVsc2UKPj4+IC0gICAgICAgICAgICAgICAgICAgICBpOTE1X3JlcXVlc3RfcmV0aXJl
X3VwdG8odG9fcmVxdWVzdChmZW5jZSkpOwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGk5MTVf
cmVxdWVzdF9yZXRpcmVfdXB0byhycSk7Cj4+PiAgICAKPj4+IC0gICAgICAgICAgICAgZG1hX2Zl
bmNlX3B1dChmZW5jZSk7Cj4+PiArICAgICAgICAgICAgIHNwaW5fbG9ja19pcnEoJnJxLT5sb2Nr
KTsKPj4+ICsgICAgICAgICAgICAgc3Bpbl91bmxvY2tfaXJxKCZycS0+bG9jayk7Cj4+Cj4+IFVn
aC4uIHRoaXMgYXQgbGVhc3QgbmVlZHMgYSBjb21tZW50Lgo+Pgo+PiBXaGF0IGlzIHRoZSBhY3R1
YWwgcmFjZT8KPiAKPiBXZSBjb21wbGV0ZSB0aGUgc3luYyBiZWZvcmUgdGhlIGludGVycnVwdCBo
YW5kbGVyJ3MgaXJxIHdvcmsgaGFzCj4gZmluaXNoZWQgZXhlY3V0aW5nIHRoZSBjYWxsYmFjayB0
byBtYXJrIHRoZSBiYXJyaWVyIGFzIGNvbXBsZXRlZC4KPiBTbyB3aGVuIHdlIGxvb2sgYXQgd2hl
dGhlciB0aGUgZW5naW5lIGlzIHBhcmtlZCBvciBub3QsIHdlIHNlZSB0aGUgc3RhdGUKPiBiZWZv
cmUgdGhlIHJlcXVlc3QgaGFzIGZpbmlzaGVkIHByb2Nlc3NpbmcgYW5kIGZpbmQgaXQgc3RpbGwg
YWN0aXZlLgoKWW91IG1lYW4gaTkxNV9hY3RpdmVfZmVuY2VfZ2V0IHJldHVybnMgbm90IHJlYWxs
eSBsYXN0IHJlcXVlc3Q/IEhvdyBjYW4gCnRoYXQgYmU/IE9yIHRoZSBrZXkgaXMganVzdCBpbnRl
bF9lbmdpbmVfcG1fZmx1c2g/CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
