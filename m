Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D0417EC91
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 00:19:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 115606E5B6;
	Mon,  9 Mar 2020 23:19:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3D16E5B6
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 23:19:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 16:19:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="234147876"
Received: from przanoni-mobl.jf.intel.com ([10.24.15.100])
 by fmsmga007.fm.intel.com with ESMTP; 09 Mar 2020 16:19:10 -0700
Message-ID: <3ba4af80fc59f5a7ecfac3b7ebbbcf9caec12118.camel@intel.com>
From: Paulo Zanoni <paulo.r.zanoni@intel.com>
To: Karthik B S <karthik.b.s@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 09 Mar 2020 16:19:10 -0700
In-Reply-To: <20200306113927.16904-5-karthik.b.s@intel.com>
References: <20200306113927.16904-1-karthik.b.s@intel.com>
 <20200306113927.16904-5-karthik.b.s@intel.com>
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915: Add checks specific to async
 flips
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

RW0gc2V4LCAyMDIwLTAzLTA2IMOgcyAxNzowOSArMDUzMCwgS2FydGhpayBCIFMgZXNjcmV2ZXU6
Cj4gU3VwcG9ydCBhZGRlZCBvbmx5IGZvciBhc3luYyBmbGlwcyBvbiBwcmltYXJ5IHBsYW5lLgo+
IElmIGZsaXAgaXMgcmVxdWVzdGVkIG9uIGFueSBvdGhlciBwbGFuZSwgcmVqZWN0IGl0Lgo+IAo+
IFNpZ25lZC1vZmYtYnk6IEthcnRoaWsgQiBTIDxrYXJ0aGlrLmIuc0BpbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMjkgKysr
KysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4
IDI1ZmFkNWQwMWU2Ny4uYThkZTA4YzM3NzNlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTQ3MzIsNiArMTQ3MzIsMzEgQEAgc3Rh
dGljIGJvb2wgaW50ZWxfY3B1X3RyYW5zY29kZXJzX25lZWRfbW9kZXNldChzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwKPiAgCXJldHVybiBmYWxzZTsKPiAgfQo+ICAKPiArc3RhdGlj
IGludCBpbnRlbF9hdG9taWNfY2hlY2tfYXN5bmMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpCj4gK3sKPiArCXN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lOwo+ICsJc3RydWN0IGRybV9w
bGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGU7Cj4gKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZTsKPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+ICsJaW50IGksIGo7Cj4gKwo+
ICsJLypGSVhNRTogQXN5bmMgZmxpcCBpcyBvbmx5IHN1cHBvcnRlZCBmb3IgcHJpbWFyeSBwbGFu
ZSBjdXJyZW50bHkKPiArCSAqIFN1cHBvcnQgZm9yIG92ZXJsYXlzIHRvIGJlIGFkZGVkLgo+ICsJ
ICovCj4gKwlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgY3J0
Y19zdGF0ZSwgaSkgewo+ICsJCWlmIChjcnRjX3N0YXRlLT51YXBpLmFzeW5jX2ZsaXApIHsKPiAr
CQkJZm9yX2VhY2hfbmV3X3BsYW5lX2luX3N0YXRlKCZzdGF0ZS0+YmFzZSwKPiArCQkJCQkJICAg
IHBsYW5lLCBwbGFuZV9zdGF0ZSwgaikgewo+ICsJCQkJaWYgKHBsYW5lLT50eXBlICE9IERSTV9Q
TEFORV9UWVBFX1BSSU1BUlkpIHsKPiArCQkJCQlEUk1fRVJST1IoIkFzeW5jIGZsaXBzIGlzIE5P
VCBzdXBwb3J0ZWQgZm9yIG5vbi1wcmltYXJ5IHBsYW5lXG4iKTsKCk15IHVuZGVyc3RhbmRpbmcg
aXMgdGhhdCB0aGlzIGlzIG5vdCBhIGNhc2Ugb2YgRFJNX0VSUk9SLCBzaW5jZSBpdCdzCmp1c3Qg
dXNlciBzcGFjZSBkb2luZyBzb21ldGhpbmcgaXQgc2hvdWxkbid0LgoKSGF2ZSB3ZSBjaGVja2Vk
IGlmIHhmODYtdmlkZW8tbW9kZXNldHRpbmcgb3Igc29tZSBvdGhlciBjdXJyZW50IHVzZXIKc3Bh
Y2UgaXMgZ29pbmcgdG8gdHJ5IHRoZXNlIGNhbGxzIG9uIG5vbi1wcmltYXJ5IHdoZW4gYXN5bmNf
ZmxpcHMgYXJlCmVuYWJsZWQ/IFNwZWNpZmljYWxseSwgaG93IGRvZXMgaXQgcmVhY3Qgd2hlbiBp
dCBnZXRzIHRoZSBFSU5WQUw/IFdlCnNob3VsZCB0cnkgdG8gYXZvaWQgdGhlIGNhc2Ugd2hlcmUg
d2UgcmVsZWFzZSBhIEtlcm5lbCB0aGF0IGN1cnJlbnQKdXNlciBzcGFjZSBpcyBub3QgcHJlcGFy
ZWQgZm9yIChldmVuIGlmIGl0J3Mgbm90IHRoZSBLZXJuZWwncyBmYXVsdCkuCgoKPiArCQkJCQly
ZXR1cm4gLUVJTlZBTDsKPiArCQkJCX0KPiArCQkJfQo+ICsJCX0KPiArCX0KPiArCXJldHVybiAw
Owo+ICt9Cj4gKwo+ICAvKioKPiAgICogaW50ZWxfYXRvbWljX2NoZWNrIC0gdmFsaWRhdGUgc3Rh
dGUgb2JqZWN0Cj4gICAqIEBkZXY6IGRybSBkZXZpY2UKPiBAQCAtMTQ3NjAsNiArMTQ3ODUsMTAg
QEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwK
PiAgCWlmIChyZXQpCj4gIAkJZ290byBmYWlsOwo+ICAKPiArCXJldCA9IGludGVsX2F0b21pY19j
aGVja19hc3luYyhzdGF0ZSk7Cj4gKwlpZiAgKHJldCkKPiArCQlnb3RvIGZhaWw7Cj4gKwo+ICAJ
Zm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRj
X3N0YXRlLAo+ICAJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgewo+ICAJCWlmICghbmVlZHNf
bW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpIHsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
