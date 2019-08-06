Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 024A08310D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 13:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C7FA89D61;
	Tue,  6 Aug 2019 11:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6045F89D61
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 11:58:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 04:58:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="192646466"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Aug 2019 04:58:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190718213811.GA25506@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190718204912.24149-1-rodrigo.vivi@intel.com>
 <156348349623.6999.4776587555290794879@skylake-alporthouse-com>
 <20190718211445.GC30177@intel.com>
 <156348515103.7512.11898101333181763201@skylake-alporthouse-com>
 <20190718213811.GA25506@intel.com>
Date: Tue, 06 Aug 2019 15:02:31 +0300
Message-ID: <878ss6jyco.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: We don't need display's
 suspend/resume operations when !HAS_DISPLAY
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

T24gVGh1LCAxOCBKdWwgMjAxOSwgUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PiB3cm90ZToKPiBPbiBUaHUsIEp1bCAxOCwgMjAxOSBhdCAxMDoyNTo1MVBNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4+IFF1b3RpbmcgUm9kcmlnbyBWaXZpICgyMDE5LTA3LTE4IDIyOjE0
OjQ1KQo+PiA+IE9uIFRodSwgSnVsIDE4LCAyMDE5IGF0IDA5OjU4OjE2UE0gKzAxMDAsIENocmlz
IFdpbHNvbiB3cm90ZToKPj4gPiA+IFF1b3RpbmcgUm9kcmlnbyBWaXZpICgyMDE5LTA3LTE4IDIx
OjQ5OjEyKQo+PiA+ID4gPiArdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3Jlc3VtZV9lYXJseShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gPiA+ID4gK3sKPj4gPiA+ID4gKyAgICAg
ICBpZiAoIUhBU19ESVNQTEFZKGk5MTUpKQo+PiA+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJu
Owo+PiA+ID4gPiArCj4+ID4gPiA+ICsgICAgICAgaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMSB8
fCBJU19HRU45X0xQKGk5MTUpKSB7Cj4+ID4gPiA+ICsgICAgICAgICAgICAgICBnZW45X3Nhbml0
aXplX2RjX3N0YXRlKGk5MTUpOwo+PiA+ID4gCj4+ID4gPiBBcmUgeW91IHN1cmUgdGhhdCB3aGF0
ZXZlciBzdGF0ZSB5b3UgYXJlIHJlc3VtaW5nIGZyb20gYWdyZWVzIHdpdGggeW91cgo+PiA+ID4g
bm90aW9uIG9mICFkaXNwbGF5PyBUaGUgc2FuaXRpemUgcm91dGluZXMgYXJlIHN1cHBvc2VkIHRv
IGJlIGFib3V0Cj4+ID4gPiBjbGVhbmluZyB1cCBhZnRlciB0aGlyZCBwYXJ0aWVzIHdobyBkb24n
dCBwbGF5IGJ5IHRoZSBzYW1lIHJ1bGVzLgo+PiA+IAo+PiA+IEkgZG9uJ3QgZXhwZWN0IGFueSBm
dW5jdGlvbiBzZXR0aW5nIGFueSBraW5kIG9mIGRjIHN0YXRlcyB3aGVuIHdlIGRvbid0Cj4+ID4g
aGF2ZSBkaXNwbGF5LiBCZXNpZGVzIHRoZSBwYXRoIHRoYXQgc2V0cyBEQ19TVEFURV9FTiBpcyBh
bmQgbmVlZWRzIHRvCj4+ID4gYmUgc2FuaXRpemVkIGlzIGFsc28gY292ZXJlZCBieSB0aGlzIHBh
dGNoIGFuZCB0aGlzIHNob3VsZG4ndCBoYXBwZW4uCj4+ID4gCj4+ID4gT3IgYW0gSSBtaXNzaW5n
IHNvbWV0aGluZyBlbHNlPwo+PiAKPj4gSXQncyBub3QgYWJvdXQgdXMsIGl0J3MgYWJvdXQgd2hh
dGV2ZXIgZWxzZSBydW5zIGluIGJldHdlZW4uIEFuZAo+PiByZW1lbWJlciAhSEFTX0RJU1BMQVko
KSBpcyBhbHNvIGEgdXNlciBzZXR0aW5nLCBub3QgbWVyZWx5IGEgcmVmbGVjdGlvbgo+PiBvZiBw
cm9iZWQgaHcuCj4KPiBvdWNoLCB3ZSBuZWVkIHRvIGdldCByaWQgb2YgdGhvc2UgcnVudGltZSB3
cml0ZXMgdG8gaW5mbyBzdHJ1Y3QgOi8KPgo+IEkgd29uZGVyIGlmIGl0IHdvcnRoIHRvIGFkZCBh
IGludGVsX2Rpc3BsYXlfc2FuaXRpemUgdG8gYmUgY2FsbGVkCj4gd2hlbiB0b2dnbGluZyBpbmZv
LW51bV9waXBlcyB0byAwIGFsb25nIHdpdGggdGhhdCBEUk1fRVJST1IuLi4KPgo+IG9yIGp1c3Qg
Y2FsbCBpdCBiZWZvcmUgIUhBU19ESVNQTEFZIHdpdGggYSBYWFggY29tbWVudC4uLgo+Cj4gb3Ro
ZXIgaWRlYXM/CgpMZXQncyBzYXkgd2Ugb25seSBzdXBwb3J0ZWQgdXNlciBzcGVjaWZpZWQgZGlz
cGxheSBkaXNhYmxlIHZpYToKCiMgbW9kcHJvYmUgaTkxNQojIG1vZHByb2JlIC1yIGk5MTUKIyBt
b2Rwcm9iZSBpOTE1IGRpc2FibGVfZGlzcGxheT0xCgppLmUuIGJ5IGhhdmluZyBpOTE1IHRha2Ug
b3ZlciBhbmQgZGlzYWJsZSBldmVyeXRoaW5nIGZpcnN0LiBXb3VsZCB0aGF0CmJlIGVub3VnaD8K
CkFsdGVybmF0aXZlbHksIGNvdWxkIHdlIGRvIGRpc3BsYXkgZGlzYWJsZSBieSBmaXJzdCBwcm9i
aW5nIGFsbW9zdApldmVyeXRoaW5nIGFzIHdlIHdvdWxkIHdpdGggZGlzYWJsZV9kaXNwbGF5PTAs
IHRoZW4gdGhyb3dpbmcKLUVQUk9CRV9ERUZFUiBhbmQgaGF2aW5nIHRoZSBlcnJvciBoYW5kbGlu
ZyBjb2RlIGNsZWFuIHVwIHRoZSBoYXJkd2FyZQphZnRlciB1cy4gVGhlIHN1YnNlcXVlbnQgcHJv
YmUgcmV0cnkgd291bGQgdGhlbiBwcm9jZWVkIGFzc3VtaW5nIG5vCmRpc3BsYXkgaGFyZHdhcmUu
CgpUaG91Z2h0cz8KCkJSLApKYW5pLgoKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3Vy
Y2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
