Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B18FD3088C3
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 13:01:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107676EB0B;
	Fri, 29 Jan 2021 12:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9F0E6EB0B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 12:01:40 +0000 (UTC)
IronPort-SDR: DDm+5UAuy46w7/3w1z0FmgMruni/lGBFP0OM8URPyicJJNgdXnrTsJ2ZnkQ+LTtTiWl+jS+BV1
 g7DJwE5uNJHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="176904219"
X-IronPort-AV: E=Sophos;i="5.79,385,1602572400"; d="scan'208";a="176904219"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 04:01:37 -0800
IronPort-SDR: VPfY97LpV4DptD37GH0pn3oeORA/MRk+2YSN1RmlyR09wM58l32blDwSdVJ/JHpKqk8dsdZK7U
 rx4lAf20y8ZQ==
X-IronPort-AV: E=Sophos;i="5.79,385,1602572400"; d="scan'208";a="389273702"
Received: from mtandur-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.47.192])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 04:01:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <161191892944.12947.12934684852512611563@build.alporthouse.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
 <20210128192413.1715802-18-matthew.d.roper@intel.com>
 <87h7n0hu9p.fsf@intel.com>
 <161191892944.12947.12934684852512611563@build.alporthouse.com>
Date: Fri, 29 Jan 2021 14:01:32 +0200
Message-ID: <87eei4hrz7.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 17/18] drm/i915/display13: Add rc_qp_table
 for rcparams calculation
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

T24gRnJpLCAyOSBKYW4gMjAyMSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMjEtMDEtMjkgMTE6MTI6MDIpCj4+
IE9uIFRodSwgMjggSmFuIDIwMjEsIE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+IHdyb3RlOgo+PiA+IEZyb206IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlA
aW50ZWwuY29tPgo+PiA+Cj4+ID4gQWRkIHRoZSBxcCB0YWJsZSBmb3IgNDQ0IGZvcm1hdHMsIGZv
ciA4YnBjLCAxMGJwYyBhbmQgMTJicGMsIGFzIGdpdmVuIGJ5Cj4+ID4gdGhlIFZFU0EgQyBtb2Rl
bCBmb3IgRFNDIDEuMQo+PiA+Cj4+ID4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFy
ZUBpbnRlbC5jb20+Cj4+ID4gU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0
YS5rdWxrYXJuaUBpbnRlbC5jb20+Cj4+ID4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPj4gPiAtLS0KPj4gPiAgLi4uL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3FwX3RhYmxlcy5oICAgIHwgMjk0ICsrKysrKysrKysrKysrKysrKwo+PiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyAgICAgfCAgMjIgKy0K
Pj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAzMTUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
PiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9xcF90YWJsZXMuaAo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcXBfdGFibGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3FwX3RhYmxlcy5oCj4+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gPiBpbmRleCAw
MDAwMDAwMDAwMDAuLjEzNjk0ZDUyMjBkNAo+PiA+IC0tLSAvZGV2L251bGwKPj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3FwX3RhYmxlcy5oCj4+ID4gQEAgLTAs
MCArMSwyOTQgQEAKPj4gPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLwo+PiA+
ICsvKgo+PiA+ICsgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgo+PiA+ICsg
Ki8KPj4gPiArCj4+IAo+PiBUaGUgaW5jbHVkZSBndWFyZCBpcyBtaXNzaW5nLgo+Cj4gU2hvdWxk
IHdlIGV2ZW4gYmUgcHV0dGluZyBsYXJnZSB0YWJsZXMgaW50byBhIGhlYWRlcj8KPgo+IFdvdWxk
IHRoaXMgYmUgYmV0dGVyIGFzIGEgLmM/CgpBZ3JlZWQuCgpCUiwKSmFuaS4KCi0tIApKYW5pIE5p
a3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
