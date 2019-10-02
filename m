Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 852B2C8809
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 14:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9935A6E959;
	Wed,  2 Oct 2019 12:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F476E959
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 12:12:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 05:12:46 -0700
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="195989529"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 05:12:44 -0700
Date: Wed, 2 Oct 2019 15:11:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20191002121139.GB11229@ideak-desk.fi.intel.com>
References: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio power up sequence
 for gen10/11
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
Cc: Jani Nikula <jani.nikula@intel.com>, tiwai@suse.de,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMDc6MzU6NTRQTSArMDMwMCwgS2FpIFZlaG1hbmVuIHdy
b3RlOgo+IE9uIGdlbjEwLzExIHBsYXRmb3JtcywgZHJpdmVyIG11c3Qgc2V0IHRoZSBlbmFibGUg
Yml0IG9mIEFVRF9QSU5fQlVGX0NUTAo+IGFzIHBhcnQgb2YgYXVkaW8gcG93ZXIgdXAgc2VxdWVu
Y2UuCj4gCj4gRmFpbGluZyB0byBkbyB0aGlzIHJlc3VsdGVkIGluIGVycm9ycyBkdXJpbmcgZGlz
cGxheSBhdWRpbyBjb2RlYyBwcm9iZSwKPiBhbmQgZmFpbHVyZXMgZHVyaW5nIHJlc3VtZSBmcm9t
IHN1c3BlbmQuCgpHb29kIGNhdGNoLCBzZWVtcyB0byBtYXRjaCBic3BlYyAyMTM1MiAoYW5kIDQ5
MjgwIGZvciBHRU4xMispLgoKQmVmb3JlIHNldHRpbmcgdGhpcyBiaXQgdGhlIHNlcXVlbmNlIGhh
cyBhbiBvdGhlciBzdGVwIGRvbmUgaW4gdGhlIEhEQQpkcml2ZXIgKExDVEwgcmVnIHdyaXRlIGlu
IHNvdW5kL3BjaS9oZGEvaGRhX2ludGVsLmMsIGludGVsX2luaXRfbGN0bCgpKQpiZWZvcmUgc2V0
dGluZyB0aGlzIGJpdC4gSWYgdGhhdCBvcmRlciBpcyBpbXBvcnRhbnQgd2UnZCBuZWVkIGFub3Ro
ZXIKaG9vayBpbiBkcm1fYXVkaW9fY29tcG9uZW50X29wcyAoYW5kIGFsc28gY2xlYXIgdGhlIGJp
dCkuCgo+IAo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTEyMTQKPiBTaWduZWQtb2ZmLWJ5OiBLYWkgVmVobWFuZW4gPGthaS52ZWhtYW5l
bkBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXVkaW8uYyB8IDUgKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCAgICAgICAgICAgIHwgMiArKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlv
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKPiBpbmRleCA1
NDYzOGQ5OWUwMjEuLmE3MzFhZjdhZGEwOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F1ZGlvLmMKPiBAQCAtODYyLDYgKzg2MiwxMSBAQCBzdGF0aWMgdW5zaWdu
ZWQgbG9uZyBpOTE1X2F1ZGlvX2NvbXBvbmVudF9nZXRfcG93ZXIoc3RydWN0IGRldmljZSAqa2Rl
dikKPiAgCQkvKiBGb3JjZSBDRENMSyB0byAyKkJDTEsgYXMgbG9uZyBhcyB3ZSBuZWVkIGF1ZGlv
IHBvd2VyZWQuICovCj4gIAkJaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpIHx8IElTX0dFTUlO
SUxBS0UoZGV2X3ByaXYpKQo+ICAJCQlnbGtfZm9yY2VfYXVkaW9fY2RjbGsoZGV2X3ByaXYsIHRy
dWUpOwo+ICsKPiArCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA9PSAxMSB8fCBJTlRFTF9HRU4o
ZGV2X3ByaXYpID09IDEwKQo+ICsJCQlJOTE1X1dSSVRFKEFVRF9QSU5fQlVGX0NUTCwKPiArCQkJ
CSAgIChJOTE1X1JFQUQoQVVEX1BJTl9CVUZfQ1RMKSB8Cj4gKwkJCQkgICAgQVVEX1BJTl9CVUZf
RU5BQkxFKSk7Cj4gIAl9Cj4gIAo+ICAJcmV0dXJuIHJldDsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKPiBpbmRleCAwNThhYTVjYThiNzMuLmRhZmY5MDU4ZjBlOCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaAo+IEBAIC05MTMzLDYgKzkxMzMsOCBAQCBlbnVtIHsKPiAgI2RlZmluZSAgIFNL
TF9BVURfQ09ERUNfV0FLRV9TSUdOQUwJCSgxIDw8IDE1KQo+ICAKPiAgI2RlZmluZSBBVURfRlJF
UV9DTlRSTAkJCV9NTUlPKDB4NjU5MDApCj4gKyNkZWZpbmUgQVVEX1BJTl9CVUZfQ1RMCQlfTU1J
TygweDQ4NDE0KQo+ICsjZGVmaW5lICAgQVVEX1BJTl9CVUZfRU5BQkxFCQlCSVQoMzEpCj4gIAo+
ICAvKgo+ICAgKiBIU1cgLSBJQ0wgcG93ZXIgd2VsbHMKPiAtLSAKPiAyLjE3LjEKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
