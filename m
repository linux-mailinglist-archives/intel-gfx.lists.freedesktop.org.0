Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E110E63358
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 11:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2053389D84;
	Tue,  9 Jul 2019 09:18:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7A2789D84
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 09:18:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 02:18:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="170540581"
Received: from unknown (HELO [10.252.37.9]) ([10.252.37.9])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2019 02:18:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-10-lionel.g.landwerlin@intel.com>
 <156198262577.1583.959905049922494081@skylake-alporthouse-com>
 <603a0f73-e7b1-7f39-e194-439ab5bb6a2a@intel.com>
 <156199186516.1583.17662429049479365764@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <809592eb-0450-8d0d-cfbe-0b1e9a13af91@intel.com>
Date: Tue, 9 Jul 2019 12:18:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156199186516.1583.17662429049479365764@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 09/11] drm/i915/perf: allow holding
 preemption on filtered ctx
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

T24gMDEvMDcvMjAxOSAxNzozNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDEgMTM6MTA6NTMpCj4+IE9uIDAxLzA3LzIwMTkgMTU6MDMs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDctMDEgMTI6MzQ6MzUpCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fZXhlY2J1ZmZlci5jCj4+Pj4gaW5kZXggZjkyYmFjZTljYWZmLi4wMTJkNmQ3ZjU0ZTIgMTAw
NjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZm
ZXIuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMKPj4+PiBAQCAtMjEwNCw2ICsyMTA0LDE0IEBAIHN0YXRpYyBpbnQgZWJfb2FfY29uZmln
KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQo+Pj4+ICAgICAgICAgICBpZiAoZXJyKQo+Pj4+
ICAgICAgICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4+Pj4gICAgCj4+Pj4gKyAgICAgICAvKgo+
Pj4+ICsgICAgICAgICogSWYgdGhlIHBlcmYgc3RyZWFtIHdhcyBvcGVuZWQgd2l0aCBob2xkIHBy
ZWVtcHRpb24sIGZsYWcgdGhlCj4+Pj4gKyAgICAgICAgKiByZXF1ZXN0IHByb3Blcmx5IHNvIHRo
YXQgdGhlIHByaW9yaXR5IG9mIHRoZSByZXF1ZXN0IGlzIGJ1bXBlZCBvbmNlCj4+Pj4gKyAgICAg
ICAgKiBpdCByZWFjaGVzIHRoZSBleGVjbGlzdCBwb3J0cy4KPj4+PiArICAgICAgICAqLwo+Pj4+
ICsgICAgICAgaWYgKGViLT5pOTE1LT5wZXJmLm9hLmV4Y2x1c2l2ZV9zdHJlYW0tPmhvbGRfcHJl
ZW1wdGlvbikKPj4+PiArICAgICAgICAgICAgICAgZWItPnJlcXVlc3QtPmZsYWdzIHw9IEk5MTVf
UkVRVUVTVF9GTEFHU19QRVJGOwo+Pj4gSnVzdCB0byByZWFzc3VyZSBteXNlbGYgdGhhdCB0aGlz
IGlzIHRoZSBiZWhhdmlvdXIgeW91Ogo+Pj4KPj4+IElmIHRoZSBleGNsdXNpdmVfc3RyZWFtIGlz
IGNoYW5nZWQgYmVmb3JlIHRoZSByZXF1ZXN0IGlzIGV4ZWN1dGVkLCBpdCBpcwo+Pj4gbGlrZWx5
IHRoYXQgd2Ugbm8gbG9uZ2VyIG5vdGljZSB0aGUgZWFybGllciBwcmVlbXB0aW9uLXByb3RlY3Rp
b24uIFRoaXMKPj4+IHNob3VsZCBub3QgbWF0dGVyIGJlY2F1c2UgdGhlIGxpc3RlbmVyIGlzIG5v
IGxvbmdlciBpbnRlcmVzdGVkIGluIHRob3NlCj4+PiBldmVudHM/Cj4+PiAtQ2hyaXMKPj4+Cj4+
IFllYWgsIGRyb3BwaW5nIHRoZSBwZXJmIHN0cmVhbSBiZWZvcmUgeW91ciBxdWVyaWVzIGNvbXBs
ZXRlIGFuZCB5b3UncmUKPj4gaW4gdW5kZWZpbmVkIGJlaGF2aW9yIHRlcnJpdG9yeS4KPiBUaGVu
IHRoaXMgc2hvdWxkIGRvIHdoYXQgeW91IHdhbnQsIGFuZCBpZiBJIGJyZWFrIGl0IGluIGZ1dHVy
ZSwgSSBoYXZlCj4gdG8gZml4IGl0IDspCj4KPiBIbW0sIHRoaXMgZGVmaW5pdGVseSBtZXJpdHMg
c29tZSBzZWxmdGVzdC9pZ3QgYXMgSSBhbSB2ZXJ5IGxpYWJsZSB0bwo+IGJyZWFrIGl0Lgo+Cj4g
UmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC1D
aHJpcwo+CgpJIGhhZCBhbiBJR1QgdGVzdCB0aGF0IHVzZWQgYSBzcGlubmluZyBiYXRjaCBmb3Ig
YSBjb3VwbGUgb2Ygc2Vjb25kcyAKKHNhbWUgdHJpY2sgYXMgdGhlIG5vYSB3YWl0IHBhdGNoKSBh
bmQgdmVyaWZpZWQgdGhhdCBubyBvdGhlciBjb250ZXh0IAp3b3VsZCBjb21lIHVwIGluIHRoZSBP
QSBidWZmZXIuCgpUaGlzIG1pZ2h0IG5lZWQgYWxsb3dpbmcgdGhlIHByZWVtcHQgY29udGV4dCBv
ciB3aGF0ZXZlciBpcyB1c2VkIGZvciAKaGFuZyBjaGVja3MuCgoKLUxpb25lbAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
