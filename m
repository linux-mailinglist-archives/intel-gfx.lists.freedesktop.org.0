Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C419E51F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 12:01:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 601848966B;
	Tue, 27 Aug 2019 10:01:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5469489664;
 Tue, 27 Aug 2019 10:01:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 03:01:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,436,1559545200"; d="scan'208";a="331772926"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.121.53])
 ([10.66.121.53])
 by orsmga004.jf.intel.com with ESMTP; 27 Aug 2019 03:01:02 -0700
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
References: <20190822151904.17919-1-ramalingam.c@intel.com>
 <20190822151904.17919-7-ramalingam.c@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <01600ddd-e266-b60e-236b-c901a30232d8@intel.com>
Date: Tue, 27 Aug 2019 15:31:01 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822151904.17919-7-ramalingam.c@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v9 6/6] drm/i915/hdcp: Enable HDCP 1.4 and
 2.2 on Gen12+
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
Cc: Jani Nikula <jani.nikula@intel.com>, tomas.winkler@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVnYXJkcwoKU2hhc2hhbmsKCk9uIDgvMjIvMjAxOSA4OjQ5IFBNLCBSYW1hbGluZ2FtIEMgd3Jv
dGU6Cj4gIEZyb20gR2VuMTIgb253YXJkcywgSERDUCBIVyBibG9jayBpcyBpbXBsZW1lbnRlZCB3
aXRoaW4gdHJhbnNjb2RlcnMuCj4gVGlsbCBHZW4xMSBIRENQIEhXIGJsb2NrIHdhcyBwYXJ0IG9m
IERESS4KPgo+IEhlbmNlIHJlcXVpcmVkIGNoYW5nZXMgaW4gSFcgcHJvZ3JhbW1pbmcgaXMgaGFu
ZGxlZCBoZXJlLgo+Cj4gQXMgTUUgRlcgbmVlZHMgdGhlIHRyYW5zY29kZXIgZGV0YWlsIG9uIHdo
aWNoIEhEQ1AgaXMgZW5hYmxlZAo+IG9uIEdlbjEyKyBwbGF0Zm9ybSwgd2UgYXJlIHBvcHVsYXRp
bmcgdGhlIGRldGFpbCBpbiBoZGNwX3BvcnRfZGF0YS4KPgo+IHYyOgo+ICAgIF9NTUlPX1RSQU5T
IGlzIHVzZWQgW0x1Y2FzIGFuZCBEYW5pZWxdCj4gICAgcGxhdGZvcm0gY2hlY2sgaXMgbW92ZWQg
aW50byB0aGUgY2FsbGVyIFtMdWNhc10KPiB2MzoKPiAgICBwbGF0Zm9ybSBjaGVjayBpcyBtb3Zl
ZCBpbnRvIGEgbWFjcm8gW1NoYXNoYW5rXQo+IHY0Ogo+ICAgIEZldyBvcHRpbWl6YXRpb25zIGlu
IHRoZSBjb2RpbmcgW1NoYXNoYW5rXQo+IHY1Ogo+ICAgIEZpeGVkIGFsaWdubWVudCBpbiBtYWNy
byBkZWZpbml0aW9uIGluIGk5MTVfcmVnLmggW1NoYXNoYW5rXQo+ICAgIHVudXNlZCB2YXJpYWJs
ZXMgInJlZyIgaXMgcmVtb3ZlZC4KPiB2NjoKPiAgICBDb25maWd1cmluZyB0aGUgdHJhbnNjb2Rl
ciBhdCBjb21wdXRlX2NvbmZpZy4KPiAgICB0cmFuc2NvZGVyIGlzIHVzZWQgaW5zdGVhZCBvZiBw
aXBlIGluIG1hY3Jvcy4KPiAgICBSZWJhc2VkLgo+IHY3Ogo+ICAgIHRyYW5zY29kZXIgaXMgY2Fj
aGVkIGF0IGludGVsX2hkY3AKPiAgICBoZGNwX3BvcnRfZGF0YSBpcyBjb25maWd1cmVkIHdpdGgg
dHJhbnNjb2RlciBpbmRleCBhc3BlciBNRSBGVy4KPiB2ODoKPiAgICBzL3RyYW5zL2NwdV90cmFu
c2NvZGVyCj4gICAgcy90Yy9jcHVfdHJhbnNjb2Rlcgo+Cj4gU2lnbmVkLW9mZi1ieTogUmFtYWxp
bmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBTaGFzaGFuayBT
aGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+IFt2NV0KPiBBY2tlZC1ieTogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jIHwgMTQ4ICsrKysrKysrKysrKysrLS0tLS0tLS0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgIDEwICstCj4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICB8IDEyNCArKysrKysrKysr
KysrKysrLS0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMjE5IGluc2VydGlvbnMoKyksIDYzIGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaGRjcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMKPiBp
bmRleCAxZTU1NDg4MzNlOGYuLmUyMDg0NDAzZGIyNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jCj4gQEAgLTE4LDYgKzE4LDcgQEAKPiAgICNpbmNsdWRl
ICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiCj4gICAjaW5jbHVkZSAiaW50ZWxfaGRjcC5oIgo+ICAg
I2luY2x1ZGUgImludGVsX3NpZGViYW5kLmgiCj4gKyNpbmNsdWRlICJpbnRlbF9jb25uZWN0b3Iu
aCIKPiAgIAo+ICAgI2RlZmluZSBLRVlfTE9BRF9UUklFUwk1Cj4gICAjZGVmaW5lIEVOQ1JZUFRf
U1RBVFVTX0NIQU5HRV9USU1FT1VUX01TCTUwCj4gQEAgLTEwNSwyNCArMTA2LDIwIEBAIGJvb2wg
aW50ZWxfaGRjcDJfY2FwYWJsZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCj4g
ICAJcmV0dXJuIGNhcGFibGU7Cj4gICB9Cj4gICAKPiAtc3RhdGljIGlubGluZSBib29sIGludGVs
X2hkY3BfaW5fdXNlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiArc3RhdGlj
IGlubGluZQo+ICtib29sIGludGVsX2hkY3BfaW5fdXNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKPiArCQkgICAgICAgZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyLCBl
bnVtIHBvcnQgcG9ydCkKPiAgIHsKPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoY29ubmVjdG9yLT5iYXNlLmRldik7Cj4gLQllbnVtIHBvcnQgcG9ydCA9IGNv
bm5lY3Rvci0+ZW5jb2Rlci0+cG9ydDsKPiAtCXUzMiByZWc7Cj4gLQo+IC0JcmVnID0gSTkxNV9S
RUFEKFBPUlRfSERDUF9TVEFUVVMocG9ydCkpOwo+IC0JcmV0dXJuIHJlZyAmIEhEQ1BfU1RBVFVT
X0VOQzsKPiArCXJldHVybiBJOTE1X1JFQUQoSERDUF9TVEFUVVMoZGV2X3ByaXYsIGNwdV90cmFu
c2NvZGVyLCBwb3J0KSkgJgo+ICsJICAgICAgIEhEQ1BfU1RBVFVTX0VOQzsKPiAgIH0KPiAgIAo+
IC1zdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfaGRjcDJfaW5fdXNlKHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IgKmNvbm5lY3RvcikKPiArc3RhdGljIGlubGluZQo+ICtib29sIGludGVsX2hkY3AyX2lu
X3VzZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gKwkJCWVudW0gdHJhbnNj
b2RlciBjcHVfdHJhbnNjb2RlciwgZW51bSBwb3J0IHBvcnQpCj4gICB7Cj4gLQlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYpOwo+
IC0JZW51bSBwb3J0IHBvcnQgPSBjb25uZWN0b3ItPmVuY29kZXItPnBvcnQ7Cj4gLQl1MzIgcmVn
Owo+IC0KPiAtCXJlZyA9IEk5MTVfUkVBRChIRENQMl9TVEFUVVNfRERJKHBvcnQpKTsKPiAtCXJl
dHVybiByZWcgJiBMSU5LX0VOQ1JZUFRJT05fU1RBVFVTOwo+ICsJcmV0dXJuIEk5MTVfUkVBRChI
RENQMl9TVEFUVVMoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyLCBwb3J0KSkgJgo+ICsJICAgICAg
IExJTktfRU5DUllQVElPTl9TVEFUVVM7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyBpbnQgaW50ZWxf
aGRjcF9wb2xsX2tzdl9maWZvKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19w
b3J0LAo+IEBAIC0yNTMsOSArMjUwLDI4IEBAIHN0YXRpYyBpbnQgaW50ZWxfd3JpdGVfc2hhX3Rl
eHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgc2hhX3RleHQpCj4gICB9
Cj4gICAKPiAgIHN0YXRpYwo+IC11MzIgaW50ZWxfaGRjcF9nZXRfcmVwZWF0ZXJfY3RsKHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KQo+ICt1MzIgaW50ZWxfaGRjcF9n
ZXRfcmVwZWF0ZXJfY3RsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiArCQkJ
CWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciwgZW51bSBwb3J0IHBvcnQpCj4gICB7Cj4g
LQllbnVtIHBvcnQgcG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7Cj4gKwlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMikgewo+ICsJCXN3aXRjaCAoY3B1X3RyYW5zY29kZXIpIHsK
PiArCQljYXNlIFRSQU5TQ09ERVJfQToKPiArCQkJcmV0dXJuIEhEQ1BfVFJBTlNBX1JFUF9QUkVT
RU5UIHwKPiArCQkJICAgICAgIEhEQ1BfVFJBTlNBX1NIQTFfTTA7Cj4gKwkJY2FzZSBUUkFOU0NP
REVSX0I6Cj4gKwkJCXJldHVybiBIRENQX1RSQU5TQl9SRVBfUFJFU0VOVCB8Cj4gKwkJCSAgICAg
ICBIRENQX1RSQU5TQl9TSEExX00wOwo+ICsJCWNhc2UgVFJBTlNDT0RFUl9DOgo+ICsJCQlyZXR1
cm4gSERDUF9UUkFOU0NfUkVQX1BSRVNFTlQgfAo+ICsJCQkgICAgICAgSERDUF9UUkFOU0NfU0hB
MV9NMDsKPiArCQkvKiBGSVhNRTogQWRkIGEgY2FzZSBmb3IgUElQRV9EICovCj4gKwkJZGVmYXVs
dDoKPiArCQkJRFJNX0VSUk9SKCJVbmtub3duIHRyYW5zY29kZXIgJWRcbiIsIGNwdV90cmFuc2Nv
ZGVyKTsKPiArCQkJYnJlYWs7Cj4gKwkJfQo+ICsJCXJldHVybiAtRUlOVkFMOwpJdCBkb2Vzbid0
IG1ha2Ugc2Vuc2UgdG8gaGF2ZSB0aGlzIHJldHVybiBzdGF0ZW1lbnQgYWxvbmcgc2l0dGluZyBo
ZXJlLCAKaXQgc2hvdWxkIGJlIHVwIGluIHdpdGggdGhlIGRlZmF1bHQgY2FzZTsgaW4gcGxhY2Ug
b2YgYnJlYWsuCj4gKwl9Cj4gKwo+ICAgCXN3aXRjaCAocG9ydCkgewo+ICAgCWNhc2UgUE9SVF9B
Ogo+ICAgCQlyZXR1cm4gSERDUF9ERElBX1JFUF9QUkVTRU5UIHwgSERDUF9ERElBX1NIQTFfTTA7
Cj4gQEAgLTI2OCwxOCArMjg0LDIxIEBAIHUzMiBpbnRlbF9oZGNwX2dldF9yZXBlYXRlcl9jdGwo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCj4gICAJY2FzZSBQT1JU
X0U6Cj4gICAJCXJldHVybiBIRENQX0RESUVfUkVQX1BSRVNFTlQgfCBIRENQX0RESUVfU0hBMV9N
MDsKPiAgIAlkZWZhdWx0Ogo+ICsJCURSTV9FUlJPUigiVW5rbm93biBwb3J0ICVkXG4iLCBwb3J0
KTsKPiAgIAkJYnJlYWs7Cj4gICAJfQo+IC0JRFJNX0VSUk9SKCJVbmtub3duIHBvcnQgJWRcbiIs
IHBvcnQpOwo+ICAgCXJldHVybiAtRUlOVkFMOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMKPiAtaW50
IGludGVsX2hkY3BfdmFsaWRhdGVfdl9wcmltZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpp
bnRlbF9kaWdfcG9ydCwKPiAraW50IGludGVsX2hkY3BfdmFsaWRhdGVfdl9wcmltZShzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCj4gICAJCQkJY29uc3Qgc3RydWN0IGludGVsX2hk
Y3Bfc2hpbSAqc2hpbSwKPiAgIAkJCQl1OCAqa3N2X2ZpZm8sIHU4IG51bV9kb3duc3RyZWFtLCB1
OCAqYnN0YXR1cykKPiAgIHsKPiArCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2Rp
Z19wb3J0ID0gY29ubl90b19kaWdfcG9ydChjb25uZWN0b3IpOwo+ICAgCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdjsKPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9
IGNvbm5lY3Rvci0+aGRjcC5jcHVfdHJhbnNjb2RlcjsKPiArCWVudW0gcG9ydCBwb3J0ID0gaW50
ZWxfZGlnX3BvcnQtPmJhc2UucG9ydDsKPiAgIAl1MzIgdnByaW1lLCBzaGFfdGV4dCwgc2hhX2xl
ZnRvdmVycywgcmVwX2N0bDsKPiAgIAlpbnQgcmV0LCBpLCBqLCBzaGFfaWR4Owo+ICAgCj4gQEAg
LTMwNiw3ICszMjUsNyBAQCBpbnQgaW50ZWxfaGRjcF92YWxpZGF0ZV92X3ByaW1lKHN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAo+ICAgCXNoYV9pZHggPSAwOwo+ICAg
CXNoYV90ZXh0ID0gMDsKPiAgIAlzaGFfbGVmdG92ZXJzID0gMDsKPiAtCXJlcF9jdGwgPSBpbnRl
bF9oZGNwX2dldF9yZXBlYXRlcl9jdGwoaW50ZWxfZGlnX3BvcnQpOwo+ICsJcmVwX2N0bCA9IGlu
dGVsX2hkY3BfZ2V0X3JlcGVhdGVyX2N0bChkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIsIHBvcnQp
Owo+ICAgCUk5MTVfV1JJVEUoSERDUF9SRVBfQ1RMLCByZXBfY3RsIHwgSERDUF9TSEExX1RFWFRf
MzIpOwo+ICAgCWZvciAoaSA9IDA7IGkgPCBudW1fZG93bnN0cmVhbTsgaSsrKSB7Cj4gICAJCXVu
c2lnbmVkIGludCBzaGFfZW1wdHk7Cj4gQEAgLTU0OCw3ICs1NjcsNyBAQCBpbnQgaW50ZWxfaGRj
cF9hdXRoX2Rvd25zdHJlYW0oc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ICAg
CSAqIFYgcHJpbWUgYXRsZWFzdCB0d2ljZS4KPiAgIAkgKi8KPiAgIAlmb3IgKGkgPSAwOyBpIDwg
dHJpZXM7IGkrKykgewo+IC0JCXJldCA9IGludGVsX2hkY3BfdmFsaWRhdGVfdl9wcmltZShpbnRl
bF9kaWdfcG9ydCwgc2hpbSwKPiArCQlyZXQgPSBpbnRlbF9oZGNwX3ZhbGlkYXRlX3ZfcHJpbWUo
Y29ubmVjdG9yLCBzaGltLAo+ICAgCQkJCQkJICBrc3ZfZmlmbywgbnVtX2Rvd25zdHJlYW0sCj4g
ICAJCQkJCQkgIGJzdGF0dXMpOwo+ICAgCQlpZiAoIXJldCkKPiBAQCAtNTc2LDYgKzU5NSw3IEBA
IHN0YXRpYyBpbnQgaW50ZWxfaGRjcF9hdXRoKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5l
Y3RvcikKPiAgIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY29ubmVjdG9yLT5iYXNlLmRldjsK
PiAgIAljb25zdCBzdHJ1Y3QgaW50ZWxfaGRjcF9zaGltICpzaGltID0gaGRjcC0+c2hpbTsKPiAg
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXY7Cj4gKwllbnVtIHRyYW5zY29kZXIg
Y3B1X3RyYW5zY29kZXIgPSBjb25uZWN0b3ItPmhkY3AuY3B1X3RyYW5zY29kZXI7Cj4gICAJZW51
bSBwb3J0IHBvcnQ7Cj4gICAJdW5zaWduZWQgbG9uZyByMF9wcmltZV9nZW5fc3RhcnQ7Cj4gICAJ
aW50IHJldCwgaSwgdHJpZXMgPSAyOwo+IEBAIC02MTUsMTggKzYzNSwyMSBAQCBzdGF0aWMgaW50
IGludGVsX2hkY3BfYXV0aChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCj4gICAK
PiAgIAkvKiBJbml0aWFsaXplIEFuIHdpdGggMiByYW5kb20gdmFsdWVzIGFuZCBhY3F1aXJlIGl0
ICovCj4gICAJZm9yIChpID0gMDsgaSA8IDI7IGkrKykKPiAtCQlJOTE1X1dSSVRFKFBPUlRfSERD
UF9BTklOSVQocG9ydCksIGdldF9yYW5kb21fdTMyKCkpOwo+IC0JSTkxNV9XUklURShQT1JUX0hE
Q1BfQ09ORihwb3J0KSwgSERDUF9DT05GX0NBUFRVUkVfQU4pOwo+ICsJCUk5MTVfV1JJVEUoSERD
UF9BTklOSVQoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyLCBwb3J0KSwKPiArCQkJICAgZ2V0X3Jh
bmRvbV91MzIoKSk7Cj4gKwlJOTE1X1dSSVRFKEhEQ1BfQ09ORihkZXZfcHJpdiwgY3B1X3RyYW5z
Y29kZXIsIHBvcnQpLAo+ICsJCSAgIEhEQ1BfQ09ORl9DQVBUVVJFX0FOKTsKPiAgIAo+ICAgCS8q
IFdhaXQgZm9yIEFuIHRvIGJlIGFjcXVpcmVkICovCj4gLQlpZiAoaW50ZWxfZGVfd2FpdF9mb3Jf
c2V0KGRldl9wcml2LCBQT1JUX0hEQ1BfU1RBVFVTKHBvcnQpLAo+ICsJaWYgKGludGVsX2RlX3dh
aXRfZm9yX3NldChkZXZfcHJpdiwKPiArCQkJCSAgSERDUF9TVEFUVVMoZGV2X3ByaXYsIGNwdV90
cmFuc2NvZGVyLCBwb3J0KSwKPiAgIAkJCQkgIEhEQ1BfU1RBVFVTX0FOX1JFQURZLCAxKSkgewo+
ICAgCQlEUk1fRVJST1IoIlRpbWVkIG91dCB3YWl0aW5nIGZvciBBblxuIik7Cj4gICAJCXJldHVy
biAtRVRJTUVET1VUOwo+ICAgCX0KPiAgIAo+IC0JYW4ucmVnWzBdID0gSTkxNV9SRUFEKFBPUlRf
SERDUF9BTkxPKHBvcnQpKTsKPiAtCWFuLnJlZ1sxXSA9IEk5MTVfUkVBRChQT1JUX0hEQ1BfQU5I
SShwb3J0KSk7Cj4gKwlhbi5yZWdbMF0gPSBJOTE1X1JFQUQoSERDUF9BTkxPKGRldl9wcml2LCBj
cHVfdHJhbnNjb2RlciwgcG9ydCkpOwo+ICsJYW4ucmVnWzFdID0gSTkxNV9SRUFEKEhEQ1BfQU5I
SShkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIsIHBvcnQpKTsKPiAgIAlyZXQgPSBzaGltLT53cml0
ZV9hbl9ha3N2KGludGVsX2RpZ19wb3J0LCBhbi5zaGltKTsKPiAgIAlpZiAocmV0KQo+ICAgCQly
ZXR1cm4gcmV0Owo+IEBAIC02NDQsMjQgKzY2NywyNiBAQCBzdGF0aWMgaW50IGludGVsX2hkY3Bf
YXV0aChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCj4gICAJCXJldHVybiAtRVBF
Uk07Cj4gICAJfQo+ICAgCj4gLQlJOTE1X1dSSVRFKFBPUlRfSERDUF9CS1NWTE8ocG9ydCksIGJr
c3YucmVnWzBdKTsKPiAtCUk5MTVfV1JJVEUoUE9SVF9IRENQX0JLU1ZISShwb3J0KSwgYmtzdi5y
ZWdbMV0pOwo+ICsJSTkxNV9XUklURShIRENQX0JLU1ZMTyhkZXZfcHJpdiwgY3B1X3RyYW5zY29k
ZXIsIHBvcnQpLCBia3N2LnJlZ1swXSk7Cj4gKwlJOTE1X1dSSVRFKEhEQ1BfQktTVkhJKGRldl9w
cml2LCBjcHVfdHJhbnNjb2RlciwgcG9ydCksIGJrc3YucmVnWzFdKTsKPiAgIAo+ICAgCXJldCA9
IHNoaW0tPnJlcGVhdGVyX3ByZXNlbnQoaW50ZWxfZGlnX3BvcnQsICZyZXBlYXRlcl9wcmVzZW50
KTsKPiAgIAlpZiAocmV0KQo+ICAgCQlyZXR1cm4gcmV0Owo+ICAgCWlmIChyZXBlYXRlcl9wcmVz
ZW50KQo+ICAgCQlJOTE1X1dSSVRFKEhEQ1BfUkVQX0NUTCwKPiAtCQkJICAgaW50ZWxfaGRjcF9n
ZXRfcmVwZWF0ZXJfY3RsKGludGVsX2RpZ19wb3J0KSk7Cj4gKwkJCSAgIGludGVsX2hkY3BfZ2V0
X3JlcGVhdGVyX2N0bChkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIsCj4gKwkJCQkJCSAgICAgICBw
b3J0KSk7Cj4gICAKPiAgIAlyZXQgPSBzaGltLT50b2dnbGVfc2lnbmFsbGluZyhpbnRlbF9kaWdf
cG9ydCwgdHJ1ZSk7Cj4gICAJaWYgKHJldCkKPiAgIAkJcmV0dXJuIHJldDsKPiAgIAo+IC0JSTkx
NV9XUklURShQT1JUX0hEQ1BfQ09ORihwb3J0KSwgSERDUF9DT05GX0FVVEhfQU5EX0VOQyk7Cj4g
KwlJOTE1X1dSSVRFKEhEQ1BfQ09ORihkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIsIHBvcnQpLAo+
ICsJCSAgIEhEQ1BfQ09ORl9BVVRIX0FORF9FTkMpOwo+ICAgCj4gICAJLyogV2FpdCBmb3IgUjAg
cmVhZHkgKi8KPiAtCWlmICh3YWl0X2ZvcihJOTE1X1JFQUQoUE9SVF9IRENQX1NUQVRVUyhwb3J0
KSkgJgo+ICsJaWYgKHdhaXRfZm9yKEk5MTVfUkVBRChIRENQX1NUQVRVUyhkZXZfcHJpdiwgY3B1
X3RyYW5zY29kZXIsIHBvcnQpKSAmCj4gICAJCSAgICAgKEhEQ1BfU1RBVFVTX1IwX1JFQURZIHwg
SERDUF9TVEFUVVNfRU5DKSwgMSkpIHsKPiAgIAkJRFJNX0VSUk9SKCJUaW1lZCBvdXQgd2FpdGlu
ZyBmb3IgUjAgcmVhZHlcbiIpOwo+ICAgCQlyZXR1cm4gLUVUSU1FRE9VVDsKPiBAQCAtNjg5LDIy
ICs3MTQsMjUgQEAgc3RhdGljIGludCBpbnRlbF9oZGNwX2F1dGgoc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yKQo+ICAgCQlyZXQgPSBzaGltLT5yZWFkX3JpX3ByaW1lKGludGVsX2Rp
Z19wb3J0LCByaS5zaGltKTsKPiAgIAkJaWYgKHJldCkKPiAgIAkJCXJldHVybiByZXQ7Cj4gLQkJ
STkxNV9XUklURShQT1JUX0hEQ1BfUlBSSU1FKHBvcnQpLCByaS5yZWcpOwo+ICsJCUk5MTVfV1JJ
VEUoSERDUF9SUFJJTUUoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyLCBwb3J0KSwgcmkucmVnKTsK
PiAgIAo+ICAgCQkvKiBXYWl0IGZvciBSaSBwcmltZSBtYXRjaCAqLwo+IC0JCWlmICghd2FpdF9m
b3IoSTkxNV9SRUFEKFBPUlRfSERDUF9TVEFUVVMocG9ydCkpICYKPiArCQlpZiAoIXdhaXRfZm9y
KEk5MTVfUkVBRChIRENQX1NUQVRVUyhkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIsCj4gKwkJCQkJ
CSAgICBwb3J0KSkgJgo+ICAgCQkgICAgKEhEQ1BfU1RBVFVTX1JJX01BVENIIHwgSERDUF9TVEFU
VVNfRU5DKSwgMSkpCj4gICAJCQlicmVhazsKPiAgIAl9Cj4gICAKPiAgIAlpZiAoaSA9PSB0cmll
cykgewo+ICAgCQlEUk1fREVCVUdfS01TKCJUaW1lZCBvdXQgd2FpdGluZyBmb3IgUmkgcHJpbWUg
bWF0Y2ggKCV4KVxuIiwKPiAtCQkJICAgICAgSTkxNV9SRUFEKFBPUlRfSERDUF9TVEFUVVMocG9y
dCkpKTsKPiArCQkJICAgICAgSTkxNV9SRUFEKEhEQ1BfU1RBVFVTKGRldl9wcml2LCBjcHVfdHJh
bnNjb2RlciwKPiArCQkJCQkJICAgIHBvcnQpKSk7Cj4gICAJCXJldHVybiAtRVRJTUVET1VUOwo+
ICAgCX0KPiAgIAo+ICAgCS8qIFdhaXQgZm9yIGVuY3J5cHRpb24gY29uZmlybWF0aW9uICovCj4g
LQlpZiAoaW50ZWxfZGVfd2FpdF9mb3Jfc2V0KGRldl9wcml2LCBQT1JUX0hEQ1BfU1RBVFVTKHBv
cnQpLAo+ICsJaWYgKGludGVsX2RlX3dhaXRfZm9yX3NldChkZXZfcHJpdiwKPiArCQkJCSAgSERD
UF9TVEFUVVMoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyLCBwb3J0KSwKPiAgIAkJCQkgIEhEQ1Bf
U1RBVFVTX0VOQywKPiAgIAkJCQkgIEVOQ1JZUFRfU1RBVFVTX0NIQU5HRV9USU1FT1VUX01TKSkg
ewo+ICAgCQlEUk1fRVJST1IoIlRpbWVkIG91dCB3YWl0aW5nIGZvciBlbmNyeXB0aW9uXG4iKTsK
PiBAQCAtNzI5LDE1ICs3NTcsMTcgQEAgc3RhdGljIGludCBfaW50ZWxfaGRjcF9kaXNhYmxlKHN0
cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSBjb25uZWN0b3ItPmJhc2UuZGV2LT5kZXZfcHJpdmF0ZTsKPiAgIAlz
dHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCA9IGNvbm5fdG9fZGlnX3Bv
cnQoY29ubmVjdG9yKTsKPiAgIAllbnVtIHBvcnQgcG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNl
LnBvcnQ7Cj4gKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBoZGNwLT5jcHVfdHJh
bnNjb2RlcjsKPiAgIAlpbnQgcmV0Owo+ICAgCj4gICAJRFJNX0RFQlVHX0tNUygiWyVzOiVkXSBI
RENQIGlzIGJlaW5nIGRpc2FibGVkLi4uXG4iLAo+ICAgCQkgICAgICBjb25uZWN0b3ItPmJhc2Uu
bmFtZSwgY29ubmVjdG9yLT5iYXNlLmJhc2UuaWQpOwo+ICAgCj4gICAJaGRjcC0+aGRjcF9lbmNy
eXB0ZWQgPSBmYWxzZTsKPiAtCUk5MTVfV1JJVEUoUE9SVF9IRENQX0NPTkYocG9ydCksIDApOwo+
IC0JaWYgKGludGVsX2RlX3dhaXRfZm9yX2NsZWFyKGRldl9wcml2LCBQT1JUX0hEQ1BfU1RBVFVT
KHBvcnQpLCB+MCwKPiAtCQkJCSAgICBFTkNSWVBUX1NUQVRVU19DSEFOR0VfVElNRU9VVF9NUykp
IHsKPiArCUk5MTVfV1JJVEUoSERDUF9DT05GKGRldl9wcml2LCBjcHVfdHJhbnNjb2RlciwgcG9y
dCksIDApOwo+ICsJaWYgKGludGVsX2RlX3dhaXRfZm9yX2NsZWFyKGRldl9wcml2LAo+ICsJCQkJ
ICAgIEhEQ1BfU1RBVFVTKGRldl9wcml2LCBjcHVfdHJhbnNjb2RlciwgcG9ydCksCj4gKwkJCQkg
ICAgfjAsIEVOQ1JZUFRfU1RBVFVTX0NIQU5HRV9USU1FT1VUX01TKSkgewo+ICAgCQlEUk1fRVJS
T1IoIkZhaWxlZCB0byBkaXNhYmxlIEhEQ1AsIHRpbWVvdXQgY2xlYXJpbmcgc3RhdHVzXG4iKTsK
PiAgIAkJcmV0dXJuIC1FVElNRURPVVQ7Cj4gICAJfQo+IEBAIC04MDgsOSArODM4LDExIEBAIHN0
YXRpYyBpbnQgaW50ZWxfaGRjcF9jaGVja19saW5rKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNv
bm5lY3RvcikKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBjb25uZWN0
b3ItPmJhc2UuZGV2LT5kZXZfcHJpdmF0ZTsKPiAgIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0
ICppbnRlbF9kaWdfcG9ydCA9IGNvbm5fdG9fZGlnX3BvcnQoY29ubmVjdG9yKTsKPiAgIAllbnVt
IHBvcnQgcG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7Cj4gKwllbnVtIHRyYW5zY29k
ZXIgY3B1X3RyYW5zY29kZXI7Cj4gICAJaW50IHJldCA9IDA7Cj4gICAKPiAgIAltdXRleF9sb2Nr
KCZoZGNwLT5tdXRleCk7Cj4gKwljcHVfdHJhbnNjb2RlciA9IGhkY3AtPmNwdV90cmFuc2NvZGVy
Owo+ICAgCj4gICAJLyogQ2hlY2tfbGluayB2YWxpZCBvbmx5IHdoZW4gSERDUDEuNCBpcyBlbmFi
bGVkICovCj4gICAJaWYgKGhkY3AtPnZhbHVlICE9IERSTV9NT0RFX0NPTlRFTlRfUFJPVEVDVElP
Tl9FTkFCTEVEIHx8Cj4gQEAgLTgxOSwxMCArODUxLDExIEBAIHN0YXRpYyBpbnQgaW50ZWxfaGRj
cF9jaGVja19saW5rKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAgIAkJZ290
byBvdXQ7Cj4gICAJfQo+ICAgCj4gLQlpZiAoV0FSTl9PTighaW50ZWxfaGRjcF9pbl91c2UoY29u
bmVjdG9yKSkpIHsKPiArCWlmIChXQVJOX09OKCFpbnRlbF9oZGNwX2luX3VzZShkZXZfcHJpdiwg
Y3B1X3RyYW5zY29kZXIsIHBvcnQpKSkgewo+ICAgCQlEUk1fRVJST1IoIiVzOiVkIEhEQ1AgbGlu
ayBzdG9wcGVkIGVuY3J5cHRpb24sJXhcbiIsCj4gICAJCQkgIGNvbm5lY3Rvci0+YmFzZS5uYW1l
LCBjb25uZWN0b3ItPmJhc2UuYmFzZS5pZCwKPiAtCQkJICBJOTE1X1JFQUQoUE9SVF9IRENQX1NU
QVRVUyhwb3J0KSkpOwo+ICsJCQkgIEk5MTVfUkVBRChIRENQX1NUQVRVUyhkZXZfcHJpdiwgY3B1
X3RyYW5zY29kZXIsCj4gKwkJCQkJCXBvcnQpKSk7Cj4gICAJCXJldCA9IC1FTlhJTzsKPiAgIAkJ
aGRjcC0+dmFsdWUgPSBEUk1fTU9ERV9DT05URU5UX1BST1RFQ1RJT05fREVTSVJFRDsKPiAgIAkJ
c2NoZWR1bGVfd29yaygmaGRjcC0+cHJvcF93b3JrKTsKPiBAQCAtMTQ5MywxMCArMTUyNiwxMSBA
QCBzdGF0aWMgaW50IGhkY3AyX2VuYWJsZV9lbmNyeXB0aW9uKHN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3RvcikKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYpOwo+ICAgCXN0cnVjdCBpbnRlbF9oZGNwICpoZGNw
ID0gJmNvbm5lY3Rvci0+aGRjcDsKPiAgIAllbnVtIHBvcnQgcG9ydCA9IGNvbm5lY3Rvci0+ZW5j
b2Rlci0+cG9ydDsKPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGhkY3AtPmNw
dV90cmFuc2NvZGVyOwo+ICAgCWludCByZXQ7Cj4gICAKPiAtCVdBUk5fT04oSTkxNV9SRUFEKEhE
Q1AyX1NUQVRVU19EREkocG9ydCkpICYgTElOS19FTkNSWVBUSU9OX1NUQVRVUyk7Cj4gLQo+ICsJ
V0FSTl9PTihJOTE1X1JFQUQoSERDUDJfU1RBVFVTKGRldl9wcml2LCBjcHVfdHJhbnNjb2Rlciwg
cG9ydCkpICYKPiArCQlMSU5LX0VOQ1JZUFRJT05fU1RBVFVTKTsKPiAgIAlpZiAoaGRjcC0+c2hp
bS0+dG9nZ2xlX3NpZ25hbGxpbmcpIHsKPiAgIAkJcmV0ID0gaGRjcC0+c2hpbS0+dG9nZ2xlX3Np
Z25hbGxpbmcoaW50ZWxfZGlnX3BvcnQsIHRydWUpOwo+ICAgCQlpZiAocmV0KSB7Cj4gQEAgLTE1
MDYsMTQgKzE1NDAsMTggQEAgc3RhdGljIGludCBoZGNwMl9lbmFibGVfZW5jcnlwdGlvbihzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCj4gICAJCX0KPiAgIAl9Cj4gICAKPiAtCWlm
IChJOTE1X1JFQUQoSERDUDJfU1RBVFVTX0RESShwb3J0KSkgJiBMSU5LX0FVVEhfU1RBVFVTKSB7
Cj4gKwlpZiAoSTkxNV9SRUFEKEhEQ1AyX1NUQVRVUyhkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIs
IHBvcnQpKSAmCj4gKwkgICAgTElOS19BVVRIX1NUQVRVUykgewo+ICAgCQkvKiBMaW5rIGlzIEF1
dGhlbnRpY2F0ZWQuIE5vdyBzZXQgZm9yIEVuY3J5cHRpb24gKi8KPiAtCQlJOTE1X1dSSVRFKEhE
Q1AyX0NUTF9EREkocG9ydCksCj4gLQkJCSAgIEk5MTVfUkVBRChIRENQMl9DVExfRERJKHBvcnQp
KSB8Cj4gKwkJSTkxNV9XUklURShIRENQMl9DVEwoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyLCBw
b3J0KSwKPiArCQkJICAgSTkxNV9SRUFEKEhEQ1AyX0NUTChkZXZfcHJpdiwgY3B1X3RyYW5zY29k
ZXIsCj4gKwkJCQkJICAgICAgIHBvcnQpKSB8Cj4gICAJCQkgICBDVExfTElOS19FTkNSWVBUSU9O
X1JFUSk7Cj4gICAJfQo+ICAgCj4gLQlyZXQgPSBpbnRlbF9kZV93YWl0X2Zvcl9zZXQoZGV2X3By
aXYsIEhEQ1AyX1NUQVRVU19EREkocG9ydCksCj4gKwlyZXQgPSBpbnRlbF9kZV93YWl0X2Zvcl9z
ZXQoZGV2X3ByaXYsCj4gKwkJCQkgICAgSERDUDJfU1RBVFVTKGRldl9wcml2LCBjcHVfdHJhbnNj
b2RlciwKPiArCQkJCQkJIHBvcnQpLAo+ICAgCQkJCSAgICBMSU5LX0VOQ1JZUFRJT05fU1RBVFVT
LAo+ICAgCQkJCSAgICBFTkNSWVBUX1NUQVRVU19DSEFOR0VfVElNRU9VVF9NUyk7Cj4gICAKPiBA
QCAtMTUyNiwxNCArMTU2NCwxOSBAQCBzdGF0aWMgaW50IGhkY3AyX2Rpc2FibGVfZW5jcnlwdGlv
bihzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCj4gICAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmJhc2UuZGV2KTsKPiAgIAlz
dHJ1Y3QgaW50ZWxfaGRjcCAqaGRjcCA9ICZjb25uZWN0b3ItPmhkY3A7Cj4gICAJZW51bSBwb3J0
IHBvcnQgPSBjb25uZWN0b3ItPmVuY29kZXItPnBvcnQ7Cj4gKwllbnVtIHRyYW5zY29kZXIgY3B1
X3RyYW5zY29kZXIgPSBoZGNwLT5jcHVfdHJhbnNjb2RlcjsKPiAgIAlpbnQgcmV0Owo+ICAgCj4g
LQlXQVJOX09OKCEoSTkxNV9SRUFEKEhEQ1AyX1NUQVRVU19EREkocG9ydCkpICYgTElOS19FTkNS
WVBUSU9OX1NUQVRVUykpOwo+ICsJV0FSTl9PTighKEk5MTVfUkVBRChIRENQMl9TVEFUVVMoZGV2
X3ByaXYsIGNwdV90cmFuc2NvZGVyLCBwb3J0KSkgJgo+ICsJCQkgICAgTElOS19FTkNSWVBUSU9O
X1NUQVRVUykpOwo+ICAgCj4gLQlJOTE1X1dSSVRFKEhEQ1AyX0NUTF9EREkocG9ydCksCj4gLQkJ
ICAgSTkxNV9SRUFEKEhEQ1AyX0NUTF9EREkocG9ydCkpICYgfkNUTF9MSU5LX0VOQ1JZUFRJT05f
UkVRKTsKPiArCUk5MTVfV1JJVEUoSERDUDJfQ1RMKGRldl9wcml2LCBjcHVfdHJhbnNjb2Rlciwg
cG9ydCksCj4gKwkJICAgSTkxNV9SRUFEKEhEQ1AyX0NUTChkZXZfcHJpdiwgY3B1X3RyYW5zY29k
ZXIsIHBvcnQpKSAmCj4gKwkJICAgfkNUTF9MSU5LX0VOQ1JZUFRJT05fUkVRKTsKPiAgIAo+IC0J
cmV0ID0gaW50ZWxfZGVfd2FpdF9mb3JfY2xlYXIoZGV2X3ByaXYsIEhEQ1AyX1NUQVRVU19EREko
cG9ydCksCj4gKwlyZXQgPSBpbnRlbF9kZV93YWl0X2Zvcl9jbGVhcihkZXZfcHJpdiwKPiArCQkJ
CSAgICAgIEhEQ1AyX1NUQVRVUyhkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIsCj4gKwkJCQkJCSAg
IHBvcnQpLAo+ICAgCQkJCSAgICAgIExJTktfRU5DUllQVElPTl9TVEFUVVMsCj4gICAJCQkJICAg
ICAgRU5DUllQVF9TVEFUVVNfQ0hBTkdFX1RJTUVPVVRfTVMpOwo+ICAgCWlmIChyZXQgPT0gLUVU
SU1FRE9VVCkKPiBAQCAtMTYzMiw5ICsxNjc1LDExIEBAIHN0YXRpYyBpbnQgaW50ZWxfaGRjcDJf
Y2hlY2tfbGluayhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCj4gICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmJhc2UuZGV2
KTsKPiAgIAlzdHJ1Y3QgaW50ZWxfaGRjcCAqaGRjcCA9ICZjb25uZWN0b3ItPmhkY3A7Cj4gICAJ
ZW51bSBwb3J0IHBvcnQgPSBjb25uZWN0b3ItPmVuY29kZXItPnBvcnQ7Cj4gKwllbnVtIHRyYW5z
Y29kZXIgY3B1X3RyYW5zY29kZXI7Cj4gICAJaW50IHJldCA9IDA7Cj4gICAKPiAgIAltdXRleF9s
b2NrKCZoZGNwLT5tdXRleCk7Cj4gKwljcHVfdHJhbnNjb2RlciA9IGhkY3AtPmNwdV90cmFuc2Nv
ZGVyOwo+ICAgCj4gICAJLyogaGRjcDJfY2hlY2tfbGluayBpcyBleHBlY3RlZCBvbmx5IHdoZW4g
SERDUDIuMiBpcyBFbmFibGVkICovCj4gICAJaWYgKGhkY3AtPnZhbHVlICE9IERSTV9NT0RFX0NP
TlRFTlRfUFJPVEVDVElPTl9FTkFCTEVEIHx8Cj4gQEAgLTE2NDMsOSArMTY4OCwxMCBAQCBzdGF0
aWMgaW50IGludGVsX2hkY3AyX2NoZWNrX2xpbmsoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29u
bmVjdG9yKQo+ICAgCQlnb3RvIG91dDsKPiAgIAl9Cj4gICAKPiAtCWlmIChXQVJOX09OKCFpbnRl
bF9oZGNwMl9pbl91c2UoY29ubmVjdG9yKSkpIHsKPiArCWlmIChXQVJOX09OKCFpbnRlbF9oZGNw
Ml9pbl91c2UoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyLCBwb3J0KSkpIHsKPiAgIAkJRFJNX0VS
Uk9SKCJIRENQMi4yIGxpbmsgc3RvcHBlZCB0aGUgZW5jcnlwdGlvbiwgJXhcbiIsCj4gLQkJCSAg
STkxNV9SRUFEKEhEQ1AyX1NUQVRVU19EREkocG9ydCkpKTsKPiArCQkJICBJOTE1X1JFQUQoSERD
UDJfU1RBVFVTKGRldl9wcml2LCBjcHVfdHJhbnNjb2RlciwKPiArCQkJCQkJIHBvcnQpKSk7Cj4g
ICAJCXJldCA9IC1FTlhJTzsKPiAgIAkJaGRjcC0+dmFsdWUgPSBEUk1fTU9ERV9DT05URU5UX1BS
T1RFQ1RJT05fREVTSVJFRDsKPiAgIAkJc2NoZWR1bGVfd29yaygmaGRjcC0+cHJvcF93b3JrKTsK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwo+IGluZGV4IDZlOWJi
NmJkMWVlMi4uZjZiYjc3ZmQwOTMwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9oZG1pLmMKPiBAQCAtMTQ5MSw3ICsxNDkxLDEwIEBAIGJvb2wgaW50ZWxfaGRtaV9o
ZGNwX2NoZWNrX2xpbmsoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQp
Cj4gICB7Cj4gICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0KPiAgIAkJaW50
ZWxfZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYtPmRldl9wcml2YXRlOwo+ICsJc3RydWN0IGludGVs
X2Nvbm5lY3RvciAqY29ubmVjdG9yID0KPiArCQlpbnRlbF9kaWdfcG9ydC0+aGRtaS5hdHRhY2hl
ZF9jb25uZWN0b3I7Cj4gICAJZW51bSBwb3J0IHBvcnQgPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5w
b3J0Owo+ICsJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gY29ubmVjdG9yLT5oZGNw
LmNwdV90cmFuc2NvZGVyOwo+ICAgCWludCByZXQ7Cj4gICAJdW5pb24gewo+ICAgCQl1MzIgcmVn
Owo+IEBAIC0xNTAyLDEzICsxNTA1LDE0IEBAIGJvb2wgaW50ZWxfaGRtaV9oZGNwX2NoZWNrX2xp
bmsoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCj4gICAJaWYgKHJl
dCkKPiAgIAkJcmV0dXJuIGZhbHNlOwo+ICAgCj4gLQlJOTE1X1dSSVRFKFBPUlRfSERDUF9SUFJJ
TUUocG9ydCksIHJpLnJlZyk7Cj4gKwlJOTE1X1dSSVRFKEhEQ1BfUlBSSU1FKGRldl9wcml2LCBj
cHVfdHJhbnNjb2RlciwgcG9ydCksIHJpLnJlZyk7Cj4gICAKPiAgIAkvKiBXYWl0IGZvciBSaSBw
cmltZSBtYXRjaCAqLwo+IC0JaWYgKHdhaXRfZm9yKEk5MTVfUkVBRChQT1JUX0hEQ1BfU1RBVFVT
KHBvcnQpKSAmCj4gKwlpZiAod2FpdF9mb3IoSTkxNV9SRUFEKEhEQ1BfU1RBVFVTKGRldl9wcml2
LCBjcHVfdHJhbnNjb2RlciwgcG9ydCkpICYKPiAgIAkJICAgICAoSERDUF9TVEFUVVNfUklfTUFU
Q0ggfCBIRENQX1NUQVRVU19FTkMpLCAxKSkgewo+ICAgCQlEUk1fRVJST1IoIlJpJyBtaXNtYXRj
aCBkZXRlY3RlZCwgbGluayBjaGVjayBmYWlsZWQgKCV4KVxuIiwKPiAtCQkJICBJOTE1X1JFQUQo
UE9SVF9IRENQX1NUQVRVUyhwb3J0KSkpOwo+ICsJCQkgIEk5MTVfUkVBRChIRENQX1NUQVRVUyhk
ZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIsCj4gKwkJCQkJCXBvcnQpKSk7Cj4gICAJCXJldHVybiBm
YWxzZTsKPiAgIAl9Cj4gICAJcmV0dXJuIHRydWU7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4g
aW5kZXggMmFiZDE5OTA5M2M1Li41NzJlNGNiYTg0N2EgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPiBAQCAtOTI1NiwxMiArOTI1NiwyMCBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKPiAg
IAo+ICAgLyogSERDUCBSZXBlYXRlciBSZWdpc3RlcnMgKi8KPiAgICNkZWZpbmUgSERDUF9SRVBf
Q1RMCQkJX01NSU8oMHg2NmQwMCkKPiArI2RlZmluZSAgSERDUF9UUkFOU0FfUkVQX1BSRVNFTlQJ
QklUKDMxKQo+ICsjZGVmaW5lICBIRENQX1RSQU5TQl9SRVBfUFJFU0VOVAlCSVQoMzApCj4gKyNk
ZWZpbmUgIEhEQ1BfVFJBTlNDX1JFUF9QUkVTRU5UCUJJVCgyOSkKPiArI2RlZmluZSAgSERDUF9U
UkFOU0RfUkVQX1BSRVNFTlQJQklUKDI4KQo+ICAgI2RlZmluZSAgSERDUF9ERElCX1JFUF9QUkVT
RU5UCQlCSVQoMzApCj4gICAjZGVmaW5lICBIRENQX0RESUFfUkVQX1BSRVNFTlQJCUJJVCgyOSkK
PiAgICNkZWZpbmUgIEhEQ1BfRERJQ19SRVBfUFJFU0VOVAkJQklUKDI4KQo+ICAgI2RlZmluZSAg
SERDUF9ERElEX1JFUF9QUkVTRU5UCQlCSVQoMjcpCj4gICAjZGVmaW5lICBIRENQX0RESUZfUkVQ
X1BSRVNFTlQJCUJJVCgyNikKPiAgICNkZWZpbmUgIEhEQ1BfRERJRV9SRVBfUFJFU0VOVAkJQklU
KDI1KQo+ICsjZGVmaW5lICBIRENQX1RSQU5TQV9TSEExX00wCQkoMSA8PCAyMCkKPiArI2RlZmlu
ZSAgSERDUF9UUkFOU0JfU0hBMV9NMAkJKDIgPDwgMjApCj4gKyNkZWZpbmUgIEhEQ1BfVFJBTlND
X1NIQTFfTTAJCSgzIDw8IDIwKQo+ICsjZGVmaW5lICBIRENQX1RSQU5TRF9TSEExX00wCQkoNCA8
PCAyMCkKPiAgICNkZWZpbmUgIEhEQ1BfRERJQl9TSEExX00wCQkoMSA8PCAyMCkKPiAgICNkZWZp
bmUgIEhEQ1BfRERJQV9TSEExX00wCQkoMiA8PCAyMCkKPiAgICNkZWZpbmUgIEhEQ1BfRERJQ19T
SEExX00wCQkoMyA8PCAyMCkKPiBAQCAtOTMwMSwxNSArOTMwOSw5MiBAQCBlbnVtIHNrbF9wb3dl
cl9nYXRlIHsKPiAgIAkJCQkJICBfUE9SVEVfSERDUF9BVVRIRU5DLCBcCj4gICAJCQkJCSAgX1BP
UlRGX0hEQ1BfQVVUSEVOQykgKyAoeCkpCj4gICAjZGVmaW5lIFBPUlRfSERDUF9DT05GKHBvcnQp
CQlfUE9SVF9IRENQX0FVVEhFTkMocG9ydCwgMHgwKQo+ICsjZGVmaW5lIF9UUkFOU0FfSERDUF9D
T05GCQkweDY2NDAwCj4gKyNkZWZpbmUgX1RSQU5TQl9IRENQX0NPTkYJCTB4NjY1MDAKPiArI2Rl
ZmluZSBUUkFOU19IRENQX0NPTkYodHJhbnMpCQlfTU1JT19UUkFOUyh0cmFucywgX1RSQU5TQV9I
RENQX0NPTkYsIFwKPiArCQkJCQkJICAgIF9UUkFOU0JfSERDUF9DT05GKQo+ICsjZGVmaW5lIEhE
Q1BfQ09ORihkZXZfcHJpdiwgdHJhbnMsIHBvcnQpIFwKPiArCQkJCQkoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMiA/IFwKPiArCQkJCQkgVFJBTlNfSERDUF9DT05GKHRyYW5zKSA6IFwKPiArCQkJ
CQkgUE9SVF9IRENQX0NPTkYocG9ydCkpCj4gKwo+ICAgI2RlZmluZSAgSERDUF9DT05GX0NBUFRV
UkVfQU4JCUJJVCgwKQo+ICAgI2RlZmluZSAgSERDUF9DT05GX0FVVEhfQU5EX0VOQwkJKEJJVCgx
KSB8IEJJVCgwKSkKPiAgICNkZWZpbmUgUE9SVF9IRENQX0FOSU5JVChwb3J0KQkJX1BPUlRfSERD
UF9BVVRIRU5DKHBvcnQsIDB4NCkKPiArI2RlZmluZSBfVFJBTlNBX0hEQ1BfQU5JTklUCQkweDY2
NDA0Cj4gKyNkZWZpbmUgX1RSQU5TQl9IRENQX0FOSU5JVAkJMHg2NjUwNAo+ICsjZGVmaW5lIFRS
QU5TX0hEQ1BfQU5JTklUKHRyYW5zKQlfTU1JT19UUkFOUyh0cmFucywgXAo+ICsJCQkJCQkgICAg
X1RSQU5TQV9IRENQX0FOSU5JVCwgXAo+ICsJCQkJCQkgICAgX1RSQU5TQl9IRENQX0FOSU5JVCkK
PiArI2RlZmluZSBIRENQX0FOSU5JVChkZXZfcHJpdiwgdHJhbnMsIHBvcnQpIFwKPiArCQkJCQko
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMiA/IFwKPiArCQkJCQkgVFJBTlNfSERDUF9BTklOSVQo
dHJhbnMpIDogXAo+ICsJCQkJCSBQT1JUX0hEQ1BfQU5JTklUKHBvcnQpKQo+ICsKPiAgICNkZWZp
bmUgUE9SVF9IRENQX0FOTE8ocG9ydCkJCV9QT1JUX0hEQ1BfQVVUSEVOQyhwb3J0LCAweDgpCj4g
KyNkZWZpbmUgX1RSQU5TQV9IRENQX0FOTE8JCTB4NjY0MDgKPiArI2RlZmluZSBfVFJBTlNCX0hE
Q1BfQU5MTwkJMHg2NjUwOAo+ICsjZGVmaW5lIFRSQU5TX0hEQ1BfQU5MTyh0cmFucykJCV9NTUlP
X1RSQU5TKHRyYW5zLCBfVFJBTlNBX0hEQ1BfQU5MTywgXAo+ICsJCQkJCQkgICAgX1RSQU5TQl9I
RENQX0FOTE8pCj4gKyNkZWZpbmUgSERDUF9BTkxPKGRldl9wcml2LCB0cmFucywgcG9ydCkgXAo+
ICsJCQkJCShJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyID8gXAo+ICsJCQkJCSBUUkFOU19IRENQ
X0FOTE8odHJhbnMpIDogXAo+ICsJCQkJCSBQT1JUX0hEQ1BfQU5MTyhwb3J0KSkKPiArCj4gICAj
ZGVmaW5lIFBPUlRfSERDUF9BTkhJKHBvcnQpCQlfUE9SVF9IRENQX0FVVEhFTkMocG9ydCwgMHhD
KQo+ICsjZGVmaW5lIF9UUkFOU0FfSERDUF9BTkhJCQkweDY2NDBDCj4gKyNkZWZpbmUgX1RSQU5T
Ql9IRENQX0FOSEkJCTB4NjY1MEMKPiArI2RlZmluZSBUUkFOU19IRENQX0FOSEkodHJhbnMpCQlf
TU1JT19UUkFOUyh0cmFucywgX1RSQU5TQV9IRENQX0FOSEksIFwKPiArCQkJCQkJICAgIF9UUkFO
U0JfSERDUF9BTkhJKQo+ICsjZGVmaW5lIEhEQ1BfQU5ISShkZXZfcHJpdiwgdHJhbnMsIHBvcnQp
IFwKPiArCQkJCQkoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMiA/IFwKPiArCQkJCQkgVFJBTlNf
SERDUF9BTkhJKHRyYW5zKSA6IFwKPiArCQkJCQkgUE9SVF9IRENQX0FOSEkocG9ydCkpCj4gKwo+
ICAgI2RlZmluZSBQT1JUX0hEQ1BfQktTVkxPKHBvcnQpCQlfUE9SVF9IRENQX0FVVEhFTkMocG9y
dCwgMHgxMCkKPiArI2RlZmluZSBfVFJBTlNBX0hEQ1BfQktTVkxPCQkweDY2NDEwCj4gKyNkZWZp
bmUgX1RSQU5TQl9IRENQX0JLU1ZMTwkJMHg2NjUxMAo+ICsjZGVmaW5lIFRSQU5TX0hEQ1BfQktT
VkxPKHRyYW5zKQlfTU1JT19UUkFOUyh0cmFucywgXAo+ICsJCQkJCQkgICAgX1RSQU5TQV9IRENQ
X0JLU1ZMTywgXAo+ICsJCQkJCQkgICAgX1RSQU5TQl9IRENQX0JLU1ZMTykKPiArI2RlZmluZSBI
RENQX0JLU1ZMTyhkZXZfcHJpdiwgdHJhbnMsIHBvcnQpIFwKPiArCQkJCQkoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMiA/IFwKPiArCQkJCQkgVFJBTlNfSERDUF9CS1NWTE8odHJhbnMpIDogXAo+
ICsJCQkJCSBQT1JUX0hEQ1BfQktTVkxPKHBvcnQpKQo+ICsKPiAgICNkZWZpbmUgUE9SVF9IRENQ
X0JLU1ZISShwb3J0KQkJX1BPUlRfSERDUF9BVVRIRU5DKHBvcnQsIDB4MTQpCj4gKyNkZWZpbmUg
X1RSQU5TQV9IRENQX0JLU1ZISQkJMHg2NjQxNAo+ICsjZGVmaW5lIF9UUkFOU0JfSERDUF9CS1NW
SEkJCTB4NjY1MTQKPiArI2RlZmluZSBUUkFOU19IRENQX0JLU1ZISSh0cmFucykJX01NSU9fVFJB
TlModHJhbnMsIFwKPiArCQkJCQkJICAgIF9UUkFOU0FfSERDUF9CS1NWSEksIFwKPiArCQkJCQkJ
ICAgIF9UUkFOU0JfSERDUF9CS1NWSEkpCj4gKyNkZWZpbmUgSERDUF9CS1NWSEkoZGV2X3ByaXYs
IHRyYW5zLCBwb3J0KSBcCj4gKwkJCQkJKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIgPyBcCj4g
KwkJCQkJIFRSQU5TX0hEQ1BfQktTVkhJKHRyYW5zKSA6IFwKPiArCQkJCQkgUE9SVF9IRENQX0JL
U1ZISShwb3J0KSkKPiArCj4gICAjZGVmaW5lIFBPUlRfSERDUF9SUFJJTUUocG9ydCkJCV9QT1JU
X0hEQ1BfQVVUSEVOQyhwb3J0LCAweDE4KQo+ICsjZGVmaW5lIF9UUkFOU0FfSERDUF9SUFJJTUUJ
CTB4NjY0MTgKPiArI2RlZmluZSBfVFJBTlNCX0hEQ1BfUlBSSU1FCQkweDY2NTE4Cj4gKyNkZWZp
bmUgVFJBTlNfSERDUF9SUFJJTUUodHJhbnMpCV9NTUlPX1RSQU5TKHRyYW5zLCBcCj4gKwkJCQkJ
CSAgICBfVFJBTlNBX0hEQ1BfUlBSSU1FLCBcCj4gKwkJCQkJCSAgICBfVFJBTlNCX0hEQ1BfUlBS
SU1FKQo+ICsjZGVmaW5lIEhEQ1BfUlBSSU1FKGRldl9wcml2LCB0cmFucywgcG9ydCkgXAo+ICsJ
CQkJCShJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyID8gXAo+ICsJCQkJCSBUUkFOU19IRENQX1JQ
UklNRSh0cmFucykgOiBcCj4gKwkJCQkJIFBPUlRfSERDUF9SUFJJTUUocG9ydCkpCj4gKwo+ICAg
I2RlZmluZSBQT1JUX0hEQ1BfU1RBVFVTKHBvcnQpCQlfUE9SVF9IRENQX0FVVEhFTkMocG9ydCwg
MHgxQykKPiArI2RlZmluZSBfVFJBTlNBX0hEQ1BfU1RBVFVTCQkweDY2NDFDCj4gKyNkZWZpbmUg
X1RSQU5TQl9IRENQX1NUQVRVUwkJMHg2NjUxQwo+ICsjZGVmaW5lIFRSQU5TX0hEQ1BfU1RBVFVT
KHRyYW5zKQlfTU1JT19UUkFOUyh0cmFucywgXAo+ICsJCQkJCQkgICAgX1RSQU5TQV9IRENQX1NU
QVRVUywgXAo+ICsJCQkJCQkgICAgX1RSQU5TQl9IRENQX1NUQVRVUykKPiArI2RlZmluZSBIRENQ
X1NUQVRVUyhkZXZfcHJpdiwgdHJhbnMsIHBvcnQpIFwKPiArCQkJCQkoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMiA/IFwKPiArCQkJCQkgVFJBTlNfSERDUF9TVEFUVVModHJhbnMpIDogXAo+ICsJ
CQkJCSBQT1JUX0hEQ1BfU1RBVFVTKHBvcnQpKQo+ICsKPiAgICNkZWZpbmUgIEhEQ1BfU1RBVFVT
X1NUUkVBTV9BX0VOQwlCSVQoMzEpCj4gICAjZGVmaW5lICBIRENQX1NUQVRVU19TVFJFQU1fQl9F
TkMJQklUKDMwKQo+ICAgI2RlZmluZSAgSERDUF9TVEFUVVNfU1RSRUFNX0NfRU5DCUJJVCgyOSkK
PiBAQCAtOTMzNiwyMyArOTQyMSw0NCBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKPiAgIAkJCQkJ
ICBfUE9SVERfSERDUDJfQkFTRSwgXAo+ICAgCQkJCQkgIF9QT1JURV9IRENQMl9CQVNFLCBcCj4g
ICAJCQkJCSAgX1BPUlRGX0hEQ1AyX0JBU0UpICsgKHgpKQo+IC0KPiAtI2RlZmluZSBIRENQMl9B
VVRIX0RESShwb3J0KQkJX1BPUlRfSERDUDJfQkFTRShwb3J0LCAweDk4KQo+ICsjZGVmaW5lIFBP
UlRfSERDUDJfQVVUSChwb3J0KQkJX1BPUlRfSERDUDJfQkFTRShwb3J0LCAweDk4KQo+ICsjZGVm
aW5lIF9UUkFOU0FfSERDUDJfQVVUSAkJMHg2NjQ5OAo+ICsjZGVmaW5lIF9UUkFOU0JfSERDUDJf
QVVUSAkJMHg2NjU5OAo+ICsjZGVmaW5lIFRSQU5TX0hEQ1AyX0FVVEgodHJhbnMpCQlfTU1JT19U
UkFOUyh0cmFucywgX1RSQU5TQV9IRENQMl9BVVRILCBcCj4gKwkJCQkJCSAgICBfVFJBTlNCX0hE
Q1AyX0FVVEgpCj4gICAjZGVmaW5lICAgQVVUSF9MSU5LX0FVVEhFTlRJQ0FURUQJQklUKDMxKQo+
ICAgI2RlZmluZSAgIEFVVEhfTElOS19UWVBFCQlCSVQoMzApCj4gICAjZGVmaW5lICAgQVVUSF9G
T1JDRV9DTFJfSU5QVVRDVFIJQklUKDE5KQo+ICAgI2RlZmluZSAgIEFVVEhfQ0xSX0tFWVMJCQlC
SVQoMTgpCj4gLQo+IC0jZGVmaW5lIEhEQ1AyX0NUTF9EREkocG9ydCkJCV9QT1JUX0hEQ1AyX0JB
U0UocG9ydCwgMHhCMCkKPiArI2RlZmluZSBIRENQMl9BVVRIKGRldl9wcml2LCB0cmFucywgcG9y
dCkgXAo+ICsJCQkJCShJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyID8gXAo+ICsJCQkJCSBUUkFO
U19IRENQMl9BVVRIKHRyYW5zKSA6IFwKPiArCQkJCQkgUE9SVF9IRENQMl9BVVRIKHBvcnQpKQo+
ICsKPiArI2RlZmluZSBQT1JUX0hEQ1AyX0NUTChwb3J0KQkJX1BPUlRfSERDUDJfQkFTRShwb3J0
LCAweEIwKQo+ICsjZGVmaW5lIF9UUkFOU0FfSERDUDJfQ1RMCQkweDY2NEIwCj4gKyNkZWZpbmUg
X1RSQU5TQl9IRENQMl9DVEwJCTB4NjY1QjAKPiArI2RlZmluZSBUUkFOU19IRENQMl9DVEwodHJh
bnMpCQlfTU1JT19UUkFOUyh0cmFucywgX1RSQU5TQV9IRENQMl9DVEwsIFwKPiArCQkJCQkJICAg
IF9UUkFOU0JfSERDUDJfQ1RMKQo+ICAgI2RlZmluZSAgIENUTF9MSU5LX0VOQ1JZUFRJT05fUkVR
CUJJVCgzMSkKPiAtCj4gLSNkZWZpbmUgSERDUDJfU1RBVFVTX0RESShwb3J0KQkJX1BPUlRfSERD
UDJfQkFTRShwb3J0LCAweEI0KQo+IC0jZGVmaW5lICAgU1RSRUFNX0VOQ1JZUFRJT05fU1RBVFVT
X0EJQklUKDMxKQo+IC0jZGVmaW5lICAgU1RSRUFNX0VOQ1JZUFRJT05fU1RBVFVTX0IJQklUKDMw
KQo+IC0jZGVmaW5lICAgU1RSRUFNX0VOQ1JZUFRJT05fU1RBVFVTX0MJQklUKDI5KQo+ICsjZGVm
aW5lIEhEQ1AyX0NUTChkZXZfcHJpdiwgdHJhbnMsIHBvcnQpIFwKPiArCQkJCQkoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMiA/IFwKPiArCQkJCQkgVFJBTlNfSERDUDJfQ1RMKHRyYW5zKSA6IFwK
PiArCQkJCQkgUE9SVF9IRENQMl9DVEwocG9ydCkpCj4gKwo+ICsjZGVmaW5lIFBPUlRfSERDUDJf
U1RBVFVTKHBvcnQpCQlfUE9SVF9IRENQMl9CQVNFKHBvcnQsIDB4QjQpCj4gKyNkZWZpbmUgX1RS
QU5TQV9IRENQMl9TVEFUVVMJCTB4NjY0QjQKPiArI2RlZmluZSBfVFJBTlNCX0hEQ1AyX1NUQVRV
UwkJMHg2NjVCNAo+ICsjZGVmaW5lIFRSQU5TX0hEQ1AyX1NUQVRVUyh0cmFucykJX01NSU9fVFJB
TlModHJhbnMsIFwKPiArCQkJCQkJICAgIF9UUkFOU0FfSERDUDJfU1RBVFVTLCBcCj4gKwkJCQkJ
CSAgICBfVFJBTlNCX0hEQ1AyX1NUQVRVUykKPiAgICNkZWZpbmUgICBMSU5LX1RZUEVfU1RBVFVT
CQlCSVQoMjIpCj4gICAjZGVmaW5lICAgTElOS19BVVRIX1NUQVRVUwkJQklUKDIxKQo+ICAgI2Rl
ZmluZSAgIExJTktfRU5DUllQVElPTl9TVEFUVVMJQklUKDIwKQo+ICsjZGVmaW5lIEhEQ1AyX1NU
QVRVUyhkZXZfcHJpdiwgdHJhbnMsIHBvcnQpIFwKPiArCQkJCQkoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMiA/IFwKPiArCQkJCQkgVFJBTlNfSERDUDJfU1RBVFVTKHRyYW5zKSA6IFwKPiArCQkJ
CQkgUE9SVF9IRENQMl9TVEFUVVMocG9ydCkpCj4gICAKPiAgIC8qIFBlci1waXBlIERESSBGdW5j
dGlvbiBDb250cm9sICovCj4gICAjZGVmaW5lIF9UUkFOU19ERElfRlVOQ19DVExfQQkJMHg2MDQw
MAoKSSBjcm9zcyBjaGVja2VkIHRoZSBkZWx0YXMgYmV0d2VlbiBWNSB0byBWOSwgdGhleSBzZWVt
IG9rLAoKWW91IGNhbiBjYXJyeSBmb3J3YXJkIG15IFItQiBmcm9tIFY1LgoKLSBTaGFzaGFuawoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
