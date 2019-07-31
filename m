Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEB97B945
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 07:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0304B6E679;
	Wed, 31 Jul 2019 05:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B8396E679
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 05:55:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 22:55:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,328,1559545200"; d="scan'208";a="183560743"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO [10.251.95.57])
 ([10.251.95.57])
 by orsmga002.jf.intel.com with ESMTP; 30 Jul 2019 22:55:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190730154853.19157-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e5749218-69ed-919a-a0bd-1bd53210d55d@linux.intel.com>
Date: Wed, 31 Jul 2019 06:55:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730154853.19157-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Pass intel_context to
 igt_spinner
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

Ck9uIDMwLzA3LzIwMTkgMTY6NDgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUZWFjaCBpZ3Rfc3Bp
bm5lciB0byBvbmx5IHVzZSBvdXIgaW50ZXJuYWwgc3RydWN0cywgZGVjb3VwbGluZyB0aGUKPiBp
bnRlcmZhY2UgZnJvbSB0aGUgR0VNIGNvbnRleHRzLiBUaGlzIG1ha2VzIGl0IGVhc2llciB0byBh
dm9pZAo+IHJlcXVpcmluZyBjZS0+Z2VtX2NvbnRleHQgYmFjayByZWZlcmVuY2VzIGZvciBrZXJu
ZWxfY29udGV4dCB0aGF0IG1heQo+IGhhdmUgdGhlbSBpbiBmdXR1cmUuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICAu
Li4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCAgNDMgKysrLS0t
LQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgICAgICAgIHwgMTE1
ICsrKysrKysrKystLS0tLS0tLQo+ICAgLi4uL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3Jr
YXJvdW5kcy5jICAgIHwgIDIzICsrKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9pZ3Rfc3Bpbm5lci5jICB8ICAzMiArKystLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2lndF9zcGlubmVyLmggIHwgICA2ICstCj4gICA1IGZpbGVzIGNoYW5nZWQsIDExOSBp
bnNlcnRpb25zKCspLCAxMDAgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKPiBpbmRleCA3Zjlm
NjcwMWIzMmMuLmMyNDQzMDM1MmEzOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCj4gQEAgLTgyMSw4ICs4MjEs
NyBAQCBlbWl0X3JwY3NfcXVlcnkoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAg
ICNkZWZpbmUgVEVTVF9SRVNFVAlCSVQoMikKPiAgIAo+ICAgc3RhdGljIGludAo+IC1fX3NzZXVf
cHJlcGFyZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAtCSAgICAgICBjb25zdCBj
aGFyICpuYW1lLAo+ICtfX3NzZXVfcHJlcGFyZShjb25zdCBjaGFyICpuYW1lLAo+ICAgCSAgICAg
ICB1bnNpZ25lZCBpbnQgZmxhZ3MsCj4gICAJICAgICAgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpj
ZSwKPiAgIAkgICAgICAgc3RydWN0IGlndF9zcGlubmVyICoqc3BpbikKPiBAQCAtODM4LDE0ICs4
MzcsMTEgQEAgX19zc2V1X3ByZXBhcmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4g
ICAJaWYgKCEqc3BpbikKPiAgIAkJcmV0dXJuIC1FTk9NRU07Cj4gICAKPiAtCXJldCA9IGlndF9z
cGlubmVyX2luaXQoKnNwaW4sIGk5MTUpOwo+ICsJcmV0ID0gaWd0X3NwaW5uZXJfaW5pdCgqc3Bp
biwgY2UtPmVuZ2luZS0+Z3QpOwo+ICAgCWlmIChyZXQpCj4gICAJCWdvdG8gZXJyX2ZyZWU7Cj4g
ICAKPiAtCXJxID0gaWd0X3NwaW5uZXJfY3JlYXRlX3JlcXVlc3QoKnNwaW4sCj4gLQkJCQkJY2Ut
PmdlbV9jb250ZXh0LAo+IC0JCQkJCWNlLT5lbmdpbmUsCj4gLQkJCQkJTUlfTk9PUCk7Cj4gKwly
cSA9IGlndF9zcGlubmVyX2NyZWF0ZV9yZXF1ZXN0KCpzcGluLCBjZSwgTUlfTk9PUCk7Cj4gICAJ
aWYgKElTX0VSUihycSkpIHsKPiAgIAkJcmV0ID0gUFRSX0VSUihycSk7Cj4gICAJCWdvdG8gZXJy
X2Zpbmk7Cj4gQEAgLTg3MSw4ICs4NjcsNyBAQCBfX3NzZXVfcHJlcGFyZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKPiAgIH0KPiAgIAo+ICAgc3RhdGljIGludAo+IC1fX3JlYWRfc2xp
Y2VfY291bnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gLQkJICAgc3RydWN0IGlu
dGVsX2NvbnRleHQgKmNlLAo+ICtfX3JlYWRfc2xpY2VfY291bnQoc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlLAo+ICAgCQkgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICAgCQkg
ICBzdHJ1Y3QgaWd0X3NwaW5uZXIgKnNwaW4sCj4gICAJCSAgIHUzMiAqcnBjcykKPiBAQCAtOTAx
LDcgKzg5Niw3IEBAIF9fcmVhZF9zbGljZV9jb3VudChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwKPiAgIAkJcmV0dXJuIHJldDsKPiAgIAl9Cj4gICAKPiAtCWlmIChJTlRFTF9HRU4oaTkx
NSkgPj0gMTEpIHsKPiArCWlmIChJTlRFTF9HRU4oY2UtPmVuZ2luZS0+aTkxNSkgPj0gMTEpIHsK
PiAgIAkJc19tYXNrID0gR0VOMTFfUlBDU19TX0NOVF9NQVNLOwo+ICAgCQlzX3NoaWZ0ID0gR0VO
MTFfUlBDU19TX0NOVF9TSElGVDsKPiAgIAl9IGVsc2Ugewo+IEBAIC05NDQsOCArOTM5LDcgQEAg
X19jaGVja19ycGNzKGNvbnN0IGNoYXIgKm5hbWUsIHUzMiBycGNzLCBpbnQgc2xpY2VzLCB1bnNp
Z25lZCBpbnQgZXhwZWN0ZWQsCj4gICB9Cj4gICAKPiAgIHN0YXRpYyBpbnQKPiAtX19zc2V1X2Zp
bmlzaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAtCSAgICAgIGNvbnN0IGNoYXIg
Km5hbWUsCj4gK19fc3NldV9maW5pc2goY29uc3QgY2hhciAqbmFtZSwKPiAgIAkgICAgICB1bnNp
Z25lZCBpbnQgZmxhZ3MsCj4gICAJICAgICAgc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ICAg
CSAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gQEAgLTk2MiwxNCArOTU2
LDEzIEBAIF9fc3NldV9maW5pc2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gICAJ
CQlnb3RvIG91dDsKPiAgIAl9Cj4gICAKPiAtCXJldCA9IF9fcmVhZF9zbGljZV9jb3VudChpOTE1
LCBjZSwgb2JqLAo+ICsJcmV0ID0gX19yZWFkX3NsaWNlX2NvdW50KGNlLCBvYmosCj4gICAJCQkJ
IGZsYWdzICYgVEVTVF9SRVNFVCA/IE5VTEwgOiBzcGluLCAmcnBjcyk7Cj4gICAJcmV0ID0gX19j
aGVja19ycGNzKG5hbWUsIHJwY3MsIHJldCwgZXhwZWN0ZWQsICJDb250ZXh0IiwgIiEiKTsKPiAg
IAlpZiAocmV0KQo+ICAgCQlnb3RvIG91dDsKPiAgIAo+IC0JcmV0ID0gX19yZWFkX3NsaWNlX2Nv
dW50KGk5MTUsIGNlLT5lbmdpbmUtPmtlcm5lbF9jb250ZXh0LCBvYmosCj4gLQkJCQkgTlVMTCwg
JnJwY3MpOwo+ICsJcmV0ID0gX19yZWFkX3NsaWNlX2NvdW50KGNlLT5lbmdpbmUtPmtlcm5lbF9j
b250ZXh0LCBvYmosIE5VTEwsICZycGNzKTsKPiAgIAlyZXQgPSBfX2NoZWNrX3JwY3MobmFtZSwg
cnBjcywgcmV0LCBzbGljZXMsICJLZXJuZWwgY29udGV4dCIsICIhIik7Cj4gICAKPiAgIG91dDoK
PiBAQCAtOTc3LDExICs5NzAsMTIgQEAgX19zc2V1X2ZpbmlzaChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwKPiAgIAkJaWd0X3NwaW5uZXJfZW5kKHNwaW4pOwo+ICAgCj4gICAJaWYgKChm
bGFncyAmIFRFU1RfSURMRSkgJiYgcmV0ID09IDApIHsKPiAtCQlyZXQgPSBpOTE1X2dlbV93YWl0
X2Zvcl9pZGxlKGk5MTUsIDAsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKPiArCQlyZXQgPSBpOTE1
X2dlbV93YWl0X2Zvcl9pZGxlKGNlLT5lbmdpbmUtPmk5MTUsCj4gKwkJCQkJICAgICAwLCBNQVhf
U0NIRURVTEVfVElNRU9VVCk7Cj4gICAJCWlmIChyZXQpCj4gICAJCQlyZXR1cm4gcmV0Owo+ICAg
Cj4gLQkJcmV0ID0gX19yZWFkX3NsaWNlX2NvdW50KGk5MTUsIGNlLCBvYmosIE5VTEwsICZycGNz
KTsKPiArCQlyZXQgPSBfX3JlYWRfc2xpY2VfY291bnQoY2UsIG9iaiwgTlVMTCwgJnJwY3MpOwo+
ICAgCQlyZXQgPSBfX2NoZWNrX3JwY3MobmFtZSwgcnBjcywgcmV0LCBleHBlY3RlZCwKPiAgIAkJ
CQkgICAiQ29udGV4dCIsICIgYWZ0ZXIgaWRsZSEiKTsKPiAgIAl9Cj4gQEAgLTk5MCw4ICs5ODQs
NyBAQCBfX3NzZXVfZmluaXNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAgfQo+
ICAgCj4gICBzdGF0aWMgaW50Cj4gLV9fc3NldV90ZXN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LAo+IC0JICAgIGNvbnN0IGNoYXIgKm5hbWUsCj4gK19fc3NldV90ZXN0KGNvbnN0IGNo
YXIgKm5hbWUsCj4gICAJICAgIHVuc2lnbmVkIGludCBmbGFncywKPiAgIAkgICAgc3RydWN0IGlu
dGVsX2NvbnRleHQgKmNlLAo+ICAgCSAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
LAo+IEBAIC0xMDAwLDcgKzk5Myw3IEBAIF9fc3NldV90ZXN0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LAo+ICAgCXN0cnVjdCBpZ3Rfc3Bpbm5lciAqc3BpbiA9IE5VTEw7Cj4gICAJaW50
IHJldDsKPiAgIAo+IC0JcmV0ID0gX19zc2V1X3ByZXBhcmUoaTkxNSwgbmFtZSwgZmxhZ3MsIGNl
LCAmc3Bpbik7Cj4gKwlyZXQgPSBfX3NzZXVfcHJlcGFyZShuYW1lLCBmbGFncywgY2UsICZzcGlu
KTsKPiAgIAlpZiAocmV0KQo+ICAgCQlyZXR1cm4gcmV0Owo+ICAgCj4gQEAgLTEwMDgsNyArMTAw
MSw3IEBAIF9fc3NldV90ZXN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAgCWlm
IChyZXQpCj4gICAJCWdvdG8gb3V0X3NwaW47Cj4gICAKPiAtCXJldCA9IF9fc3NldV9maW5pc2go
aTkxNSwgbmFtZSwgZmxhZ3MsIGNlLCBvYmosCj4gKwlyZXQgPSBfX3NzZXVfZmluaXNoKG5hbWUs
IGZsYWdzLCBjZSwgb2JqLAo+ICAgCQkJICAgIGh3ZWlnaHQzMihzc2V1LnNsaWNlX21hc2spLCBz
cGluKTsKPiAgIAo+ICAgb3V0X3NwaW46Cj4gQEAgLTEwODgsMjIgKzEwODEsMjIgQEAgX19pZ3Rf
Y3R4X3NzZXUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gICAJCWdvdG8gb3V0X2Nv
bnRleHQ7Cj4gICAKPiAgIAkvKiBGaXJzdCBzZXQgdGhlIGRlZmF1bHQgbWFzay4gKi8KPiAtCXJl
dCA9IF9fc3NldV90ZXN0KGk5MTUsIG5hbWUsIGZsYWdzLCBjZSwgb2JqLCBlbmdpbmUtPnNzZXUp
Owo+ICsJcmV0ID0gX19zc2V1X3Rlc3QobmFtZSwgZmxhZ3MsIGNlLCBvYmosIGVuZ2luZS0+c3Nl
dSk7Cj4gICAJaWYgKHJldCkKPiAgIAkJZ290byBvdXRfZmFpbDsKPiAgIAo+ICAgCS8qIFRoZW4g
c2V0IGEgcG93ZXItZ2F0ZWQgY29uZmlndXJhdGlvbi4gKi8KPiAtCXJldCA9IF9fc3NldV90ZXN0
KGk5MTUsIG5hbWUsIGZsYWdzLCBjZSwgb2JqLCBwZ19zc2V1KTsKPiArCXJldCA9IF9fc3NldV90
ZXN0KG5hbWUsIGZsYWdzLCBjZSwgb2JqLCBwZ19zc2V1KTsKPiAgIAlpZiAocmV0KQo+ICAgCQln
b3RvIG91dF9mYWlsOwo+ICAgCj4gICAJLyogQmFjayB0byBkZWZhdWx0cy4gKi8KPiAtCXJldCA9
IF9fc3NldV90ZXN0KGk5MTUsIG5hbWUsIGZsYWdzLCBjZSwgb2JqLCBlbmdpbmUtPnNzZXUpOwo+
ICsJcmV0ID0gX19zc2V1X3Rlc3QobmFtZSwgZmxhZ3MsIGNlLCBvYmosIGVuZ2luZS0+c3NldSk7
Cj4gICAJaWYgKHJldCkKPiAgIAkJZ290byBvdXRfZmFpbDsKPiAgIAo+ICAgCS8qIE9uZSBsYXN0
IHBvd2VyLWdhdGVkIGNvbmZpZ3VyYXRpb24gZm9yIHRoZSByb2FkLiAqLwo+IC0JcmV0ID0gX19z
c2V1X3Rlc3QoaTkxNSwgbmFtZSwgZmxhZ3MsIGNlLCBvYmosIHBnX3NzZXUpOwo+ICsJcmV0ID0g
X19zc2V1X3Rlc3QobmFtZSwgZmxhZ3MsIGNlLCBvYmosIHBnX3NzZXUpOwo+ICAgCWlmIChyZXQp
Cj4gICAJCWdvdG8gb3V0X2ZhaWw7Cj4gICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF9scmMuYwo+IGluZGV4IDYwZjI3ZTUyZDI2Ny4uYjQwYjU3ZDJkYWFlIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKPiBAQCAtMjIsOSArMjIsOSBAQAo+ICAgc3Rh
dGljIGludCBsaXZlX3Nhbml0eWNoZWNrKHZvaWQgKmFyZykKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFyZzsKPiAtCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZTsKPiArCXN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7Cj4gICAJc3RydWN0IGk5
MTVfZ2VtX2NvbnRleHQgKmN0eDsKPiAtCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwo+ICsJc3Ry
dWN0IGludGVsX2NvbnRleHQgKmNlOwo+ICAgCXN0cnVjdCBpZ3Rfc3Bpbm5lciBzcGluOwo+ICAg
CWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+ICAgCWludCBlcnIgPSAtRU5PTUVNOwo+IEBAIC0z
NSwxNyArMzUsMTcgQEAgc3RhdGljIGludCBsaXZlX3Nhbml0eWNoZWNrKHZvaWQgKmFyZykKPiAg
IAltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiAgIAl3YWtlcmVmID0gaW50
ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRpbWVfcG0pOwo+ICAgCj4gLQlpZiAoaWd0X3Nw
aW5uZXJfaW5pdCgmc3BpbiwgaTkxNSkpCj4gKwlpZiAoaWd0X3NwaW5uZXJfaW5pdCgmc3Bpbiwg
Jmk5MTUtPmd0KSkKPiAgIAkJZ290byBlcnJfdW5sb2NrOwo+ICAgCj4gICAJY3R4ID0ga2VybmVs
X2NvbnRleHQoaTkxNSk7Cj4gICAJaWYgKCFjdHgpCj4gICAJCWdvdG8gZXJyX3NwaW47Cj4gICAK
PiAtCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKSB7Cj4gKwlmb3JfZWFjaF9nZW1f
ZW5naW5lKGNlLCBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpLCBpdCkgewo+ICAg
CQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKPiAgIAo+IC0JCXJxID0gaWd0X3NwaW5uZXJfY3Jl
YXRlX3JlcXVlc3QoJnNwaW4sIGN0eCwgZW5naW5lLCBNSV9OT09QKTsKPiArCQlycSA9IGlndF9z
cGlubmVyX2NyZWF0ZV9yZXF1ZXN0KCZzcGluLCBjZSwgTUlfTk9PUCk7Cj4gICAJCWlmIChJU19F
UlIocnEpKSB7Cj4gICAJCQllcnIgPSBQVFJfRVJSKHJxKTsKPiAgIAkJCWdvdG8gZXJyX2N0eDsK
PiBAQCAtNjksNiArNjksNyBAQCBzdGF0aWMgaW50IGxpdmVfc2FuaXR5Y2hlY2sodm9pZCAqYXJn
KQo+ICAgCj4gICAJZXJyID0gMDsKPiAgIGVycl9jdHg6Cj4gKwlpOTE1X2dlbV9jb250ZXh0X3Vu
bG9ja19lbmdpbmVzKGN0eCk7Cj4gICAJa2VybmVsX2NvbnRleHRfY2xvc2UoY3R4KTsKPiAgIGVy
cl9zcGluOgo+ICAgCWlndF9zcGlubmVyX2ZpbmkoJnNwaW4pOwo+IEBAIC00ODAsNiArNDgxLDI0
IEBAIHN0YXRpYyBpbnQgbGl2ZV9idXN5d2FpdF9wcmVlbXB0KHZvaWQgKmFyZykKPiAgIAlyZXR1
cm4gZXJyOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoKPiArc3Bp
bm5lcl9jcmVhdGVfcmVxdWVzdChzdHJ1Y3QgaWd0X3NwaW5uZXIgKnNwaW4sCj4gKwkJICAgICAg
IHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCj4gKwkJICAgICAgIHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSwKPiArCQkgICAgICAgdTMyIGFyYikKPiArewo+ICsJc3RydWN0IGlu
dGVsX2NvbnRleHQgKmNlOwo+ICsJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4gKwo+ICsJY2Ug
PSBpOTE1X2dlbV9jb250ZXh0X2dldF9lbmdpbmUoY3R4LCBlbmdpbmUtPmlkKTsKPiArCWlmIChJ
U19FUlIoY2UpKQo+ICsJCXJldHVybiBFUlJfQ0FTVChjZSk7Cj4gKwo+ICsJcnEgPSBpZ3Rfc3Bp
bm5lcl9jcmVhdGVfcmVxdWVzdChzcGluLCBjZSwgYXJiKTsKPiArCWludGVsX2NvbnRleHRfcHV0
KGNlKTsKPiArCXJldHVybiBycTsKPiArfQo+ICsKPiAgIHN0YXRpYyBpbnQgbGl2ZV9wcmVlbXB0
KHZvaWQgKmFyZykKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFy
ZzsKPiBAQCAtNDk5LDEwICs1MTgsMTAgQEAgc3RhdGljIGludCBsaXZlX3ByZWVtcHQodm9pZCAq
YXJnKQo+ICAgCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ICAgCXdha2Vy
ZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCgmaTkxNS0+cnVudGltZV9wbSk7Cj4gICAKPiAtCWlm
IChpZ3Rfc3Bpbm5lcl9pbml0KCZzcGluX2hpLCBpOTE1KSkKPiArCWlmIChpZ3Rfc3Bpbm5lcl9p
bml0KCZzcGluX2hpLCAmaTkxNS0+Z3QpKQo+ICAgCQlnb3RvIGVycl91bmxvY2s7Cj4gICAKPiAt
CWlmIChpZ3Rfc3Bpbm5lcl9pbml0KCZzcGluX2xvLCBpOTE1KSkKPiArCWlmIChpZ3Rfc3Bpbm5l
cl9pbml0KCZzcGluX2xvLCAmaTkxNS0+Z3QpKQo+ICAgCQlnb3RvIGVycl9zcGluX2hpOwo+ICAg
Cj4gICAJY3R4X2hpID0ga2VybmVsX2NvbnRleHQoaTkxNSk7Cj4gQEAgLTUyOSw4ICs1NDgsOCBA
QCBzdGF0aWMgaW50IGxpdmVfcHJlZW1wdCh2b2lkICphcmcpCj4gICAJCQlnb3RvIGVycl9jdHhf
bG87Cj4gICAJCX0KPiAgIAo+IC0JCXJxID0gaWd0X3NwaW5uZXJfY3JlYXRlX3JlcXVlc3QoJnNw
aW5fbG8sIGN0eF9sbywgZW5naW5lLAo+IC0JCQkJCQlNSV9BUkJfQ0hFQ0spOwo+ICsJCXJxID0g
c3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmc3Bpbl9sbywgY3R4X2xvLCBlbmdpbmUsCj4gKwkJCQkJ
ICAgIE1JX0FSQl9DSEVDSyk7Cj4gICAJCWlmIChJU19FUlIocnEpKSB7Cj4gICAJCQllcnIgPSBQ
VFJfRVJSKHJxKTsKPiAgIAkJCWdvdG8gZXJyX2N0eF9sbzsKPiBAQCAtNTQ1LDggKzU2NCw4IEBA
IHN0YXRpYyBpbnQgbGl2ZV9wcmVlbXB0KHZvaWQgKmFyZykKPiAgIAkJCWdvdG8gZXJyX2N0eF9s
bzsKPiAgIAkJfQo+ICAgCj4gLQkJcnEgPSBpZ3Rfc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmc3Bp
bl9oaSwgY3R4X2hpLCBlbmdpbmUsCj4gLQkJCQkJCU1JX0FSQl9DSEVDSyk7Cj4gKwkJcnEgPSBz
cGlubmVyX2NyZWF0ZV9yZXF1ZXN0KCZzcGluX2hpLCBjdHhfaGksIGVuZ2luZSwKPiArCQkJCQkg
ICAgTUlfQVJCX0NIRUNLKTsKPiAgIAkJaWYgKElTX0VSUihycSkpIHsKPiAgIAkJCWlndF9zcGlu
bmVyX2VuZCgmc3Bpbl9sbyk7Cj4gICAJCQllcnIgPSBQVFJfRVJSKHJxKTsKPiBAQCAtNjAzLDEw
ICs2MjIsMTAgQEAgc3RhdGljIGludCBsaXZlX2xhdGVfcHJlZW1wdCh2b2lkICphcmcpCj4gICAJ
bXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gICAJd2FrZXJlZiA9IGludGVs
X3J1bnRpbWVfcG1fZ2V0KCZpOTE1LT5ydW50aW1lX3BtKTsKPiAgIAo+IC0JaWYgKGlndF9zcGlu
bmVyX2luaXQoJnNwaW5faGksIGk5MTUpKQo+ICsJaWYgKGlndF9zcGlubmVyX2luaXQoJnNwaW5f
aGksICZpOTE1LT5ndCkpCj4gICAJCWdvdG8gZXJyX3VubG9jazsKPiAgIAo+IC0JaWYgKGlndF9z
cGlubmVyX2luaXQoJnNwaW5fbG8sIGk5MTUpKQo+ICsJaWYgKGlndF9zcGlubmVyX2luaXQoJnNw
aW5fbG8sICZpOTE1LT5ndCkpCj4gICAJCWdvdG8gZXJyX3NwaW5faGk7Cj4gICAKPiAgIAljdHhf
aGkgPSBrZXJuZWxfY29udGV4dChpOTE1KTsKPiBAQCAtNjMyLDggKzY1MSw4IEBAIHN0YXRpYyBp
bnQgbGl2ZV9sYXRlX3ByZWVtcHQodm9pZCAqYXJnKQo+ICAgCQkJZ290byBlcnJfY3R4X2xvOwo+
ICAgCQl9Cj4gICAKPiAtCQlycSA9IGlndF9zcGlubmVyX2NyZWF0ZV9yZXF1ZXN0KCZzcGluX2xv
LCBjdHhfbG8sIGVuZ2luZSwKPiAtCQkJCQkJTUlfQVJCX0NIRUNLKTsKPiArCQlycSA9IHNwaW5u
ZXJfY3JlYXRlX3JlcXVlc3QoJnNwaW5fbG8sIGN0eF9sbywgZW5naW5lLAo+ICsJCQkJCSAgICBN
SV9BUkJfQ0hFQ0spOwo+ICAgCQlpZiAoSVNfRVJSKHJxKSkgewo+ICAgCQkJZXJyID0gUFRSX0VS
UihycSk7Cj4gICAJCQlnb3RvIGVycl9jdHhfbG87Cj4gQEAgLTY0NSw4ICs2NjQsOCBAQCBzdGF0
aWMgaW50IGxpdmVfbGF0ZV9wcmVlbXB0KHZvaWQgKmFyZykKPiAgIAkJCWdvdG8gZXJyX3dlZGdl
ZDsKPiAgIAkJfQo+ICAgCj4gLQkJcnEgPSBpZ3Rfc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmc3Bp
bl9oaSwgY3R4X2hpLCBlbmdpbmUsCj4gLQkJCQkJCU1JX05PT1ApOwo+ICsJCXJxID0gc3Bpbm5l
cl9jcmVhdGVfcmVxdWVzdCgmc3Bpbl9oaSwgY3R4X2hpLCBlbmdpbmUsCj4gKwkJCQkJICAgIE1J
X05PT1ApOwo+ICAgCQlpZiAoSVNfRVJSKHJxKSkgewo+ICAgCQkJaWd0X3NwaW5uZXJfZW5kKCZz
cGluX2xvKTsKPiAgIAkJCWVyciA9IFBUUl9FUlIocnEpOwo+IEBAIC03MTEsNyArNzMwLDcgQEAg
c3RhdGljIGludCBwcmVlbXB0X2NsaWVudF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LAo+ICAgCWlmICghYy0+Y3R4KQo+ICAgCQlyZXR1cm4gLUVOT01FTTsKPiAgIAo+IC0JaWYg
KGlndF9zcGlubmVyX2luaXQoJmMtPnNwaW4sIGk5MTUpKQo+ICsJaWYgKGlndF9zcGlubmVyX2lu
aXQoJmMtPnNwaW4sICZpOTE1LT5ndCkpCj4gICAJCWdvdG8gZXJyX2N0eDsKPiAgIAo+ICAgCXJl
dHVybiAwOwo+IEBAIC03NjEsOSArNzgwLDkgQEAgc3RhdGljIGludCBsaXZlX25vcHJlZW1wdCh2
b2lkICphcmcpCj4gICAKPiAgIAkJZW5naW5lLT5leGVjbGlzdHMucHJlZW1wdF9oYW5nLmNvdW50
ID0gMDsKPiAgIAo+IC0JCXJxX2EgPSBpZ3Rfc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmYS5zcGlu
LAo+IC0JCQkJCQkgIGEuY3R4LCBlbmdpbmUsCj4gLQkJCQkJCSAgTUlfQVJCX0NIRUNLKTsKPiAr
CQlycV9hID0gc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmYS5zcGluLAo+ICsJCQkJCSAgICAgIGEu
Y3R4LCBlbmdpbmUsCj4gKwkJCQkJICAgICAgTUlfQVJCX0NIRUNLKTsKPiAgIAkJaWYgKElTX0VS
UihycV9hKSkgewo+ICAgCQkJZXJyID0gUFRSX0VSUihycV9hKTsKPiAgIAkJCWdvdG8gZXJyX2Ns
aWVudF9iOwo+IEBAIC03NzgsOSArNzk3LDkgQEAgc3RhdGljIGludCBsaXZlX25vcHJlZW1wdCh2
b2lkICphcmcpCj4gICAJCQlnb3RvIGVycl93ZWRnZWQ7Cj4gICAJCX0KPiAgIAo+IC0JCXJxX2Ig
PSBpZ3Rfc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmYi5zcGluLAo+IC0JCQkJCQkgIGIuY3R4LCBl
bmdpbmUsCj4gLQkJCQkJCSAgTUlfQVJCX0NIRUNLKTsKPiArCQlycV9iID0gc3Bpbm5lcl9jcmVh
dGVfcmVxdWVzdCgmYi5zcGluLAo+ICsJCQkJCSAgICAgIGIuY3R4LCBlbmdpbmUsCj4gKwkJCQkJ
ICAgICAgTUlfQVJCX0NIRUNLKTsKPiAgIAkJaWYgKElTX0VSUihycV9iKSkgewo+ICAgCQkJZXJy
ID0gUFRSX0VSUihycV9iKTsKPiAgIAkJCWdvdG8gZXJyX2NsaWVudF9iOwo+IEBAIC04ODAsOSAr
ODk5LDkgQEAgc3RhdGljIGludCBsaXZlX3N1cHByZXNzX3NlbGZfcHJlZW1wdCh2b2lkICphcmcp
Cj4gICAKPiAgIAkJZW5naW5lLT5leGVjbGlzdHMucHJlZW1wdF9oYW5nLmNvdW50ID0gMDsKPiAg
IAo+IC0JCXJxX2EgPSBpZ3Rfc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmYS5zcGluLAo+IC0JCQkJ
CQkgIGEuY3R4LCBlbmdpbmUsCj4gLQkJCQkJCSAgTUlfTk9PUCk7Cj4gKwkJcnFfYSA9IHNwaW5u
ZXJfY3JlYXRlX3JlcXVlc3QoJmEuc3BpbiwKPiArCQkJCQkgICAgICBhLmN0eCwgZW5naW5lLAo+
ICsJCQkJCSAgICAgIE1JX05PT1ApOwo+ICAgCQlpZiAoSVNfRVJSKHJxX2EpKSB7Cj4gICAJCQll
cnIgPSBQVFJfRVJSKHJxX2EpOwo+ICAgCQkJZ290byBlcnJfY2xpZW50X2I7Cj4gQEAgLTg5NSw5
ICs5MTQsOSBAQCBzdGF0aWMgaW50IGxpdmVfc3VwcHJlc3Nfc2VsZl9wcmVlbXB0KHZvaWQgKmFy
ZykKPiAgIAkJfQo+ICAgCj4gICAJCWZvciAoZGVwdGggPSAwOyBkZXB0aCA8IDg7IGRlcHRoKysp
IHsKPiAtCQkJcnFfYiA9IGlndF9zcGlubmVyX2NyZWF0ZV9yZXF1ZXN0KCZiLnNwaW4sCj4gLQkJ
CQkJCQkgIGIuY3R4LCBlbmdpbmUsCj4gLQkJCQkJCQkgIE1JX05PT1ApOwo+ICsJCQlycV9iID0g
c3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmYi5zcGluLAo+ICsJCQkJCQkgICAgICBiLmN0eCwgZW5n
aW5lLAo+ICsJCQkJCQkgICAgICBNSV9OT09QKTsKPiAgIAkJCWlmIChJU19FUlIocnFfYikpIHsK
PiAgIAkJCQllcnIgPSBQVFJfRVJSKHJxX2IpOwo+ICAgCQkJCWdvdG8gZXJyX2NsaWVudF9iOwo+
IEBAIC0xMDQ4LDkgKzEwNjcsOSBAQCBzdGF0aWMgaW50IGxpdmVfc3VwcHJlc3Nfd2FpdF9wcmVl
bXB0KHZvaWQgKmFyZykKPiAgIAkJCQlnb3RvIGVycl9jbGllbnRfMzsKPiAgIAo+ICAgCQkJZm9y
IChpID0gMDsgaSA8IEFSUkFZX1NJWkUoY2xpZW50KTsgaSsrKSB7Cj4gLQkJCQlycVtpXSA9IGln
dF9zcGlubmVyX2NyZWF0ZV9yZXF1ZXN0KCZjbGllbnRbaV0uc3BpbiwKPiAtCQkJCQkJCQkgICBj
bGllbnRbaV0uY3R4LCBlbmdpbmUsCj4gLQkJCQkJCQkJICAgTUlfTk9PUCk7Cj4gKwkJCQlycVtp
XSA9IHNwaW5uZXJfY3JlYXRlX3JlcXVlc3QoJmNsaWVudFtpXS5zcGluLAo+ICsJCQkJCQkJICAg
ICAgIGNsaWVudFtpXS5jdHgsIGVuZ2luZSwKPiArCQkJCQkJCSAgICAgICBNSV9OT09QKTsKPiAg
IAkJCQlpZiAoSVNfRVJSKHJxW2ldKSkgewo+ICAgCQkJCQllcnIgPSBQVFJfRVJSKHJxW2ldKTsK
PiAgIAkJCQkJZ290byBlcnJfd2VkZ2VkOwo+IEBAIC0xMTU3LDkgKzExNzYsOSBAQCBzdGF0aWMg
aW50IGxpdmVfY2hhaW5fcHJlZW1wdCh2b2lkICphcmcpCj4gICAJCWlmICghaW50ZWxfZW5naW5l
X2hhc19wcmVlbXB0aW9uKGVuZ2luZSkpCj4gICAJCQljb250aW51ZTsKPiAgIAo+IC0JCXJxID0g
aWd0X3NwaW5uZXJfY3JlYXRlX3JlcXVlc3QoJmxvLnNwaW4sCj4gLQkJCQkJCWxvLmN0eCwgZW5n
aW5lLAo+IC0JCQkJCQlNSV9BUkJfQ0hFQ0spOwo+ICsJCXJxID0gc3Bpbm5lcl9jcmVhdGVfcmVx
dWVzdCgmbG8uc3BpbiwKPiArCQkJCQkgICAgbG8uY3R4LCBlbmdpbmUsCj4gKwkJCQkJICAgIE1J
X0FSQl9DSEVDSyk7Cj4gICAJCWlmIChJU19FUlIocnEpKQo+ICAgCQkJZ290byBlcnJfd2VkZ2Vk
Owo+ICAgCQlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKPiBAQCAtMTE4MywxOCArMTIwMiwxOCBAQCBz
dGF0aWMgaW50IGxpdmVfY2hhaW5fcHJlZW1wdCh2b2lkICphcmcpCj4gICAJCX0KPiAgIAo+ICAg
CQlmb3JfZWFjaF9wcmltZV9udW1iZXJfZnJvbShjb3VudCwgMSwgcmluZ19zaXplKSB7Cj4gLQkJ
CXJxID0gaWd0X3NwaW5uZXJfY3JlYXRlX3JlcXVlc3QoJmhpLnNwaW4sCj4gLQkJCQkJCQloaS5j
dHgsIGVuZ2luZSwKPiAtCQkJCQkJCU1JX0FSQl9DSEVDSyk7Cj4gKwkJCXJxID0gc3Bpbm5lcl9j
cmVhdGVfcmVxdWVzdCgmaGkuc3BpbiwKPiArCQkJCQkJICAgIGhpLmN0eCwgZW5naW5lLAo+ICsJ
CQkJCQkgICAgTUlfQVJCX0NIRUNLKTsKPiAgIAkJCWlmIChJU19FUlIocnEpKQo+ICAgCQkJCWdv
dG8gZXJyX3dlZGdlZDsKPiAgIAkJCWk5MTVfcmVxdWVzdF9hZGQocnEpOwo+ICAgCQkJaWYgKCFp
Z3Rfd2FpdF9mb3Jfc3Bpbm5lcigmaGkuc3BpbiwgcnEpKQo+ICAgCQkJCWdvdG8gZXJyX3dlZGdl
ZDsKPiAgIAo+IC0JCQlycSA9IGlndF9zcGlubmVyX2NyZWF0ZV9yZXF1ZXN0KCZsby5zcGluLAo+
IC0JCQkJCQkJbG8uY3R4LCBlbmdpbmUsCj4gLQkJCQkJCQlNSV9BUkJfQ0hFQ0spOwo+ICsJCQly
cSA9IHNwaW5uZXJfY3JlYXRlX3JlcXVlc3QoJmxvLnNwaW4sCj4gKwkJCQkJCSAgICBsby5jdHgs
IGVuZ2luZSwKPiArCQkJCQkJICAgIE1JX0FSQl9DSEVDSyk7Cj4gICAJCQlpZiAoSVNfRVJSKHJx
KSkKPiAgIAkJCQlnb3RvIGVycl93ZWRnZWQ7Cj4gICAJCQlpOTE1X3JlcXVlc3RfYWRkKHJxKTsK
PiBAQCAtMTI4NCwxMCArMTMwMywxMCBAQCBzdGF0aWMgaW50IGxpdmVfcHJlZW1wdF9oYW5nKHZv
aWQgKmFyZykKPiAgIAltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiAgIAl3
YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRpbWVfcG0pOwo+ICAgCj4g
LQlpZiAoaWd0X3NwaW5uZXJfaW5pdCgmc3Bpbl9oaSwgaTkxNSkpCj4gKwlpZiAoaWd0X3NwaW5u
ZXJfaW5pdCgmc3Bpbl9oaSwgJmk5MTUtPmd0KSkKPiAgIAkJZ290byBlcnJfdW5sb2NrOwo+ICAg
Cj4gLQlpZiAoaWd0X3NwaW5uZXJfaW5pdCgmc3Bpbl9sbywgaTkxNSkpCj4gKwlpZiAoaWd0X3Nw
aW5uZXJfaW5pdCgmc3Bpbl9sbywgJmk5MTUtPmd0KSkKPiAgIAkJZ290byBlcnJfc3Bpbl9oaTsK
PiAgIAo+ICAgCWN0eF9oaSA9IGtlcm5lbF9jb250ZXh0KGk5MTUpOwo+IEBAIC0xMzA4LDggKzEz
MjcsOCBAQCBzdGF0aWMgaW50IGxpdmVfcHJlZW1wdF9oYW5nKHZvaWQgKmFyZykKPiAgIAkJaWYg
KCFpbnRlbF9lbmdpbmVfaGFzX3ByZWVtcHRpb24oZW5naW5lKSkKPiAgIAkJCWNvbnRpbnVlOwo+
ICAgCj4gLQkJcnEgPSBpZ3Rfc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmc3Bpbl9sbywgY3R4X2xv
LCBlbmdpbmUsCj4gLQkJCQkJCU1JX0FSQl9DSEVDSyk7Cj4gKwkJcnEgPSBzcGlubmVyX2NyZWF0
ZV9yZXF1ZXN0KCZzcGluX2xvLCBjdHhfbG8sIGVuZ2luZSwKPiArCQkJCQkgICAgTUlfQVJCX0NI
RUNLKTsKPiAgIAkJaWYgKElTX0VSUihycSkpIHsKPiAgIAkJCWVyciA9IFBUUl9FUlIocnEpOwo+
ICAgCQkJZ290byBlcnJfY3R4X2xvOwo+IEBAIC0xMzI0LDggKzEzNDMsOCBAQCBzdGF0aWMgaW50
IGxpdmVfcHJlZW1wdF9oYW5nKHZvaWQgKmFyZykKPiAgIAkJCWdvdG8gZXJyX2N0eF9sbzsKPiAg
IAkJfQo+ICAgCj4gLQkJcnEgPSBpZ3Rfc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmc3Bpbl9oaSwg
Y3R4X2hpLCBlbmdpbmUsCj4gLQkJCQkJCU1JX0FSQl9DSEVDSyk7Cj4gKwkJcnEgPSBzcGlubmVy
X2NyZWF0ZV9yZXF1ZXN0KCZzcGluX2hpLCBjdHhfaGksIGVuZ2luZSwKPiArCQkJCQkgICAgTUlf
QVJCX0NIRUNLKTsKPiAgIAkJaWYgKElTX0VSUihycSkpIHsKPiAgIAkJCWlndF9zcGlubmVyX2Vu
ZCgmc3Bpbl9sbyk7Cj4gICAJCQllcnIgPSBQVFJfRVJSKHJxKTsKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKPiBpbmRleCBhYjE0Nzk4NWZhNzQu
LmZjMDU5YWIzZDNmNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF93b3JrYXJvdW5kcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3Rfd29ya2Fyb3VuZHMuYwo+IEBAIC0yMzgsNiArMjM4LDcgQEAgc3dpdGNoX3RvX3NjcmF0Y2hf
Y29udGV4dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICAJCQkgIHN0cnVjdCBp
Z3Rfc3Bpbm5lciAqc3BpbikKPiAgIHsKPiAgIAlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4
Owo+ICsJc3RydWN0IGludGVsX2NvbnRleHQgKmNlOwo+ICAgCXN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxOwo+ICAgCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+ICAgCWludCBlcnIgPSAwOwo+IEBA
IC0yNDgsMTAgKzI0OSwxNCBAQCBzd2l0Y2hfdG9fc2NyYXRjaF9jb250ZXh0KHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgIAo+ICAgCUdFTV9CVUdfT04oaTkxNV9nZW1fY29udGV4
dF9pc19iYW5uYWJsZShjdHgpKTsKPiAgIAo+ICsJY2UgPSBpOTE1X2dlbV9jb250ZXh0X2dldF9l
bmdpbmUoY3R4LCBlbmdpbmUtPmlkKTsKPiArCUdFTV9CVUdfT04oSVNfRVJSKGNlKSk7Cj4gKwo+
ICAgCXJxID0gRVJSX1BUUigtRU5PREVWKTsKPiAgIAl3aXRoX2ludGVsX3J1bnRpbWVfcG0oJmVu
Z2luZS0+aTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZikKPiAtCQlycSA9IGlndF9zcGlubmVyX2Ny
ZWF0ZV9yZXF1ZXN0KHNwaW4sIGN0eCwgZW5naW5lLCBNSV9OT09QKTsKPiArCQlycSA9IGlndF9z
cGlubmVyX2NyZWF0ZV9yZXF1ZXN0KHNwaW4sIGNlLE1JX05PT1ApOwoKR2FzcCwgYSBtaXN0YWtl
ISA7RAoKPiAgIAo+ICsJaW50ZWxfY29udGV4dF9wdXQoY2UpOwo+ICAgCWtlcm5lbF9jb250ZXh0
X2Nsb3NlKGN0eCk7Cj4gICAKPiAgIAlpZiAoSVNfRVJSKHJxKSkgewo+IEBAIC0yOTEsNyArMjk2
LDcgQEAgc3RhdGljIGludCBjaGVja193aGl0ZWxpc3RfYWNyb3NzX3Jlc2V0KHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgIAlpZiAoSVNfRVJSKGN0eCkpCj4gICAJCXJldHVybiBQ
VFJfRVJSKGN0eCk7Cj4gICAKPiAtCWVyciA9IGlndF9zcGlubmVyX2luaXQoJnNwaW4sIGk5MTUp
Owo+ICsJZXJyID0gaWd0X3NwaW5uZXJfaW5pdCgmc3BpbiwgZW5naW5lLT5ndCk7Cj4gICAJaWYg
KGVycikKPiAgIAkJZ290byBvdXRfY3R4Owo+ICAgCj4gQEAgLTExNjUsNiArMTE3MCw3IEBAIGxp
dmVfZW5naW5lX3Jlc2V0X3dvcmthcm91bmRzKHZvaWQgKmFyZykKPiAgIAlyZWZlcmVuY2VfbGlz
dHNfaW5pdChpOTE1LCAmbGlzdHMpOwo+ICAgCj4gICAJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwg
aTkxNSwgaWQpIHsKPiArCQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7Cj4gICAJCWJvb2wgb2s7
Cj4gICAKPiAgIAkJcHJfaW5mbygiVmVyaWZ5aW5nIGFmdGVyICVzIHJlc2V0Li4uXG4iLCBlbmdp
bmUtPm5hbWUpOwo+IEBAIC0xMTgzLDExICsxMTg5LDE2IEBAIGxpdmVfZW5naW5lX3Jlc2V0X3dv
cmthcm91bmRzKHZvaWQgKmFyZykKPiAgIAkJCWdvdG8gZXJyOwo+ICAgCQl9Cj4gICAKPiAtCQly
ZXQgPSBpZ3Rfc3Bpbm5lcl9pbml0KCZzcGluLCBpOTE1KTsKPiAtCQlpZiAocmV0KQo+IC0JCQln
b3RvIGVycjsKPiArCQljZSA9IGk5MTVfZ2VtX2NvbnRleHRfZ2V0X2VuZ2luZShjdHgsIGVuZ2lu
ZS0+aWQpOwo+ICsJCWlmIChJU19FUlIoY2UpKQo+ICsJCQljb250aW51ZTsKCkNhbid0IGluc3Rl
YWQgdXNlIHRoZSBmb3JfZWFjaF9nZW1fZW5naW5lIHBhdHRlcm4gYXMgaW4gbGl2ZV9zYW5pdHlj
aGVjaz8KCj4gICAKPiAtCQlycSA9IGlndF9zcGlubmVyX2NyZWF0ZV9yZXF1ZXN0KCZzcGluLCBj
dHgsIGVuZ2luZSwgTUlfTk9PUCk7Cj4gKwkJcmV0ID0gaWd0X3NwaW5uZXJfaW5pdCgmc3Bpbiwg
ZW5naW5lLT5ndCk7Cj4gKwkJaWYgKCFyZXQpCj4gKwkJCXJxID0gaWd0X3NwaW5uZXJfY3JlYXRl
X3JlcXVlc3QoJnNwaW4sIGNlLCBNSV9OT09QKTsKPiArCQllbHNlCj4gKwkJCXJxID0gRVJSX1BU
UihyZXQpOwo+ICsJCWludGVsX2NvbnRleHRfcHV0KGNlKTsKPiAgIAkJaWYgKElTX0VSUihycSkp
IHsKPiAgIAkJCXJldCA9IFBUUl9FUlIocnEpOwo+ICAgCQkJaWd0X3NwaW5uZXJfZmluaSgmc3Bp
bik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3Rfc3Bp
bm5lci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9zcGlubmVyLmMKPiBp
bmRleCA4OWI2NTUyYTY0OTcuLmZlOTA3YWIyNTU5ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3NwaW5uZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5jCj4gQEAgLTksMjUgKzksMjQgQEAKPiAgIAo+
ICAgI2luY2x1ZGUgImlndF9zcGlubmVyLmgiCj4gICAKPiAtaW50IGlndF9zcGlubmVyX2luaXQo
c3RydWN0IGlndF9zcGlubmVyICpzcGluLCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
PiAraW50IGlndF9zcGlubmVyX2luaXQoc3RydWN0IGlndF9zcGlubmVyICpzcGluLCBzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0KQo+ICAgewo+ICAgCXVuc2lnbmVkIGludCBtb2RlOwo+ICAgCXZvaWQgKnZh
ZGRyOwo+ICAgCWludCBlcnI7Cj4gICAKPiAtCUdFTV9CVUdfT04oSU5URUxfR0VOKGk5MTUpIDwg
OCk7Cj4gKwlHRU1fQlVHX09OKElOVEVMX0dFTihndC0+aTkxNSkgPCA4KTsKPiAgIAo+ICAgCW1l
bXNldChzcGluLCAwLCBzaXplb2YoKnNwaW4pKTsKPiAtCXNwaW4tPmk5MTUgPSBpOTE1Owo+IC0J
c3Bpbi0+Z3QgPSAmaTkxNS0+Z3Q7Cj4gKwlzcGluLT5ndCA9IGd0Owo+ICAgCj4gLQlzcGluLT5o
d3MgPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGk5MTUsIFBBR0VfU0laRSk7Cj4g
KwlzcGluLT5od3MgPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGd0LT5pOTE1LCBQ
QUdFX1NJWkUpOwoKSSdkIGFkZCB0aGUgaTkxNSBsb2NhbC4KCj4gICAJaWYgKElTX0VSUihzcGlu
LT5od3MpKSB7Cj4gICAJCWVyciA9IFBUUl9FUlIoc3Bpbi0+aHdzKTsKPiAgIAkJZ290byBlcnI7
Cj4gICAJfQo+ICAgCj4gLQlzcGluLT5vYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVy
bmFsKGk5MTUsIFBBR0VfU0laRSk7Cj4gKwlzcGluLT5vYmogPSBpOTE1X2dlbV9vYmplY3RfY3Jl
YXRlX2ludGVybmFsKGd0LT5pOTE1LCBQQUdFX1NJWkUpOwo+ICAgCWlmIChJU19FUlIoc3Bpbi0+
b2JqKSkgewo+ICAgCQllcnIgPSBQVFJfRVJSKHNwaW4tPm9iaik7Cj4gICAJCWdvdG8gZXJyX2h3
czsKPiBAQCAtNDEsNyArNDAsNyBAQCBpbnQgaWd0X3NwaW5uZXJfaW5pdChzdHJ1Y3QgaWd0X3Nw
aW5uZXIgKnNwaW4sIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgCX0KPiAgIAlz
cGluLT5zZXFubyA9IG1lbXNldCh2YWRkciwgMHhmZiwgUEFHRV9TSVpFKTsKPiAgIAo+IC0JbW9k
ZSA9IGk5MTVfY29oZXJlbnRfbWFwX3R5cGUoaTkxNSk7Cj4gKwltb2RlID0gaTkxNV9jb2hlcmVu
dF9tYXBfdHlwZShndC0+aTkxNSk7Cj4gICAJdmFkZHIgPSBpOTE1X2dlbV9vYmplY3RfcGluX21h
cChzcGluLT5vYmosIG1vZGUpOwo+ICAgCWlmIChJU19FUlIodmFkZHIpKSB7Cj4gICAJCWVyciA9
IFBUUl9FUlIodmFkZHIpOwo+IEBAIC04Nyw4ICs4Niw3IEBAIHN0YXRpYyBpbnQgbW92ZV90b19h
Y3RpdmUoc3RydWN0IGk5MTVfdm1hICp2bWEsCj4gICAKPiAgIHN0cnVjdCBpOTE1X3JlcXVlc3Qg
Kgo+ICAgaWd0X3NwaW5uZXJfY3JlYXRlX3JlcXVlc3Qoc3RydWN0IGlndF9zcGlubmVyICpzcGlu
LAo+IC0JCQkgICBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+IC0JCQkgICBzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gKwkJCSAgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpj
ZSwKPiAgIAkJCSAgIHUzMiBhcmJpdHJhdGlvbl9jb21tYW5kKQo+ICAgewo+ICAgCXN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxID0gTlVMTDsKPiBAQCAtOTYsMTMgKzk0LDEzIEBAIGlndF9zcGlubmVy
X2NyZWF0ZV9yZXF1ZXN0KHN0cnVjdCBpZ3Rfc3Bpbm5lciAqc3BpbiwKPiAgIAl1MzIgKmJhdGNo
Owo+ICAgCWludCBlcnI7Cj4gICAKPiAtCXNwaW4tPmd0ID0gZW5naW5lLT5ndDsKPiArCUdFTV9C
VUdfT04oc3Bpbi0+Z3QgIT0gY2UtPnZtLT5ndCk7Cj4gICAKPiAtCXZtYSA9IGk5MTVfdm1hX2lu
c3RhbmNlKHNwaW4tPm9iaiwgY3R4LT52bSwgTlVMTCk7Cj4gKwl2bWEgPSBpOTE1X3ZtYV9pbnN0
YW5jZShzcGluLT5vYmosIGNlLT52bSwgTlVMTCk7Cj4gICAJaWYgKElTX0VSUih2bWEpKQo+ICAg
CQlyZXR1cm4gRVJSX0NBU1Qodm1hKTsKPiAgIAo+IC0JaHdzID0gaTkxNV92bWFfaW5zdGFuY2Uo
c3Bpbi0+aHdzLCBjdHgtPnZtLCBOVUxMKTsKPiArCWh3cyA9IGk5MTVfdm1hX2luc3RhbmNlKHNw
aW4tPmh3cywgY2UtPnZtLCBOVUxMKTsKPiAgIAlpZiAoSVNfRVJSKGh3cykpCj4gICAJCXJldHVy
biBFUlJfQ0FTVChod3MpOwo+ICAgCj4gQEAgLTExNCw3ICsxMTIsNyBAQCBpZ3Rfc3Bpbm5lcl9j
cmVhdGVfcmVxdWVzdChzdHJ1Y3QgaWd0X3NwaW5uZXIgKnNwaW4sCj4gICAJaWYgKGVycikKPiAg
IAkJZ290byB1bnBpbl92bWE7Cj4gICAKPiAtCXJxID0gaWd0X3JlcXVlc3RfYWxsb2MoY3R4LCBl
bmdpbmUpOwo+ICsJcnEgPSBpbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0KGNlKTsKPiAgIAlp
ZiAoSVNfRVJSKHJxKSkgewo+ICAgCQllcnIgPSBQVFJfRVJSKHJxKTsKPiAgIAkJZ290byB1bnBp
bl9od3M7Cj4gQEAgLTE0MiwxNiArMTQwLDE2IEBAIGlndF9zcGlubmVyX2NyZWF0ZV9yZXF1ZXN0
KHN0cnVjdCBpZ3Rfc3Bpbm5lciAqc3BpbiwKPiAgIAkqYmF0Y2grKyA9IHVwcGVyXzMyX2JpdHMo
dm1hLT5ub2RlLnN0YXJ0KTsKPiAgIAkqYmF0Y2grKyA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7IC8q
IG5vdCByZWFjaGVkICovCj4gICAKPiAtCWludGVsX2d0X2NoaXBzZXRfZmx1c2goZW5naW5lLT5n
dCk7Cj4gKwlpbnRlbF9ndF9jaGlwc2V0X2ZsdXNoKHJxLT5lbmdpbmUtPmd0KTsKPiAgIAo+IC0J
aWYgKGVuZ2luZS0+ZW1pdF9pbml0X2JyZWFkY3J1bWIgJiYKPiArCWlmIChycS0+ZW5naW5lLT5l
bWl0X2luaXRfYnJlYWRjcnVtYiAmJgo+ICAgCSAgICBycS0+dGltZWxpbmUtPmhhc19pbml0aWFs
X2JyZWFkY3J1bWIpIHsKPiAtCQllcnIgPSBlbmdpbmUtPmVtaXRfaW5pdF9icmVhZGNydW1iKHJx
KTsKPiArCQllcnIgPSBycS0+ZW5naW5lLT5lbWl0X2luaXRfYnJlYWRjcnVtYihycSk7Cj4gICAJ
CWlmIChlcnIpCj4gICAJCQlnb3RvIGNhbmNlbF9ycTsKPiAgIAl9Cj4gICAKPiAtCWVyciA9IGVu
Z2luZS0+ZW1pdF9iYl9zdGFydChycSwgdm1hLT5ub2RlLnN0YXJ0LCBQQUdFX1NJWkUsIDApOwo+
ICsJZXJyID0gcnEtPmVuZ2luZS0+ZW1pdF9iYl9zdGFydChycSwgdm1hLT5ub2RlLnN0YXJ0LCBQ
QUdFX1NJWkUsIDApOwoKRXF1YWxseSBlbmdpbmUgbG9jYWwgZm9yIGxlc3MgY2h1cm4uCgo+ICAg
Cj4gICBjYW5jZWxfcnE6Cj4gICAJaWYgKGVycikgewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3NwaW5uZXIuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5oCj4gaW5kZXggMWJmYzM5ZWZhNzczLi5lYzYyYzllZjMy
MGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9zcGlu
bmVyLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3NwaW5uZXIu
aAo+IEBAIC0xNyw3ICsxNyw2IEBACj4gICBzdHJ1Y3QgaW50ZWxfZ3Q7Cj4gICAKPiAgIHN0cnVj
dCBpZ3Rfc3Bpbm5lciB7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNTsKPiAgIAlz
dHJ1Y3QgaW50ZWxfZ3QgKmd0Owo+ICAgCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpod3M7
Cj4gICAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiBAQCAtMjUsMTMgKzI0LDEy
IEBAIHN0cnVjdCBpZ3Rfc3Bpbm5lciB7Cj4gICAJdm9pZCAqc2Vxbm87Cj4gICB9Owo+ICAgCj4g
LWludCBpZ3Rfc3Bpbm5lcl9pbml0KHN0cnVjdCBpZ3Rfc3Bpbm5lciAqc3Bpbiwgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ICtpbnQgaWd0X3NwaW5uZXJfaW5pdChzdHJ1Y3QgaWd0
X3NwaW5uZXIgKnNwaW4sIHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwo+ICAgdm9pZCBpZ3Rfc3Bpbm5l
cl9maW5pKHN0cnVjdCBpZ3Rfc3Bpbm5lciAqc3Bpbik7Cj4gICAKPiAgIHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKgo+ICAgaWd0X3NwaW5uZXJfY3JlYXRlX3JlcXVlc3Qoc3RydWN0IGlndF9zcGlubmVy
ICpzcGluLAo+IC0JCQkgICBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+IC0JCQkgICBz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gKwkJCSAgIHN0cnVjdCBpbnRlbF9jb250
ZXh0ICpjZSwKPiAgIAkJCSAgIHUzMiBhcmJpdHJhdGlvbl9jb21tYW5kKTsKPiAgIHZvaWQgaWd0
X3NwaW5uZXJfZW5kKHN0cnVjdCBpZ3Rfc3Bpbm5lciAqc3Bpbik7Cj4gICAKPiAKCldvcmtzZm9y
bWUuCgpSZWdhcmRzLAoKVHZydGtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
