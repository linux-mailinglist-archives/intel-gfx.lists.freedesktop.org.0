Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D74B978C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 21:05:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 792E96E057;
	Fri, 20 Sep 2019 19:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AB2F6E057
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 19:05:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 12:05:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="202558634"
Received: from ericferx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.24])
 by fmsmga001.fm.intel.com with ESMTP; 20 Sep 2019 12:05:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190920185421.17822-6-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190920185421.17822-1-jani.nikula@intel.com>
 <20190920185421.17822-6-jani.nikula@intel.com>
Date: Fri, 20 Sep 2019 22:05:23 +0300
Message-ID: <87mueyzt3g.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/i915: pass i915 to
 intel_modeset_init() and intel_modeset_init_hw()
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

T24gRnJpLCAyMCBTZXAgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gSW4gZ2VuZXJhbCwgcHJlZmVyIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICogb3Zl
ciBzdHJ1Y3QgZHJtX2RldmljZSAqCj4gd2hlbiBlaXRoZXIgd2lsbCBkby4gUmVuYW1lIHRoZSBs
b2NhbCB2YXJpYWJsZXMgdG8gaTkxNS4gTm8gZnVuY3Rpb25hbAo+IGNoYW5nZXMuCgpUaGlzIG9u
ZSB3YXMgYWxzbyBhbHJlYWR5CgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CgppbiBodHRwOi8vbWlkLm1haWwtYXJjaGl2ZS5jb20vMTU2ODkwNzIx
NjQxLjExOTYuMTc1NDg0MTUyNjUzOTg1MDEyNzlAc2t5bGFrZS1hbHBvcnRob3VzZS1jb20KCj4K
PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDY5ICsr
KysrKysrKystLS0tLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5oIHwgIDQgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAg
ICAgICAgICAgfCAgNCArLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDQw
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKPiBpbmRleCA5YzI2MjI4NzM3YTAuLmY5ZjExNmM4OWJjYyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTQzNjAsNyAr
NDM2MCw3IEBAIHZvaWQgaW50ZWxfZmluaXNoX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKPiAgCQkgKiBzbyBuZWVkIGEgZnVsbCByZS1pbml0aWFsaXphdGlvbi4KPiAg
CQkgKi8KPiAgCQlpbnRlbF9wcHNfdW5sb2NrX3JlZ3Nfd2EoZGV2X3ByaXYpOwo+IC0JCWludGVs
X21vZGVzZXRfaW5pdF9odyhkZXYpOwo+ICsJCWludGVsX21vZGVzZXRfaW5pdF9odyhkZXZfcHJp
dik7Cj4gIAkJaW50ZWxfaW5pdF9jbG9ja19nYXRpbmcoZGV2X3ByaXYpOwo+ICAKPiAgCQlzcGlu
X2xvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOwo+IEBAIC0xNTk4MywxMyArMTU5ODMsMTEg
QEAgc3RhdGljIHZvaWQgaTkxNV9kaXNhYmxlX3ZnYShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCj4gIAlQT1NUSU5HX1JFQUQodmdhX3JlZyk7Cj4gIH0KPiAgCj4gLXZvaWQgaW50
ZWxfbW9kZXNldF9pbml0X2h3KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gK3ZvaWQgaW50ZWxf
bW9kZXNldF9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICB7Cj4gLQlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4gLQo+IC0J
aW50ZWxfdXBkYXRlX2NkY2xrKGRldl9wcml2KTsKPiAtCWludGVsX2R1bXBfY2RjbGtfc3RhdGUo
JmRldl9wcml2LT5jZGNsay5odywgIkN1cnJlbnQgQ0RDTEsiKTsKPiAtCWRldl9wcml2LT5jZGNs
ay5sb2dpY2FsID0gZGV2X3ByaXYtPmNkY2xrLmFjdHVhbCA9IGRldl9wcml2LT5jZGNsay5odzsK
PiArCWludGVsX3VwZGF0ZV9jZGNsayhpOTE1KTsKPiArCWludGVsX2R1bXBfY2RjbGtfc3RhdGUo
Jmk5MTUtPmNkY2xrLmh3LCAiQ3VycmVudCBDRENMSyIpOwo+ICsJaTkxNS0+Y2RjbGsubG9naWNh
bCA9IGk5MTUtPmNkY2xrLmFjdHVhbCA9IGk5MTUtPmNkY2xrLmh3Owo+ICB9Cj4gIAo+ICAvKgo+
IEBAIC0xNjE5NSw0MiArMTYxOTMsNDIgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9kZV9jb25maWdf
aW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCX0KPiAgfQo+ICAKPiAtaW50
IGludGVsX21vZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQo+ICtpbnQgaW50ZWxf
bW9kZXNldF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICB7Cj4gLQlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4gKwlzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2ID0gJmk5MTUtPmRybTsKPiAgCWVudW0gcGlwZSBwaXBlOwo+ICAJc3Ry
dWN0IGludGVsX2NydGMgKmNydGM7Cj4gIAlpbnQgcmV0Owo+ICAKPiAtCWRldl9wcml2LT5tb2Rl
c2V0X3dxID0gYWxsb2Nfb3JkZXJlZF93b3JrcXVldWUoImk5MTVfbW9kZXNldCIsIDApOwo+IC0J
ZGV2X3ByaXYtPmZsaXBfd3EgPSBhbGxvY193b3JrcXVldWUoImk5MTVfZmxpcCIsIFdRX0hJR0hQ
UkkgfAo+IC0JCQkJCSAgICBXUV9VTkJPVU5ELCBXUV9VTkJPVU5EX01BWF9BQ1RJVkUpOwo+ICsJ
aTkxNS0+bW9kZXNldF93cSA9IGFsbG9jX29yZGVyZWRfd29ya3F1ZXVlKCJpOTE1X21vZGVzZXQi
LCAwKTsKPiArCWk5MTUtPmZsaXBfd3EgPSBhbGxvY193b3JrcXVldWUoImk5MTVfZmxpcCIsIFdR
X0hJR0hQUkkgfAo+ICsJCQkJCVdRX1VOQk9VTkQsIFdRX1VOQk9VTkRfTUFYX0FDVElWRSk7Cj4g
IAo+IC0JaW50ZWxfbW9kZV9jb25maWdfaW5pdChkZXZfcHJpdik7Cj4gKwlpbnRlbF9tb2RlX2Nv
bmZpZ19pbml0KGk5MTUpOwo+ICAKPiAtCXJldCA9IGludGVsX2J3X2luaXQoZGV2X3ByaXYpOwo+
ICsJcmV0ID0gaW50ZWxfYndfaW5pdChpOTE1KTsKPiAgCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJl
dDsKPiAgCj4gLQlpbml0X2xsaXN0X2hlYWQoJmRldl9wcml2LT5hdG9taWNfaGVscGVyLmZyZWVf
bGlzdCk7Cj4gLQlJTklUX1dPUksoJmRldl9wcml2LT5hdG9taWNfaGVscGVyLmZyZWVfd29yaywK
PiArCWluaXRfbGxpc3RfaGVhZCgmaTkxNS0+YXRvbWljX2hlbHBlci5mcmVlX2xpc3QpOwo+ICsJ
SU5JVF9XT1JLKCZpOTE1LT5hdG9taWNfaGVscGVyLmZyZWVfd29yaywKPiAgCQkgIGludGVsX2F0
b21pY19oZWxwZXJfZnJlZV9zdGF0ZV93b3JrZXIpOwo+ICAKPiAtCWludGVsX2luaXRfcXVpcmtz
KGRldl9wcml2KTsKPiArCWludGVsX2luaXRfcXVpcmtzKGk5MTUpOwo+ICAKPiAtCWludGVsX2Zi
Y19pbml0KGRldl9wcml2KTsKPiArCWludGVsX2ZiY19pbml0KGk5MTUpOwo+ICAKPiAtCWludGVs
X2luaXRfcG0oZGV2X3ByaXYpOwo+ICsJaW50ZWxfaW5pdF9wbShpOTE1KTsKPiAgCj4gLQlpbnRl
bF9wYW5lbF9zYW5pdGl6ZV9zc2MoZGV2X3ByaXYpOwo+ICsJaW50ZWxfcGFuZWxfc2FuaXRpemVf
c3NjKGk5MTUpOwo+ICAKPiAgCURSTV9ERUJVR19LTVMoIiVkIGRpc3BsYXkgcGlwZSVzIGF2YWls
YWJsZS5cbiIsCj4gLQkJICAgICAgSU5URUxfTlVNX1BJUEVTKGRldl9wcml2KSwKPiAtCQkgICAg
ICBJTlRFTF9OVU1fUElQRVMoZGV2X3ByaXYpID4gMSA/ICJzIiA6ICIiKTsKPiArCQkgICAgICBJ
TlRFTF9OVU1fUElQRVMoaTkxNSksCj4gKwkJICAgICAgSU5URUxfTlVNX1BJUEVTKGk5MTUpID4g
MSA/ICJzIiA6ICIiKTsKPiAgCj4gLQlpZiAoSEFTX0RJU1BMQVkoZGV2X3ByaXYpICYmIElOVEVM
X0RJU1BMQVlfRU5BQkxFRChkZXZfcHJpdikpIHsKPiAtCQlmb3JfZWFjaF9waXBlKGRldl9wcml2
LCBwaXBlKSB7Cj4gLQkJCXJldCA9IGludGVsX2NydGNfaW5pdChkZXZfcHJpdiwgcGlwZSk7Cj4g
KwlpZiAoSEFTX0RJU1BMQVkoaTkxNSkgJiYgSU5URUxfRElTUExBWV9FTkFCTEVEKGk5MTUpKSB7
Cj4gKwkJZm9yX2VhY2hfcGlwZShpOTE1LCBwaXBlKSB7Cj4gKwkJCXJldCA9IGludGVsX2NydGNf
aW5pdChpOTE1LCBwaXBlKTsKPiAgCQkJaWYgKHJldCkgewo+ICAJCQkJZHJtX21vZGVfY29uZmln
X2NsZWFudXAoZGV2KTsKPiAgCQkJCXJldHVybiByZXQ7Cj4gQEAgLTE2MjM5LDE5ICsxNjIzNywx
OSBAQCBpbnQgaW50ZWxfbW9kZXNldF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gIAl9
Cj4gIAo+ICAJaW50ZWxfc2hhcmVkX2RwbGxfaW5pdChkZXYpOwo+IC0JaW50ZWxfdXBkYXRlX2Zk
aV9wbGxfZnJlcShkZXZfcHJpdik7Cj4gKwlpbnRlbF91cGRhdGVfZmRpX3BsbF9mcmVxKGk5MTUp
Owo+ICAKPiAtCWludGVsX3VwZGF0ZV9jemNsayhkZXZfcHJpdik7Cj4gLQlpbnRlbF9tb2Rlc2V0
X2luaXRfaHcoZGV2KTsKPiArCWludGVsX3VwZGF0ZV9jemNsayhpOTE1KTsKPiArCWludGVsX21v
ZGVzZXRfaW5pdF9odyhpOTE1KTsKPiAgCj4gLQlpbnRlbF9oZGNwX2NvbXBvbmVudF9pbml0KGRl
dl9wcml2KTsKPiArCWludGVsX2hkY3BfY29tcG9uZW50X2luaXQoaTkxNSk7Cj4gIAo+IC0JaWYg
KGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSA9PSAwKQo+IC0JCWludGVsX3VwZGF0ZV9tYXhfY2Rj
bGsoZGV2X3ByaXYpOwo+ICsJaWYgKGk5MTUtPm1heF9jZGNsa19mcmVxID09IDApCj4gKwkJaW50
ZWxfdXBkYXRlX21heF9jZGNsayhpOTE1KTsKPiAgCj4gIAkvKiBKdXN0IGRpc2FibGUgaXQgb25j
ZSBhdCBzdGFydHVwICovCj4gLQlpOTE1X2Rpc2FibGVfdmdhKGRldl9wcml2KTsKPiAtCWludGVs
X3NldHVwX291dHB1dHMoZGV2X3ByaXYpOwo+ICsJaTkxNV9kaXNhYmxlX3ZnYShpOTE1KTsKPiAr
CWludGVsX3NldHVwX291dHB1dHMoaTkxNSk7Cj4gIAo+ICAJZHJtX21vZGVzZXRfbG9ja19hbGwo
ZGV2KTsKPiAgCWludGVsX21vZGVzZXRfc2V0dXBfaHdfc3RhdGUoZGV2LCBkZXYtPm1vZGVfY29u
ZmlnLmFjcXVpcmVfY3R4KTsKPiBAQCAtMTYyNzAsOCArMTYyNjgsNyBAQCBpbnQgaW50ZWxfbW9k
ZXNldF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gIAkJICogY2FuIGV2ZW4gYWxsb3cg
Zm9yIHNtb290aCBib290IHRyYW5zaXRpb25zIGlmIHRoZSBCSU9TCj4gIAkJICogZmIgaXMgbGFy
Z2UgZW5vdWdoIGZvciB0aGUgYWN0aXZlIHBpcGUgY29uZmlndXJhdGlvbi4KPiAgCQkgKi8KPiAt
CQlkZXZfcHJpdi0+ZGlzcGxheS5nZXRfaW5pdGlhbF9wbGFuZV9jb25maWcoY3J0YywKPiAtCQkJ
CQkJCSAgICZwbGFuZV9jb25maWcpOwo+ICsJCWk5MTUtPmRpc3BsYXkuZ2V0X2luaXRpYWxfcGxh
bmVfY29uZmlnKGNydGMsICZwbGFuZV9jb25maWcpOwo+ICAKPiAgCQkvKgo+ICAJCSAqIElmIHRo
ZSBmYiBpcyBzaGFyZWQgYmV0d2VlbiBtdWx0aXBsZSBoZWFkcywgd2UnbGwKPiBAQCAtMTYyODUs
NyArMTYyODIsNyBAQCBpbnQgaW50ZWxfbW9kZXNldF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYpCj4gIAkgKiBOb3RlIHRoYXQgd2UgbmVlZCB0byBkbyB0aGlzIGFmdGVyIHJlY29uc3RydWN0
aW5nIHRoZSBCSU9TIGZiJ3MKPiAgCSAqIHNpbmNlIHRoZSB3YXRlcm1hcmsgY2FsY3VsYXRpb24g
ZG9uZSBoZXJlIHdpbGwgdXNlIHBzdGF0ZS0+ZmIuCj4gIAkgKi8KPiAtCWlmICghSEFTX0dNQ0go
ZGV2X3ByaXYpKQo+ICsJaWYgKCFIQVNfR01DSChpOTE1KSkKPiAgCQlzYW5pdGl6ZV93YXRlcm1h
cmtzKGRldik7Cj4gIAo+ICAJLyoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuaAo+IGluZGV4IDkzM2NiZTM2YmI1OS4uNWNlYTZmOGUxMDdhIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiBAQCAtNTc2
LDggKzU3Niw4IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9wcmludF9lcnJvcl9zdGF0ZShzdHJ1Y3Qg
ZHJtX2k5MTVfZXJyb3Jfc3RhdGVfYnVmICplLAo+ICAJCQkJICAgICBzdHJ1Y3QgaW50ZWxfZGlz
cGxheV9lcnJvcl9zdGF0ZSAqZXJyb3IpOwo+ICAKPiAgLyogbW9kZXNldHRpbmcgKi8KPiAtdm9p
ZCBpbnRlbF9tb2Rlc2V0X2luaXRfaHcoc3RydWN0IGRybV9kZXZpY2UgKmRldik7Cj4gLWludCBp
bnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldik7Cj4gK3ZvaWQgaW50ZWxf
bW9kZXNldF9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPiAraW50IGlu
dGVsX21vZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4gIHZvaWQg
aW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KTsKPiAgaW50IGludGVsX21vZGVzZXRfdmdhX3NldF9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsIGJvb2wgc3RhdGUpOwo+ICB2b2lkIGludGVsX2Rpc3BsYXlfcmVzdW1l
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IGluZGV4
IGQ5YjllOTY0NGY1Yy4uYTllZTczYjYxZjRkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
Cj4gQEAgLTM3OCw3ICszNzgsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJv
YmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAo+ICAJLyogSW1wb3J0YW50OiBU
aGUgb3V0cHV0IHNldHVwIGZ1bmN0aW9ucyBjYWxsZWQgYnkgbW9kZXNldF9pbml0IG5lZWQKPiAg
CSAqIHdvcmtpbmcgaXJxcyBmb3IgZS5nLiBnbWJ1cyBhbmQgZHAgYXV4IHRyYW5zZmVycy4gKi8K
PiAtCXJldCA9IGludGVsX21vZGVzZXRfaW5pdCgmaTkxNS0+ZHJtKTsKPiArCXJldCA9IGludGVs
X21vZGVzZXRfaW5pdChpOTE1KTsKPiAgCWlmIChyZXQpCj4gIAkJZ290byBjbGVhbnVwX2lycTsK
PiAgCj4gQEAgLTE5MDksNyArMTkwOSw3IEBAIHN0YXRpYyBpbnQgaTkxNV9kcm1fcmVzdW1lKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gIAo+ICAJaTkxNV9nZW1fcmVzdW1lKGRldl9wcml2KTsK
PiAgCj4gLQlpbnRlbF9tb2Rlc2V0X2luaXRfaHcoZGV2KTsKPiArCWludGVsX21vZGVzZXRfaW5p
dF9odyhkZXZfcHJpdik7Cj4gIAlpbnRlbF9pbml0X2Nsb2NrX2dhdGluZyhkZXZfcHJpdik7Cj4g
IAo+ICAJc3Bpbl9sb2NrX2lycSgmZGV2X3ByaXYtPmlycV9sb2NrKTsKCi0tIApKYW5pIE5pa3Vs
YSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
