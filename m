Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE46538FF95
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 12:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 621EB6E9F9;
	Tue, 25 May 2021 10:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A07A6E9F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 10:55:32 +0000 (UTC)
IronPort-SDR: Wzd+AK0b+hOoTQPDqR4+f2tEMdjHtJfLcOqvFTsujoqPzeI6IskfUDm7ZlLBJ7Fek3h35zlhnc
 37lPn03vN4kg==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="223328802"
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; d="scan'208";a="223328802"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 03:55:30 -0700
IronPort-SDR: u1840cKwX+iXj5V6sMrneNaiQnCSDFeKfeiVDGfWOPowXcN+Fv0X+c9eintuL9k5l1lyXfklf0
 CEipEi1wuJPw==
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; d="scan'208";a="476362765"
Received: from nkosecih-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.38.254])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 03:55:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210524214805.259692-5-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210524214805.259692-1-jose.souza@intel.com>
 <20210524214805.259692-5-jose.souza@intel.com>
Date: Tue, 25 May 2021 13:55:25 +0300
Message-ID: <877djnccbm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/display/adl_p: Disable PSR2
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

T24gTW9uLCAyNCBNYXkgMjAyMSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+IFdlIGFyZSBtaXNzaW5nIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiBz
b21lIHdvcmthcm91bmRzIHRvIGVuYWJsZWQgUFNSMgo+IGluIEFsZGVybGFrZSBQLCBzbyB0byBh
dm9pZCBhbnkgQ0kgcmVwb3J0IG9mIGlzc3VlcyBhcm91bmQgUFNSMgo+IGRpc2FibGluZyBpdCB1
bnRpbCBhbGwgUFNSMiB3b3JrYXJvdW5kcyBhcmUgaW1wbGVtZW50ZWQuCj4KPiBDYzogR3dhbi1n
eWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTAgKysrKysrKysrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jCj4gaW5kZXggYzU3MjEwODYyMjA2Li40NmJkNzc2NjllYWQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBAQCAtNzY1LDYg
Kzc2NSwxNiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLAo+ICAJCXJldHVybiBmYWxzZTsKPiAgCX0KPiAgCj4gKwkvKgo+ICsJ
ICogV2UgYXJlIG1pc3NpbmcgdGhlIGltcGxlbWVudGF0aW9uIG9mIHNvbWUgd29ya2Fyb3VuZHMg
dG8gZW5hYmxlZCBQU1IyCj4gKwkgKiBhbHNvIFdpbmRvd3MgdGVhbSBmb3VuZCBpc3N1ZXMgaW4g
dGhpcyBzdGVwcGluZyB0aGF0IGFyZSBjYXVzaW5nCj4gKwkgKiBpc3N1ZXMgaW4gbW9zdCBQU1Iy
IHBhbmVscy4KCiJ0aGlzIHN0ZXBwaW5nIj8KCk1heWJlIGp1c3Qgc2F5IHdlIG5lZWQgdG8gaW1w
bGVtZW50IGNlcnRhaW4gd29ya2Fyb3VuZHMgYmVmb3JlIGVuYWJsaW5nClBTUjI/CgpCUiwKSmFu
aS4KCgo+ICsJICovCj4gKwlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKSB7Cj4gKwkJZHJt
X2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJQU1IyIGlzIG1pc3NpbmcgdGhlIGltcGxlbWVudGF0
aW9uIG9mIHdvcmthcm91bmRzXG4iKTsKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwl9Cj4gKwo+ICAJ
aWYgKCF0cmFuc2NvZGVyX2hhc19wc3IyKGRldl9wcml2LCBjcnRjX3N0YXRlLT5jcHVfdHJhbnNj
b2RlcikpIHsKPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKPiAgCQkJICAgICJQU1Iy
IG5vdCBzdXBwb3J0ZWQgaW4gdHJhbnNjb2RlciAlc1xuIiwKCi0tIApKYW5pIE5pa3VsYSwgSW50
ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
