Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEC2AF7AB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 10:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6827E6E176;
	Wed, 11 Sep 2019 08:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07C666E176
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 08:22:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 01:22:29 -0700
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="178950981"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 01:22:27 -0700
Date: Wed, 11 Sep 2019 11:21:42 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190911082142.GA943@ideak-desk.fi.intel.com>
References: <20190907171443.16181-1-anshuman.gupta@intel.com>
 <20190907171443.16181-4-anshuman.gupta@intel.com>
 <20190908164435.GA28096@ideak-desk.fi.intel.com>
 <20190909161917.GA18105@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909161917.GA18105@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v7 3/7] drm/i915/tgl: Enable DC3CO state in
 "DC Off" power well
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
Reply-To: imre.deak@intel.com
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMDksIDIwMTkgYXQgMDk6NDk6MTdQTSArMDUzMCwgQW5zaHVtYW4gR3VwdGEg
d3JvdGU6Cj4gT24gMjAxOS0wOS0wOCBhdCAxOTo0NDozNSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+ID4gT24gU2F0LCBTZXAgMDcsIDIwMTkgYXQgMTA6NDQ6MzlQTSArMDUzMCwgQW5zaHVtYW4g
R3VwdGEgd3JvdGU6Cj4gSGkgSW1yZSwKPiBUaGFua3MgZm9yIHJldmlld2luZyB0aGUgcGFjdGhl
cyBpIHdpbGwgcmV3b3JrIHRoZSBwYXRjaGVzLgo+IFRoZXJlIGFyZSBmZXcgY29tbWVudHMgZnJv
bSBteSBzaWRlIHdoaWNoIHdpbGwgaGVscCB0byByZXdvcmsuIAo+ID4gPiBBZGQgbWF4X2RjX3N0
YXRlIGFuZCB0Z2xfc2V0X3RhcmdldF9kY19zdGF0ZSgpIEFQSQo+ID4gPiBpbiBvcmRlciB0byBl
bmFibGUgREMzQ08gc3RhdGUgd2l0aCBleGlzdGluZyBEQyBzdGF0ZXMuCj4gPiA+IG1heF9kY19z
dGF0ZSB3aWxsIGVuYWJsZS9kaXNhYmxlIHRoZSBkZXNpcmVkIERDIHN0YXRlIGluCj4gPiA+IERD
X1NUQVRFX0VOIHJlZyB3aGVuICJEQyBPZmYiIHBvd2VyIHdlbGwgZ2V0cyBkaXNhYmxlL2VuYWJs
ZS4KPiA+ID4gCj4gPiA+IHYyOiBjb21taXQgbG9nIGltcHJvdmVtZW50Lgo+ID4gPiB2MzogVXNl
ZCBpbnRlbF93YWl0X2Zvcl9yZWdpc3RlciB0byB3YWl0IGZvciBEQzNDTyBleGl0LiBbSW1yZV0K
PiA+ID4gICAgIFVzZWQgZ2VuOV9zZXRfZGNfc3RhdGUoKSB0byBhbGxvdy9kaXNhbGxvdyBEQzND
Ty4gW0ltcmVdCj4gPiA+ICAgICBNb3ZlZCB0cmFuc2NvZGVyIHBzcjIgZXhpdCBsaW5lIGVuYWJs
ZW1lbnQgZnJvbSB0Z2xfYWxsb3dfZGMzY28oKQo+ID4gPiAgICAgdG8gYSBhcHByb3ByaWF0ZSBw
bGFjZSBoYXN3ZWxsX2NydGNfZW5hYmxlKCkuIFtJbXJlXQo+ID4gPiAgICAgQ2hhbmdlZCB0aGUg
REMzQ08gcG93ZXIgd2VsbCBlbmFibGVkIGNhbGwgYmFjayBsb2dpYyBhcwo+ID4gPiAgICAgcmVj
b21tZW5kZWQgaW4gcmV2aWV3IGNvbW1lbnRzLiBbSW1yZV0KPiA+ID4gdjQ6IFVzZWQgd2FpdF9m
b3JfdXMoKSBpbnN0ZWFkIG9mIGludGVsX3dhaXRfZm9yX3JlZygpLiBbSW1yZSAoSVJDKV0KPiA+
ID4gdjU6IHVzaW5nIHVkZWxheSgpIGluc3RlYWQgb2Ygd2FpdGluZyBmb3IgREMzQ08gZXhpdCBz
dGF0dXMuCj4gPiA+IHY2OiBGaXhlZCBtaW5vciB1bndhbnRlZCBjaGFuZ2UuCj4gPiA+IHY3OiBS
ZW1vdmVkIERDM0NPIHBvd2Vyd2VsbCBhbmQgUE9XRVJfRE9NQUlOX1ZJREVPLgo+ID4gPiAKPiA+
ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gPiA+IENjOiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gPiA+IENjOiBBbmltZXNoIE1hbm5hIDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEg
PGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICAuLi4vZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgICAgfCAxMTEgKysrKysrKysrKysrKystLS0t
Cj4gPiA+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggICAgfCAg
IDMgKwo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAg
IHwgICAxICsKPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgOTUgaW5zZXJ0aW9ucygrKSwgMjAgZGVs
ZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+ID4gPiBpbmRleCA0OTZmYTFiNTNmZmIuLjgzYjEw
ZjYxZWU0MiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiA+ID4gQEAgLTc3Miw2ICs3NzIsMjkgQEAgc3Rh
dGljIHZvaWQgZ2VuOV9zZXRfZGNfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LCB1MzIgc3RhdGUpCj4gPiA+ICAJZGV2X3ByaXYtPmNzci5kY19zdGF0ZSA9IHZhbCAmIG1h
c2s7Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+ID4gK3N0YXRpYyB2b2lkIHRnbF9hbGxvd19kYzNjbyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiAKPiA+IFNob3VsZCBiZSB0Z2xf
ZW5hYmxlX2RjM2NvKCksIHRvIG1hdGNoIHRoZSByZXN0IG9mIERDIHN0YXRlIGhlbHBlcnMuCj4g
PiAKPiA+ID4gK3sKPiA+ID4gKwlpZiAoIWRldl9wcml2LT5wc3Iuc2lua19wc3IyX3N1cHBvcnQp
Cj4gPiA+ICsJCXJldHVybjsKPiA+IAo+ID4gUFNSIGtub3dzIHdoZW4gdG8gZW5hYmxlIERDM2Nv
LCBzbyBubyBuZWVkIHRvIGRvdWJsZS1jaGVjayB0aGF0IGhlcmUuCj4gPiAKPiA+ID4gKwo+ID4g
PiArCWlmIChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX0RDM0NP
KQo+ID4gCj4gPiBUaGlzIGNoZWNrIGlzIG91dC1vZi1wbGFjZSB3cnQuIHRoZSBzYW1lIGNoZWNr
cyBmb3Igb3RoZXIgREMgc3RhdGVzLgo+ID4gCj4gPiA+ICsJCWdlbjlfc2V0X2RjX3N0YXRlKGRl
dl9wcml2LCBEQ19TVEFURV9FTl9EQzNDTyk7Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+ID4gK3N0YXRp
YyB2b2lkIHRnbF9kaXNhbGxvd19kYzNjbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCj4gPiA+ICt7Cj4gPiA+ICsJdTMyIHZhbDsKPiA+ID4gKwo+ID4gPiArCXZhbCA9IEk5MTVf
UkVBRChEQ19TVEFURV9FTik7Cj4gPiA+ICsJdmFsICY9IH5EQ19TVEFURV9EQzNDT19TVEFUVVM7
Cj4gPiA+ICsJSTkxNV9XUklURShEQ19TVEFURV9FTiwgdmFsKTsKPiA+ID4gKwlnZW45X3NldF9k
Y19zdGF0ZShkZXZfcHJpdiwgRENfU1RBVEVfRElTQUJMRSk7Cj4gPiA+ICsJLyoKPiA+ID4gKwkg
KiBEZWxheSBvZiAyMDB1cyBEQzNDTyBFeGl0IHRpbWUgQi5TcGVjIDQ5MTk2Cj4gPiA+ICsJICov
Cj4gPiA+ICsJdWRlbGF5KDIwMCk7Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+ID4gIHN0YXRpYyB2b2lk
IGJ4dF9lbmFibGVfZGM5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiA+ID4g
IHsKPiA+ID4gIAlhc3NlcnRfY2FuX2VuYWJsZV9kYzkoZGV2X3ByaXYpOwo+ID4gPiBAQCAtOTM5
LDcgKzk2Miw4IEBAIHN0YXRpYyB2b2lkIGJ4dF92ZXJpZnlfZGRpX3BoeV9wb3dlcl93ZWxscyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiA+ICBzdGF0aWMgYm9vbCBnZW45
X2RjX29mZl9wb3dlcl93ZWxsX2VuYWJsZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAo+ID4gPiAgCQkJCQkgICBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsICpwb3dlcl93ZWxsKQo+
ID4gPiAgewo+ID4gPiAtCXJldHVybiAoSTkxNV9SRUFEKERDX1NUQVRFX0VOKSAmIERDX1NUQVRF
X0VOX1VQVE9fREM1X0RDNl9NQVNLKSA9PSAwOwo+ID4gPiArCXJldHVybiAoKEk5MTVfUkVBRChE
Q19TVEFURV9FTikgJiBEQ19TVEFURV9FTl9EQzNDTykgPT0gMCAmJgo+ID4gPiArCQkoSTkxNV9S
RUFEKERDX1NUQVRFX0VOKSAmIERDX1NUQVRFX0VOX1VQVE9fREM1X0RDNl9NQVNLKSA9PSAwKTsK
PiA+ID4gIH0KPiA+ID4gIAo+ID4gPiAgc3RhdGljIHZvaWQgZ2VuOV9hc3NlcnRfZGJ1Zl9lbmFi
bGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiA+ID4gQEAgLTk1NSwyNCAr
OTc5LDMyIEBAIHN0YXRpYyB2b2lkIGdlbjlfZGlzYWJsZV9kY19zdGF0ZXMoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ID4gPiAgewo+ID4gPiAgCXN0cnVjdCBpbnRlbF9jZGNs
a19zdGF0ZSBjZGNsa19zdGF0ZSA9IHt9Owo+ID4gPiAgCj4gPiA+IC0JZ2VuOV9zZXRfZGNfc3Rh
dGUoZGV2X3ByaXYsIERDX1NUQVRFX0RJU0FCTEUpOwo+ID4gPiArCWlmIChkZXZfcHJpdi0+Y3Ny
Lm1heF9kY19zdGF0ZSAmIERDX1NUQVRFX0VOX0RDM0NPKSB7Cj4gPiA+ICsJCXRnbF9kaXNhbGxv
d19kYzNjbyhkZXZfcHJpdik7Cj4gPiA+ICsJfSBlbHNlIHsKPiA+IAo+ID4gV2l0aCBhbiBlYXJs
eSByZXR1cm4geW91IGNhbiBhdm9pZCB0aGUgZXh0cmEgZGlmZiBhbmQgbWFrZSByZXZpZXdpbmcK
PiA+IGVhc2llci4KPiA+IAo+ID4gPiArCQlnZW45X3NldF9kY19zdGF0ZShkZXZfcHJpdiwgRENf
U1RBVEVfRElTQUJMRSk7Cj4gPiA+ICAKPiA+ID4gLQlkZXZfcHJpdi0+ZGlzcGxheS5nZXRfY2Rj
bGsoZGV2X3ByaXYsICZjZGNsa19zdGF0ZSk7Cj4gPiA+IC0JLyogQ2FuJ3QgcmVhZCBvdXQgdm9s
dGFnZV9sZXZlbCBzbyBjYW4ndCB1c2UgaW50ZWxfY2RjbGtfY2hhbmdlZCgpICovCj4gPiA+IC0J
V0FSTl9PTihpbnRlbF9jZGNsa19uZWVkc19tb2Rlc2V0KCZkZXZfcHJpdi0+Y2RjbGsuaHcsICZj
ZGNsa19zdGF0ZSkpOwo+ID4gPiArCQlkZXZfcHJpdi0+ZGlzcGxheS5nZXRfY2RjbGsoZGV2X3By
aXYsICZjZGNsa19zdGF0ZSk7Cj4gPiA+ICsJCS8qCj4gPiA+ICsJCSAqIENhbid0IHJlYWQgb3V0
IHZvbHRhZ2VfbGV2ZWwgc28gY2FuJ3QgdXNlCj4gPiA+ICsJCSAqIGludGVsX2NkY2xrX2NoYW5n
ZWQoKQo+ID4gPiArCQkgKi8KPiA+ID4gKwkJV0FSTl9PTihpbnRlbF9jZGNsa19uZWVkc19tb2Rl
c2V0KCZkZXZfcHJpdi0+Y2RjbGsuaHcsCj4gPiA+ICsJCQkJCQkgICZjZGNsa19zdGF0ZSkpOwo+
ID4gPiAgCj4gPiA+IC0JZ2VuOV9hc3NlcnRfZGJ1Zl9lbmFibGVkKGRldl9wcml2KTsKPiA+ID4g
KwkJZ2VuOV9hc3NlcnRfZGJ1Zl9lbmFibGVkKGRldl9wcml2KTsKPiA+ID4gIAo+ID4gPiAtCWlm
IChJU19HRU45X0xQKGRldl9wcml2KSkKPiA+ID4gLQkJYnh0X3ZlcmlmeV9kZGlfcGh5X3Bvd2Vy
X3dlbGxzKGRldl9wcml2KTsKPiA+ID4gKwkJaWYgKElTX0dFTjlfTFAoZGV2X3ByaXYpKQo+ID4g
PiArCQkJYnh0X3ZlcmlmeV9kZGlfcGh5X3Bvd2VyX3dlbGxzKGRldl9wcml2KTsKPiA+ID4gIAo+
ID4gPiAtCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+ID4gPiAtCQkvKgo+ID4gPiAt
CQkgKiBETUMgcmV0YWlucyBIVyBjb250ZXh0IG9ubHkgZm9yIHBvcnQgQSwgdGhlIG90aGVyIGNv
bWJvCj4gPiA+IC0JCSAqIFBIWSdzIEhXIGNvbnRleHQgZm9yIHBvcnQgQiBpcyBsb3N0IGFmdGVy
IERDIHRyYW5zaXRpb25zLAo+ID4gPiAtCQkgKiBzbyB3ZSBuZWVkIHRvIHJlc3RvcmUgaXQgbWFu
dWFsbHkuCj4gPiA+IC0JCSAqLwo+ID4gPiAtCQlpbnRlbF9jb21ib19waHlfaW5pdChkZXZfcHJp
dik7Cj4gPiA+ICsJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+ID4gPiArCQkJLyoK
PiA+ID4gKwkJCSAqIERNQyByZXRhaW5zIEhXIGNvbnRleHQgb25seSBmb3IgcG9ydCBBLCB0aGUg
b3RoZXIKPiA+ID4gKwkJCSAqIGNvbWJvIFBIWSdzIEhXIGNvbnRleHQgZm9yIHBvcnQgQiBpcyBs
b3N0IGFmdGVyCj4gPiA+ICsJCQkgKiBEQyB0cmFuc2l0aW9ucywgc28gd2UgbmVlZCB0byByZXN0
b3JlIGl0IG1hbnVhbGx5Lgo+ID4gPiArCQkJICovCj4gPiA+ICsJCQlpbnRlbF9jb21ib19waHlf
aW5pdChkZXZfcHJpdik7Cj4gPiA+ICsJfQo+ID4gPiAgfQo+ID4gPiAgCj4gPiA+ICBzdGF0aWMg
dm9pZCBnZW45X2RjX29mZl9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCj4gPiA+IEBAIC05ODcsMTAgKzEwMTksNDggQEAgc3RhdGljIHZvaWQgZ2Vu
OV9kY19vZmZfcG93ZXJfd2VsbF9kaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKPiA+ID4gIAlpZiAoIWRldl9wcml2LT5jc3IuZG1jX3BheWxvYWQpCj4gPiA+ICAJCXJl
dHVybjsKPiA+ID4gIAo+ID4gPiAtCWlmIChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAm
IERDX1NUQVRFX0VOX1VQVE9fREM2KQo+ID4gPiAtCQlza2xfZW5hYmxlX2RjNihkZXZfcHJpdik7
Cj4gPiA+IC0JZWxzZSBpZiAoZGV2X3ByaXYtPmNzci5hbGxvd2VkX2RjX21hc2sgJiBEQ19TVEFU
RV9FTl9VUFRPX0RDNSkKPiA+ID4gLQkJZ2VuOV9lbmFibGVfZGM1KGRldl9wcml2KTsKPiA+ID4g
KwlpZiAoZGV2X3ByaXYtPmNzci5tYXhfZGNfc3RhdGUgJiBEQ19TVEFURV9FTl9EQzNDTykgewo+
ID4gCj4gPiB0YXJnZXRfZGNfc3RhdGUgd291bGQgYmUgYSBiZXR0ZXIgbmFtZSBhbmQgaXQgc2hv
bGQgYmUgYW4gZXhhY3Qgc3RhdGUKPiA+IGluc3RlYWQgb2YgYSBtYXNrLgo+ID4gCj4gPiA+ICsJ
CXRnbF9hbGxvd19kYzNjbyhkZXZfcHJpdik7Cj4gPiA+ICsJfSBlbHNlIGlmIChkZXZfcHJpdi0+
Y3NyLm1heF9kY19zdGF0ZSAmIERDX1NUQVRFX0VOX1VQVE9fREM1X0RDNl9NQVNLKSB7Cj4gPiA+
ICsJCWlmIChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX1VQVE9f
REM2KQo+ID4gCj4gPiBXZSBzaG91bGQgbWFrZSB0aGVzZSBjaGVja3MgbW9yZSB1bmlmb3JtLCBi
eSBjaGVja2luZyBoZXJlIG9ubHkKPiA+IHRhcmdldF9kY19zdGF0ZS4KPiBJZiBpIHVuZGVyc3Rh
bmQgY29ycmVjdGx5IHRoaXMgY29tbWVudCBpcyBhYm91dCB0byBoYXZlIGEgdW5pZm9ybSAKPiBj
b25kaXRpb24gdGFyZ2V0X2RjX3N0YXRlIGluIG9yZGVyIHRvIGRlY2lkZSB3aGljaCBEQyBzdGF0
ZSB3ZSAKPiBpbnRlcmVzdGVkLiBUaGVuIHdlIG1heSByZXF1aXJlIHRvIGNoZWNrIGFsbG93ZWRf
ZGNfbWFzayBhY2NvcmRpbmdseSBpbiAKPiB0Z2xfc2V0X3RhcmdldF9kY19zdGF0ZSgpLAoKWWVz
LCB3ZSBjb3VsZCBjaGVjayBoZXJlIG9ubHkgdGFyZ2V0X2RjX3N0YXRlLCBzZXR0aW5nIHRoYXQg
b25lIG9ubHkgdG8KdmFsdWVzIHBlcm1pdHRlZCBieSBhbGxvd2VkX2RjX21hc2suCgo+IGJ1dCB0
aGF0IHdvdWxkIG5vdCBiZSBmaXR0aW5nIGZvciAKPiBvbGRlciBwbGF0Zm9ybXMuCj4gV2hhdCBp
cyB5b3VyIGlucHV0IG9uIHRoaXM/IHBsZWFzZSBjb3JyZWN0IG1lIGlmIGkgYW0gd3JvbmcgaGVy
ZS4KPiA+IAo+ID4gPiArCQkJc2tsX2VuYWJsZV9kYzYoZGV2X3ByaXYpOwo+ID4gPiArCQllbHNl
IGlmIChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX1VQVE9fREM1
KQo+ID4gPiArCQkJZ2VuOV9lbmFibGVfZGM1KGRldl9wcml2KTsKPiA+ID4gKwl9Cj4gPiA+ICt9
Cj4gPiA+ICsKPiA+ID4gK3ZvaWQgdGdsX3NldF90YXJnZXRfZGNfc3RhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgc3RhdGUsCj4gPiA+ICsJCQkgICAgIGJvb2wgcHNy
Ml9kZWVwX3NsZWVwKQo+ID4gCj4gPiBwc3IyX2RlZXBfc2xlZXAgaXMgYSBQU1IgaW50ZXJuYWwg
c3R1ZmYsIHdoaWxlIFBTUiBpcyB1c2luZyB0aGUgcG93ZXIKPiA+IGRvbWFpbnMgZnJhbWV3b3Jr
LCBzbyBsZXQncyBrZWVwIHRoZSBkZWVwIHNsZWVwIHByb2dyYW1taW5nIGluIHRoZSBQU1IKPiA+
IGNvZGUuCj4gSSB3YW50ZWQgbm90IHRvIGVuYWJsZS9kaXNhYmxlIHBzcjIgZGVlcCBzbGVlcCBm
b3IgZWFjaCBmbGlwIGZsdXNoIHJlcXVlc3QuCj4gVGhvdWdoIFBTUjIgZGVlcCBzbGVlcCBpcyBQ
U1IgaW50ZXJuYWwgc3R1ZmYgYnV0IGl0IGlzIEgvVyBoYXMgdGllZCB3aXRoIERDM0NPLgo+IFRo
YXQgd2FzIGludGVudGlvbiB0byBrZWVwIHBzcjJfZGVlcCBzbGVlcCBlbmFibGUvZGlhYmxlIGhl
cmUgKERvaW5nIGluIFBhdGNoIDYpLgo+IEluIG9yZGVyIHRvIHN3aXRjaCBiZXR3ZWVuIERDM0NP
IGFuZCBEQzUgd2UgbmVlZCB0byBjYWxsIAo+IHRnbF9wc3IyX2RlZXBfc2xlZXBfZGlzYWJsZS9l
bmFibGUoKSBmcm9tIG91dHNpZGUgb2YgUFNSIGNvZGUuCj4gcGxlYXNlIGNvcnJlY3QgbWUgaWYg
aSBhbSB3cm9uZyBoZXJlLgoKSSB0aGluayBpdCBzdGlsbCBiZWxvbmdzIHRvIHRoZSBQU1IgY29k
ZSB3aXRoIG90aGVyIHN0ZXBzIG5lZWRlZCBmb3IKREMzY28gc2V0dXAsIGxpa2UgdGhlIGlkbGUg
ZnJhbWUgcHJvZ3JhbW1pbmcuIFBTUiBkZWVwIHNsZWVwIGNvdWxkIGFsc28KYmUgZW5hYmxlZC9k
aXNhYmxlZCBpbmRlcGVuZGVudGx5IG9mIHRoZSBEQyBzdGF0ZSB3ZSBlbmFibGUgKGZvcgppbnN0
YW5jZSBlbmFibGUvZGlzYWJsZSBkZWVwIHNsZWVwIHdoZW4gYm90aCBEQzNjbyBhbmQgREM1IGlz
CmRpc2FibGVkKS4gSXQgYWxzbyBuZWVkcyB0aGUgUFNSIGxvY2ssIHdoaWNoIGFnYWluIGlzIGlu
dGVybmFsIHRvIHRoZQpQU1IgY29kZS4KCj4gVGhhbmtzICwKPiBBbnNodW1hbiBHdXB0YS4gIAo+
ID4gCj4gPiA+ICt7Cj4gPiA+ICsJc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbDsK
PiA+ID4gKwlib29sIGRjX29mZl9lbmFibGVkOwo+ID4gPiArCXN0cnVjdCBpOTE1X3Bvd2VyX2Rv
bWFpbnMgKnBvd2VyX2RvbWFpbnMgPSAmZGV2X3ByaXYtPnBvd2VyX2RvbWFpbnM7Cj4gPiA+ICsK
PiA+ID4gKwltdXRleF9sb2NrKCZwb3dlcl9kb21haW5zLT5sb2NrKTsKPiA+ID4gKwlwb3dlcl93
ZWxsID0gbG9va3VwX3Bvd2VyX3dlbGwoZGV2X3ByaXYsIFRHTF9ESVNQX0RDX09GRik7Cj4gPiA+
ICsKPiA+ID4gKwlpZiAoIXBvd2VyX3dlbGwpCj4gPiA+ICsJCWdvdG8gdW5sb2NrOwo+ID4gPiAr
Cj4gPiA+ICsJZGNfb2ZmX2VuYWJsZWQgPSBwb3dlcl93ZWxsLT5kZXNjLT5vcHMtPmlzX2VuYWJs
ZWQoZGV2X3ByaXYsCj4gPiA+ICsJCQkJCQkJICAgcG93ZXJfd2VsbCk7Cj4gPiA+ICsJaWYgKHN0
YXRlID09IGRldl9wcml2LT5jc3IubWF4X2RjX3N0YXRlKQo+ID4gPiArCQlnb3RvIHVubG9jazsK
PiA+ID4gKwo+ID4gPiArCWlmICghZGNfb2ZmX2VuYWJsZWQpIHsKPiA+ID4gKwkJLyoKPiA+ID4g
KwkJICogTmVlZCB0byBkaXNhYmxlIHRoZSBEQyBvZmYgcG93ZXIgd2VsbCB0bwo+ID4gPiArCQkg
KiBlZmZlY3QgdGFyZ2V0IERDIHN0YXRlLgo+ID4gPiArCQkgKi8KPiA+ID4gKwkJcG93ZXJfd2Vs
bC0+ZGVzYy0+b3BzLT5lbmFibGUoZGV2X3ByaXYsIHBvd2VyX3dlbGwpOwo+ID4gPiArCQlkZXZf
cHJpdi0+Y3NyLm1heF9kY19zdGF0ZSA9IHN0YXRlOwo+ID4gPiArCQlwb3dlcl93ZWxsLT5kZXNj
LT5vcHMtPmRpc2FibGUoZGV2X3ByaXYsIHBvd2VyX3dlbGwpOwo+ID4gPiArCQlnb3RvIHVubG9j
azsKPiA+ID4gKwl9Cj4gPiA+ICsJCWRldl9wcml2LT5jc3IubWF4X2RjX3N0YXRlID0gc3RhdGU7
Cj4gPiA+ICsKPiA+ID4gK3VubG9jazoKPiA+ID4gKwltdXRleF91bmxvY2soJnBvd2VyX2RvbWFp
bnMtPmxvY2spOwo+ID4gPiAgfQo+ID4gPiAgCj4gPiA+ICBzdGF0aWMgdm9pZCBpOXh4X3Bvd2Vy
X3dlbGxfc3luY19od19ub29wKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+
ID4gQEAgLTM2MTAsNyArMzY4MCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93
ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7Cj4gPiA+ICAJCS5uYW1lID0gIkRDIG9mZiIs
Cj4gPiA+ICAJCS5kb21haW5zID0gVEdMX0RJU1BMQVlfRENfT0ZGX1BPV0VSX0RPTUFJTlMsCj4g
PiA+ICAJCS5vcHMgPSAmZ2VuOV9kY19vZmZfcG93ZXJfd2VsbF9vcHMsCj4gPiA+IC0JCS5pZCA9
IERJU1BfUFdfSURfTk9ORSwKPiA+ID4gKwkJLmlkID0gVEdMX0RJU1BfRENfT0ZGLAo+ID4gCj4g
PiBMZXQncyBhc3NpZ24gdGhpcyBJRCBvbiBhbGwgcGxhdGZvcm1zIGZvciBjb25zaXN0ZW5jeS4K
PiBJTU8gdGhhdCBzaG91bGQgYmUgZG9uZSBpbiBkaWZmZXJlbnQgcGF0Y2gsIGFzIHRnbF9zZXRf
dGFyZ2V0X2RjX3N0YXRlKCkgaXMgCj4gb25seSBjb25zdW1lciBvZiB0aGlzIGlkID8KPiBXaGF0
IGlzIHlvdXIgb3BpbmlvbiBvbiB0aGlzID8KPiA+IAo+ID4gPiAgCX0sCj4gPiA+ICAJewo+ID4g
PiAgCQkubmFtZSA9ICJwb3dlciB3ZWxsIDIiLAo+ID4gPiBAQCAtNDAzOSw2ICs0MTA5LDcgQEAg
aW50IGludGVsX3Bvd2VyX2RvbWFpbnNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCj4gPiA+ICAJZGV2X3ByaXYtPmNzci5hbGxvd2VkX2RjX21hc2sgPQo+ID4gPiAgCQln
ZXRfYWxsb3dlZF9kY19tYXNrKGRldl9wcml2LCBpOTE1X21vZHBhcmFtcy5lbmFibGVfZGMpOwo+
ID4gPiAgCj4gPiA+ICsJZGV2X3ByaXYtPmNzci5tYXhfZGNfc3RhdGUgPSBEQ19TVEFURV9FTl9V
UFRPX0RDNV9EQzZfTUFTSzsKPiA+ID4gIAlCVUlMRF9CVUdfT04oUE9XRVJfRE9NQUlOX05VTSA+
IDY0KTsKPiA+ID4gIAo+ID4gPiAgCW11dGV4X2luaXQoJnBvd2VyX2RvbWFpbnMtPmxvY2spOwo+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuaAo+ID4gPiBpbmRleCA3MzdiNWRlZjdmYzYuLjY5ZWJkZTk5MjM0MiAxMDA2NDQKPiA+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmgKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmgKPiA+ID4gQEAgLTEwMCw2ICsxMDAsNyBAQCBlbnVtIGk5MTVfcG93ZXJfd2VsbF9p
ZCB7Cj4gPiA+ICAJU0tMX0RJU1BfUFdfTUlTQ19JTywKPiA+ID4gIAlTS0xfRElTUF9QV18xLAo+
ID4gPiAgCVNLTF9ESVNQX1BXXzIsCj4gPiA+ICsJVEdMX0RJU1BfRENfT0ZGLAo+ID4gPiAgfTsK
PiA+ID4gIAo+ID4gPiAgI2RlZmluZSBQT1dFUl9ET01BSU5fUElQRShwaXBlKSAoKHBpcGUpICsg
UE9XRVJfRE9NQUlOX1BJUEVfQSkKPiA+ID4gQEAgLTI1Niw2ICsyNTcsOCBAQCB2b2lkIGludGVs
X2Rpc3BsYXlfcG93ZXJfc3VzcGVuZF9sYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KTsKPiA+ID4gIHZvaWQgaW50ZWxfZGlzcGxheV9wb3dlcl9yZXN1bWVfZWFybHkoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ID4gPiAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3N1
c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ID4gPiAgdm9pZCBpbnRlbF9k
aXNwbGF5X3Bvd2VyX3Jlc3VtZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4gPiA+
ICt2b2lkIHRnbF9zZXRfdGFyZ2V0X2RjX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwgdTMyIHN0YXRlLAo+ID4gPiArCQkJICAgICBib29sIHBzcjJfZGVlcF9zbGVlcCk7
Cj4gPiA+ICAKPiA+ID4gIGNvbnN0IGNoYXIgKgo+ID4gPiAgaW50ZWxfZGlzcGxheV9wb3dlcl9k
b21haW5fc3RyKGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZG9tYWluKTsKPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gPiA+IGluZGV4IGRiNzQ4MDgzMWU1Mi4uOTk5ZGE1ZDJk
YTBiIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiA+ID4gQEAgLTMzNiw2
ICszMzYsNyBAQCBzdHJ1Y3QgaW50ZWxfY3NyIHsKPiA+ID4gIAlpOTE1X3JlZ190IG1taW9hZGRy
WzIwXTsKPiA+ID4gIAl1MzIgbW1pb2RhdGFbMjBdOwo+ID4gPiAgCXUzMiBkY19zdGF0ZTsKPiA+
ID4gKwl1MzIgbWF4X2RjX3N0YXRlOwo+ID4gPiAgCXUzMiBhbGxvd2VkX2RjX21hc2s7Cj4gPiA+
ICAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4gPiA+ICB9Owo+ID4gPiAtLSAKPiA+ID4gMi4y
MS4wCj4gPiA+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
