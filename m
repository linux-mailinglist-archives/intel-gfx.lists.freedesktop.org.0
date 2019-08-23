Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9597B9A93F
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 09:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7432C6EBE1;
	Fri, 23 Aug 2019 07:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 483696EBD9
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 07:57:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 17:58:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,419,1559545200"; d="scan'208";a="190774793"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga002.jf.intel.com with ESMTP; 22 Aug 2019 17:58:09 -0700
Date: Thu, 22 Aug 2019 17:59:44 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
Message-ID: <20190823005943.GE701@intel.com>
References: <20190823004655.28905-1-madhumitha.tolakanahalli.pradeep@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823004655.28905-1-madhumitha.tolakanahalli.pradeep@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Enabling DSC on Pipe A for TGL
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

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMDU6NDY6NTVQTSAtMDcwMCwgTWFkaHVtaXRoYSBUb2xh
a2FuYWhhbGxpIFByYWRlZXAgd3JvdGU6Cj4gRFNDIHdhcyBub3Qgc3VwcG9ydGVkIG9uIFBpcGUg
QSBmb3IgcHJldmlvdXMgcGxhdGZvcm1zLiBUaWdlcmxha2Ugb253YXJkcywKPiBhbGwgdGhlIHBp
cGVzIHN1cHBvcnQgRFNDLiBIZW5jZSwgdGhlIERTQyBhbmQgRkVDIHJlc3RyaWN0aW9uIG9uCj4g
UGlwZSBBIG5lZWRzIHRvIGJlIHJlbW92ZWQuCj4gCj4gdjI6IENoYW5nZXMgaW4gdGhlIGxvZ2lj
IGFyb3VuZCByZW1vdmluZyB0aGUgcmVzdHJpY3Rpb24gYXJvdW5kCj4gICAgIFBpcGUgQSAoTWFu
YXNpLCBMdWNhcykKPiAKPiBDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYWRodW1pdGhhIFRvbGFrYW5haGFsbGkgUHJhZGVlcCA8
bWFkaHVtaXRoYS50b2xha2FuYWhhbGxpLnByYWRlZXBAaW50ZWwuY29tPgoKTG9va3MgZ29vZCB0
byBtZQoKUmV2aWV3ZWQtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5j
b20+CgpNYW5hc2kKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyB8IDIxICsrKysrKysrKysrKysrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCj4gaW5kZXggNDg4NGM4N2M4ZWQ3Li5lMmM4ZmUyNzRjODQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTE3MzksOCArMTczOSwx
NCBAQCBzdGF0aWMgYm9vbCBpbnRlbF9kcF9zb3VyY2Vfc3VwcG9ydHNfZmVjKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsCj4gIHsKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+ICAKPiAtCXJldHVybiBJTlRFTF9HRU4oZGV2X3By
aXYpID49IDExICYmCj4gLQkJcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09E
RVJfQTsKPiArCS8qIE9uIFRHTCwgRkVDIGlzIHN1cHBvcnRlZCBvbiBhbGwgUGlwZXMgKi8KPiAr
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQo+ICsJCXJldHVybiB0cnVlOwo+ICsKPiAr
CWlmIChJU19HRU4oZGV2X3ByaXYsIDExKSAmJiBwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIg
IT0gVFJBTlNDT0RFUl9BKQo+ICsJCXJldHVybiB0cnVlOwo+ICsKPiArCXJldHVybiBmYWxzZTsK
PiAgfQo+ICAKPiAgc3RhdGljIGJvb2wgaW50ZWxfZHBfc3VwcG9ydHNfZmVjKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsCj4gQEAgLTE3NTUsOCArMTc2MSwxNSBAQCBzdGF0aWMgYm9vbCBpbnRl
bF9kcF9zb3VyY2Vfc3VwcG9ydHNfZHNjKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gIHsK
PiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxf
ZHApOwo+ICAKPiAtCXJldHVybiBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwICYmCj4gLQkJcGlw
ZV9jb25maWctPmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJfQTsKPiArCS8qIE9uIFRHTCwg
RFNDIGlzIHN1cHBvcnRlZCBvbiBhbGwgUGlwZXMgKi8KPiArCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDEyKQo+ICsJCXJldHVybiB0cnVlOwo+ICsKPiArCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDEwICYmCj4gKwkgICAgcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyICE9IFRSQU5T
Q09ERVJfQSkKPiArCQlyZXR1cm4gdHJ1ZTsKPiArCj4gKwlyZXR1cm4gZmFsc2U7Cj4gIH0KPiAg
Cj4gIHN0YXRpYyBib29sIGludGVsX2RwX3N1cHBvcnRzX2RzYyhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLAo+IC0tIAo+IDIuMTcuMQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
