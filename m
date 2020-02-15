Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F6F15FDD8
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2020 10:27:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E8346E8AF;
	Sat, 15 Feb 2020 09:27:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D2746E8AF
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Feb 2020 09:27:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Feb 2020 01:27:21 -0800
X-IronPort-AV: E=Sophos;i="5.70,444,1574150400"; d="scan'208";a="227876152"
Received: from marak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.39.213])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Feb 2020 01:27:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200211185008.30806-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200211185008.30806-1-jose.souza@intel.com>
Date: Sat, 15 Feb 2020 11:27:49 +0200
Message-ID: <87d0ag5hey.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/mst: Set intel_dp_set_m_n()
 for MST slaves
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

T24gVHVlLCAxMSBGZWIgMjAyMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+IENvbW1pdCAxYzlkMmViMjQxNTMgKCJkcm0vaTkxNTogbW92ZSBp
bnRlbF9kcF9zZXRfbV9uKCkgdG8gZW5jb2RlciBmb3IKPiBEREkgcGxhdGZvcm1zIikgbW92ZWQg
dGhlIGludGVsX2RwX3NldF9tX24oKSBmcm9tIGhzd19jcnRjX2VuYWJsZSgpCj4gdG8gaW50ZWxf
ZGRpX3ByZV9lbmFibGVfZHAoKSBidXQgaXQgbWlzc2VkIGFkZCBpdCB0bwo+IGludGVsX21zdF9w
cmVfZW5hYmxlX2RwKCkgY2F1c2luZyBNU1Qgc2xhdmVzIHRvIG5vdCB3b3JrLgo+Cj4gdjI6IE5v
dCBzZXR0aW5nIGludGVsX2RkaV9zZXRfZHBfbXNhKCkgdHdpY2UgZm9yIE1TVCBtYXN0ZXIKPgo+
IEZpeGVzOiAxYzlkMmViMjQxNTMgKCJkcm0vaTkxNTogbW92ZSBpbnRlbF9kcF9zZXRfbV9uKCkg
dG8gZW5jb2RlciBmb3IgRERJIHBsYXRmb3JtcyIpCj4gQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZh
bmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgoKUHVzaGVkIHBhdGNoIDEgdG8gZGlucSwgdGhhbmtzIGZvciB0aGUg
Zml4LgoKQlIsCkphbmkuCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jICAgIHwgNSArKystLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX21zdC5jIHwgMiArKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
Ywo+IGluZGV4IDU0NGUxNTYwM2VmOS4uYTFmZDhmZDY3Yzg1IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gQEAgLTM2MTUsMTAgKzM2MTUsMTEgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCj4gIAkvKiBNU1Qgd2lsbCBjYWxsIGEgc2V0dGluZyBvZiBNU0EgYWZ0ZXIgYW4gYWxs
b2NhdGluZyBvZiBWaXJ0dWFsIENoYW5uZWwKPiAgCSAqIGZyb20gTVNUIGVuY29kZXIgcHJlX2Vu
YWJsZSBjYWxsYmFjay4KPiAgCSAqLwo+IC0JaWYgKCFpbnRlbF9jcnRjX2hhc190eXBlKGNydGNf
c3RhdGUsIElOVEVMX09VVFBVVF9EUF9NU1QpKQo+ICsJaWYgKCFpbnRlbF9jcnRjX2hhc190eXBl
KGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EUF9NU1QpKSB7Cj4gIAkJaW50ZWxfZGRpX3NldF9k
cF9tc2EoY3J0Y19zdGF0ZSwgY29ubl9zdGF0ZSk7Cj4gIAo+IC0JaW50ZWxfZHBfc2V0X21fbihj
cnRjX3N0YXRlLCBNMV9OMSk7Cj4gKwkJaW50ZWxfZHBfc2V0X21fbihjcnRjX3N0YXRlLCBNMV9O
MSk7Cj4gKwl9Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVfZW5hYmxlX2hk
bWkoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gaW5kZXggOWNkNTkxNDE5NTNkLi5kN2JmYTdjMzUw
ZTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMK
PiBAQCAtNDgwLDYgKzQ4MCw4IEBAIHN0YXRpYyB2b2lkIGludGVsX21zdF9wcmVfZW5hYmxlX2Rw
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJCWludGVsX2RkaV9lbmFibGVfcGlw
ZV9jbG9jayhwaXBlX2NvbmZpZyk7Cj4gIAo+ICAJaW50ZWxfZGRpX3NldF9kcF9tc2EocGlwZV9j
b25maWcsIGNvbm5fc3RhdGUpOwo+ICsKPiArCWludGVsX2RwX3NldF9tX24ocGlwZV9jb25maWcs
IE0xX04xKTsKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgaW50ZWxfbXN0X2VuYWJsZV9kcChzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBT
b3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
