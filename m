Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 549EE3B1A67
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 14:44:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EEE189BF0;
	Wed, 23 Jun 2021 12:44:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F69289BF0;
 Wed, 23 Jun 2021 12:44:35 +0000 (UTC)
IronPort-SDR: hdN2jj0O9GRBOp9rzC/Dinz518IVW9diRnim95kSQdxph1bpiFSXMRwXj7tNxa1JPW/Ey3IJa7
 T5JCBM2dkA0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="292879213"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="292879213"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 05:44:34 -0700
IronPort-SDR: EB+UvefkRVQnwNHLyD/WjA1S0aYBMu7XmXaFAFi93zSVXsTzSDaPY9JUpIRjFRI6JKYjhxIlDw
 jHsbGI0RzPcw==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="453021619"
Received: from asortkjx-mobl.ger.corp.intel.com (HELO [10.249.254.136])
 ([10.249.254.136])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 05:44:33 -0700
Message-ID: <d0624cc5f8d689d325cc9ec0c5b53cfacf109fa5.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 23 Jun 2021 14:44:30 +0200
In-Reply-To: <dcb9729d-fd1c-900e-bb6e-38eb2cf208d2@intel.com>
References: <20210623112637.266855-1-matthew.auld@intel.com>
 <20210623112637.266855-3-matthew.auld@intel.com>
 <a5c0dca7-a586-15b6-6004-09d320b1159e@linux.intel.com>
 <dcb9729d-fd1c-900e-bb6e-38eb2cf208d2@intel.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gtt: ignore min_page_size for
 paging structures
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTA2LTIzIGF0IDEzOjI1ICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4g
T24gMjMvMDYvMjAyMSAxMjo1MSwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gPiAKPiA+IE9u
IDYvMjMvMjEgMToyNiBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+ID4gPiBUaGUgbWluX3BhZ2Vf
c2l6ZSBpcyBvbmx5IG5lZWRlZCBmb3IgcGFnZXMgaW5zZXJ0ZWQgaW50byB0aGUgR1RULAo+ID4g
PiBhbmQKPiA+ID4gZm9yIG91ciBwYWdpbmcgc3RydWN0dXJlcyB3ZSBvbmx5IG5lZWQgYXQgbW9z
dCA0SyBieXRlcywgc28KPiA+ID4gc2ltcGx5Cj4gPiA+IGlnbm9yZSB0aGUgbWluX3BhZ2Vfc2l6
ZSByZXN0cmljdGlvbnMgaGVyZSwgb3RoZXJ3aXNlIHdlIG1pZ2h0Cj4gPiA+IHNlZSBzb21lCj4g
PiA+IHNldmVyZSBvdmVyYWxsb2NhdGlvbiBvbiBzb21lIGRldmljZXMuCj4gPiA+IAo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gPiA+
IENjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+
Cj4gPiA+IC0tLQo+ID4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYyB8
IDIgKy0KPiA+ID4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3R0LmMgCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMKPiA+
ID4gaW5kZXggMDg0ZWE2NWQ1OWMwLi42MWU4YThjMjUzNzQgMTAwNjQ0Cj4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0dC5jCj4gPiA+IEBAIC0xNiw3ICsxNiw3IEBAIHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0Cj4gPiA+ICphbGxvY19wdF9sbWVtKHN0cnVjdCAKPiA+ID4gaTkx
NV9hZGRyZXNzX3NwYWNlICp2bSwgaW50IHN6KQo+ID4gPiDCoCB7Cj4gPiA+IMKgwqDCoMKgwqAg
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiA+ID4gLcKgwqDCoCBvYmogPSBpOTE1
X2dlbV9vYmplY3RfY3JlYXRlX2xtZW0odm0tPmk5MTUsIHN6LCAwKTsKPiA+ID4gK8KgwqDCoCBv
YmogPSBfX2k5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbV93aXRoX3BzKHZtLT5pOTE1LCBzeiwK
PiA+ID4gc3osIDApOwo+ID4gPiDCoMKgwqDCoMKgIC8qCj4gPiA+IMKgwqDCoMKgwqDCoCAqIEVu
c3VyZSBhbGwgcGFnaW5nIHN0cnVjdHVyZXMgZm9yIHRoaXMgdm0gc2hhcmUgdGhlIHNhbWUKPiA+
ID4gZG1hLXJlc3YKPiA+ID4gwqDCoMKgwqDCoMKgICogb2JqZWN0IHVuZGVybmVhdGgsIHdpdGgg
dGhlIGlkZWEgdGhhdCBvbmUgb2JqZWN0X2xvY2soKQo+ID4gPiB3aWxsIAo+ID4gPiBsb2NrCj4g
PiAKPiA+IEkgdGhpbmsgZm9yIHRoaXMgb25lIHRoZSBuZXcgZ3QgbWlncmF0aW9uIGNvZGUgbWln
aHQgYnJlYWssIGJlY2F1c2UKPiA+IHRoZXJlIHdlIGluc2VydCBldmVuIFBUIHBhZ2VzIGludG8g
dGhlIEdUVCwgc28gaXQgbWlnaHQgbmVlZCBhCj4gPiBzcGVjaWFsIAo+ID4gaW50ZXJmYWNlPyBS
YW0gaXMgbG9va2luZyBhdCBzdXBwb3J0ZXIgbGFyZ2VyIEdQVSBQVEUgc2l6ZXMgd2l0aAo+ID4g
dGhhdCAKPiA+IGNvZGUuLgo+IAo+IEZvciBERzEgYXQgbGVhc3Qgd2UgZG9uJ3QgbmVlZCB0aGlz
LiBCdXQgeWVhaCB3ZSBjYW4gYWx3YXlzIGp1c3QgcGFzcwo+IGFsb25nIHRoZSBwYWdlIHNpemUg
d2hlbiBhbGxvY2F0aW5nIHRoZSBzdGFzaCBJIGd1ZXNzLCBpZiB3ZSBuZWVkIAo+IHNvbWV0aGlu
ZyBzcGVjaWFsIGZvciBtaWdyYXRpb24/Cj4gCj4gQnV0IHdoZW4gd2UgbmVlZCB0byBzdXBwb3J0
IGh1Z2UgUFRFcyBmb3Igc3R1ZmYgb3RoZXIgdGhhbiBERzEsIHRoZW4gCj4gaXQncyBzdGlsbCBh
IHBpbGUgb2Ygd29yayBJIGFzc3VtZSwgc2luY2Ugd2Ugc3RpbGwgbmVlZCBhbGwgdGhlCj4gc3Bl
Y2lhbCAKPiBQVEUgaW5zZXJ0aW9uIHJvdXRpbmVzIHNwZWNpZmljYWxseSBmb3IgaW5zZXJ0X3B0
ZSgpIHdoaWNoIHdpbGwKPiBkaWZmZXIgCj4gd2lsZGx5IGJldHdlZW4gZ2VuZXJhdGlvbnMsIGFs
c28gZWFjaCBoYXMgcXVpdGUgZGlmZmVyZW50Cj4gcmVzdHJpY3Rpb25zIAo+IHdydCBtaW4gcGh5
c2ljYWwgYWxpZ25tZW50IG9mIGxtZW0sIHdoZXRoZXIgeW91IGNhbiBtaXggNjRLLzRLIFBURXMK
PiBpbiAKPiB0aGUgc2FtZSAyTSB2YSByYW5nZSwgd2hldGhlciA0SyBQVEVzIGFyZSBldmVuIHN1
cHBvcnRlZCBmb3IgbG1lbQo+IGV0Yy4KPiAKPiBOb3Qgc3VyZSBpZiBpdCdzIHNpbXBsZXIgdG8g
Z28gd2l0aCBtYXBwaW5nIGFsbCBvZiBsbWVtIHVwZnJvbnQgd2l0aAo+IHRoZSAKPiBmbGF0LXBw
R1RUPyBNYXliZSB0aGF0IHNpZGVzdGVwcyBzb21lIG9mIHRoZXNlIGlzc3Vlcz8gQXQgbGVhc3Qg
Zm9yCj4gdGhlIAo+IHBoeXNpY2FsIGFsaWdubWVudCBvZiBwYWdpbmcgc3RydWN0dXJlcyB0aGF0
IHdvdWxkIG5vIGxvbmdlciBiZSBhCj4gY29uY2Vybi4KClllcywgdGhhdCBtaWdodCBiZSB0aGUg
c2ltcGxlc3Qgd2F5IGZvcndhcmQuCgovVGhvbWFzCgoKCgo+IAo+ID4gCj4gPiAvVGhvbWFzCj4g
PiAKPiA+IAo+ID4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
