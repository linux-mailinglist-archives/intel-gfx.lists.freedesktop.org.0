Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9C827FEB1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 13:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE6B16E048;
	Thu,  1 Oct 2020 11:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE3646E04E
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 11:55:49 +0000 (UTC)
IronPort-SDR: kgagvou8TBPsLaDlpHPsSjy11STq+nKpYkCsrQyMLiXkN7a4XQZX6V17th8XtAHL8HOCXA1OX3
 nN187i/JXPJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="142705293"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="142705293"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 04:55:49 -0700
IronPort-SDR: fAie39hV2pGkhXcDuPDEt8hqMqt/ww6/G7+xwBHJhzvpwhTTWcXDwPWfJP9sS8o3VYZoPCroQg
 BAO718Zwp9rg==
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="503252832"
Received: from lraichel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.36.225])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 04:55:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Surendrakumar Upadhyay\,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>, "Souza\,
 Jose" <jose.souza@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SN6PR11MB34217BC5C5AE290B12C8123CDF330@SN6PR11MB3421.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200928200309.88982-1-jose.souza@intel.com>
 <SN6PR11MB34217BC5C5AE290B12C8123CDF330@SN6PR11MB3421.namprd11.prod.outlook.com>
Date: Thu, 01 Oct 2020 14:56:05 +0300
Message-ID: <87k0wama7e.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display/ehl: Limit eDP to HBR2
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

T24gV2VkLCAzMCBTZXAgMjAyMCwgIlN1cmVuZHJha3VtYXIgVXBhZGh5YXksIFRlamFza3VtYXJY
IiA8dGVqYXNrdW1hcnguc3VyZW5kcmFrdW1hci51cGFkaHlheUBpbnRlbC5jb20+IHdyb3RlOgo+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphCj4gU2VudDogMjkgU2VwdGVtYmVyIDIwMjAgMDE6MzMKPiBUbzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCB2Ml0g
ZHJtL2k5MTUvZGlzcGxheS9laGw6IExpbWl0IGVEUCB0byBIQlIyCj4KPiBSZWNlbnQgdXBkYXRl
IGluIGRvY3VtZW50YXRpb24gZGVmZWF0dXJlZCBlRFAgSEJSMyBmb3IgRUhMIGFuZCBKU0wuCj4K
PiB2MjoKPiAtIFJlbW92ZSBkZWFkIGNvZGUgaW4gZWhsX2dldF9jb21ib19idWZfdHJhbnMoKQo+
Cj4gQlNwZWM6IDMyMjQ3Cj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+Cj4gQ2M6IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAgOSAr
Ky0tLS0tLS0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgfCAxMSAr
KysrKysrKysrLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDggZGVsZXRp
b25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBpbmRl
eCA0ZDA2MTc4Y2Q3NmMuLmVmMDZiN2I4MmJlOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYwo+IEBAIC0xMDgyLDEzICsxMDgyLDggQEAgZWhsX2dldF9jb21i
b19idWZfdHJhbnMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGludCB0eXBlLCBpbnQg
cmF0ZSwKPiAgCQlyZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2hkbWk7Cj4g
IAljYXNlIElOVEVMX09VVFBVVF9FRFA6Cj4gIAkJaWYgKGRldl9wcml2LT52YnQuZWRwLmxvd192
c3dpbmcpIHsKPiAtCQkJaWYgKHJhdGUgPiA1NDAwMDApIHsKPiAtCQkJCSpuX2VudHJpZXMgPSBB
UlJBWV9TSVpFKGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMyk7Cj4gLQkJ
CQlyZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIzOwo+IC0JCQl9
IGVsc2Ugewo+IC0JCQkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlf
dHJhbnNsYXRpb25zX2VkcF9oYnIyKTsKPiAtCQkJCXJldHVybiBpY2xfY29tYm9fcGh5X2RkaV90
cmFuc2xhdGlvbnNfZWRwX2hicjI7Cj4gLQkJCX0KPiArCQkJKm5fZW50cmllcyA9IEFSUkFZX1NJ
WkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyKTsKPiArCQkJcmV0dXJu
IGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMjsKPgo+IEFzIHBlIEJzcGVj
LCBlaGxfZWRwX2hicjIgZG9lcyBub3QgbWF0Y2ggd2l0aCBpY2xfZWRwX2hicjIgdmFsdWVzLiBS
YXRoZXIgSSBzZWUgKGljbF9lZHBfaGJyMiA9PSBlaGxfZWRwX2hicikgdHJ1ZS4gCj4KPiBUaGFu
a3MsCj4gVGVqYXMKClRlamFzLCBwbGVhc2UgZml4IHlvdXIgZW1haWwgcXVvdGluZyB3aGVuIGlu
dGVyYWN0aW5nIG9uIHRoZSBwdWJsaWMKbGlzdHMuIFVzaW5nIE91dGxvb2sgZGVmYXVsdHMgaXMg
bm90IGFjY2VwdGFibGUuIFBsZWFzZSB1c2Ugc2V0dGluZ3MgdG8KcHJlcGVuZCAiPiAiIHRvIGFs
bCBsaW5lcyBvZiB0aGUgZW1haWwgYmVpbmcgcXVvdGVkLiBCZXR0ZXIgeWV0LCB1c2UgYQptYWls
IGNsaWVudCB0aGF0IGdldHMgdGhpcyByaWdodCBvdXQgb2YgdGhlIGJveC4KCkJSLApKYW5pLgoK
Ci0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
