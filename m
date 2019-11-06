Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2999CF1B1E
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 17:24:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75BC36EDD0;
	Wed,  6 Nov 2019 16:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B61096EDD0
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 16:24:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 08:24:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="196255047"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga008.jf.intel.com with ESMTP; 06 Nov 2019 08:24:50 -0800
Date: Wed, 6 Nov 2019 21:55:12 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: "Tang, CQ" <cq.tang@intel.com>
Message-ID: <20191106162512.GA8066@intel.com>
References: <20191106160819.25233-1-ramalingam.c@intel.com>
 <1D440B9B88E22A4ABEF89F9F1F81BC29E947BA8A@FMSMSX103.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1D440B9B88E22A4ABEF89F9F1F81BC29E947BA8A@FMSMSX103.amr.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915: lookup for mem_region of a
 mem_type
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMS0wNiBhdCAyMTo0NTo0NCArMDUzMCwgVGFuZywgQ1Egd3JvdGU6Cj4gCj4gCj4g
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1n
ZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZgo+ID4gUmFtYWxp
bmdhbSBDCj4gPiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDYsIDIwMTkgODowOCBBTQo+ID4g
VG86IGludGVsLWdmeCA8aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZz47IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtCj4gPiB3aWxzb24uY28udWs+Cj4gPiBDYzogQXVsZCwgTWF0dGhl
dyA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiA+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRD
SCB2NCAxLzJdIGRybS9pOTE1OiBsb29rdXAgZm9yIG1lbV9yZWdpb24gb2YgYQo+ID4gbWVtX3R5
cGUKPiA+IAo+ID4gTG9va3VwIGZ1bmN0aW9uIHRvIHJldHJpZXZlIHRoZSBwb2ludGVyIHRvIGEg
bWVtb3J5IHJlZ2lvbiBvZiBhIG1lbV90eXBlLgo+IAo+IFdlIGNvdWxkIGhhdmUgbXVsdGktcmVn
aW9ucyB3aXRoIHRoZSBzYW1lIG1lbW9yeSB0eXBlLiBZb3VyIGNvZGUganVzdCByZXR1cm5zIHRo
ZSBmaXJzdCBvbmUuIElzIHRoaXMgZGVzaXJlZD8KQXQgcHJlc2VudCBldmVuIGk5MTVfZ2VtX29i
amVjdF9jcmVhdGVfbG1lbSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtCnJldHJpZXZlIHRo
ZSBtZW1fcmVnaW9uIGluIHRoaXMgbWFubmVyIG9ubHkuIG1heSBiZSB3aGVuIHdlIGhhdmUgbW9y
ZQpyZWdpb25faWRzIHBlciB0eXBlIHdlIGNvdWxkIGV4dGVuZCBiYXNlZCBvbiBhIG5lZWQuIFRo
aXMgaXMganVzdCBteQp0aG91Z2h0cy4KCi1SYW0KPiAKPiAtLUNRCj4gCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiA+IGNjOiBN
YXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgfCAxMiArKysrKysrKysrKysKPiA+
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaCB8ICAzICsrKwo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYwo+ID4gaW5kZXggYmFhZWFlY2M2NGFm
Li5hZTg5OWRmN2ExYzIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9tZW1vcnlfcmVnaW9uLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21l
bW9yeV9yZWdpb24uYwo+ID4gQEAgLTE2LDYgKzE2LDE4IEBAIGNvbnN0IHUzMiBpbnRlbF9yZWdp
b25fbWFwW10gPSB7Cj4gPiAgCVtJTlRFTF9SRUdJT05fU1RPTEVOXSA9IFJFR0lPTl9NQVAoSU5U
RUxfTUVNT1JZX1NUT0xFTiwKPiA+IDApLCAgfTsKPiA+IAo+ID4gK3N0cnVjdCBpbnRlbF9tZW1v
cnlfcmVnaW9uICoKPiA+ICtpbnRlbF9tZW1vcnlfcmVnaW9uX2xvb2t1cChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKPiA+ICsJCQkgICBlbnVtIGludGVsX21lbW9yeV90eXBlIG1lbV90
eXBlKQo+ID4gK3sKPiA+ICsJZW51bSBpbnRlbF9yZWdpb25faWQgaWQ7Cj4gPiArCj4gPiArCWZv
ciAoaWQgPSBJTlRFTF9SRUdJT05fU01FTTsgaWQgPCBJTlRFTF9SRUdJT05fVU5LTk9XTjsKPiA+
IGlkKyspCj4gPiArCQlpZiAoaTkxNS0+bW0ucmVnaW9uc1tpZF0tPnR5cGUgPT0gbWVtX3R5cGUp
Cj4gPiArCQkJcmV0dXJuIGk5MTUtPm1tLnJlZ2lvbnNbaWRdOwo+ID4gKwlyZXR1cm4gTlVMTDsK
PiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIHU2NAo+ID4gIGludGVsX21lbW9yeV9yZWdpb25fZnJl
ZV9wYWdlcyhzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAo+ID4gIAkJCSAgICAgICBz
dHJ1Y3QgbGlzdF9oZWFkICpibG9ja3MpCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX21lbW9yeV9yZWdpb24uaAo+ID4gaW5kZXggMjM4NzIyMDA5Njc3Li5kMjEwOTM2YzRkNzIg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9u
LmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaAo+
ID4gQEAgLTEyNSw1ICsxMjUsOCBAQCB2b2lkIGludGVsX21lbW9yeV9yZWdpb25fcHV0KHN0cnVj
dAo+ID4gaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtKTsKPiA+IAo+ID4gIGludCBpbnRlbF9tZW1v
cnlfcmVnaW9uc19od19wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7ICB2b2lk
Cj4gPiBpbnRlbF9tZW1vcnlfcmVnaW9uc19kcml2ZXJfcmVsZWFzZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSk7Cj4gPiArc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKgo+ID4gK2lu
dGVsX21lbW9yeV9yZWdpb25fbG9va3VwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+
ID4gKwkJCSAgIGVudW0gaW50ZWxfbWVtb3J5X3R5cGUgbWVtX3R5cGUpOwo+ID4gCj4gPiAgI2Vu
ZGlmCj4gPiAtLQo+ID4gMi4yMC4xCj4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gPiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
