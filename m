Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C854799623
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:17:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB6CA6EB4E;
	Thu, 22 Aug 2019 14:17:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 486996E4E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:17:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 12:52:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="169531654"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga007.jf.intel.com with ESMTP; 21 Aug 2019 12:52:37 -0700
Date: Wed, 21 Aug 2019 12:54:08 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190821195408.GE25055@intel.com>
References: <20190702194205.13366-1-maarten.lankhorst@linux.intel.com>
 <20190702194205.13366-8-maarten.lankhorst@linux.intel.com>
 <20190710223550.GF24720@intel.com>
 <3fa8872b-6813-dcc9-a22a-437825f09647@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3fa8872b-6813-dcc9-a22a-437825f09647@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915: Allow vdsc functions to be
 called without encoder.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMTE6MDg6MTNBTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMTEtMDctMjAxOSBvbSAwMDozNSBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6
Cj4gPiBPbiBUdWUsIEp1bCAwMiwgMjAxOSBhdCAwOTo0MjowNVBNICswMjAwLCBNYWFydGVuIExh
bmtob3JzdCB3cm90ZToKPiA+PiBUaGlzIGNhbiBiZSB1c2VmdWwgd2hlbiBjYWxsaW5nIHRoZSB2
ZHNjIGVuYWJsZSBmdW5jdGlvbnMKPiA+PiBkaXJlY3RseSB3aXRob3V0IGVuY29kZXIuCj4gPiBX
b3VsZCB0aGlzIGJlIHRoZSBjYXNlIG9uIHRoZSBzbGF2ZSBwaXBlIHdoZXJlIHdlIG5lZWQgdG8g
ZW5hYmxlIERTQyBidXQgdGhlcmUKPiA+IGlzIG5vIHRyYW5zY29kZXIgZW5hYmxlZCBmb3IgdGhh
dCBwaXBlPwo+IAo+IFllcy4gOikKPiAKPiBBbHRob3VnaCBJIHdhcyBjdXJyZW50bHkgbWlzc2lu
ZyBpbnRlbF9jb25maWd1cmVfcHBzX2Zvcl9kc2NfZW5jb2RlcigpLCB3aWxsIGJlIGZpeGVkIGlu
IG5leHQgdmVyc2lvbi4KPiAKPiBJdCBlcnJvbmVvdXNseSB1c2VkIHRoZSBlbmNvZGVyIHRvIGNo
ZWNrIGZvciBlRFAuIGluc3RlYWQgb2YgY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIKCkRpZCB5
b3UgZ2V0IGEgY2hhbmNlIHRvIHVwZGF0ZSB0aGlzIHRvIGNvbmZpZ3VyZSBwcHMgYW5kIHdyaXRl
IGRzYyBwcHMgc2RwIGV2ZW4gZm9yIHRoZSBzbGF2ZQpwaXBlIGNhc2U/CkhvdyBkb2VzIHRoaXMg
YmVoYXZlIGZvciB0aGUgZHNjIGVuZ2luZSBvbiB0aGUgc2xhdmUgcGlwZT8gQ2FuIHdlIHNraXAg
c2VuZGluZyB0aGUgc2RwIGluIHRoYXQgY2FzZT8KCk1hbmFzaQoKPiAKPiB+TWFhcnRlbgo+IAo+
ID4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+Cj4gPj4gLS0tCj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmRzYy5jIHwgOCArKysrKy0tLQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF92ZHNjLmMKPiA+PiBpbmRleCA0MTlhNzc3MjM4OTQuLmYwMDk1MjRhYjcz
NSAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zk
c2MuYwo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5j
Cj4gPj4gQEAgLTg5Nyw3ICs4OTcsNyBAQCB2b2lkIGludGVsX2RzY19lbmFibGUoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCj4gPj4gIAkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gPj4gIHsKPiA+PiAgCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwo+ID4+IC0Jc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7
Cj4gPj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMt
PmJhc2UuZGV2KTsKPiA+PiAgCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKPiA+PiAgCWk5
MTVfcmVnX3QgZHNzX2N0bDFfcmVnLCBkc3NfY3RsMl9yZWc7Cj4gPj4gIAl1MzIgZHNzX2N0bDFf
dmFsID0gMDsKPiA+PiBAQCAtOTEwLDkgKzkxMCwxMSBAQCB2b2lkIGludGVsX2RzY19lbmFibGUo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gPj4gIAlpbnRlbF9kaXNwbGF5X3Bvd2Vy
X2dldChkZXZfcHJpdiwKPiA+PiAgCQkJCWludGVsX2RzY19wb3dlcl9kb21haW4oY3J0Y19zdGF0
ZSkpOwo+ID4+ICAKPiA+PiAtCWludGVsX2NvbmZpZ3VyZV9wcHNfZm9yX2RzY19lbmNvZGVyKGVu
Y29kZXIsIGNydGNfc3RhdGUpOwo+ID4+ICsJaWYgKGVuY29kZXIpIHsKPiA+PiArCQlpbnRlbF9j
b25maWd1cmVfcHBzX2Zvcl9kc2NfZW5jb2RlcihlbmNvZGVyLCBjcnRjX3N0YXRlKTsKPiA+PiAg
Cj4gPj4gLQlpbnRlbF9kcF93cml0ZV9kc2NfcHBzX3NkcChlbmNvZGVyLCBjcnRjX3N0YXRlKTsK
PiA+PiArCQlpbnRlbF9kcF93cml0ZV9kc2NfcHBzX3NkcChlbmNvZGVyLCBjcnRjX3N0YXRlKTsK
PiA+PiArCX0KPiA+PiAgCj4gPj4gIAlpZiAoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIgPT0g
VFJBTlNDT0RFUl9FRFApIHsKPiA+PiAgCQlkc3NfY3RsMV9yZWcgPSBEU1NfQ1RMMTsKPiA+PiAt
LSAKPiA+PiAyLjIwLjEKPiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+IAo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
