Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED109D7F1B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 20:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BE806E87F;
	Tue, 15 Oct 2019 18:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80E036E888
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 18:34:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 11:34:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="208233186"
Received: from mcretu-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.150])
 by fmsmga001.fm.intel.com with ESMTP; 15 Oct 2019 11:34:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191014110122.31923-3-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191014110122.31923-1-vandita.kulkarni@intel.com>
 <20191014110122.31923-3-vandita.kulkarni@intel.com>
Date: Tue, 15 Oct 2019 21:35:21 +0300
Message-ID: <87wod5amc6.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 2/7] drm/i915/dsi: Configure transcoder
 operation for command mode.
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

T24gTW9uLCAxNCBPY3QgMjAxOSwgVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBp
bnRlbC5jb20+IHdyb3RlOgo+IENvbmZpZ3VyZSB0aGUgdHJhbnNjb2RlciB0byBvcGVyYXRlIGlu
IFRFIEdBVEUgY29tbWFuZCBtb2RlCj4gYW5kICB0YWtlIFRFIGV2ZW50cyBmcm9tIEdQSU8uCj4g
QWxzbyBkaXNhYmxlIHRoZSBwZXJpb2RpYyBjb21tYW5kIG1vZGUsIHRoYXQgR09QIHdvdWxkIGhh
dmUKPiBwcm9ncmFtbWVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFu
ZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaWNsX2RzaS5jIHwgMzIgKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxl
IGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aWNsX2RzaS5jCj4gaW5kZXggNmUzOThjMzNhNTI0Li44ZTZjMDlhMWRiNzggMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+IEBAIC03MDQsNiArNzA0LDEwIEBAIGdl
bjExX2RzaV9jb25maWd1cmVfdHJhbnNjb2RlcihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKPiAgCQkJCXRtcCB8PSBWSURFT19NT0RFX1NZTkNfUFVMU0U7Cj4gIAkJCQlicmVhazsKPiAg
CQkJfQo+ICsJCX0gZWxzZSB7Cj4gKwkJCXRtcCAmPSB+T1BfTU9ERV9NQVNLOwo+ICsJCQl0bXAg
fD0gQ01EX01PREVfVEVfR0FURTsKPiArCQkJdG1wIHw9IFRFX1NPVVJDRV9HUElPOwo+ICAJCX0K
PiAgCj4gIAkJSTkxNV9XUklURShEU0lfVFJBTlNfRlVOQ19DT05GKGRzaV90cmFucyksIHRtcCk7
Cj4gQEAgLTk1Myw2ICs5NTcsMjIgQEAgc3RhdGljIHZvaWQgZ2VuMTFfZHNpX3NldHVwX3RpbWVv
dXRzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQo+ICAJfQo+ICB9Cj4gIAo+ICtzdGF0
aWMgdm9pZCBnZW4xMV9kc2lfY29uZmlnX3V0aWxfcGluKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGVuY29kZXItPmJhc2UuZGV2KTsKPiArCXN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSA9
IGVuY190b19pbnRlbF9kc2koJmVuY29kZXItPmJhc2UpOwo+ICsJdTMyIHRtcDsKPiArCj4gKwkv
KiB1c2VkIG9ubHkgYXMgVEUgaS9wIGZvciBEU0kwIGZvciBkdWFsIGxpbmsgVEUgaXMgZnJvbSBz
bGF2ZSBEU0kxICovCj4gKwlpZiAoaXNfdmlkX21vZGUoaW50ZWxfZHNpKSB8fCAoaW50ZWxfZHNp
LT5kdWFsX2xpbmspKQo+ICsJCXJldHVybjsKCkZ1bGwgZGlzY2xvc3VyZTogSSBkaWRuJ3QgY2hl
Y2sgdGhlIHNwZWMgb24gdGhpcy4KCkJ1dC4uLiB3aGVyZSBkb2VzIHRoZSBURSBjb21lIGZvciB0
aGUgc2xhdmUgRFNJMSB0aGVuPyBUaGUgY29tbWVudCBzZWVtcwpjb25mdXNpbmcuCgpOaXRwaWNr
LCBpbnRlbF9kc2ktPmR1YWxfbGluayBkb2VzIG5vdCBuZWVkIHBhcmVudGhlc2lzLgoKPiArCj4g
Kwl0bXAgPSBJOTE1X1JFQUQoVVRJTF9QSU5fQ1RMKTsKPiArCXRtcCB8PSBJQ0xfVVRJTF9QSU5f
RElSRUNUSU9OOwoKSWYgdGhlIG1hY3JvIGhhZCBJTlBVVCBpbiB0aGUgbmFtZSwgdGhpcyB3b3Vs
ZCBiZSBzZWxmLWV4cGxhbmF0b3J5LgoKPiArCXRtcCB8PSBVVElMX1BJTl9FTkFCTEU7Cj4gKwlJ
OTE1X1dSSVRFKFVUSUxfUElOX0NUTCwgdG1wKTsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQKPiAg
Z2VuMTFfZHNpX2VuYWJsZV9wb3J0X2FuZF9waHkoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsCj4gIAkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZp
ZykKPiBAQCAtOTc0LDYgKzk5NCw5IEBAIGdlbjExX2RzaV9lbmFibGVfcG9ydF9hbmRfcGh5KHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJLyogc2V0dXAgRC1QSFkgdGltaW5ncyAq
Lwo+ICAJZ2VuMTFfZHNpX3NldHVwX2RwaHlfdGltaW5ncyhlbmNvZGVyKTsKPiAgCj4gKwkvKiBT
aW5jZSB0cmFuc2NvZGVyIGlzIGNvbmZpZ3VyZWQgdG8gdGFrZSBldmVudHMgZnJvbSBHUElPICov
Cj4gKwlnZW4xMV9kc2lfY29uZmlnX3V0aWxfcGluKGVuY29kZXIpOwo+ICsKPiAgCS8qIHN0ZXAg
NGg6IHNldHVwIERTSSBwcm90b2NvbCB0aW1lb3V0cyAqLwo+ICAJZ2VuMTFfZHNpX3NldHVwX3Rp
bWVvdXRzKGVuY29kZXIpOwo+ICAKPiBAQCAtMTEwNCw2ICsxMTI3LDE1IEBAIHN0YXRpYyB2b2lk
IGdlbjExX2RzaV9kZWNvbmZpZ3VyZV90cmFuY29kZXIoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIpCj4gIAllbnVtIHRyYW5zY29kZXIgZHNpX3RyYW5zOwo+ICAJdTMyIHRtcDsKPiAgCj4g
KwkvKiBkaXNhYmxlIHBlcmlvZGljIHVwZGF0ZSBtb2RlICovCj4gKwlpZiAoaXNfY21kX21vZGUo
aW50ZWxfZHNpKSkgewo+ICsJCWZvcl9lYWNoX2RzaV9wb3J0KHBvcnQsIGludGVsX2RzaS0+cG9y
dHMpIHsKPiArCQkJdG1wID0gSTkxNV9SRUFEKElDTF9EU0lfQ01EX0ZSTUNUTChwb3J0KSk7Cj4g
KwkJCXRtcCAmPSB+SUNMX1BFUklPRElDX0ZSQU1FX1VQREFURV9FTkFCTEU7Cj4gKwkJCUk5MTVf
V1JJVEUoSUNMX0RTSV9DTURfRlJNQ1RMKHBvcnQpLCB0bXApOwo+ICsJCX0KPiArCX0KPiArCj4g
IAkvKiBwdXQgZHNpIGxpbmsgaW4gVUxQUyAqLwo+ICAJZm9yX2VhY2hfZHNpX3BvcnQocG9ydCwg
aW50ZWxfZHNpLT5wb3J0cykgewo+ICAJCWRzaV90cmFucyA9IGRzaV9wb3J0X3RvX3RyYW5zY29k
ZXIocG9ydCk7CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
