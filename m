Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6361B183D78
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 00:40:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B15ED6EB5C;
	Thu, 12 Mar 2020 23:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F037D6EB5C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 23:40:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 16:40:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,546,1574150400"; d="scan'208";a="266550987"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga004.fm.intel.com with ESMTP; 12 Mar 2020 16:40:49 -0700
Date: Thu, 12 Mar 2020 16:42:13 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20200312234212.GF8846@intel.com>
References: <20200310153745.22814-1-animesh.manna@intel.com>
 <20200310153745.22814-8-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310153745.22814-8-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 7/7] drm/i915/dp: Program vswing,
 pre-emphasis, test-pattern
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

SnVzdCBhIGZldyBuaXRzIGJlbG93CgpPbiBUdWUsIE1hciAxMCwgMjAyMCBhdCAwOTowNzo0NVBN
ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+IFRoaXMgcGF0Y2ggcHJvY2VzcyBwaHkgY29t
cGxpYW5jZSByZXF1ZXN0IGJ5IHByb2dyYW1taW5nIHJlcXVlc3RlZAo+IHZzd2luZywgcHJlLWVt
cGhhc2lzIGFuZCB0ZXN0IHBhdHRlcm4uCj4gCj4gdjE6IEluaXRpYWwgcGF0Y2guCj4gdjI6IEZp
eGVzIGFkZGVkIGR1cmluZyB0ZXN0aW5nIHdpdGggdGVzdC1zY29wZS4gKEtoYWxlZC9DbGludC9N
YW5hc2kpCj4gLSBwaXBlIHVzZWQgYXMgYXJndW1lbnQgZHVyaW5nIHJlZ2lzdGVycyBwcm9ncmFt
bWluZyBpbnN0ZWFkIG9mIHBvcnQuCj4gLSBUUkFOU19DT05GIG11c3QgYmUgZGlzYWJsZS9lbmFi
bGUgYXMgd2VsbCBkdXJpbmcgZGRpIGRpc2FibGUvZW5hYmxlLgo+IC0gaGFyY29kZWQgUExUUEFU
IDgwIGJpdCBjdXN0b20gcGF0dGVybiBhcyB0aGUgRFBSLTEwMCBkb2VzIG5vdCBzZXQgaXQKPiBp
biB0aGUgc2lua+KAmXMgRFBDRHMKPiAtIFRSQU5TX0RESV9GVU5DX0NUTCBERElfU2VsZWN0IChC
aXRzIDI3OjMwKSBuZWVkIHRvIHJlc2V0L3NldCBkdXJpbmcKPiBkaXNhYmxlL2VuYWJsZS4KPiAK
PiBDYzogQ2xpbnRvbiBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgo+IENjOiBN
YW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEtoYWxlZCBBbG1haGFsbGF3eSA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTM1ICsrKysrKysr
KysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmggfCAgIDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDEzNiBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IDE2YTRhNDhjODE2OC4u
MDIzOWE3MjUzN2JhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Ywo+IEBAIC01MDIwLDYgKzUwMjAsMTM5IEBAIHN0YXRpYyB1OCBpbnRlbF9kcF9wcmVwYXJlX3Bo
eXRlc3Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPiAgCXJldHVybiBEUF9URVNUX0FDSzsK
PiAgfQo+ICAKPiArc3RhdGljIHZvaWQgaW50ZWxfZHBfcGh5X3BhdHRlcm5fdXBkYXRlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gK3sKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9Cj4gKwkJCXRvX2k5MTUoZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApLT5iYXNlLmJh
c2UuZGV2KTsKPiArCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0ID0g
ZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOwo+ICsJc3RydWN0IGRybV9kcF9waHlfdGVzdF9wYXJh
bXMgKmRhdGEgPQo+ICsJCQkmaW50ZWxfZHAtPmNvbXBsaWFuY2UudGVzdF9kYXRhLnBoeXRlc3Q7
Cj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoaW50ZWxfZGlnX3Bv
cnQtPmJhc2UuYmFzZS5jcnRjKTsKPiArCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKPiAr
CXUzMiB0ZW1wOwoKTWF5IGJlIGNhbGwgdGhpcyBhIGN1c3RvbV84MF92YWwgb3Igc29tZXRoaW5n
IG5vdCB0ZW1wCgpBbHNvIHlvdSBuZWVkIHRvIGFkZCBhIGNvbW1lbnQvRklYTUUgZXhwbGFpbmlu
ZyB3aHkgdGhlIGN1c3RvbSA4MCBQSFkgdmFsdWVzCmFyZSBoYXJkY29kZWQgdG8gdGhpcyBleHBs
YWluaW5nIHRoYXQgRFBSIDEwMCBjdXJyZW50IGZpcm13YXJlIGRvZXMgbm90CndyaXRlIHRoaXMg
aW4gdGhlIGJsYWggYmxhaCBEUENEIGNvcnJlY3RseSBhbmQgaGVuY2UgaGFyZGNvZGluZyAKZm9y
IG5vdwoKc2FtZSBmb3IgQ1AyNTIwCgo+ICsKPiArCXN3aXRjaCAoZGF0YS0+cGh5X3BhdHRlcm4p
IHsKPiArCWNhc2UgRFBfUEhZX1RFU1RfUEFUVEVSTl9OT05FOgo+ICsJCURSTV9ERUJVR19LTVMo
IkRpc2FibGUgUGh5IFRlc3QgUGF0dGVyblxuIik7Cj4gKwkJaW50ZWxfZGVfd3JpdGUoZGV2X3By
aXYsIERESV9EUF9DT01QX0NUTChwaXBlKSwgMHgwKTsKPiArCQlicmVhazsKPiArCWNhc2UgRFBf
UEhZX1RFU1RfUEFUVEVSTl9EMTBfMjoKPiArCQlEUk1fREVCVUdfS01TKCJTZXQgRDEwLjIgUGh5
IFRlc3QgUGF0dGVyblxuIik7Cj4gKwkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERESV9EUF9D
T01QX0NUTChwaXBlKSwKPiArCQkJICAgICAgIERESV9EUF9DT01QX0NUTF9FTkFCTEUgfCBERElf
RFBfQ09NUF9DVExfRDEwXzIpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBEUF9QSFlfVEVTVF9QQVRU
RVJOX0VSUk9SX0NPVU5UOgo+ICsJCURSTV9ERUJVR19LTVMoIlNldCBFcnJvciBDb3VudCBQaHkg
VGVzdCBQYXR0ZXJuXG4iKTsKPiArCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRERJX0RQX0NP
TVBfQ1RMKHBpcGUpLAo+ICsJCQkgICAgICAgRERJX0RQX0NPTVBfQ1RMX0VOQUJMRSB8Cj4gKwkJ
CSAgICAgICBERElfRFBfQ09NUF9DVExfU0NSQU1CTEVEXzApOwo+ICsJCWJyZWFrOwo+ICsJY2Fz
ZSBEUF9QSFlfVEVTVF9QQVRURVJOX1BSQlM3Ogo+ICsJCURSTV9ERUJVR19LTVMoIlNldCBQUkJT
NyBQaHkgVGVzdCBQYXR0ZXJuXG4iKTsKPiArCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRERJ
X0RQX0NPTVBfQ1RMKHBpcGUpLAo+ICsJCQkgICAgICAgRERJX0RQX0NPTVBfQ1RMX0VOQUJMRSB8
IERESV9EUF9DT01QX0NUTF9QUkJTNyk7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIERQX1BIWV9URVNU
X1BBVFRFUk5fODBCSVRfQ1VTVE9NOgo+ICsJCURSTV9ERUJVR19LTVMoIlNldCA4MEJpdCBDdXN0
b20gUGh5IFRlc3QgUGF0dGVybiAweDNlMGY4M2UwIDB4MGY4M2UwZjggMHgwMDAwZjgzZVxuIik7
Cj4gKwkJdGVtcCA9IDB4M2UwZjgzZTA7Cj4gKwkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERE
SV9EUF9DT01QX1BBVChwaXBlLCAwKSwgdGVtcCk7Cj4gKwkJdGVtcCA9IDB4MGY4M2UwZjg7Cj4g
KwkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERESV9EUF9DT01QX1BBVChwaXBlLCAxKSwgdGVt
cCk7Cj4gKwkJdGVtcCA9IDB4MDAwMGY4M2U7Cj4gKwkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYs
IERESV9EUF9DT01QX1BBVChwaXBlLCAyKSwgdGVtcCk7Cj4gKwkJaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIERESV9EUF9DT01QX0NUTChwaXBlKSwKPiArCQkJICAgICAgIERESV9EUF9DT01QX0NU
TF9FTkFCTEUgfAo+ICsJCQkgICAgICAgRERJX0RQX0NPTVBfQ1RMX0NVU1RPTTgwKTsKPiArCQli
cmVhazsKPiArCWNhc2UgRFBfUEhZX1RFU1RfUEFUVEVSTl9DUDI1MjA6Cj4gKwkJRFJNX0RFQlVH
X0tNUygiU2V0IEhCUjIgY29tcGxpYW5jZSBQaHkgVGVzdCBQYXR0ZXJuXG4iKTsKPiArCQl0ZW1w
ID0gMHhGQjsKPiArCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRERJX0RQX0NPTVBfQ1RMKHBp
cGUpLAo+ICsJCQkgICAgICAgRERJX0RQX0NPTVBfQ1RMX0VOQUJMRSB8IERESV9EUF9DT01QX0NU
TF9IQlIyIHwKPiArCQkJICAgICAgIHRlbXApOwo+ICsJCWJyZWFrOwo+ICsJZGVmYXVsdDoKPiAr
CQlXQVJOKDEsICJJbnZhbGlkIFBoeSBUZXN0IFBBdHRlcm5cbiIpOwoKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBeXl4gUGF0dGVybgo+ICsJfQo+ICt9Cj4gKwo+ICtz
dGF0aWMgdm9pZAo+ICtpbnRlbF9kcF9hdXRvdGVzdF9waHlfZGRpX2Rpc2FibGUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCkKPiArewo+ICsJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50
ZWxfZGlnX3BvcnQgPSBkcF90b19kaWdfcG9ydChpbnRlbF9kcCk7Cj4gKwlzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXY7Cj4gKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4gKwlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoaW50ZWxfZGlnX3BvcnQtPmJhc2UuYmFzZS5jcnRj
KTsKPiArCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKPiArCXUzMiB0cmFuc19kZGlfZnVu
Y19jdGxfdmFsdWUsIHRyYW5zX2NvbmZfdmFsdWUsIGRwX3RwX2N0bF92YWx1ZTsKPiArCj4gKwl0
cmFuc19kZGlfZnVuY19jdGxfdmFsdWUgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LAo+ICsJCQkJ
CQkgVFJBTlNfRERJX0ZVTkNfQ1RMKHBpcGUpKTsKPiArCXRyYW5zX2NvbmZfdmFsdWUgPSBpbnRl
bF9kZV9yZWFkKGRldl9wcml2LCBQSVBFQ09ORihwaXBlKSk7Cj4gKwlkcF90cF9jdGxfdmFsdWUg
PSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBUR0xfRFBfVFBfQ1RMKHBpcGUpKTsKPiArCj4gKwl0
cmFuc19kZGlfZnVuY19jdGxfdmFsdWUgJj0gfigweDFGIDw8IDI3KTsKClRyeSBhbmQgdXNlIHRo
ZSBhbHJlYWR5IGRlZmluZSBtYWNybyBpbiBpOTE1X3JlZy5oIGZvciwgIApUcmFuc19kZGlfZnVu
Y19jdGxfdmFsdWUgJj0gfiggVFJBTlNfRERJX0ZVTkNfRU5BQkxFICB8IFRHTF9UUkFOU19ERElf
UE9SVF9NQVNLKQoKPiArCXRyYW5zX2NvbmZfdmFsdWUgJj0gflBJUEVDT05GX0VOQUJMRTsKPiAr
CWRwX3RwX2N0bF92YWx1ZSAmPSB+RFBfVFBfQ1RMX0VOQUJMRTsKPiArCj4gKwlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgUElQRUNPTkYocGlwZSksIHRyYW5zX2NvbmZfdmFsdWUpOwo+ICsJaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFRSQU5TX0RESV9GVU5DX0NUTChwaXBlKSwKPiArCQkgICAg
ICAgdHJhbnNfZGRpX2Z1bmNfY3RsX3ZhbHVlKTsKPiArCWludGVsX2RlX3dyaXRlKGRldl9wcml2
LCBUR0xfRFBfVFBfQ1RMKHBpcGUpLCBkcF90cF9jdGxfdmFsdWUpOwo+ICt9Cj4gKwo+ICtzdGF0
aWMgdm9pZAo+ICtpbnRlbF9kcF9hdXRvdGVzdF9waHlfZGRpX2VuYWJsZShzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLCB1aW50OF90IGxhbmVfY250KQo+ICt7Cj4gKwlzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCA9IGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKTsKPiAr
CXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5iYXNlLmRldjsK
PiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKPiAr
CWVudW0gcG9ydCBwb3J0ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UucG9ydDsKPiArCXN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhpbnRlbF9kaWdfcG9ydC0+YmFzZS5iYXNl
LmNydGMpOwo+ICsJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+ICsJdTMyIHRyYW5zX2Rk
aV9mdW5jX2N0bF92YWx1ZSwgdHJhbnNfY29uZl92YWx1ZSwgZHBfdHBfY3RsX3ZhbHVlOwo+ICsK
PiArCXRyYW5zX2RkaV9mdW5jX2N0bF92YWx1ZSA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsCj4g
KwkJCQkJCSBUUkFOU19ERElfRlVOQ19DVEwocGlwZSkpOwo+ICsJdHJhbnNfY29uZl92YWx1ZSA9
IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFBJUEVDT05GKHBpcGUpKTsKPiArCWRwX3RwX2N0bF92
YWx1ZSA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFRHTF9EUF9UUF9DVEwocGlwZSkpOwo+ICsK
PiArCXRyYW5zX2RkaV9mdW5jX2N0bF92YWx1ZSB8PSBUUkFOU19ERElfRlVOQ19FTkFCTEUgfCAo
KHBvcnQgKyAxKSA8PCAyNyk7CgpTYW1lIGhlcmUgcGxlYXNlIHVzZSB0aGUgbWFjcm9zIGZyb20g
aTkxNV9yZWcuaAoKdHJhbnNfZGRpX2Z1bmNfY3RsX3ZhbHVlIHw9IFRSQU5TX0RESV9GVU5DX0VO
QUJMRSB8IFRHTF9UUkFOU19ERElfU0VMRUNUX1BPUlQocG9ydCk7CgpSZWdhcmRzCk1hbmFzaQoK
PiArCXRyYW5zX2NvbmZfdmFsdWUgfD0gUElQRUNPTkZfRU5BQkxFOwo+ICsJZHBfdHBfY3RsX3Zh
bHVlIHw9IERQX1RQX0NUTF9FTkFCTEU7Cj4gKwo+ICsJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYs
IFBJUEVDT05GKHBpcGUpLCB0cmFuc19jb25mX3ZhbHVlKTsKPiArCWludGVsX2RlX3dyaXRlKGRl
dl9wcml2LCBUR0xfRFBfVFBfQ1RMKHBpcGUpLCBkcF90cF9jdGxfdmFsdWUpOwo+ICsJaW50ZWxf
ZGVfd3JpdGUoZGV2X3ByaXYsIFRSQU5TX0RESV9GVU5DX0NUTChwaXBlKSwKPiArCQkgICAgICAg
dHJhbnNfZGRpX2Z1bmNfY3RsX3ZhbHVlKTsKPiArfQo+ICsKPiArdm9pZCBpbnRlbF9kcF9wcm9j
ZXNzX3BoeV9yZXF1ZXN0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gK3sKPiArCXN0cnVj
dCBkcm1fZHBfcGh5X3Rlc3RfcGFyYW1zICpkYXRhID0KPiArCQkmaW50ZWxfZHAtPmNvbXBsaWFu
Y2UudGVzdF9kYXRhLnBoeXRlc3Q7Cj4gKwl1OCBsaW5rX3N0YXR1c1tEUF9MSU5LX1NUQVRVU19T
SVpFXTsKPiArCj4gKwlpZiAoIWludGVsX2RwX2dldF9saW5rX3N0YXR1cyhpbnRlbF9kcCwgbGlu
a19zdGF0dXMpKSB7Cj4gKwkJRFJNX0RFQlVHX0tNUygiZmFpbGVkIHRvIGdldCBsaW5rIHN0YXR1
c1xuIik7Cj4gKwkJcmV0dXJuOwo+ICsJfQo+ICsKPiArCS8qIHJldHJpZXZlIHZzd2luZyAmIHBy
ZS1lbXBoYXNpcyBzZXR0aW5nICovCj4gKwlpbnRlbF9kcF9nZXRfYWRqdXN0X3RyYWluKGludGVs
X2RwLCBsaW5rX3N0YXR1cyk7Cj4gKwo+ICsJaW50ZWxfZHBfYXV0b3Rlc3RfcGh5X2RkaV9kaXNh
YmxlKGludGVsX2RwKTsKPiArCj4gKwlpbnRlbF9kcF9zZXRfc2lnbmFsX2xldmVscyhpbnRlbF9k
cCk7Cj4gKwo+ICsJaW50ZWxfZHBfcGh5X3BhdHRlcm5fdXBkYXRlKGludGVsX2RwKTsKPiArCj4g
KwlpbnRlbF9kcF9hdXRvdGVzdF9waHlfZGRpX2VuYWJsZShpbnRlbF9kcCwgZGF0YS0+bnVtX2xh
bmVzKTsKPiArCj4gKwlkcm1fZHBfc2V0X3BoeV90ZXN0X3BhdHRlcm4oJmludGVsX2RwLT5hdXgs
IGRhdGEsCj4gKwkJCQkgICAgbGlua19zdGF0dXNbRFBfRFBDRF9SRVZdKTsKPiArfQo+ICsKPiAg
c3RhdGljIHU4IGludGVsX2RwX2F1dG90ZXN0X3BoeV9wYXR0ZXJuKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApCj4gIHsKPiAgCXU4IHRlc3RfcmVzdWx0ID0gRFBfVEVTVF9OQUs7Cj4gQEAgLTUw
MjgsNiArNTE2MSw4IEBAIHN0YXRpYyB1OCBpbnRlbF9kcF9hdXRvdGVzdF9waHlfcGF0dGVybihz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ICAJaWYgKHRlc3RfcmVzdWx0ICE9IERQX1RFU1Rf
QUNLKQo+ICAJCURSTV9FUlJPUigiUGh5IHRlc3QgcHJlcGFyYXRpb24gZmFpbGVkXG4iKTsKPiAg
Cj4gKwlpbnRlbF9kcF9wcm9jZXNzX3BoeV9yZXF1ZXN0KGludGVsX2RwKTsKPiArCj4gIAlyZXR1
cm4gdGVzdF9yZXN1bHQ7Cj4gIH0KPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuaAo+IGluZGV4IDBjN2JlOGVkMTQyMy4uMGQyMmEyMzBiMzJkIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAo+IEBAIC0xMTUsNiArMTE1LDcgQEAgdm9p
ZCBpbnRlbF9kcF9oZHJfbWV0YWRhdGFfZW5hYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
Cj4gIAkJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJ
CQkJICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7Cj4gIGJv
b2wgaW50ZWxfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2Rlcik7Cj4gK3ZvaWQgaW50ZWxfZHBfcHJvY2Vzc19waHlfcmVxdWVzdChzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKTsKPiAgCj4gIHN0YXRpYyBpbmxpbmUgdW5zaWduZWQgaW50IGludGVsX2Rw
X3VudXNlZF9sYW5lX21hc2soaW50IGxhbmVfY291bnQpCj4gIHsKPiAtLSAKPiAyLjI0LjAKPiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
