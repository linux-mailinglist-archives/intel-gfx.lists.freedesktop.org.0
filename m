Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3DEEB1AE
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 14:56:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 486356E091;
	Thu, 31 Oct 2019 13:56:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D3956E091
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 13:56:06 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 06:56:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,250,1569308400"; d="scan'208";a="206114575"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 31 Oct 2019 06:56:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2019 15:56:02 +0200
Date: Thu, 31 Oct 2019 15:56:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191031135602.GW1208@intel.com>
References: <20191031111407.12493-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031111407.12493-1-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: update rawclk also on resume
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

T24gVGh1LCBPY3QgMzEsIDIwMTkgYXQgMDE6MTQ6MDdQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gU2luY2UgQ05QIGl0J3MgcG9zc2libGUgZm9yIHJhd2NsayB0byBoYXZlIHR3byBkaWZm
ZXJlbnQgdmFsdWVzLCAxOS4yCj4gYW5kIDI0IE1Iei4gSWYgdGhlIHZhbHVlIGluZGljYXRlZCBi
eSBTRlVTRV9TVFJBUCByZWdpc3RlciBpcyBkaWZmZXJlbnQKPiBmcm9tIHRoZSBwb3dlciBvbiBk
ZWZhdWx0IGZvciBQQ0hfUkFXQ0xLX0ZSRVEsIHdlJ2xsIGVuZCB1cCBoYXZpbmcgYQo+IG1pc21h
dGNoIGJldHdlZW4gdGhlIHJhd2NsayBoYXJkd2FyZSBhbmQgc29mdHdhcmUgc3RhdGVzIGFmdGVy
Cj4gc3VzcGVuZC9yZXN1bWUuIE9uIHByZXZpb3VzIHBsYXRmb3JtcyB0aGlzIHVzZWQgdG8gd29y
ayBieSBhY2NpZGVudCwKPiBiZWNhdXNlIHRoZSBwb3dlciBvbiBkZWZhdWx0cyB3b3JrZWQganVz
dCBmaW5lLgo+IAo+IFVwZGF0ZSB0aGUgcmF3Y2xrIGFsc28gb24gcmVzdW1lLiBUaGUgbmF0dXJh
bCBwbGFjZSB0byBkbyB0aGlzIGlzCj4gaW50ZWxfbW9kZXNldF9pbml0X2h3KCksIGhvd2V2ZXIg
VkxWL0NIViBuZWVkIGl0IGRvbmUgYmVmb3JlCj4gaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3
KCkuIFNwbGl0IHRoZSB1cGRhdGUgYWNjb3JkaW5nbHksIGV2ZW4gaWYKPiB0aGF0J3Mgc2xpZ2hs
eSB1Z2x5LiBUaGlzIG1lYW5zIG1vdmluZyB0aGUgdXBkYXRlIGxhdGVyIGZvciBub24tVkxWL0NI
Vgo+IHBsYXRmb3JtcyBpbiBwcm9iZS4KPiAKPiBSZXBvcnRlZC1ieTogU2hhd24gTGVlIDxzaGF3
bi5jLmxlZUBpbnRlbC5jb20+Cj4gQ2M6IFNoYXduIExlZSA8c2hhd24uYy5sZWVAaW50ZWwuY29t
Pgo+IENjOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgICB8IDUg
KysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMgfCA3ICsrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAg
ICAgICAgICAgICAgfCAzIC0tLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKPiBpbmRleCBlNTZhNzVjMDcwNDMuLmUzMTY5N2ZkZmZkMyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTE2NjEw
LDYgKzE2NjEwLDExIEBAIHZvaWQgaW50ZWxfaW5pdF9kaXNwbGF5X2hvb2tzKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCj4gIHZvaWQgaW50ZWxfbW9kZXNldF9pbml0X2h3
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICB7Cj4gKwkvKgo+ICsJICogVkxWL0NI
ViB1cGRhdGUgcmF3Y2xrIGVhcmxpZXIgaW4gaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KCku
Cj4gKwkgKi8KPiArCWlmICghSVNfVkFMTEVZVklFVyhpOTE1KSAmJiAhSVNfQ0hFUlJZVklFVyhp
OTE1KSkKPiArCQlpbnRlbF91cGRhdGVfcmF3Y2xrKGk5MTUpOwo+ICAJaW50ZWxfdXBkYXRlX2Nk
Y2xrKGk5MTUpOwo+ICAJaW50ZWxfZHVtcF9jZGNsa19zdGF0ZSgmaTkxNS0+Y2RjbGsuaHcsICJD
dXJyZW50IENEQ0xLIik7Cj4gIAlpOTE1LT5jZGNsay5sb2dpY2FsID0gaTkxNS0+Y2RjbGsuYWN0
dWFsID0gaTkxNS0+Y2RjbGsuaHc7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiBpbmRleCA3MDdhYzExMGUyNzEuLjk5OTEzM2Qx
ZjA4OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jCj4gQEAgLTUwMTUsNiArNTAxNSwxMyBAQCB2b2lkIGludGVsX3Bvd2Vy
X2RvbWFpbnNfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgYm9vbCByZXN1
bWUpCj4gIAo+ICAJcG93ZXJfZG9tYWlucy0+aW5pdGlhbGl6aW5nID0gdHJ1ZTsKPiAgCj4gKwkv
Kgo+ICsJICogTXVzdCBoYXBwZW4gYmVmb3JlIHBvd2VyIGRvbWFpbiBpbml0IG9uIFZMVi9DSFYs
IHRoZSByZXN0IHVwZGF0ZQo+ICsJICogcmF3Y2xrIGxhdGVyIGluIGludGVsX21vZGVzZXRfaW5p
dF9odygpLgo+ICsJICovCj4gKwlpZiAoSVNfVkFMTEVZVklFVyhpOTE1KSB8fCBJU19DSEVSUllW
SUVXKGk5MTUpKQo+ICsJCWludGVsX3VwZGF0ZV9yYXdjbGsoaTkxNSk7CgpDYW4ndCB3ZSBqdXN0
IGRvIGl0IGhlcmUgdW5jb25kaXRpb25hbGx5PyBJIHRoaW5rIHRoaXMgZ2V0cyBjYWxsZWQgb24K
dGhlIHJlc3VtZSBwYXRoIGFzIHdlbGwuCgo+ICsKPiAgCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0g
MTEpIHsKPiAgCQlpY2xfZGlzcGxheV9jb3JlX2luaXQoaTkxNSwgcmVzdW1lKTsKPiAgCX0gZWxz
ZSBpZiAoSVNfQ0FOTk9OTEFLRShpOTE1KSkgewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IGlu
ZGV4IDIxMjczYjUxNmRiZS4uNjI5MDYzMzYyOThhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jCj4gQEAgLTI5Niw5ICsyOTYsNiBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRf
cHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAlpZiAocmV0KQo+ICAJCWdv
dG8gY2xlYW51cF92Z2FfY2xpZW50Owo+ICAKPiAtCS8qIG11c3QgaGFwcGVuIGJlZm9yZSBpbnRl
bF9wb3dlcl9kb21haW5zX2luaXRfaHcoKSBvbiBWTFYvQ0hWICovCj4gLQlpbnRlbF91cGRhdGVf
cmF3Y2xrKGk5MTUpOwo+IC0KPiAgCWludGVsX3Bvd2VyX2RvbWFpbnNfaW5pdF9odyhpOTE1LCBm
YWxzZSk7Cj4gIAo+ICAJaW50ZWxfY3NyX3Vjb2RlX2luaXQoaTkxNSk7Cj4gLS0gCj4gMi4yMC4x
CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
