Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D45143899
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 09:45:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D1A6EBF4;
	Tue, 21 Jan 2020 08:45:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3916EBEE
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 08:45:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 00:45:04 -0800
X-IronPort-AV: E=Sophos;i="5.70,345,1574150400"; d="scan'208";a="215465272"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 00:45:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200121125613.21138-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200121125613.21138-1-shawn.c.lee@intel.com>
Date: Tue, 21 Jan 2020 10:44:58 +0200
Message-ID: <87iml5fbat.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: set fail-safe mode if EDID
 corrupt
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMSBKYW4gMjAyMCwgTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4g
d3JvdGU6Cj4gQWNjb3JkaW5nIHRvIGNoYXB0ZXIgNS4xLjEuMiBpbiBEUCBzcGVjLiBXaGVuIHRo
ZSBTaW5rCj4gZGV2aWNlIGNhcGFiaWxpdHkgaXMgdW5rbm93biwgZm9yIGV4YW1wbGUgZHVlIHRv
IGNvcnJ1cHRpb24KPiBvZiBhbiBFRElELiBUaGUgU291cmNlIGRldmljZSBtYXkgZmFsbCBiYWNr
IHRvIGEgc2V0IG9mCj4gZmFsbC1iYWNrIHZpZGVvIHRpbWluZyBmb3JtYXRzIGl0cyBjaG9pY2Uu
IFdoZW4gbm9uZSBvZgo+IHRoZSBmYWxsLWJhY2sgdmlkZW8gdGltaW5nIGZvcm1hdHMgaXMgYWNj
ZXB0YWJsZSwgdGhlCj4gU291cmNlIGRldmljZSBtdXN0IGZhbGwgYmFjayB0byB0aGUgZmFpbCBz
YWZlIG1vZGUsCj4gd2hpY2ggaXMgNjQwIHggNDgwIGF0IDYwSHouCj4KPiBUaGlzIGNoYW5nZSBz
ZXQgc291cmNlIGRyaXZlciBvdXRwdXQgZmFpbC1zYWZlIG1vZGUgYXV0b21hdGljYWxseQo+IGlm
IEVESUQgY29ycnVwdC4gSXQgbWF5IGFsc28gYmVuZWZpdCBsaW5rIGxheWVyIGNvbXBsaWFuY2UK
PiB0ZXN0IGNhc2UgIjQuMi4yLjYgIEVESUQgQ29ycnVwdGlvbiBEZXRlY3Rpb24iLgoKQXJlIHlv
dSBmaXhpbmcgYSByZWFsIHVzZXIgdmlzaWJsZSBidWcgaGVyZSwgdHJ5aW5nIHRvIHBhc3MgY29t
cGxpYW5jZQp0ZXN0cywgb3IganVzdCB0cnlpbmcgaGFyZGVyIHRvIGNvbXBseSB3aXRoIHRoZSBz
cGVjPwoKSSBhbSB3b25kZXJpbmcgdW5kZXIgd2hhdCBjaXJjdW1zdGFuY2VzIHdlIGNvdWxkIGFj
dHVhbGx5IGRpc3BsYXkgYQo2NDB4NDgwIGltYWdlIHdoZW4gZXZlcnl0aGluZyBlbHNlIGZhaWxz
LgoKQlIsCkphbmkuCgo+Cj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRl
bC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6
IENvb3BlciBDaGlvdSA8Y29vcGVyLmNoaW91QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBM
ZWUgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxMyArKysrKysrKysrKy0tCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IGMyN2QzZTdhYzIxOS4uN2UwNzJkYjRh
NTMwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC01
NjU5LDkgKzU2NTksMTggQEAgaW50ZWxfZHBfZ2V0X2VkaWQoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkKPiAgCQkJcmV0dXJuIE5VTEw7Cj4gIAo+ICAJCXJldHVybiBkcm1fZWRpZF9kdXBsaWNh
dGUoaW50ZWxfY29ubmVjdG9yLT5lZGlkKTsKPiAtCX0gZWxzZQo+IC0JCXJldHVybiBkcm1fZ2V0
X2VkaWQoJmludGVsX2Nvbm5lY3Rvci0+YmFzZSwKPiArCX0gZWxzZSB7Cj4gKwkJc3RydWN0IGVk
aWQgKmVkaWQ7Cj4gKwo+ICsJCWVkaWQgPSBkcm1fZ2V0X2VkaWQoJmludGVsX2Nvbm5lY3Rvci0+
YmFzZSwKPiAgCQkJCSAgICAmaW50ZWxfZHAtPmF1eC5kZGMpOwo+ICsKPiArCQlpZiAoaW50ZWxf
Y29ubmVjdG9yLT5iYXNlLmVkaWRfY29ycnVwdCB8fCAhZWRpZCkKPiArCQkJaWYgKGRybV9hZGRf
bW9kZXNfbm9lZGlkKCZpbnRlbF9jb25uZWN0b3ItPmJhc2UsIDY0MCwgNDgwKSkKPiArCQkJCWRy
bV9zZXRfcHJlZmVycmVkX21vZGUoJmludGVsX2Nvbm5lY3Rvci0+YmFzZSwgNjQwLCA0ODApOwo+
ICsKPiArCQlyZXR1cm4gZWRpZDsKPiArCX0KPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQKCi0tIApK
YW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
