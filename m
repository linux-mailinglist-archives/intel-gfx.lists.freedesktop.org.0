Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EAD8C00C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 19:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3D1E6E21B;
	Tue, 13 Aug 2019 17:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE1836E21B
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 17:59:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 10:59:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="351607048"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga005.jf.intel.com with ESMTP; 13 Aug 2019 10:59:25 -0700
Message-ID: <1565719218.30036.41.camel@intel.com>
From: Stuart Summers <stuart.summers@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2019 11:00:18 -0700
In-Reply-To: <156571886655.2301.17809116448263908293@skylake-alporthouse-com>
References: <20190813174121.129593-1-stuart.summers@intel.com>
 <156571886655.2301.17809116448263908293@skylake-alporthouse-com>
X-Mailer: Evolution 3.22.6 (3.22.6-14.el7) 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Use render class for
 MI_SET_CONTEXT
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA4LTEzIGF0IDE4OjU0ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4g
UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0xMyAxODo0MToxOSkKPiA+IFJlcGxhY2Ug
R0VNX0JVR19PTiB3aXRoIGV4cGxpY2l0IGNoZWNrIGZvciByZW5kZXIgY2xhc3MKPiA+IHdoZW4g
ZG9pbmcgdGhlIGtlcm5lbCBjb250ZXh0IHN3aXRjaC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
U3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgfCA0ICstLS0KPiA+IMKg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwo+ID4gaW5kZXgg
NDA5ZDc2NGY4YzZkLi4wNGVhOWJiYjg4Y2UgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwo+ID4gQEAgLTE3ODEsOSArMTc4MSw3IEBAIHN0YXRp
YyBpbnQgc3dpdGNoX2NvbnRleHQoc3RydWN0IGk5MTVfcmVxdWVzdAo+ID4gKnJxKQo+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiDCoMKgwqDCoMKgwqDCoMKgfQo+ID4g
wqAKPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChycS0+aHdfY29udGV4dC0+c3RhdGUpIHsKPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBHRU1fQlVHX09OKGVuZ2luZS0+aWQgIT0gUkNT
MCk7Cj4gPiAtCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoZW5naW5lLT5jbGFzcyA9PSBSRU5ERVJf
Q0xBU1MgJiYgcnEtPmh3X2NvbnRleHQtPnN0YXRlKSAKPiA+IHsKPiAKPiBJdCB3b3VsZCBjb21l
IGFzIHNvbWUgc3VycHJpc2UgZm9yIHRoaXMgbm90IHRvIGJlIHJjczAuIEkgZG9uJ3QgdGhpbmsK
PiB3ZQo+IGFyZSBwcmVwYXJlZCBmb3IgdGhhdCBvbiBsZWdhY3kgSFcgOikKCkhlaCwgSSB3aWxs
IGFkbWl0IHRoYXQgdGhpcyBpc24ndCBhIHN0cmljdCByZXF1aXJlbWVudCBidXQgdGhvdWdodCBp
dAp3b3VsZCBiZSBuaWNlIHRvIGhhdmUuIElmIHlvdSdyZSBvcHBvc2VkIHdlIGNhbiBkcm9wIHRo
aXMuCgpUaGFua3MsClN0dWFydAoKPiAtQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
