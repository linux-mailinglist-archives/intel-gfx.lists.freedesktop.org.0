Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 483FC3D91BF
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 17:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0010B6E923;
	Wed, 28 Jul 2021 15:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B75E6E923
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 15:21:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212717826"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212717826"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 08:21:19 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="498924923"
Received: from uokonkwo-mobl.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.255.229.128])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 08:21:19 -0700
Date: Wed, 28 Jul 2021 08:21:06 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>;,
 intel-gfx@lists.freedesktop.org
Message-ID: <20210728152106.GB21818@msatwood-mobl>
References: <20210722054338.12891-1-jose.souza@intel.com>
 <20210722054338.12891-8-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210722054338.12891-8-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915/bios: Nuke panel_type
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

T24gV2VkLCBKdWwgMjEsIDIwMjEgYXQgMTA6NDM6MzZQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBBbGwgdGhlIHVzZXJzIHdhcyBjb252ZXJ0ZWQgbm93IHdlIGNhbiBk
cm9wIGl0Lgo+IAo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDM2IC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAg
ICAgICAgIHwgIDEgLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDM3IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gaW5kZXggYTFhMWNjMGM0
NjJmZC4uZDFhZDZkNjI1ZTUyMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5jCj4gQEAgLTIxMSw0MSArMjExLDYgQEAgZ2V0X2x2ZHNfZnBfdGltaW5nKGNv
bnN0IHN0cnVjdCBiZGJfaGVhZGVyICpiZGIsCj4gIAlyZXR1cm4gKGNvbnN0IHN0cnVjdCBsdmRz
X2ZwX3RpbWluZyAqKSgoY29uc3QgdTggKiliZGIgKyBvZnMpOwo+ICB9Cj4gIAo+IC0vKgo+IC0g
KiBQYXJzZSBhbmQgc2V0IHZidC5wYW5lbF90eXBlLCBpdCB3aWxsIGJlIHVzZWQgYnkgdGhlIFZC
VCBibG9ja3MgdGhhdCBhcmUKPiAtICogbm90IGJlaW5nIGNhbGxlZCBmcm9tIHBhcnNlX2ludGVn
cmF0ZWRfcGFuZWwoKSB5ZXQuCj4gLSAqLwo+IC1zdGF0aWMgdm9pZCBwYXJzZV9wYW5lbF90eXBl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+IC0JCQkgICAgIGNvbnN0IHN0cnVjdCBi
ZGJfaGVhZGVyICpiZGIpCj4gLXsKPiAtCWNvbnN0IHN0cnVjdCBiZGJfbHZkc19vcHRpb25zICps
dmRzX29wdGlvbnM7Cj4gLQlpbnQgcmV0LCBwYW5lbF90eXBlOwo+IC0KPiAtCWx2ZHNfb3B0aW9u
cyA9IGZpbmRfc2VjdGlvbihiZGIsIEJEQl9MVkRTX09QVElPTlMpOwo+IC0JaWYgKCFsdmRzX29w
dGlvbnMpCj4gLQkJcmV0dXJuOwo+IC0KPiAtCXJldCA9IGludGVsX29wcmVnaW9uX2dldF9wYW5l
bF90eXBlKGk5MTUpOwo+IC0JaWYgKHJldCA+PSAwKSB7Cj4gLQkJZHJtX1dBUk5fT04oJmk5MTUt
PmRybSwgcmV0ID4gMHhmKTsKPiAtCQlwYW5lbF90eXBlID0gcmV0Owo+IC0JCWRybV9kYmdfa21z
KCZpOTE1LT5kcm0sICJQYW5lbCB0eXBlOiAlZCAoT3BSZWdpb24pXG4iLAo+IC0JCQkgICAgcGFu
ZWxfdHlwZSk7Cj4gLQl9IGVsc2Ugewo+IC0JCWlmIChsdmRzX29wdGlvbnMtPnBhbmVsX3R5cGUg
PiAweGYpIHsKPiAtCQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwKPiAtCQkJCSAgICAiSW52YWxp
ZCBWQlQgcGFuZWwgdHlwZSAweCV4XG4iLAo+IC0JCQkJICAgIGx2ZHNfb3B0aW9ucy0+cGFuZWxf
dHlwZSk7Cj4gLQkJCXJldHVybjsKPiAtCQl9Cj4gLQkJcGFuZWxfdHlwZSA9IGx2ZHNfb3B0aW9u
cy0+cGFuZWxfdHlwZTsKPiAtCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiUGFuZWwgdHlwZTog
JWQgKFZCVClcbiIsCj4gLQkJCSAgICBwYW5lbF90eXBlKTsKPiAtCX0KPiAtCj4gLQlpOTE1LT52
YnQucGFuZWxfdHlwZSA9IHBhbmVsX3R5cGU7Cj4gLX0KPiAtCj4gIC8qIFBhcnNlIGdlbmVyYWwg
cGFuZWwgb3B0aW9ucyAqLwo+ICBzdGF0aWMgdm9pZAo+ICBwYXJzZV9wYW5lbF9vcHRpb25zKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+IEBAIC0yNDg5LDcgKzI0NTQsNiBAQCB2b2lk
IGludGVsX2Jpb3NfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCS8qIEdy
YWIgdXNlZnVsIGdlbmVyYWwgZGVmaW5pdGlvbnMgKi8KPiAgCXBhcnNlX2dlbmVyYWxfZmVhdHVy
ZXMoaTkxNSwgYmRiKTsKPiAgCXBhcnNlX2dlbmVyYWxfZGVmaW5pdGlvbnMoaTkxNSwgYmRiKTsK
PiAtCXBhcnNlX3BhbmVsX3R5cGUoaTkxNSwgYmRiKTsKPiAgCXBhcnNlX3Nkdm9fcGFuZWxfZGF0
YShpOTE1LCBiZGIpOwo+ICAJcGFyc2VfZHJpdmVyX2ZlYXR1cmVzKGk5MTUsIGJkYik7Cj4gIAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGluZGV4IGFkY2FjYjhjYjI0OGEuLjhhMDlmOWVkODgx
YjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtNzI5LDcgKzcyOSw2IEBAIHN0
cnVjdCBpbnRlbF92YnRfZGF0YSB7Cj4gIAl1bnNpZ25lZCBpbnQgaW50X2x2ZHNfc3VwcG9ydDox
Owo+ICAJdW5zaWduZWQgaW50IGRpc3BsYXlfY2xvY2tfbW9kZToxOwo+ICAJdW5zaWduZWQgaW50
IGZkaV9yeF9wb2xhcml0eV9pbnZlcnRlZDoxOwo+IC0JdW5zaWduZWQgaW50IHBhbmVsX3R5cGU6
NDsKPiAgCWludCBsdmRzX3NzY19mcmVxOwo+ICAJdW5zaWduZWQgaW50IGJpb3NfbHZkc192YWw7
IC8qIGluaXRpYWwgW1BDSF9dTFZEUyByZWcgdmFsIGluIFZCSU9TICovCj4gIAllbnVtIGRybV9w
YW5lbF9vcmllbnRhdGlvbiBvcmllbnRhdGlvbjsKPiAtLSAKPiAyLjMyLjAKPiAKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
