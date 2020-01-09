Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DE2135837
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 12:41:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D50D6E02E;
	Thu,  9 Jan 2020 11:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D746E02E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 11:41:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 03:41:27 -0800
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="396064154"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 03:41:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200109062745.9831-1-manasi.d.navare@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200109062745.9831-1-manasi.d.navare@intel.com>
Date: Thu, 09 Jan 2020 13:41:22 +0200
Message-ID: <87ftgoq2l9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Reset intel_dp->link_trained
 in init_connector
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

T24gV2VkLCAwOCBKYW4gMjAyMCwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4gd3JvdGU6Cj4gTGluayBoYXMgbm90IGJlZW4gdHJhaW5lZCBkdXJpbmcgY29ubmVjdG9y
IGluaXRpYWxpemF0aW9uCj4gaGVuY2UgcmVzZXQgdGhlIHZhcmlhYmxlIGludGVsX2RwLT5saW5r
X3RyYWluZWQuIFRoaXMKPiBhdm9pZHMgYWNjaWRlbnRseSBjYWxsaW5nIGxpbmsgdHJhaW5pbmcg
cm91dGluZSBiZWZvcmUgdGhlIHBpcGUKPiBpcyBzZXQgdXAuCj4KPiBJc3N1ZTogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTg1Cj4gU2lnbmVkLW9mZi1i
eTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiBDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IGQyOTlj
ZWUxNzVlNy4uZjQ1NTMzYWY3NTI0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwo+IEBAIC03NDcxLDYgKzc0NzEsNyBAQCBpbnRlbF9kcF9pbml0X2Nvbm5lY3Rv
cihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwKPiAgCWludGVsX2Rw
X3NldF9zb3VyY2VfcmF0ZXMoaW50ZWxfZHApOwo+ICAKPiAgCWludGVsX2RwLT5yZXNldF9saW5r
X3BhcmFtcyA9IHRydWU7Cj4gKwlpbnRlbF9kcC0+bGlua190cmFpbmVkID0gIGZhbHNlOwoKaW50
ZWxfZGlnX3BvcnQgYW5kIHRodXMgaW50ZWxfZHAgYXJlIGt6YWxsb2MnZWQsIG1ha2luZyAtPmxp
bmtfdHJhaW5lZApmYWxzZSB0byBiZWdpbiB3aXRoLiBJIGNhbid0IHNlZSBhbnkgd2F5IC0+bGlu
a190cmFpbmluZyBjb3VsZCBiZSB0cnVlCmF0IHRoaXMgcG9pbnQuCgpCUiwKSmFuaS4KCgoKPiAg
CWludGVsX2RwLT5wcHNfcGlwZSA9IElOVkFMSURfUElQRTsKPiAgCWludGVsX2RwLT5hY3RpdmVf
cGlwZSA9IElOVkFMSURfUElQRTsKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2Ug
R3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
