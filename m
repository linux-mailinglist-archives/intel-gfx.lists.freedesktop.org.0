Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD511072B0
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 14:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 322066E2C4;
	Fri, 22 Nov 2019 13:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A1D86E2C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 13:02:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 05:01:59 -0800
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="201511554"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO [10.252.19.231])
 ([10.252.19.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Nov 2019 05:01:58 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191122112152.660743-1-chris@chris-wilson.co.uk>
 <20191122112152.660743-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <70521c9b-0118-4d56-22fd-3fe8bea5424c@linux.intel.com>
Date: Fri, 22 Nov 2019 13:01:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191122112152.660743-2-chris@chris-wilson.co.uk>
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

Ck9uIDIyLzExLzIwMTkgMTE6MjEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBCZWZvcmUgY2hlY2tp
bmcgdGhlIGN1cnJlbnQgaTkxNV9hY3RpdmUgc3RhdGUgZm9yIHRoZSBhc3luY2hyb25vdXMgd29y
awo+IHdlIHN1Ym1pdHRlZCwgZmx1c2ggYW55IG9uZ29pbmcgY2FsbGJhY2suIFRoaXMgZW5zdXJl
cyB0aGF0IG91ciBzYW1wbGluZwo+IGlzIHJvYnVzdCBhbmQgZG9lcyBub3Qgc3BvcmFkaWNhbGx5
IGZhaWwgZHVlIHRvIGJhZCB0aW1pbmcgYXMgdGhlIHdvcmsKPiBpcyBydW5uaW5nIG9uIGFub3Ro
ZXIgY3B1Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29u
dGV4dC5jIHwgMTkgKysrKysrKysrKysrKy0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEzIGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X2NvbnRleHQuYwo+IGluZGV4IDM1ODZhZjYzNjMwNC4uOTM5Nzk4MzM4MjQyIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYwo+IEBAIC00
OCwyMCArNDgsMjUgQEAgc3RhdGljIGludCBjb250ZXh0X3N5bmMoc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlKQo+ICAgCj4gICAJbXV0ZXhfbG9jaygmdGwtPm11dGV4KTsKPiAgIAlkbyB7Cj4gLQkJ
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4gKwkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4g
ICAJCWxvbmcgdGltZW91dDsKPiAgIAo+IC0JCWZlbmNlID0gaTkxNV9hY3RpdmVfZmVuY2VfZ2V0
KCZ0bC0+bGFzdF9yZXF1ZXN0KTsKPiAtCQlpZiAoIWZlbmNlKQo+ICsJCWlmIChsaXN0X2VtcHR5
KCZ0bC0+cmVxdWVzdHMpKQo+ICAgCQkJYnJlYWs7Cj4gICAKPiAtCQl0aW1lb3V0ID0gZG1hX2Zl
bmNlX3dhaXRfdGltZW91dChmZW5jZSwgZmFsc2UsIEhaIC8gMTApOwo+ICsJCXJxID0gbGlzdF9s
YXN0X2VudHJ5KCZ0bC0+cmVxdWVzdHMsIHR5cGVvZigqcnEpLCBsaW5rKTsKPiArCQlpOTE1X3Jl
cXVlc3RfZ2V0KHJxKTsKPiArCj4gKwkJdGltZW91dCA9IGk5MTVfcmVxdWVzdF93YWl0KHJxLCAw
LCBIWiAvIDEwKTsKPiAgIAkJaWYgKHRpbWVvdXQgPCAwKQo+ICAgCQkJZXJyID0gdGltZW91dDsK
PiAgIAkJZWxzZQo+IC0JCQlpOTE1X3JlcXVlc3RfcmV0aXJlX3VwdG8odG9fcmVxdWVzdChmZW5j
ZSkpOwo+ICsJCQlpOTE1X3JlcXVlc3RfcmV0aXJlX3VwdG8ocnEpOwo+ICAgCj4gLQkJZG1hX2Zl
bmNlX3B1dChmZW5jZSk7Cj4gKwkJc3Bpbl9sb2NrX2lycSgmcnEtPmxvY2spOwo+ICsJCXNwaW5f
dW5sb2NrX2lycSgmcnEtPmxvY2spOwoKVWdoLi4gdGhpcyBhdCBsZWFzdCBuZWVkcyBhIGNvbW1l
bnQuCgpXaGF0IGlzIHRoZSBhY3R1YWwgcmFjZT8KClJlZ2FyZHMsCgpUdnJ0a28KCj4gKwo+ICsJ
CWk5MTVfcmVxdWVzdF9wdXQocnEpOwo+ICAgCX0gd2hpbGUgKCFlcnIpOwo+ICAgCW11dGV4X3Vu
bG9jaygmdGwtPm11dGV4KTsKPiAgIAo+IEBAIC0yODIsNiArMjg3LDggQEAgc3RhdGljIGludCBf
X2xpdmVfYWN0aXZlX2NvbnRleHQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAg
CQllcnIgPSAtRUlOVkFMOwo+ICAgCX0KPiAgIAo+ICsJaW50ZWxfZW5naW5lX3BtX2ZsdXNoKGVu
Z2luZSk7Cj4gKwo+ICAgCWlmIChpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UoZW5naW5lKSkgewo+
ICAgCQlzdHJ1Y3QgZHJtX3ByaW50ZXIgcCA9IGRybV9kZWJ1Z19wcmludGVyKF9fZnVuY19fKTsK
PiAgIAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
