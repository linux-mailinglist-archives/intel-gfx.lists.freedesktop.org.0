Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E71A12B7C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 12:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49CCF899D6;
	Fri,  3 May 2019 10:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C729899D6
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 10:31:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 03:31:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,425,1549958400"; d="scan'208";a="140939041"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 03 May 2019 03:31:36 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190502150024.16636-1-chris@chris-wilson.co.uk>
 <20190503080942.30151-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6aeabf7a-6541-1f15-22aa-2830822e0fe0@linux.intel.com>
Date: Fri, 3 May 2019 11:31:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503080942.30151-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Flush the tasklet on
 parking
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

Ck9uIDAzLzA1LzIwMTkgMDk6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaWR5IHVwIHRoZSBj
bGVhbnVwIHNlcXVlbmNlIGJ5IGFsd2F5cyBlbnN1cmUgdGhhdCB0aGUgdGFza2xldCBpcwo+IGZs
dXNoZWQgb24gcGFya2luZyAoYmVmb3JlIHdlIGNsZWFudXApLiBUaGUgcGFya2luZyBwcm92aWRl
cyBhCj4gY29udmVuaWVudCBwb2ludCB0byBlbnN1cmUgdGhhdCB0aGUgYmFja2VuZCBpcyB0cnVs
eSBpZGxlLgo+IAo+IHYyOiBEbyB0aGUgZnVsbCBjaGVjayBmb3IgaWRsZW5lc3MgYmVmb3JlIHBh
cmtpbmcsIHRvIGJlIHN1cmUgd2UgZmx1c2gKPiBhbnkgcmVzaWR1YWwgaW50ZXJydXB0Lgo+IAo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgICB8ICAyICsrCj4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYyAgIHwgMjcgKysrKysrKysr
KysrKysrKystLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0u
aCAgIHwgIDIgKysKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAg
ICAgfCAxNiArKysrKystLS0tLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19z
dWJtaXNzaW9uLmMgfCAgMiArKwo+ICAgNSBmaWxlcyBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCsp
LCAxNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfY3MuYwo+IGluZGV4IDY1MGJjMzI1YTkwMS4uNDE2ZDdlMmU2ZjhjIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiBAQCAtMTA5Nyw2ICsxMDk3LDgg
QEAgYm9vbCBpbnRlbF9lbmdpbmVfaXNfaWRsZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCj4gICAJaWYgKFJFQURfT05DRShlbmdpbmUtPmV4ZWNsaXN0cy5hY3RpdmUpKSB7Cj4gICAJ
CXN0cnVjdCB0YXNrbGV0X3N0cnVjdCAqdCA9ICZlbmdpbmUtPmV4ZWNsaXN0cy50YXNrbGV0Owo+
ICAgCj4gKwkJc3luY2hyb25pemVfaGFyZGlycShlbmdpbmUtPmk5MTUtPmRybS5pcnEpOwo+ICsK
PiAgIAkJbG9jYWxfYmhfZGlzYWJsZSgpOwo+ICAgCQlpZiAodGFza2xldF90cnlsb2NrKHQpKSB7
Cj4gICAJCQkvKiBNdXN0IHdhaXQgZm9yIGFueSBHUFUgcmVzZXQgaW4gcHJvZ3Jlc3MuICovCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMKPiBpbmRleCAzOTc2YWVh
M2MxZDEuLmNjZjAzNDc2NDc0MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfcG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9wbS5jCj4gQEAgLTEwLDcgKzEwLDcgQEAKPiAgICNpbmNsdWRlICJpbnRlbF9lbmdp
bmVfcG0uaCIKPiAgICNpbmNsdWRlICJpbnRlbF9ndF9wbS5oIgo+ICAgCj4gLXN0YXRpYyBpbnQg
aW50ZWxfZW5naW5lX3VucGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCj4gK3N0YXRpYyBp
bnQgX19lbmdpbmVfdW5wYXJrKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKPiAgIHsKPiAgIAlz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPQo+ICAgCQljb250YWluZXJfb2Yod2YsIHR5
cGVvZigqZW5naW5lKSwgd2FrZXJlZik7Cj4gQEAgLTM3LDcgKzM3LDI0IEBAIHN0YXRpYyBpbnQg
aW50ZWxfZW5naW5lX3VucGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCj4gICAKPiAgIHZv
aWQgaW50ZWxfZW5naW5lX3BtX2dldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4g
ICB7Cj4gLQlpbnRlbF93YWtlcmVmX2dldChlbmdpbmUtPmk5MTUsICZlbmdpbmUtPndha2VyZWYs
IGludGVsX2VuZ2luZV91bnBhcmspOwo+ICsJaW50ZWxfd2FrZXJlZl9nZXQoZW5naW5lLT5pOTE1
LCAmZW5naW5lLT53YWtlcmVmLCBfX2VuZ2luZV91bnBhcmspOwo+ICt9Cj4gKwo+ICt2b2lkIGlu
dGVsX2VuZ2luZV9wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiArewo+ICsJ
LyoKPiArCSAqIFdlIGFyZSBjb21taXR0ZWQgbm93IHRvIHBhcmtpbmcgdGhpcyBlbmdpbmUsIG1h
a2Ugc3VyZSB0aGVyZQo+ICsJICogd2lsbCBiZSBubyBtb3JlIGludGVycnVwdHMgYXJyaXZpbmcg
bGF0ZXIgYW5kIHRoZSBlbmdpbmUKPiArCSAqIGlzIHRydWx5IGlkbGUuCj4gKwkgKi8KPiArCWlm
ICh3YWl0X2ZvcihpbnRlbF9lbmdpbmVfaXNfaWRsZShlbmdpbmUpLCAxMCkpIHsKPiArCQlzdHJ1
Y3QgZHJtX3ByaW50ZXIgcCA9IGRybV9kZWJ1Z19wcmludGVyKF9fZnVuY19fKTsKPiArCj4gKwkJ
ZGV2X2VycihlbmdpbmUtPmk5MTUtPmRybS5kZXYsCj4gKwkJCSIlcyBpcyBub3QgaWRsZSBiZWZv
cmUgcGFya2luZ1xuIiwKPiArCQkJZW5naW5lLT5uYW1lKTsKPiArCQlpbnRlbF9lbmdpbmVfZHVt
cChlbmdpbmUsICZwLCBOVUxMKTsKPiArCX0KPiAgIH0KPiAgIAo+ICAgc3RhdGljIGJvb2wgc3dp
dGNoX3RvX2tlcm5lbF9jb250ZXh0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiBA
QCAtNTYsNyArNzMsNyBAQCBzdGF0aWMgYm9vbCBzd2l0Y2hfdG9fa2VybmVsX2NvbnRleHQoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgCSAqIE5vdGUsIHdlIGRvIHRoaXMgd2l0
aG91dCB0YWtpbmcgdGhlIHRpbWVsaW5lLT5tdXRleC4gV2UgY2Fubm90Cj4gICAJICogYXMgd2Ug
bWF5IGJlIGNhbGxlZCB3aGlsZSByZXRpcmluZyB0aGUga2VybmVsIGNvbnRleHQgYW5kIHNvCj4g
ICAJICogYWxyZWFkeSB1bmRlcm5lYXRoIHRoZSB0aW1lbGluZS0+bXV0ZXguIEluc3RlYWQgd2Ug
cmVseSBvbiB0aGUKPiAtCSAqIGV4Y2x1c2l2ZSBwcm9wZXJ0eSBvZiB0aGUgaW50ZWxfZW5naW5l
X3BhcmsgdGhhdCBwcmV2ZW50cyBhbnlvbmUKPiArCSAqIGV4Y2x1c2l2ZSBwcm9wZXJ0eSBvZiB0
aGUgX19lbmdpbmVfcGFyayB0aGF0IHByZXZlbnRzIGFueW9uZQo+ICAgCSAqIGVsc2UgZnJvbSBj
cmVhdGluZyBhIHJlcXVlc3Qgb24gdGhpcyBlbmdpbmUuIFRoaXMgYWxzbyByZXF1aXJlcwo+ICAg
CSAqIHRoYXQgdGhlIHJpbmcgaXMgZW1wdHkgYW5kIHdlIGF2b2lkIGFueSB3YWl0cyB3aGlsZSBj
b25zdHJ1Y3RpbmcKPiAgIAkgKiB0aGUgY29udGV4dCwgYXMgdGhleSBhc3N1bWUgcHJvdGVjdGlv
biBieSB0aGUgdGltZWxpbmUtPm11dGV4Lgo+IEBAIC03Niw3ICs5Myw3IEBAIHN0YXRpYyBib29s
IHN3aXRjaF90b19rZXJuZWxfY29udGV4dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
Cj4gICAJcmV0dXJuIGZhbHNlOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyBpbnQgaW50ZWxfZW5naW5l
X3Bhcmsoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQo+ICtzdGF0aWMgaW50IF9fZW5naW5lX3Bh
cmsoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQo+ICAgewo+ICAgCXN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSA9Cj4gICAJCWNvbnRhaW5lcl9vZih3ZiwgdHlwZW9mKCplbmdpbmUpLCB3
YWtlcmVmKTsKPiBAQCAtMTE0LDcgKzEzMSw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZW5naW5lX3Bh
cmsoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQo+ICAgCj4gICB2b2lkIGludGVsX2VuZ2luZV9w
bV9wdXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgewo+IC0JaW50ZWxfd2Fr
ZXJlZl9wdXQoZW5naW5lLT5pOTE1LCAmZW5naW5lLT53YWtlcmVmLCBpbnRlbF9lbmdpbmVfcGFy
ayk7Cj4gKwlpbnRlbF93YWtlcmVmX3B1dChlbmdpbmUtPmk5MTUsICZlbmdpbmUtPndha2VyZWYs
IF9fZW5naW5lX3BhcmspOwo+ICAgfQo+ICAgCj4gICB2b2lkIGludGVsX2VuZ2luZV9pbml0X19w
bShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3BtLmgKPiBpbmRleCAxNDNhYzkwYmExMTcuLmIzMjZjZDk5M2Q2MCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaAo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5oCj4gQEAgLTEz
LDYgKzEzLDggQEAgc3RydWN0IGludGVsX2VuZ2luZV9jczsKPiAgIHZvaWQgaW50ZWxfZW5naW5l
X3BtX2dldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwo+ICAgdm9pZCBpbnRlbF9l
bmdpbmVfcG1fcHV0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7Cj4gICAKPiArdm9p
ZCBpbnRlbF9lbmdpbmVfcGFyayhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwo+ICsK
PiAgIHZvaWQgaW50ZWxfZW5naW5lX2luaXRfX3BtKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSk7Cj4gICAKPiAgIGludCBpbnRlbF9lbmdpbmVzX3Jlc3VtZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCA4
YzJlZWZmNzlmMDMuLjU1ODBiNmYxYWEwYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCj4gQEAgLTEzNiw2ICsxMzYsNyBAQAo+ICAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4g
ICAjaW5jbHVkZSAiaTkxNV9nZW1fcmVuZGVyX3N0YXRlLmgiCj4gICAjaW5jbHVkZSAiaTkxNV92
Z3B1LmgiCj4gKyNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG0uaCIKPiAgICNpbmNsdWRlICJpbnRl
bF9scmNfcmVnLmgiCj4gICAjaW5jbHVkZSAiaW50ZWxfbW9jcy5oIgo+ICAgI2luY2x1ZGUgImlu
dGVsX3Jlc2V0LmgiCj4gQEAgLTIzMzEsNiArMjMzMiwxMSBAQCBzdGF0aWMgaW50IGdlbjhfaW5p
dF9yY3NfY29udGV4dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiAgIAlyZXR1cm4gaTkxNV9n
ZW1fcmVuZGVyX3N0YXRlX2VtaXQocnEpOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyB2b2lkIGV4ZWNs
aXN0c19wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiArewo+ICsJaW50ZWxf
ZW5naW5lX3BhcmsoZW5naW5lKTsKPiArfQo+ICsKPiAgIHZvaWQgaW50ZWxfZXhlY2xpc3RzX3Nl
dF9kZWZhdWx0X3N1Ym1pc3Npb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAg
ewo+ICAgCWVuZ2luZS0+c3VibWl0X3JlcXVlc3QgPSBleGVjbGlzdHNfc3VibWl0X3JlcXVlc3Q7
Cj4gQEAgLTIzNDIsNyArMjM0OCw3IEBAIHZvaWQgaW50ZWxfZXhlY2xpc3RzX3NldF9kZWZhdWx0
X3N1Ym1pc3Npb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgCWVuZ2luZS0+
cmVzZXQucmVzZXQgPSBleGVjbGlzdHNfcmVzZXQ7Cj4gICAJZW5naW5lLT5yZXNldC5maW5pc2gg
PSBleGVjbGlzdHNfcmVzZXRfZmluaXNoOwo+ICAgCj4gLQllbmdpbmUtPnBhcmsgPSBOVUxMOwo+
ICsJZW5naW5lLT5wYXJrID0gZXhlY2xpc3RzX3Bhcms7Cj4gICAJZW5naW5lLT51bnBhcmsgPSBO
VUxMOwo+ICAgCj4gICAJZW5naW5lLT5mbGFncyB8PSBJOTE1X0VOR0lORV9TVVBQT1JUU19TVEFU
UzsKPiBAQCAtMjM1NSwxNCArMjM2MSw2IEBAIHZvaWQgaW50ZWxfZXhlY2xpc3RzX3NldF9kZWZh
dWx0X3N1Ym1pc3Npb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgCj4gICBz
dGF0aWMgdm9pZCBleGVjbGlzdHNfZGVzdHJveShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCj4gICB7Cj4gLQkvKgo+IC0JICogVGFza2xldCBjYW5ub3QgYmUgYWN0aXZlIGF0IHRoaXMg
cG9pbnQgZHVlIGludGVsX21hcmtfYWN0aXZlL2lkbGUKPiAtCSAqIHNvIHRoaXMgaXMganVzdCBm
b3IgZG9jdW1lbnRhdGlvbi4KPiAtCSAqLwo+IC0JaWYgKEdFTV9ERUJVR19XQVJOX09OKHRlc3Rf
Yml0KFRBU0tMRVRfU1RBVEVfU0NIRUQsCj4gLQkJCQkgICAgICAgJmVuZ2luZS0+ZXhlY2xpc3Rz
LnRhc2tsZXQuc3RhdGUpKSkKPiAtCQl0YXNrbGV0X2tpbGwoJmVuZ2luZS0+ZXhlY2xpc3RzLnRh
c2tsZXQpOwo+IC0KPiAgIAlpbnRlbF9lbmdpbmVfY2xlYW51cF9jb21tb24oZW5naW5lKTsKPiAg
IAlscmNfZGVzdHJveV93YV9jdHgoZW5naW5lKTsKPiAgIAlrZnJlZShlbmdpbmUpOwo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwo+IGluZGV4IDRjODE0MzQ0
ODA5Yy4uNTdlZDFkZDRhZTQxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d1Y19zdWJtaXNzaW9uLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9n
dWNfc3VibWlzc2lvbi5jCj4gQEAgLTI1LDYgKzI1LDcgQEAKPiAgICNpbmNsdWRlIDxsaW51eC9j
aXJjX2J1Zi5oPgo+ICAgI2luY2x1ZGUgPHRyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaD4KPiAgIAo+
ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3BtLmgiCj4gICAjaW5jbHVkZSAiZ3QvaW50ZWxf
bHJjX3JlZy5oIgo+ICAgCj4gICAjaW5jbHVkZSAiaW50ZWxfZ3VjX3N1Ym1pc3Npb24uaCIKPiBA
QCAtMTM2Myw2ICsxMzY0LDcgQEAgc3RhdGljIHZvaWQgZ3VjX2ludGVycnVwdHNfcmVsZWFzZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAKPiAgIHN0YXRpYyB2b2lkIGd1
Y19zdWJtaXNzaW9uX3Bhcmsoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgewo+
ICsJaW50ZWxfZW5naW5lX3BhcmsoZW5naW5lKTsKPiAgIAlpbnRlbF9lbmdpbmVfdW5waW5fYnJl
YWRjcnVtYnNfaXJxKGVuZ2luZSk7Cj4gICAJZW5naW5lLT5mbGFncyAmPSB+STkxNV9FTkdJTkVf
TkVFRFNfQlJFQURDUlVNQl9UQVNLTEVUOwo+ICAgfQo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
