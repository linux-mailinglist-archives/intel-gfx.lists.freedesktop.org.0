Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8200B4F99
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 15:45:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0790C6EC86;
	Tue, 17 Sep 2019 13:45:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC3E86EC86
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 13:45:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 06:45:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="177384854"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 17 Sep 2019 06:44:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Sep 2019 16:44:56 +0300
Date: Tue, 17 Sep 2019 16:44:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20190917134456.GI1208@intel.com>
References: <20190917130057.7402-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917130057.7402-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Add TigerLake bandwidth
 checking
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com,
 martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMTcsIDIwMTkgYXQgMDQ6MDA6NTdQTSArMDMwMCwgU3RhbmlzbGF2IExpc292
c2tpeSB3cm90ZToKPiBBZGRlZCBiYW5kd2lkdGggY2FsY3VsYXRpb24gYWxnb3JpdGhtIGFuZCBj
aGVja3MsCj4gc2ltaWxhciB3YXkgYXMgaXQgd2FzIGRvbmUgZm9yIElDTCwgc29tZSBjb25zdGFu
dHMKPiB3ZXJlIGNvcnJlY3RlZCBhY2NvcmRpbmcgdG8gQlNwZWMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+Cj4g
Cj4gRml4ZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTYwMAo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAx
MDggKysrKysrKysrKysrKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMDcgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2J3LmMKPiBpbmRleCA2ODg4NThlYmU0ZDAuLmU5N2QwODNmNGYyYSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKPiBAQCAtMTMyLDcgKzEzMiw4IEBAIHN0
YXRpYyBpbnQgaWNsX3NhZ3ZfbWF4X2RjbGsoY29uc3Qgc3RydWN0IGludGVsX3Fndl9pbmZvICpx
aSkKPiAgfQo+ICAKPiAgc3RydWN0IGludGVsX3NhX2luZm8gewo+IC0JdTggZGVidXJzdCwgbXBh
Z2VzaXplLCBkZXByb2did2xpbWl0LCBkaXNwbGF5cnRpZHM7Cj4gKwl1OCBkZWJ1cnN0LCBtcGFn
ZXNpemUsIGRlcHJvZ2J3bGltaXQ7Cj4gKwl1MTYgZGlzcGxheXJ0aWRzOwoKUHV0IHRoZSB1MTYg
Zmlyc3QgdG8gYXZvaWQgaG9sZXMgaW4gdGhlIG1pZGRsZSBvZiB0aGUgc3RydWN0LgoKPiAgfTsK
PiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfc2FfaW5mbyBpY2xfc2FfaW5mbyA9IHsK
PiBAQCAtMTQyLDYgKzE0MywxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX3NhX2luZm8g
aWNsX3NhX2luZm8gPSB7Cj4gIAkuZGlzcGxheXJ0aWRzID0gMTI4LAo+ICB9Owo+ICAKPiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBpbnRlbF9zYV9pbmZvIHRnbF9zYV9pbmZvID0gewo+ICsJLmRlYnVy
c3QgPSAxNiwKPiArCS5tcGFnZXNpemUgPSAxNiwKPiArCS5kZXByb2did2xpbWl0ID0gMzQsIC8q
IEdCL3MgKi8KPiArCS5kaXNwbGF5cnRpZHMgPSAyNTYsCj4gK307Cj4gKwo+ICsKPiAgc3RhdGlj
IGludCBpY2xfZ2V0X2J3X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+
ICB7Cj4gIAlzdHJ1Y3QgaW50ZWxfcWd2X2luZm8gcWkgPSB7fTsKPiBAQCAtMjA4LDYgKzIxNyw3
NCBAQCBzdGF0aWMgaW50IGljbF9nZXRfYndfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArc3RhdGljIGludCB0Z2xfZ2V0X2J3
X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICt7Cj4gKwlzdHJ1Y3Qg
aW50ZWxfcWd2X2luZm8gcWkgPSB7fTsKPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9zYV9pbmZvICpz
YSA9ICZ0Z2xfc2FfaW5mbzsKPiArCWJvb2wgaXNfeV90aWxlID0gdHJ1ZTsgLyogYXNzdW1lIHkg
dGlsZSBtYXkgYmUgdXNlZCAqLwo+ICsJaW50IG51bV9jaGFubmVsczsKPiArCWludCBkZWludGVy
bGVhdmU7Cj4gKwlpbnQgaXBxZGVwdGgsIGlwcWRlcHRocGNoOwo+ICsJaW50IGRjbGtfbWF4Owo+
ICsJaW50IG1heGRlYnc7Cj4gKwlpbnQgYzNfZGVyYXRpbmcgPSAxMDsKPiArCWludCBjMjVfZGVw
cm9nYndwY2xpbWl0ID0gNjA7Cj4gKwlpbnQgaSwgcmV0Owo+ICsKPiArCXJldCA9IGljbF9nZXRf
cWd2X3BvaW50cyhkZXZfcHJpdiwgJnFpKTsKPiArCWlmIChyZXQpIHsKPiArCQlEUk1fREVCVUdf
S01TKCJGYWlsZWQgdG8gZ2V0IG1lbW9yeSBzdWJzeXN0ZW0gaW5mb3JtYXRpb24sIGlnbm9yaW5n
IGJhbmR3aWR0aCBsaW1pdHMiKTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsJbnVtX2NoYW5u
ZWxzID0gcWkubnVtX2NoYW5uZWxzOwo+ICsKPiArCWRlaW50ZXJsZWF2ZSA9IERJVl9ST1VORF9V
UChudW1fY2hhbm5lbHMsIGlzX3lfdGlsZSA/IDQgOiAyKTsKPiArCWRjbGtfbWF4ID0gaWNsX3Nh
Z3ZfbWF4X2RjbGsoJnFpKTsKPiArCj4gKwlpcHFkZXB0aHBjaCA9IDE2Owo+ICsKPiArCW1heGRl
YncgPSBtaW4oc2EtPmRlcHJvZ2J3bGltaXQgKiAxMDAwLAo+ICsJCSAgICAgIGljbF9jYWxjX2J3
KGRjbGtfbWF4LCAxNiAqIGMyNV9kZXByb2did3BjbGltaXQsIDEwMCkpOyAvKiA2MCUgKi8KPiAr
CWlwcWRlcHRoID0gbWluKGlwcWRlcHRocGNoLCBzYS0+ZGlzcGxheXJ0aWRzIC8gbnVtX2NoYW5u
ZWxzKTsKPiArCj4gKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShkZXZfcHJpdi0+bWF4X2J3
KTsgaSsrKSB7Cj4gKwkJc3RydWN0IGludGVsX2J3X2luZm8gKmJpID0gJmRldl9wcml2LT5tYXhf
YndbaV07Cj4gKwkJaW50IGNscGNoZ3JvdXA7Cj4gKwkJaW50IGo7Cj4gKwo+ICsJCWNscGNoZ3Jv
dXAgPSAoc2EtPmRlYnVyc3QgKiBkZWludGVybGVhdmUgLyBudW1fY2hhbm5lbHMpIDw8IGk7Cj4g
KwkJYmktPm51bV9wbGFuZXMgPSAoaXBxZGVwdGggLSBjbHBjaGdyb3VwKSAvIGNscGNoZ3JvdXA7
Cj4gKwo+ICsJCWJpLT5udW1fcWd2X3BvaW50cyA9IHFpLm51bV9wb2ludHM7Cj4gKwo+ICsJCWZv
ciAoaiA9IDA7IGogPCBxaS5udW1fcG9pbnRzOyBqKyspIHsKPiArCQkJY29uc3Qgc3RydWN0IGlu
dGVsX3Fndl9wb2ludCAqc3AgPSAmcWkucG9pbnRzW2pdOwo+ICsJCQlpbnQgY3QsIGJ3Owo+ICsK
PiArCQkJLyoKPiArCQkJICogTWF4IHJvdyBjeWNsZSB0aW1lCj4gKwkJCSAqCj4gKwkJCSAqIEZJ
WE1FIHdoYXQgaXMgdGhlIGxvZ2ljIGJlaGluZCB0aGUKPiArCQkJICogYXNzdW1lZCBidXJzdCBs
ZW5ndGg/Cj4gKwkJCSAqLwo+ICsJCQljdCA9IG1heF90KGludCwgc3AtPnRfcmMsIHNwLT50X3Jw
ICsgc3AtPnRfcmNkICsKPiArCQkJCSAgIChjbHBjaGdyb3VwIC0gMSkgKiBxaS50X2JsICsgc3At
PnRfcmRwcmUpOwo+ICsJCQlidyA9IGljbF9jYWxjX2J3KHNwLT5kY2xrLCBjbHBjaGdyb3VwICog
MzIgKiBudW1fY2hhbm5lbHMsIGN0KTsKPiArCj4gKwkJCWJpLT5kZXJhdGVkYndbal0gPSBtaW4o
bWF4ZGVidywKPiArCQkJCQkgICAgICAgYncgKiAoMTAwIC0gYzNfZGVyYXRpbmcpIC8gMTAwKTsg
LyogOTAlICovCj4gKwo+ICsJCQlEUk1fREVCVUdfS01TKCJCVyVkIC8gUUdWICVkOiBudW1fcGxh
bmVzPSVkIGRlcmF0ZWRidz0ldVxuIiwKPiArCQkJCSAgICAgIGksIGosIGJpLT5udW1fcGxhbmVz
LCBiaS0+ZGVyYXRlZGJ3W2pdKTsKPiArCQl9Cj4gKwo+ICsJCWlmIChiaS0+bnVtX3BsYW5lcyA9
PSAxKQo+ICsJCQlicmVhazsKPiArCX0KCldlIGRvbid0IHdhbnQgdG8gZHVwbGljYXRlIHRoZSBl
bnRpcmUgZnVuY3Rpb24uIFByZXR0eSBtdWNoIHRoZQp3aG9sZSBwb2ludCBvZiBoYXZpbmcgdGhl
IHNhX2luZm8gc3RydWN0IGlzIHRvIG1ha2UgdGhpcyBwYXJhbWV0cml6ZWQuCgo+ICsKPiArCXJl
dHVybiAwOwo+ICt9Cj4gKwo+ICBzdGF0aWMgdW5zaWduZWQgaW50IGljbF9tYXhfYncoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCQkgICAgICAgaW50IG51bV9wbGFuZXMs
IGludCBxZ3ZfcG9pbnQpCj4gIHsKPiBAQCAtMjMxLDEwICszMDgsMzUgQEAgc3RhdGljIHVuc2ln
bmVkIGludCBpY2xfbWF4X2J3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAg
CXJldHVybiAwOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdW5zaWduZWQgaW50IHRnbF9tYXhfYncoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICsJCQkgICAgICAgaW50IG51bV9wbGFu
ZXMsIGludCBxZ3ZfcG9pbnQpCj4gK3sKPiArCWludCBpOwo+ICsKPiArCWZvciAoaSA9IDA7IGkg
PCBBUlJBWV9TSVpFKGRldl9wcml2LT5tYXhfYncpOyBpKyspIHsKPiArCQljb25zdCBzdHJ1Y3Qg
aW50ZWxfYndfaW5mbyAqYmkgPQo+ICsJCQkmZGV2X3ByaXYtPm1heF9id1tpXTsKPiArCj4gKwkJ
LyoKPiArCQkgKiBQY29kZSB3aWxsIG5vdCBleHBvc2UgYWxsIFFHViBwb2ludHMgd2hlbgo+ICsJ
CSAqIFNBR1YgaXMgZm9yY2VkIHRvIG9mZi9taW4vbWVkL21heC4KPiArCQkgKi8KPiArCQlpZiAo
cWd2X3BvaW50ID49IGJpLT5udW1fcWd2X3BvaW50cykKPiArCQkJcmV0dXJuIFVJTlRfTUFYOwo+
ICsKPiArCQlpZiAobnVtX3BsYW5lcyA+PSBiaS0+bnVtX3BsYW5lcykKPiArCQkJcmV0dXJuIGJp
LT5kZXJhdGVkYndbcWd2X3BvaW50XTsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsK
PiAgdm9pZCBpbnRlbF9id19pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKPiAgewo+ICAJaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQo+ICAJCWljbF9nZXRfYndfaW5m
byhkZXZfcHJpdik7Cj4gKwllbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDEyKSkKPiArCQl0Z2xf
Z2V0X2J3X2luZm8oZGV2X3ByaXYpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgdW5zaWduZWQgaW50IGlu
dGVsX21heF9kYXRhX3JhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+IEBA
IC0yNDksNiArMzUxLDEwIEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfbWF4X2RhdGFfcmF0
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJcmV0dXJuIG1pbjMoaWNs
X21heF9idyhkZXZfcHJpdiwgbnVtX3BsYW5lcywgMCksCj4gIAkJCSAgICBpY2xfbWF4X2J3KGRl
dl9wcml2LCBudW1fcGxhbmVzLCAxKSwKPiAgCQkJICAgIGljbF9tYXhfYncoZGV2X3ByaXYsIG51
bV9wbGFuZXMsIDIpKTsKPiArCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTIpKQo+ICsJCXJl
dHVybiBtaW4zKHRnbF9tYXhfYncoZGV2X3ByaXYsIG51bV9wbGFuZXMsIDApLAo+ICsJCQkgICAg
dGdsX21heF9idyhkZXZfcHJpdiwgbnVtX3BsYW5lcywgMSksCj4gKwkJCSAgICB0Z2xfbWF4X2J3
KGRldl9wcml2LCBudW1fcGxhbmVzLCAyKSk7Cj4gIAllbHNlCj4gIAkJcmV0dXJuIFVJTlRfTUFY
Owo+ICB9Cj4gLS0gCj4gMi4xNy4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
