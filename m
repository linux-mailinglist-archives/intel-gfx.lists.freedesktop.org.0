Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3375F93B3
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 16:10:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE7876EB54;
	Tue, 12 Nov 2019 15:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3232A6EB54
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 15:10:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 07:10:40 -0800
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="198106606"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 07:10:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191111111029.9126-9-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191111111029.9126-1-vandita.kulkarni@intel.com>
 <20191111111029.9126-9-vandita.kulkarni@intel.com>
Date: Tue, 12 Nov 2019 17:10:34 +0200
Message-ID: <874kz93zbp.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC-v2 8/9] drm/i915/dsi: Add TE handler for dsi
 cmd mode.
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
Cc: --cc=uma.shankar@intel.com, ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxMSBOb3YgMjAxOSwgVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBp
bnRlbC5jb20+IHdyb3RlOgo+IEluIGNhc2Ugb2YgZHVhbCBsaW5rLCB3ZSBnZXQgdGhlIFRFIG9u
IHNsYXZlLgo+IFNvIGNsZWFyIHRoZSBURSBvbiBzbGF2ZSBEU0kgSUlSLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCA2MiArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDYyIGluc2VydGlvbnMoKykKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+IGluZGV4IGYyN2FmZGU0MDliZi4uMzRhMDY4NzZhMmQ3
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gQEAgLTIyMzAsNiArMjIzMCw2MiBAQCBn
ZW44X2RlX21pc2NfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCB1MzIgaWlyKQo+ICAJCURSTV9FUlJPUigiVW5leHBlY3RlZCBERSBNaXNjIGludGVycnVwdFxu
Iik7Cj4gIH0KPiAgCj4gK3ZvaWQgZ2VuMTFfZHNpX3RlX2ludGVycnVwdF9oYW5kbGVyKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiArCQkJCSAgICB1MzIgaWlyX3ZhbHVlKQo+
ICt7Cj4gKwllbnVtIHBpcGUgcGlwZSA9IElOVkFMSURfUElQRTsKPiArCWVudW0gdHJhbnNjb2Rl
ciBkc2lfdHJhbnM7Cj4gKwllbnVtIHBvcnQgcG9ydDsKPiArCXUzMiB2YWwsIHRtcDsKPiArCj4g
KwkvKgo+ICsJICogSW5jYXNlIG9mIGR1YWwgbGluaywgVEUgY29tZXMgZnJvbSBEU0lfMQo+ICsJ
ICogdGhpcyBpcyB0byBjaGVjayBpZiBkdWFsIGxpbmsgaXMgZW5hYmxlZAo+ICsJICovCj4gKwl2
YWwgPSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RMMihUUkFOU0NPREVSX0RTSV8wKSk7Cj4g
Kwl2YWwgJj0gUE9SVF9TWU5DX01PREVfRU5BQkxFOwo+ICsKPiArCS8qCj4gKwkgKiBpZiBkdWFs
IGxpbmsgaXMgZW5hYmxlZCwgdGhlbiByZWFkIERTSV8wCj4gKwkgKiB0cmFuc2NvZGVyIHJlZ2lz
dGVycwo+ICsJICovCj4gKwlwb3J0ID0gKChpaXJfdmFsdWUgJiBEU0kxX1RFICYmIHZhbCkgfHwg
KGlpcl92YWx1ZSAmIERTSTBfVEUpKSA/Cj4gKwkJCQkJCQkJUE9SVF9BIDogUE9SVF9COwo+ICsJ
ZHNpX3RyYW5zID0gKHBvcnQgPT0gUE9SVF9BKSA/IFRSQU5TQ09ERVJfRFNJXzAgOiBUUkFOU0NP
REVSX0RTSV8xOwo+ICsKPiArCS8qIENoZWNrIGlmIERTSSBjb25maWd1cmVkIGluIGNvbW1hbmQg
bW9kZSAqLwo+ICsJdmFsID0gSTkxNV9SRUFEKERTSV9UUkFOU19GVU5DX0NPTkYoZHNpX3RyYW5z
KSk7Cj4gKwl2YWwgPSAodmFsICYgT1BfTU9ERV9NQVNLKSA+PiAyODsKPiArCj4gKwlpZiAodmFs
KSB7Cj4gKwkJRFJNX0VSUk9SKCJEU0kgdHJhbmNvZGVyIG5vdCBjb25maWd1cmVkIGluIGNvbW1h
bmQgbW9kZVxuIik7Cj4gKwkJcmV0dXJuOwo+ICsJfQo+ICsKPiArCS8qIEdldCBQSVBFIGZvciBo
YW5kbGluZyBWQkxBTksgZXZlbnQgKi8KPiArCXZhbCA9IEk5MTVfUkVBRChUUkFOU19ERElfRlVO
Q19DVEwoZHNpX3RyYW5zKSk7Cj4gKwlzd2l0Y2ggKHZhbCAmIFRSQU5TX0RESV9FRFBfSU5QVVRf
TUFTSykgewo+ICsJY2FzZSBUUkFOU19ERElfRURQX0lOUFVUX0FfT046Cj4gKwkJcGlwZSA9IFBJ
UEVfQTsKPiArCQlicmVhazsKPiArCWNhc2UgVFJBTlNfRERJX0VEUF9JTlBVVF9CX09OT0ZGOgo+
ICsJCXBpcGUgPSBQSVBFX0I7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIFRSQU5TX0RESV9FRFBfSU5Q
VVRfQ19PTk9GRjoKPiArCQlwaXBlID0gUElQRV9DOwo+ICsJCWJyZWFrOwo+ICsJZGVmYXVsdDoK
PiArCQlEUk1fRVJST1IoIkludmFsaWQgUElQRVxuIik7Cj4gKwl9Cj4gKwo+ICsJLyogY2xlYXIg
VEUgaW4gZHNpIElJUiAqLwo+ICsJcG9ydCA9IChpaXJfdmFsdWUgJiBEU0kxX1RFKSA/IFBPUlRf
QiA6IFBPUlRfQTsKPiArCXRtcCA9IEk5MTVfUkVBRChEU0lfSU5UUl9JREVOVF9SRUcocG9ydCkp
Owo+ICsJSTkxNV9XUklURShEU0lfSU5UUl9JREVOVF9SRUcocG9ydCksIHRtcCk7Cj4gKwo+ICsJ
ZHJtX2hhbmRsZV92YmxhbmsoJmRldl9wcml2LT5kcm0sIHBpcGUpOwo+ICt9Cj4gKwo+ICBzdGF0
aWMgaXJxcmV0dXJuX3QKPiAgZ2VuOF9kZV9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsIHUzMiBtYXN0ZXJfY3RsKQo+ICB7Cj4gQEAgLTIyOTQsNiArMjM1MCwx
MiBAQCBnZW44X2RlX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgdTMyIG1hc3Rlcl9jdGwpCj4gIAkJCQlmb3VuZCA9IHRydWU7Cj4gIAkJCX0KPiAgCj4gKwkJ
CWlmICgoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgJiYKPiArCQkJCShpaXIgJiAoRFNJMF9U
RSB8IERTSTFfVEUpKSkgewoKUGxlYXNlIGZvbGxvdyB0aGUgc2FtZSBzdHlsZSBhcyBuZWFyYnk6
CgogICAgICAgIGlmIChnZW4xMSkgewogICAgICAgICAgICAgICAgdG1wX21hc2sgPSBpaXIgJiAo
RFNJMF9URSB8IERTSTFfVEUpOwogICAgICAgICAgICAgICAgaWYgKHRtcF9tYXNrKSB7CiAgICAg
ICAgICAgICAgICAgICAgICAgIGdlbjExX2RzaV90ZV9pbnRlcnJ1cHRfaGFuZGxlcihkZXZfcHJp
diwgdG1wX21hc2spOwogICAgICAgICAgICAgICAgICAgICAgICBmb3VuZCA9IHRydWU7CiAgICAg
ICAgICAgICAgICB9CiAgICAgICAgfQoKRXZlbiBpZiB0aGF0J3MgZnVuY3Rpb25hbGx5IHRoZSBz
YW1lLCBJIHRoaW5rIGl0J3MgY2xlYW5lciB0byBvbmx5IHBhc3MKdGhlIHJlbGV2YW50IG1hc2tl
ZCBiaXRzIHRvIHRoZSBoYW5kbGVyLgoKCj4gKwkJCQlnZW4xMV9kc2lfdGVfaW50ZXJydXB0X2hh
bmRsZXIoZGV2X3ByaXYsIGlpcik7Cj4gKwkJCQlmb3VuZCA9IHRydWU7Cj4gKwkJCX0KPiArCj4g
IAkJCWlmICghZm91bmQpCj4gIAkJCQlEUk1fRVJST1IoIlVuZXhwZWN0ZWQgREUgUG9ydCBpbnRl
cnJ1cHRcbiIpOwo+ICAJCX0KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3Jh
cGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
