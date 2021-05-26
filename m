Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49309391900
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 15:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44236ECD0;
	Wed, 26 May 2021 13:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63F0E6ECD2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 13:38:16 +0000 (UTC)
IronPort-SDR: shnQsbzkKsixbHSjTkmu5nXG/TIlsj3GYYo+PLNBnIbInO+KWVD0UE8BFRPKx8T3vJaWBM76v7
 9SRM0oUkGi+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="223650652"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223650652"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 06:38:15 -0700
IronPort-SDR: de/KvT3mXeYUk9JHY35d5if4MZZMe+nMHXSdfpM7DPxHO0ZSBOb/eFoQeHYHBZ7J0Lz7EnD5Ff
 77RQJTxnRqCQ==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="444049409"
Received: from astiegle-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.167])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 06:38:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YK5K/oLKd9arG9Ol@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210526082903.26395-1-jani.nikula@intel.com>
 <YK5K/oLKd9arG9Ol@intel.com>
Date: Wed, 26 May 2021 16:38:11 +0300
Message-ID: <87tumpboos.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: enable MSO on pipe B
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyNiBNYXkgMjAyMSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBNYXkgMjYsIDIwMjEgYXQgMTE6Mjk6MDNBTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIEFETC1QLCBpdCdzIHBvc3NpYmxlIHRvIGVu
YWJsZSB0aGUgc3RyZWFtIHNwbGl0dGVyIG9uIHBpcGUgQiBpbgo+PiBhZGRpdGlvbiB0byBwaXBl
IEEuCj4+IAo+PiBCc3BlYzogNTAxNzQKPj4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBp
bnRlbC5jb20+Cj4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPgo+Cj4gSSBoYXZlIGEgZmVlbGluZyBJIHJldmlld2VkIHRoaXMgYWxyZWFkeS4gQnV0IG1h
eWJlIEknbSBqdXN0Cj4gaW1hZ2luaW5nIGl0Lgo+Cj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpUaGFua3MsIHB1c2hlZCB0byBk
cm0taW50ZWwtbmV4dC4KCkJSLApKYW5pLgoKPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA3ICsrKysrLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPj4gaW5kZXggM2Q4OTE4Njc0MTUzLi40ZDZmMWEyMDZmNTYg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMK
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+PiBAQCAt
NDcyOSw5ICs0NzI5LDEyIEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKPj4gIAo+PiAgCQlkaWdfcG9ydC0+aHBk
X3B1bHNlID0gaW50ZWxfZHBfaHBkX3B1bHNlOwo+PiAgCj4+IC0JCS8qIFNwbGl0dGVyIGVuYWJs
ZSBmb3IgZURQIE1TTyBpcyBzdXBwb3J0ZWQgZm9yIHBpcGUgQSBvbmx5LiAqLwo+PiAtCQlpZiAo
ZGlnX3BvcnQtPmRwLm1zb19saW5rX2NvdW50KQo+PiArCQkvKiBTcGxpdHRlciBlbmFibGUgZm9y
IGVEUCBNU08gaXMgbGltaXRlZCB0byBjZXJ0YWluIHBpcGVzLiAqLwo+PiArCQlpZiAoZGlnX3Bv
cnQtPmRwLm1zb19saW5rX2NvdW50KSB7Cj4+ICAJCQllbmNvZGVyLT5waXBlX21hc2sgPSBCSVQo
UElQRV9BKTsKPj4gKwkJCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikpCj4+ICsJCQkJZW5j
b2Rlci0+cGlwZV9tYXNrIHw9IEJJVChQSVBFX0IpOwo+PiArCQl9Cj4+ICAJfQo+PiAgCj4+ICAJ
LyogSW4gdGhlb3J5IHdlIGRvbid0IG5lZWQgdGhlIGVuY29kZXItPnR5cGUgY2hlY2ssIGJ1dCBs
ZWF2ZSBpdCBqdXN0IGluCj4+IC0tIAo+PiAyLjIwLjEKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwg
T3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
