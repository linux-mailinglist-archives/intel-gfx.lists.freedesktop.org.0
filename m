Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD96CA126
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 17:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7796EA19;
	Thu,  3 Oct 2019 15:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B45CE6EA19
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 15:28:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 08:28:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,252,1566889200"; d="scan'208";a="185948287"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 03 Oct 2019 08:28:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Oct 2019 18:28:25 +0300
Date: Thu, 3 Oct 2019 18:28:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191003152825.GO1208@intel.com>
References: <20191002162505.30716-1-ville.syrjala@linux.intel.com>
 <20191002162505.30716-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002162505.30716-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/mst: Document the userspace
 fail with possible_crtcs
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

T24gV2VkLCBPY3QgMDIsIDIwMTkgYXQgMDc6MjU6MDVQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IFRvIGF2b2lkIGFjY2lkZW50YWxseSBicmVha2luZyB0aGluZ3MgaW4gdGhlIGZ1
dHVyZSBhZGQgYQo+IGNvbW1lbnQgZXhwbGFpbmluZyB3aHkgd2UgbWlzY29uZmlndXJlIHRoZSBw
aXBlX21hc2suCj4gCj4gQWxzbyB0b3NzIGluIGEgVE9ETyBmb3IgaW52ZXN0aWdhdGluZyBhIHNp
bmdsZSBlbmNvZGVyCj4gYXBwcm9hY2ggYXMgb3Bwb3NlZCB0byB0aGUgZW5jb2Rlci1wZXItcGlw
ZSBhcHByb2FjaC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX21zdC5jIHwgMTIgKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
MiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX21zdC5jCj4gaW5kZXggN2JlODJjZjkyNmNhLi5jYjMwNDdmZTJkMDIgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiBAQCAtNjE1LDYgKzYx
NSwxOCBAQCBpbnRlbF9kcF9jcmVhdGVfZmFrZV9tc3RfZW5jb2RlcihzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwgZW51bQo+ICAJaW50ZWxfZW5jb2Rlci0+cG93ZXJf
ZG9tYWluID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UucG93ZXJfZG9tYWluOwo+ICAJaW50ZWxfZW5j
b2Rlci0+cG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7Cj4gIAlpbnRlbF9lbmNvZGVy
LT5jbG9uZWFibGUgPSAwOwo+ICsJLyoKPiArCSAqIFRoaXMgaXMgd3JvbmcsIGJ1dCBicm9rZW4g
dXNlcnNwYWNlIHVzZXMgdGhlIGludGVyc2VjdGlvbgo+ICsJICogb2YgcG9zc2libGVfY3J0Y3Mg
b2YgYWxsIHRoZSBlbmNvZGVycyBvZiBhIGdpdmVuIGNvbm5lY3Rvcgo+ICsJICogdG8gZmlndXJl
IG91dCB3aGljaCBjcnRjcyBjYW4gZHJpdmUgc2FpZCBjb25uZWN0b3IuIFdoYXQKPiArCSAqIHNo
b3VsZCBiZSB1c2VkIGluc3RlYWQgaXMgdGhlIHVuaW9uIG9mIHBvc3NpYmxlX2NydGNzLgo+ICsJ
ICogVG8ga2VlcCBzdWNoIHVzZXJzcGFjZSBmdW5jdGlvbmluZyB3ZSBtdXN0IG1pc2NvbmZpZ3Vy
ZQo+ICsJICogdGhpcyB0byBtYWtlIHN1cmUgdGhlIGludGVyc2VjdGlvbiBpcyBub3QgZW1wdHkg
OigKPiArCSAqCj4gKwkgKiBUT0RPOiBmaWd1cmUgb3V0IGlmIHdlIGNvdWxkIGVsaW1pbmF0ZSB0
aGUgcGVyLXBpcGUKPiArCSAqIGVuY29kZXJzIGhlcmUgYW5kIGp1c3QgaGF2ZSBhIHNpbmdsZSBl
bmNvZGVyIGZvciBlYWNoCj4gKwkgKiBNU1QgY29ubmVjdG9yLiBUaGF0IHdvdWxkIHNpZGVzdGVw
IHRoZSB1c2Vyc3BhY2UgYnVnLgoKVGhhdCBvZiBjb3Vyc2Ugd29uJ3Qgd29yayBzaW5jZSB3ZSBj
YW4ndCByZWdpc3RlciBlbmNvZGVycyBkeW5hbWljYWxseS4KSSBndWVzcyB3ZSdsbCBqdXN0IGhh
dmUgdG8gbGl2ZSB3aXRoIHRoaXMgc2xpZ2h0IGRpc2NyZXBhbmN5IHdpdGggdGhlCnBvc3NpYmxl
X2NydGNzLiBXZSBjb3VsZCBtYWtlIHRoZSBlbmNvZGVyPC0+cGlwZSBhc3NpZ25tZW50IHRvdGFs
bHkKZmxleGlibGUgYnV0IHRoYXQgd291bGRuJ3QgYWN0dWFsbHkgY2hhbmdlIGFueXRoaW5nLiBX
ZSBzdGlsbCBnZXQgdG8KcGljayBvbmUgYmFzZWQgb24gd2hhdGV2ZXIgcmVhc29uIHdlIGNhbiB0
aGluayBvZiwgYW5kIHVzaW5nIHRoZSBwaXBlCmZvciB0aGF0IHNlZW1zIGFzIGdvb2QgYSByZWFz
b24gYXMgYW55LgoKV2hhdCB3ZSBjb3VsZCB0cnkgdG8gcmVtb3ZlIGlzIGhhdmluZyBzZXBhcmF0
ZSBNU1QgZW5jb2RlcnMgZm9yIGVhY2gKRERJIHBvcnQuIEJ1dCB0aGF0IHdvdWxkIG1ha2UgZW5j
b2Rlci0+cG9ydCBub3Qgd29yayBmb3IgTVNUIGFnYWluLiBTbwpkZWZpbnRpZWx5IGhhcyBkb3du
c2lkZXMsIGFuZCBkb2Vucyd0IGRvIGFueXRoaW5nIGZvciB0aGUgcG9zc2libGVfY3J0Y3MKdGhp
bmcuCgpCYWguIEknbGwganVzdCBkcm9wIHRoZSBUT0RPLgoKPiArCSAqLwo+ICAJaW50ZWxfZW5j
b2Rlci0+cGlwZV9tYXNrID0gfjA7Cj4gIAo+ICAJaW50ZWxfZW5jb2Rlci0+Y29tcHV0ZV9jb25m
aWcgPSBpbnRlbF9kcF9tc3RfY29tcHV0ZV9jb25maWc7Cj4gLS0gCj4gMi4yMS4wCgotLSAKVmls
bGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
