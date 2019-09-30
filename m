Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C01C2019
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 13:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B6E89D1D;
	Mon, 30 Sep 2019 11:46:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B880989D1D
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 11:46:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 04:46:48 -0700
X-IronPort-AV: E=Sophos;i="5.64,567,1559545200"; d="scan'208";a="342616553"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 04:46:47 -0700
Date: Mon, 30 Sep 2019 14:45:43 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190930114543.GH29139@ideak-desk.fi.intel.com>
References: <20190926145621.9090-1-anshuman.gupta@intel.com>
 <20190926145621.9090-8-anshuman.gupta@intel.com>
 <20190927163849.GG29139@ideak-desk.fi.intel.com>
 <20190927165743.GA11866@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927165743.GA11866@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v9 7/7] drm/i915/tgl: Add DC3CO counter in
 i915_dmc_info
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

T24gRnJpLCBTZXAgMjcsIDIwMTkgYXQgMTA6Mjc6NDRQTSArMDUzMCwgQW5zaHVtYW4gR3VwdGEg
d3JvdGU6Cj4gT24gMjAxOS0wOS0yNyBhdCAxOTozODo0OSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+ID4gT24gVGh1LCBTZXAgMjYsIDIwMTkgYXQgMDg6MjY6MjFQTSArMDUzMCwgQW5zaHVtYW4g
R3VwdGEgd3JvdGU6Cj4gPiA+IEFkZGluZyBEQzNDTyBjb3VudGVyIGluIGk5MTVfZG1jX2luZm8g
ZGVidWdmcyB3aWxsIGJlCj4gPiA+IHVzZWZ1bCBmb3IgREMzQ08gdmFsaWRhdGlvbi4KPiA+ID4g
RE1DIGZpcm13YXJlIHVzZXMgRE1DX0RFQlVHMyByZWdpc3RlciBhcyBEQzNDTyBjb3VudGVyCj4g
PiA+IHJlZ2lzdGVyIG9uIFRHTCwgYXMgcGVyIEIuU3BlY3MgRE1DX0RFQlVHMyBpcyBnZW5lcmFs
Cj4gPiA+IHB1cnBvc2UgcmVnaXN0ZXIuCj4gPiA+IAo+ID4gPiBDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KPiA+ID4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVs
LmNvbT4KPiA+ID4gQ2M6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwu
Y29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
IHwgNiArKysrKysKPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgIHwg
MiArKwo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gPiA+IGluZGV4IGI1YjQ0OWE4OGNmMS4u
OGExNmJiZDMxMjEyIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
Ywo+ID4gPiBAQCAtMjQwNyw2ICsyNDA3LDEyIEBAIHN0YXRpYyBpbnQgaTkxNV9kbWNfaW5mbyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKPiA+ID4gIAlzZXFfcHJpbnRmKG0sICJ2
ZXJzaW9uOiAlZC4lZFxuIiwgQ1NSX1ZFUlNJT05fTUFKT1IoY3NyLT52ZXJzaW9uKSwKPiA+ID4g
IAkJICAgQ1NSX1ZFUlNJT05fTUlOT1IoY3NyLT52ZXJzaW9uKSk7Cj4gPiA+ICAKPiA+ID4gKwkv
Kgo+ID4gPiArCSAqIFRHTCBETUMgZi93IHVzZXMgRE1DX0RFQlVHMyByZWdpc3RlciBmb3IgREMz
Q08gY291bnRlci4KPiA+ID4gKwkgKi8KPiA+IAo+ID4gVGhlIGFib3ZlIGlzIG9idmlvdXMgZnJv
bSB0aGUgY29kZSBpdHNlbGYsIHNvIHdlIGRvbid0IG5lZWQgYSBjb21tZW50Cj4gPiBmb3IgaXQu
IFBsZWFzZSBhbHNvIGNvbnNpZGVyIHJlbW92aW5nIGFsbCBvdGhlciBjb21tZW50cyBpbiB0aGUg
cGF0Y2hzZXQKPiA+IHRoYXQgc3RhdGUgb25seSB3aGF0IGlzIG9idmlvdXMgZnJvbSB0aGUgY29k
ZS4KPiBETUNfREVCVUczIGlzIGEgRE1DIGdlbmVyYWwgcHVycG9zZSByZWdpc3RlciwgQi5TcGVj
cyBkb2Vzbid0IHNwZWNpZnkKPiBpdCBhcyBEQzNDTyBjb3VudGVyIHVubGlrZSBEQzUgYW5kIERD
NiwgdGhhdCBpcyB3aHkgaSBoYXZlIGFkZGVkCj4gdGhpcyBjb21tZW50LiBTaGFsbCBpIHJlbW92
ZSB0aGlzIGNvbW1lbnQgY29uc2lkZXJpbmcgRE1DX0RFQlVHMyAKPiBhcyBnZW5lcmFsIHB1cnBv
c2UgcmVnaXN0ZXI/CgpJbW8gdGhhdCdzIGFuIGlzc3VlIGluIGJzcGVjLCBjYW4geW91IGZpbGUg
YSB0aWNrZXQgdGhlcmU/IFRoZSBjb21tZW50CmNvdWxkIGV4cGxhaW4gd2hhdCB0aGUgcHJvYmxl
bSBpcywgdGhlIGFib3ZlIGlzIGFscmVhZHkgb2J2aW91cyBmcm9tIHRoZQpjb2RlLiBTb21ldGhp
bmcgbGlrZToKCiJOT1RFOiBETUNfREVCVUczIGlzIGEgZ2VuZXJhbCBwdXJwb3NlIHJlZywgaXRz
IHNwZWNpZmljYXRpb24gaXMgeWV0IHRvCmJlIGZpbmFsaXplZCBpbiBCc3BlYyBmb3IgdGhlIERD
M2NvIGNvdW50ZXIgdXNlLiIKCj4gPiAKPiA+ID4gKwlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2
KSkKPiA+IAo+ID4gVGhlIGFib3ZlIHNob3VsZCBtYXRjaCB0aGUgY2hlY2sgaW4gZ2V0X2FsbG93
ZWRfZGNfbWFzaygpLgo+IElTX1RJR0VSTEFLRSBpcyBiZWluZyBjaGVja2VkIGZvciB0aGUgc2Ft
ZSByZWFzb24gYXMgVEdMCj4gRE1DIGlzIHVzaW5nIERNQ19ERUJVRzMgZm9yIERDM0NPIGNvdW50
ZXIuIEl0IG1heSBub3QgYmUgdHJ1ZQo+IGZvciBvdGhlciBHZW4xMiBwbGF0ZnJvbS4KClNob3Vs
ZCB3ZSBlbmFibGUgdGhlbiBEQzNjbywgaWYgd2Ugd29uJ3QgYmUgYWJsZSB0byBkZWJ1ZyBpdD8K
SW4gYW55IGNhc2UgRE1DX0RFQlVHMyBleGlzdHMgZm9yIGFsbCBHRU4xMiBwbGF0Zm9ybXMsIHNv
IEkgdGhpbmsgd2UgY2FuCnNhZmVseSByZWFkIGl0LgoKPiBUaGFua3MsCj4gQW5zaHVtYW4gR3Vw
dGEuICAKPiA+IAo+ID4gPiArCQlzZXFfcHJpbnRmKG0sICJEQzNDTyBjb3VudDogJWRcbiIsIEk5
MTVfUkVBRChETUNfREVCVUczKSk7Cj4gPiA+ICsKPiA+ID4gIAlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMikgewo+ID4gPiAgCQlkYzVfcmVnID0gVEdMX0RNQ19ERUJVR19EQzVfQ09VTlQ7
Cj4gPiA+ICAJCWRjNl9yZWcgPSBUR0xfRE1DX0RFQlVHX0RDNl9DT1VOVDsKPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4gPiA+IGluZGV4IDNlZTk3MjBhZjIwNy4uYWY4MTBmNmVkNjUyIDEw
MDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+ID4gQEAgLTcyNjMsNiArNzI2
Myw4IEBAIGVudW0gewo+ID4gPiAgI2RlZmluZSBUR0xfRE1DX0RFQlVHX0RDNV9DT1VOVAlfTU1J
TygweDEwMTA4NCkKPiA+ID4gICNkZWZpbmUgVEdMX0RNQ19ERUJVR19EQzZfQ09VTlQJX01NSU8o
MHgxMDEwODgpCj4gPiA+ICAKPiA+ID4gKyNkZWZpbmUgRE1DX0RFQlVHMwkJX01NSU8oMHgxMDEw
OTApCj4gPiA+ICsKPiA+ID4gIC8qIGludGVycnVwdHMgKi8KPiA+ID4gICNkZWZpbmUgREVfTUFT
VEVSX0lSUV9DT05UUk9MICAgKDEgPDwgMzEpCj4gPiA+ICAjZGVmaW5lIERFX1NQUklURUJfRkxJ
UF9ET05FICAgICgxIDw8IDI5KQo+ID4gPiAtLSAKPiA+ID4gMi4yMS4wCj4gPiA+IApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
