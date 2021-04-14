Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FA135F0A7
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 11:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 715C16E8FF;
	Wed, 14 Apr 2021 09:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7795A6E8FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 09:19:49 +0000 (UTC)
IronPort-SDR: hKdCC18OkqPzVqmB60UPMGypw+CDJg5MynrL2Dc1OyJNfbP4Kv9QUB9SIGLNLJpv6OkQ24/V3H
 5tRPWyI8uZew==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194167904"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="194167904"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:19:48 -0700
IronPort-SDR: 0mRAp/TP3vI6wdaU1I6vihnbB6AWThJZH23BdAgeYR1aoKTeFbkXAlgrMmIeop7ibb2+SL1BsH
 s99TKO1cWJzQ==
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="424647145"
Received: from dgeiger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.90])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:19:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210412054607.18133-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
 <20210412054607.18133-4-ville.syrjala@linux.intel.com>
Date: Wed, 14 Apr 2021 12:19:44 +0300
Message-ID: <87im4pfcjz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Disable LTTPR detection on
 GLK once again
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

T24gTW9uLCAxMiBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBUaGUgZ2xrIGRpc3BsYXkgdmVyc2lvbiBjaGFuZ2UgaXMgY2F1
c2luZyB1cyB0byBhZ2FpbiBhdHRlbXB0Cj4gTFRUUFIgZGV0ZWN0aW9uIG9uIGdsay4gV2UgbXVz
dCBub3QgZG8gdGhhIHNpbmNlIGdsayBkb2Vzbid0Cj4gaGF2ZSBhIGxvbmcgZW5vdWdoIEFVWCB0
aW1lb3V0LiBSZXN0b3JlIHRoZSBjb3JyZWN0IGxvZ2ljIHRvCj4gc2tpcCB0aGUgZGV0ZWN0aW9u
Lgo+Cj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gRml4ZXM6
IDJiNWE0NTYyZWRkMCAoImRybS9pOTE1L2Rpc3BsYXk6IFNpbXBsaWZ5IEdMSyBkaXNwbGF5IHZl
cnNpb24gdGVzdHMiKQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jCj4gaW5kZXggNWU5YzNjNzQzMTBjLi41
OTc2MzRlNGYzNWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX3RyYWluaW5nLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwo+IEBAIC05Niw3ICs5Niw3IEBAIHN0YXRpYyBi
b29sIGludGVsX2RwX3JlYWRfbHR0cHJfY29tbW9uX2NhcHMoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkKPiAgCSAqIERldGVjdGluZyBMVFRQUnMgbXVzdCBiZSBhdm9pZGVkIG9uIHBsYXRmb3Jt
cyB3aXRoIGFuIEFVWCB0aW1lb3V0Cj4gIAkgKiBwZXJpb2QgPCAzLjJtcy4gKHNlZSBEUCBTdGFu
ZGFyZCB2Mi4wLCAyLjExLjIsIDMuNi42LjEpLgo+ICAJICovCj4gLQlpZiAoRElTUExBWV9WRVIo
aTkxNSkgPCAxMCkKPiArCWlmIChESVNQTEFZX1ZFUihpOTE1KSA8IDEwIHx8IElTX0dFTUlOSUxB
S0UoaTkxNSkpCj4gIAkJcmV0dXJuIGZhbHNlOwo+ICAKPiAgCWlmIChkcm1fZHBfcmVhZF9sdHRw
cl9jb21tb25fY2FwcygmaW50ZWxfZHAtPmF1eCwKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3Bl
biBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
