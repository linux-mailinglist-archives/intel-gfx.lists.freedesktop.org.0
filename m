Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBCD64C6A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 20:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C38396E11E;
	Wed, 10 Jul 2019 18:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E40E06E11E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 18:54:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 11:54:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="159846378"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga008.jf.intel.com with ESMTP; 10 Jul 2019 11:54:56 -0700
Date: Wed, 10 Jul 2019 11:57:15 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190710185715.GA24720@intel.com>
References: <20190709214735.16907-1-manasi.d.navare@intel.com>
 <20190709214735.16907-2-manasi.d.navare@intel.com>
 <e2761d4e329bcedb0147aef45a7a28c48dc8a3ba.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2761d4e329bcedb0147aef45a7a28c48dc8a3ba.camel@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/tgl: Bump up the
 plane/fb height to support 8K
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMDksIDIwMTkgYXQgMDQ6MDc6MjNQTSAtMDcwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTA3LTA5IGF0IDE0OjQ3IC0wNzAwLCBNYW5hc2kgTmF2YXJlIHdy
b3RlOgo+ID4gT24gVEdMKywgdGhlIHBsYW5lIGhlaWdodCBmb3IgOEsgcGxhbmVzIGNhbiBiZSA0
MzIwLCBzbyBidW1wIGl0IHVwCj4gPiBUbyBzdXBwb3J0IDQzMjAsIHdlIG5lZWQgdG8gaW5jcmVh
c2UgdGhlIG51bWJlciBvZiBiaXRzIHVzZWQgdG8KPiA+IHJlYWQgcGxhbmVfaGVpZ2h0IHRvIDEz
IGFzIG9wcG9zZWQgdG8gb2xkZXIgMTIgYml0cy4KPiA+IAo+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6
IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIxCj4gPiArKysr
KysrKysrKysrKysrKystLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKPiA+IGluZGV4IDBkNWM4YWYwMWY1NC4uYmU5YTU0Y2I1ZWNjIDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gPiBAQCAtMzM0Myw2ICszMzQzLDE2IEBAIHN0YXRpYyBpbnQgaWNsX21heF9wbGFuZV93aWR0
aChjb25zdCBzdHJ1Y3QKPiA+IGRybV9mcmFtZWJ1ZmZlciAqZmIsCj4gPiAgCXJldHVybiA1MTIw
Owo+ID4gIH0KPiA+ICAKPiA+ICtzdGF0aWMgaW50IHNrbF9tYXhfcGxhbmVfaGVpZ2h0KHZvaWQp
Cj4gPiArewo+ID4gKwlyZXR1cm4gNDA5NjsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGludCB0
Z2xfbWF4X3BsYW5lX2hlaWdodCh2b2lkKQo+ID4gK3sKPiA+ICsJcmV0dXJuIDQzMjA7Cj4gPiAr
fQo+ID4gKwo+ID4gIHN0YXRpYyBib29sIHNrbF9jaGVja19tYWluX2Njc19jb29yZGluYXRlcyhz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUKPiA+ICpwbGFuZV9zdGF0ZSwKPiA+ICAJCQkJCSAgIGlu
dCBtYWluX3gsIGludCBtYWluX3ksIHUzMgo+ID4gbWFpbl9vZmZzZXQpCj4gPiAgewo+ID4gQEAg
LTMzOTEsOSArMzQwMSwxMyBAQCBzdGF0aWMgaW50IHNrbF9jaGVja19tYWluX3N1cmZhY2Uoc3Ry
dWN0Cj4gPiBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gPiAgCWludCB3ID0gZHJt
X3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7Cj4gPiAgCWludCBoID0g
ZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+YmFzZS5zcmMpID4+IDE2Owo+ID4gIAlpbnQg
bWF4X3dpZHRoOwo+ID4gLQlpbnQgbWF4X2hlaWdodCA9IDQwOTY7Cj4gPiArCWludCBtYXhfaGVp
Z2h0Owo+ID4gIAl1MzIgYWxpZ25tZW50LCBvZmZzZXQsIGF1eF9vZmZzZXQgPSBwbGFuZV9zdGF0
ZS0KPiA+ID5jb2xvcl9wbGFuZVsxXS5vZmZzZXQ7Cj4gPiAgCj4gPiArCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDEyKQo+ID4gKwkJbWF4X2hlaWdodCA9IHRnbF9tYXhfcGxhbmVfaGVpZ2h0
KCk7Cj4gPiArCWVsc2UKPiA+ICsJCW1heF9oZWlnaHQgPSBza2xfbWF4X3BsYW5lX2hlaWdodCgp
Owo+IAo+IEdpdmUgYSBsaW5lIGJldHdlZW4gbWF4X3dpZHRoIGJsb2NrLCBhbHNvIEkgd291bGQg
bW92ZSB0aGUgaGVpZ2h0IGFmdGVyCj4gdGhlIHdpZHRoLgoKT2ssIHdpbGwgbWFrZSB0aGlzIGNo
YW5nZSwgY2FuIEkgYWRkIHlvdXIgci1iIHdpdGggdGhpcyBjaGFuZ2U/CgpNYW5hc2kKCj4gCj4g
PiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+ID4gIAkJbWF4X3dpZHRoID0gaWNs
X21heF9wbGFuZV93aWR0aChmYiwgMCwgcm90YXRpb24pOwo+ID4gIAllbHNlIGlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQo+ID4gQEAgLTk4
NjUsNyArOTg3OSwxMCBAQCBza3lsYWtlX2dldF9pbml0aWFsX3BsYW5lX2NvbmZpZyhzdHJ1Y3QK
PiA+IGludGVsX2NydGMgKmNydGMsCj4gPiAgCW9mZnNldCA9IEk5MTVfUkVBRChQTEFORV9PRkZT
RVQocGlwZSwgcGxhbmVfaWQpKTsKPiA+ICAKPiA+ICAJdmFsID0gSTkxNV9SRUFEKFBMQU5FX1NJ
WkUocGlwZSwgcGxhbmVfaWQpKTsKPiA+IC0JZmItPmhlaWdodCA9ICgodmFsID4+IDE2KSAmIDB4
ZmZmKSArIDE7Cj4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQo+ID4gKwkJZmIt
PmhlaWdodCA9ICgodmFsID4+IDE2KSAmIDB4MWZmZikgKyAxOwo+ID4gKwllbHNlCj4gPiArCQlm
Yi0+aGVpZ2h0ID0gKCh2YWwgPj4gMTYpICYgMHhmZmYpICsgMTsKPiA+ICAJZmItPndpZHRoID0g
KCh2YWwgPj4gMCkgJiAweDFmZmYpICsgMTsKPiA+ICAKPiA+ICAJdmFsID0gSTkxNV9SRUFEKFBM
QU5FX1NUUklERShwaXBlLCBwbGFuZV9pZCkpOwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
