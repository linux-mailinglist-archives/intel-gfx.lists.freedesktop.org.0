Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 232C928495D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 11:29:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F0086E419;
	Tue,  6 Oct 2020 09:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 243896E419
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 09:29:50 +0000 (UTC)
IronPort-SDR: vxJMx7B0wfMS0oGfplfsBXoUao0Q+swjadIknwe1GV3haRTrZRbrLrvn8GfT1NOWS8BOJrtrPc
 VWt/WmU4fOkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="152190915"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="152190915"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:29:44 -0700
IronPort-SDR: DvAD0KMPVNbXT1c1zr5ezLi9JtVozpAfTnUyvoS56+sQ5n2ACvtC52atHsCtWauLwDfm1fGmW3
 te0s8ecZhO7Q==
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="527265276"
Received: from kchandar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.35])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:29:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20201001151640.14590-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
 <20201001151640.14590-4-ville.syrjala@linux.intel.com>
Date: Tue, 06 Oct 2020 12:30:06 +0300
Message-ID: <87lfgjk8gx.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915: Wait for eDP panel power
 cycle delay on reboot on all platforms
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwMSBPY3QgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBFeHRlbmQgdGhlIGVEUCBwYW5lbCBwb3dlciBjeWNsZSBkZWxh
eSB3YWl0IG9uIHJlYm9vdCBoYW5kbGluZwo+IHRvIGNvdmVyIGFsbCBwbGF0Zm9ybXMuIE5vIHJl
YXNvbiB0byB0aGluayB0aGF0IFZMVi9DSFYgYXJlCj4gaW4gYW55IHdheSBzcGVjaWFsIHNpbmNl
IHRoZSBkb2N1bWVudGF0aW9uIHN0YXRlcyB0aGF0IHRoZQo+IGhhcmR3YXJlIHBvd2VyIGN5Y2xl
IGRlbGF5IGdvZXMgYmFjayB0byBpdHMgZGVmYXVsdCB2YWx1ZSBvbgo+IHJlc2V0LCBhbmQgdGhh
dCBtYXkgbm90IGJlIGVub3VnaCBmb3IgYWxsIHBhbmVscy4KPgo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1i
eTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgIHwgNSArKy0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmggIHwgMSArCj4gIDMgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCj4gaW5kZXggNTc0MjM5NGM4MjkyLi5lM2ZjZDI1OTFhNmMgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBAQCAtNTE3NSw2ICs1MTc1LDcg
QEAgdm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
IGVudW0gcG9ydCBwb3J0KQo+ICAJZW5jb2Rlci0+Z2V0X2h3X3N0YXRlID0gaW50ZWxfZGRpX2dl
dF9od19zdGF0ZTsKPiAgCWVuY29kZXItPmdldF9jb25maWcgPSBpbnRlbF9kZGlfZ2V0X2NvbmZp
ZzsKPiAgCWVuY29kZXItPnN1c3BlbmQgPSBpbnRlbF9kcF9lbmNvZGVyX3N1c3BlbmQ7Cj4gKwll
bmNvZGVyLT5zaHV0ZG93biA9IGludGVsX2RwX2VuY29kZXJfc2h1dGRvd247Cj4gIAllbmNvZGVy
LT5nZXRfcG93ZXJfZG9tYWlucyA9IGludGVsX2RkaV9nZXRfcG93ZXJfZG9tYWluczsKPiAgCj4g
IAllbmNvZGVyLT50eXBlID0gSU5URUxfT1VUUFVUX0RESTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCj4gaW5kZXggZTBmMmU5MjM2Nzg1Li4zYTE0YTAwM2I0YzkgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTY2ODQsNyAr
NjY4NCw3IEBAIHZvaWQgaW50ZWxfZHBfZW5jb2Rlcl9zdXNwZW5kKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICppbnRlbF9lbmNvZGVyKQo+ICAJCWVkcF9wYW5lbF92ZGRfb2ZmX3N5bmMoaW50ZWxfZHAp
Owo+ICB9Cj4gIAo+IC1zdGF0aWMgdm9pZCBpbnRlbF9kcF9lbmNvZGVyX3NodXRkb3duKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICppbnRlbF9lbmNvZGVyKQo+ICt2b2lkIGludGVsX2RwX2VuY29kZXJf
c2h1dGRvd24oc3RydWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29kZXIpCj4gIHsKPiAgCXN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoaW50ZWxfZW5jb2Rlcik7
Cj4gIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKPiBAQCAtODAyOSw4ICs4MDI5LDcgQEAgYm9v
bCBpbnRlbF9kcF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCWlu
dGVsX2VuY29kZXItPmdldF9jb25maWcgPSBpbnRlbF9kcF9nZXRfY29uZmlnOwo+ICAJaW50ZWxf
ZW5jb2Rlci0+dXBkYXRlX3BpcGUgPSBpbnRlbF9wYW5lbF91cGRhdGVfYmFja2xpZ2h0Owo+ICAJ
aW50ZWxfZW5jb2Rlci0+c3VzcGVuZCA9IGludGVsX2RwX2VuY29kZXJfc3VzcGVuZDsKPiAtCWlm
IChJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9wcml2KSkKPiAt
CQlpbnRlbF9lbmNvZGVyLT5zaHV0ZG93biA9IGludGVsX2RwX2VuY29kZXJfc2h1dGRvd247Cj4g
KwlpbnRlbF9lbmNvZGVyLT5zaHV0ZG93biA9IGludGVsX2RwX2VuY29kZXJfc2h1dGRvd247Cj4g
IAlpZiAoSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpIHsKPiAgCQlpbnRlbF9lbmNvZGVyLT5wcmVf
cGxsX2VuYWJsZSA9IGNodl9kcF9wcmVfcGxsX2VuYWJsZTsKPiAgCQlpbnRlbF9lbmNvZGVyLT5w
cmVfZW5hYmxlID0gY2h2X3ByZV9lbmFibGVfZHA7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuaAo+IGluZGV4IDY2ODU0YWFiOTg4Ny4uNzQ2NjQ5OGQ0YzAxIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAo+IEBAIC01Nyw2ICs1Nyw3IEBA
IHZvaWQgaW50ZWxfZHBfc2lua19zZXRfZGVjb21wcmVzc2lvbl9zdGF0ZShzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLAo+ICAJCQkJCSAgIGJvb2wgZW5hYmxlKTsKPiAgdm9pZCBpbnRlbF9kcF9l
bmNvZGVyX3Jlc2V0KHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2Rlcik7Cj4gIHZvaWQgaW50ZWxf
ZHBfZW5jb2Rlcl9zdXNwZW5kKHN0cnVjdCBpbnRlbF9lbmNvZGVyICppbnRlbF9lbmNvZGVyKTsK
PiArdm9pZCBpbnRlbF9kcF9lbmNvZGVyX3NodXRkb3duKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpp
bnRlbF9lbmNvZGVyKTsKPiAgdm9pZCBpbnRlbF9kcF9lbmNvZGVyX2ZsdXNoX3dvcmsoc3RydWN0
IGRybV9lbmNvZGVyICplbmNvZGVyKTsKPiAgaW50IGludGVsX2RwX2NvbXB1dGVfY29uZmlnKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJCQkgICAgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKnBpcGVfY29uZmlnLAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
