Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D335C7DAD8
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 14:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E496E580;
	Thu,  1 Aug 2019 12:03:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C81BB6E580
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 12:03:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 05:03:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="184222620"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO [10.251.95.57])
 ([10.251.95.57])
 by orsmga002.jf.intel.com with ESMTP; 01 Aug 2019 05:03:49 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190801101825.2784-1-tvrtko.ursulin@linux.intel.com>
 <20190801101825.2784-3-tvrtko.ursulin@linux.intel.com>
 <156465558692.2512.16294533985029116986@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b22dcdb5-e894-b755-44ac-1f1268fdd47f@linux.intel.com>
Date: Thu, 1 Aug 2019 13:03:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156465558692.2512.16294533985029116986@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 2/4] drm/i915/pmu: Convert engine sampling to
 uncore mmio
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

Ck9uIDAxLzA4LzIwMTkgMTE6MzMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA4LTAxIDExOjE4OjIzKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBEcm9wcyBvbmUgbWFjcm8gdXNpbmcgaW1w
bGljaXQgZGV2X3ByaXYuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcG11LmMgfCAyMyArKysrKysrKysrKysrLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BtdS5jCj4+IGluZGV4IDEyMDA4OTY2YjAwZS4uYmQ5YWQ0ZjJiNGU0IDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcG11LmMKPj4gQEAgLTE2MiwyOSArMTYyLDMwIEBAIGFkZF9zYW1wbGUoc3Ry
dWN0IGk5MTVfcG11X3NhbXBsZSAqc2FtcGxlLCB1MzIgdmFsKQo+PiAgIH0KPj4gICAKPj4gICBz
dGF0aWMgdm9pZAo+PiAtZW5naW5lc19zYW1wbGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25zKQo+PiArZW5naW5lc19zYW1wbGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHVuc2lnbmVkIGludCBwZXJpb2RfbnMpCj4+ICAgewo+
PiArICAgICAgIHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZpOTE1LT51bmNvcmU7Cj4+
ICAgICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPj4gICAgICAgICAgZW51
bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Cj4+ICAgICAgICAgIGludGVsX3dha2VyZWZfdCB3YWtlcmVm
Owo+PiAgICAgICAgICB1bnNpZ25lZCBsb25nIGZsYWdzOwo+PiAgIAo+PiAtICAgICAgIGlmICgo
ZGV2X3ByaXYtPnBtdS5lbmFibGUgJiBFTkdJTkVfU0FNUExFX01BU0spID09IDApCj4+ICsgICAg
ICAgaWYgKChpOTE1LT5wbXUuZW5hYmxlICYgRU5HSU5FX1NBTVBMRV9NQVNLKSA9PSAwKQo+PiAg
ICAgICAgICAgICAgICAgIHJldHVybjsKPj4gICAKPj4gICAgICAgICAgd2FrZXJlZiA9IDA7Cj4+
IC0gICAgICAgaWYgKFJFQURfT05DRShkZXZfcHJpdi0+Z3QuYXdha2UpKQo+PiAtICAgICAgICAg
ICAgICAgd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0X2lmX2luX3VzZSgmZGV2X3ByaXYt
PnJ1bnRpbWVfcG0pOwo+PiArICAgICAgIGlmIChSRUFEX09OQ0UoaTkxNS0+Z3QuYXdha2UpKQo+
PiArICAgICAgICAgICAgICAgd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0X2lmX2luX3Vz
ZSgmaTkxNS0+cnVudGltZV9wbSk7Cj4+ICAgICAgICAgIGlmICghd2FrZXJlZikKPj4gICAgICAg
ICAgICAgICAgICByZXR1cm47Cj4+ICAgCj4+IC0gICAgICAgc3Bpbl9sb2NrX2lycXNhdmUoJmRl
dl9wcml2LT51bmNvcmUubG9jaywgZmxhZ3MpOwo+PiAtICAgICAgIGZvcl9lYWNoX2VuZ2luZShl
bmdpbmUsIGRldl9wcml2LCBpZCkgewo+PiArICAgICAgIHNwaW5fbG9ja19pcnFzYXZlKCZ1bmNv
cmUtPmxvY2ssIGZsYWdzKTsKPj4gKyAgICAgICBmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1
LCBpZCkgewo+PiAgICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfcG11ICpwbXUg
PSAmZW5naW5lLT5wbXU7Cj4+ICAgICAgICAgICAgICAgICAgYm9vbCBidXN5Owo+PiAgICAgICAg
ICAgICAgICAgIHUzMiB2YWw7Cj4+ICAgCj4+IC0gICAgICAgICAgICAgICB2YWwgPSBJOTE1X1JF
QURfRlcoUklOR19DVEwoZW5naW5lLT5tbWlvX2Jhc2UpKTsKPj4gKyAgICAgICAgICAgICAgIHZh
bCA9IGludGVsX3VuY29yZV9yZWFkX2Z3KHVuY29yZSwgUklOR19DVEwoZW5naW5lLT5tbWlvX2Jh
c2UpKTsKPiAKPiBDb3VsZCB1c2UgRU5HSU5FX1JFQURfRlcoZW5naW5lLCBSSU5HX0NUTCkgPwoK
RC1vaCEKCj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgoKVGhhbmtzIQoKVHZydGtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
