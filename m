Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 733D71324B5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 12:20:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C7E89C83;
	Tue,  7 Jan 2020 11:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A479689C83
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 11:20:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jan 2020 03:20:07 -0800
X-IronPort-AV: E=Sophos;i="5.69,406,1571727600"; d="scan'208";a="215518271"
Received: from kumarjai-mobl1.ger.corp.intel.com (HELO [10.251.83.12])
 ([10.251.83.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 Jan 2020 03:20:06 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191222233558.2201901-1-chris@chris-wilson.co.uk>
 <bffc4098-183d-59af-cf74-09e96bb4063d@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <447391ea-6fb1-bf27-bc67-e14f890e94e5@linux.intel.com>
Date: Tue, 7 Jan 2020 11:20:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bffc4098-183d-59af-cf74-09e96bb4063d@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark the GEM context link as RCU
 protected
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

Ck9uIDA3LzAxLzIwMjAgMTE6MTUsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDIyLzEy
LzIwMTkgMjM6MzUsIENocmlzIFdpbHNvbiB3cm90ZToKPj4gVGhlIG9ubHkgcHJvdGVjdGlvbiBm
b3IgaW50ZWxfY29udGV4dC5nZW1fY290ZXh0IGlzIGdyYW50ZWQgYnkgUkNVLCBzbwo+PiBhbm5v
dGF0ZSBpdCBhcyBhIHJjdSBwcm90ZWN0ZWQgcG9pbnRlciBhbmQgY2FyZWZ1bGx5IGRlcmVmZXJl
bmNlIGl0IGluCj4+IHRoZSBmZXcgb2NjYXNpb25zIHdlIG5lZWQgdG8gdXNlIGl0Lgo+Pgo+PiBG
aXhlczogOWYzY2NkNDBhY2Y0ICgiZHJtL2k5MTU6IERyb3AgR0VNIGNvbnRleHQgYXMgYSBkaXJl
Y3QgbGluayBmcm9tIAo+PiBpOTE1X3JlcXVlc3QiKQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gQ2M6IEFuZGkgU2h5dGkgPGFuZGku
c2h5dGlAaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuY8KgwqAgfMKgIDUgKystCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaCB8wqAgMiArLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yZXNldC5jwqDCoMKgwqDCoMKgwqDCoCB8IDI2ICsrKysrKysrKy0tLQo+
PiDCoCAuLi4vZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jwqDCoCB8wqAg
MiArLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jwqDCoMKgwqDC
oMKgwqDCoCB8IDQwICsrKysrKysrKysrKy0tLS0tLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZXF1ZXN0LmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNiArLS0KPj4gwqAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmjCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAg
OCArKysrCj4+IMKgIDcgZmlsZXMgY2hhbmdlZCwgNjIgaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRp
b25zKC0pCj4+Cj4gCj4gW3NuaXBdCj4gCj4+IMKgIHN0YXRpYyB2b2lkIGVuZ2luZV9yZWNvcmRf
cmVxdWVzdHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+PiBAQCAtMTI5OCwyOCAr
MTMwNCwzNCBAQCBzdGF0aWMgdm9pZCAKPj4gZXJyb3JfcmVjb3JkX2VuZ2luZV9leGVjbGlzdHMo
Y29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+PiDCoCBzdGF0aWMgYm9vbCBy
ZWNvcmRfY29udGV4dChzdHJ1Y3QgZHJtX2k5MTVfZXJyb3JfY29udGV4dCAqZSwKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEp
Cj4+IMKgIHsKPj4gLcKgwqDCoCBjb25zdCBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4ID0g
cnEtPmNvbnRleHQtPmdlbV9jb250ZXh0Owo+PiArwqDCoMKgIHN0cnVjdCBpOTE1X2dlbV9jb250
ZXh0ICpjdHg7Cj4+ICvCoMKgwqAgc3RydWN0IHRhc2tfc3RydWN0ICp0YXNrOwo+PiArwqDCoMKg
IGJvb2wgY2FwdHVyZTsKPj4gK8KgwqDCoCByY3VfcmVhZF9sb2NrKCk7Cj4+ICvCoMKgwqAgY3R4
ID0gcmN1X2RlcmVmZXJlbmNlKHJxLT5jb250ZXh0LT5nZW1fY29udGV4dCk7Cj4+ICvCoMKgwqAg
aWYgKGN0eCAmJiAha3JlZl9nZXRfdW5sZXNzX3plcm8oJmN0eC0+cmVmKSkKPj4gK8KgwqDCoMKg
wqDCoMKgIGN0eCA9IE5VTEw7Cj4+ICvCoMKgwqAgcmN1X3JlYWRfdW5sb2NrKCk7Cj4+IMKgwqDC
oMKgwqAgaWYgKCFjdHgpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZmFsc2U7Cj4+IC3C
oMKgwqAgaWYgKGN0eC0+cGlkKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgdGFza19zdHJ1
Y3QgKnRhc2s7Cj4+IC0KPj4gLcKgwqDCoMKgwqDCoMKgIHJjdV9yZWFkX2xvY2soKTsKPj4gLcKg
wqDCoMKgwqDCoMKgIHRhc2sgPSBwaWRfdGFzayhjdHgtPnBpZCwgUElEVFlQRV9QSUQpOwo+PiAt
wqDCoMKgwqDCoMKgwqAgaWYgKHRhc2spIHsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Ry
Y3B5KGUtPmNvbW0sIHRhc2stPmNvbW0pOwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlLT5w
aWQgPSB0YXNrLT5waWQ7Cj4+IC3CoMKgwqDCoMKgwqDCoCB9Cj4+IC3CoMKgwqDCoMKgwqDCoCBy
Y3VfcmVhZF91bmxvY2soKTsKPj4gK8KgwqDCoCByY3VfcmVhZF9sb2NrKCk7Cj4+ICvCoMKgwqAg
dGFzayA9IHBpZF90YXNrKGN0eC0+cGlkLCBQSURUWVBFX1BJRCk7Cj4+ICvCoMKgwqAgaWYgKHRh
c2spIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHN0cmNweShlLT5jb21tLCB0YXNrLT5jb21tKTsKPj4g
K8KgwqDCoMKgwqDCoMKgIGUtPnBpZCA9IHRhc2stPnBpZDsKPj4gwqDCoMKgwqDCoCB9Cj4+ICvC
oMKgwqAgcmN1X3JlYWRfdW5sb2NrKCk7Cj4gCj4gV2h5IGlzIHRoaXMgcmN1X3JlYWRfbG9jayBz
ZWN0aW9uIG5lZWRlZD8gVGhlIGZpcnN0IG9uZSBvYnRhaW5lZCB0aGUgCj4gcmVmZXJlbmNlIHRv
IHRoZSBjb250ZXh0IHNvIHNob3VsZCBiZSBnb29kLgoKSG1tIHBpZF90YXNrKCkgZG9lczoKCi4u
LgogICAgICAgICAgICAgICAgIGZpcnN0ID0gCnJjdV9kZXJlZmVyZW5jZV9jaGVjayhobGlzdF9m
aXJzdF9yY3UoJnBpZC0+dGFza3NbdHlwZV0pLAogCmxvY2tkZXBfdGFza2xpc3RfbG9ja19pc19o
ZWxkKCkpOwoKLi4uCgpOb3RlLCB0YXNrbGlzdF9sb2NrX2lzX2hlbGQuCgpSZWdhcmRzLAoKVHZy
dGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
