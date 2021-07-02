Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 970693BA290
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 17:08:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DBF76E0EF;
	Fri,  2 Jul 2021 15:08:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CFFB6E14F;
 Fri,  2 Jul 2021 15:08:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10033"; a="205737649"
X-IronPort-AV: E=Sophos;i="5.83,317,1616482800"; d="scan'208";a="205737649"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2021 08:07:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,317,1616482800"; d="scan'208";a="458556718"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2021 08:07:52 -0700
Received: from [10.249.132.69] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.132.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 162F7pwP003309; Fri, 2 Jul 2021 16:07:51 +0100
To: Martin Peres <martin.peres@free.fr>, Pekka Paalanen <ppaalanen@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-48-matthew.brost@intel.com>
 <88cbe963-7188-f4ae-5acf-01a80bd2fe25@free.fr>
 <05e1d462-57ae-888a-888c-3ad486150821@intel.com>
 <20210701111410.3fc6551e@eldfell>
 <050296b9-8958-353a-9f76-699bfbafa1c1@free.fr>
 <CAKMK7uH1svoSEGa=sv+BsU4_BMou2sEJQWddQgy1XDMYtz7-Dw@mail.gmail.com>
 <20210702102944.3a8c4915@eldfell>
 <2d3b06c3-5f69-5045-191f-3fd705a3fb40@free.fr>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <a7e1ab69-7d68-4f34-1c92-c32c6c38f8f0@intel.com>
Date: Fri, 2 Jul 2021 17:07:50 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <2d3b06c3-5f69-5045-191f-3fd705a3fb40@free.fr>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 47/47] drm/i915/guc: Unblock GuC submission
 on Gen11+
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAwMi4wNy4yMDIxIDEwOjA5LCBNYXJ0aW4gUGVyZXMgd3JvdGU6Cj4gT24gMDIvMDcvMjAy
MSAxMDoyOSwgUGVra2EgUGFhbGFuZW4gd3JvdGU6Cj4+IE9uIFRodSwgMSBKdWwgMjAyMSAyMToy
ODowNiArMDIwMAo+PiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+Pgo+
Pj4gT24gVGh1LCBKdWwgMSwgMjAyMSBhdCA4OjI3IFBNIE1hcnRpbiBQZXJlcyA8bWFydGluLnBl
cmVzQGZyZWUuZnI+Cj4+PiB3cm90ZToKPj4+Pgo+Pj4+IE9uIDAxLzA3LzIwMjEgMTE6MTQsIFBl
a2thIFBhYWxhbmVuIHdyb3RlOgo+Pj4+PiBPbiBXZWQsIDMwIEp1biAyMDIxIDExOjU4OjI1IC0w
NzAwCj4+Pj4+IEpvaG4gSGFycmlzb24gPGpvaG4uYy5oYXJyaXNvbkBpbnRlbC5jb20+IHdyb3Rl
Ogo+Pj4+PiDCoAo+Pj4+Pj4gT24gNi8zMC8yMDIxIDAxOjIyLCBNYXJ0aW4gUGVyZXMgd3JvdGU6
Cj4+Pj4+Pj4gT24gMjQvMDYvMjAyMSAxMDowNSwgTWF0dGhldyBCcm9zdCB3cm90ZToKPj4+Pj4+
Pj4gRnJvbTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gVW5ibG9jayBHdUMgc3VibWlzc2lvbiBvbiBHZW4x
MSsgcGxhdGZvcm1zLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2Fq
ZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4+Pj4+Pj4gU2lnbmVkLW9mZi1i
eTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbwo+Pj4+Pj4+PiA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KPj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhl
dy5icm9zdEBpbnRlbC5jb20+Cj4+Pj4+Pj4+IC0tLQo+Pj4+Pj4+PiDCoMKgwqAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAx
ICsKPj4+Pj4+Pj4gwqDCoMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19z
dWJtaXNzaW9uLmMgfMKgIDggKysrKysrKysKPj4+Pj4+Pj4gwqDCoMKgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmggfMKgIDMgKy0tCj4+Pj4+Pj4+IMKg
wqDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHwgMTQKPj4+Pj4+Pj4gKysrKysrKysrLS0tLS0KPj4+Pj4+Pj4gwqDCoMKgIDQg
ZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPj4+Pj4+Pj4g
wqAgCj4+Pj4+Cj4+Pj4+IC4uLgo+Pj4+PiDCoAo+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+Pj4+Pj4+PiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPj4+Pj4+Pj4gaW5kZXggN2E2OWMzYzAyN2U5Li42MWJl
MGFhODE0OTIgMTAwNjQ0Cj4+Pj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjLmMKPj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWMuYwo+Pj4+Pj4+PiBAQCAtMzQsOCArMzQsMTUgQEAgc3RhdGljIHZvaWQgdWNfZXhwYW5k
X2RlZmF1bHRfb3B0aW9ucyhzdHJ1Y3QKPj4+Pj4+Pj4gaW50ZWxfdWMgKnVjKQo+Pj4+Pj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4+Pj4+Pj4gwqDCoMKgwqDCoMKgwqAgfQo+
Pj4+Pj4+PiDCoMKgwqAgLcKgwqDCoCAvKiBEZWZhdWx0OiBlbmFibGUgSHVDIGF1dGhlbnRpY2F0
aW9uIG9ubHkgKi8KPj4+Pj4+Pj4gLcKgwqDCoCBpOTE1LT5wYXJhbXMuZW5hYmxlX2d1YyA9IEVO
QUJMRV9HVUNfTE9BRF9IVUM7Cj4+Pj4+Pj4+ICvCoMKgwqAgLyogSW50ZXJtZWRpYXRlIHBsYXRm
b3JtcyBhcmUgSHVDIGF1dGhlbnRpY2F0aW9uIG9ubHkgKi8KPj4+Pj4+Pj4gK8KgwqDCoCBpZiAo
SVNfREcxKGk5MTUpIHx8IElTX0FMREVSTEFLRV9TKGk5MTUpKSB7Cj4+Pj4+Pj4+ICvCoMKgwqDC
oMKgwqDCoCBkcm1fZGJnKCZpOTE1LT5kcm0sICJEaXNhYmxpbmcgR3VDIG9ubHkgZHVlIHRvIG9s
ZAo+Pj4+Pj4+PiBwbGF0Zm9ybVxuIik7Cj4+Pj4+Pj4KPj4+Pj4+PiBUaGlzIGNvbW1lbnQgZG9l
cyBub3Qgc2VlbSBhY2N1cmF0ZSwgZ2l2ZW4gdGhhdCBERzEgaXMgYmFyZWx5Cj4+Pj4+Pj4gb3V0
LCBhbmQKPj4+Pj4+PiBBREwgaXMgbm90IG91dCB5ZXQuIEhvdyBhYm91dDoKPj4+Pj4+Pgo+Pj4+
Pj4+ICJEaXNhYmxpbmcgR3VDIG9uIHVudGVzdGVkIHBsYXRmb3JtcyI/Cj4+Pj4+Pj4gwqAgCj4+
Pj4+PiBKdXN0IGJlY2F1c2Ugc29tZXRoaW5nIGlzIG5vdCBpbiB0aGUgc2hvcHMgeWV0IGRvZXMg
bm90IG1lYW4gaXQgaXMKPj4+Pj4+IG5ldy4KPj4+Pj4+IFRlY2hub2xvZ3kgaXMgYWx3YXlzIG9i
c29sZXRlIGJ5IHRoZSB0aW1lIGl0IGdvZXMgb24gc2FsZS4KPj4+Pj4KPj4+Pj4gVGhhdCBpcyBh
IHZlcnkgZ29vZCByZWFzb24gdG8gbm90IHVzZSB0ZXJtaW5vbG9neSBsaWtlICJuZXciLCAib2xk
IiwKPj4+Pj4gImN1cnJlbnQiLCAibW9kZXJuIiBldGMuIGF0IGFsbC4KPj4+Pj4KPj4+Pj4gRW5k
IHVzZXJzIGxpa2UgbWUgZGVmaW5pdGVseSBkbyBub3Qgc2hhcmUgeW91ciBpbnRlcnByZXRhdGlv
biBvZgo+Pj4+PiAib2xkIi4KPj4+Pgo+Pj4+IFllcCwgb2xkIGFuZCBuZXcgaXMgcmVsYXRpdmUu
IEluIHRoZSBlbmQsIHdoYXQgbWF0dGVycyBpcyB0aGUKPj4+PiB2YWxpZGF0aW9uCj4+Pj4gZWZm
b3J0LCB3aGljaCBpcyB3aHkgSSB3YXMgcHJvcG9zaW5nICJ1bnRlc3RlZCBwbGF0Zm9ybXMiLgo+
Pj4+Cj4+Pj4gQWxzbywgcmVtZW1iZXIgdGhhdCB5b3UgYXJlIG5vdCB3cml0aW5nIHRoZXNlIG1l
c3NhZ2VzIGZvciBJbnRlbAo+Pj4+IGVuZ2luZWVycywgYnV0IGluc3RlYWQgYXJlIHdyaXRpbmcg
Zm9yIExpbnV4ICp1c2VycyouCj4+Pgo+Pj4gSXQncyBkcm1fZGJnLiBVc2VycyBkb24ndCByZWFk
IHRoaXMgc3R1ZmYsIGF0IGxlYXN0IG5vdCB1c2VycyB3aXRoIG5vCj4+PiBjbHVlIHdoYXQgdGhl
IGRyaXZlciBkb2VzIGFuZCBzdHVmZiBsaWtlIHRoYXQuCj4+Cj4+IElmIEkgaGFkIGEgcHJvYmxl
bSwgSSB3b3VsZCByZWFkIGl0LCBhbmQgSSBoYXZlIG5vIGNsdWUgd2hhdCBhbnl0aGluZwo+PiBv
ZiB0aGF0IGlzLgo+IAo+IEV4YWN0bHkuCj4gCj4gVGhpcyBsZXZlbCBvZiBkZWZlbnNlIGZvciB3
aGF0IGlzIGNsZWFybHkgYSBiYWQgKmRlYnVnKiBtZXNzYWdlIChhdCB0aGUKPiB2ZXJ5IGxlYXN0
LCB0aGUgZ3JhbW1hcikgbWFrZXMgbm8gc2Vuc2UgYXQgYWxsIQo+IAo+IEkgZG9uJ3Qgd2FudCB0
byBoZWFyIGFyZ3VtZW50cyBsaWtlICJOb3QgbXkgcGF0Y2giIGZyb20gYSBkZXZlbG9wZXIKPiBs
aXRlcmFsbHkgc2VuZGluZyB0aGUgcGF0Y2ggdG8gdGhlIE1MIGFuZCB3aG8gYWRkZWQgaGlzIFNv
QiB0byB0aGUKPiBwYXRjaCwgcGxheWluZyB3aXRoIHdvcmRzLCBvciBtaW5pbWl6aW5nIHRoZSBw
cm9ibGVtIG9mIGhhdmluZyBzdWNoIGEKPiBtZXNzYWdlLgoKQWdyZWUgdGhhdCAnbm90IG15IHBh
dGNoJyBpcyBuZXZlciBhIGdvb2QgZXhjdXNlLCBidXQgZXF1YWxseSB3ZSBjYW4ndApibGFtZSBv
cmlnaW5hbCBwYXRjaCBhdXRob3IgYXMgcGF0Y2ggd2FzIHVwZGF0ZWQgZmV3IHRpbWVzIHNpbmNl
IHRoZW4uCgpNYXliZSB0byBhdm9pZCBjb25mdXNpb25zIGFuZCBzaW1wbGlmeSByZXZpZXdzLCB3
ZSBjb3VsZCBzcGxpdCB0aGlzCnBhdGNoIGludG8gdHdvIHNtYWxsZXI6IGZpcnN0IG9uZSB0aGF0
IHJlYWxseSB1bmJsb2NrcyBHdUMgc3VibWlzc2lvbiBvbgphbGwgR2VuMTErIChzZWUgX19ndWNf
c3VibWlzc2lvbl9zdXBwb3J0ZWQpIGFuZCBzZWNvbmQgb25lIHRoYXQgdXBkYXRlcwpkZWZhdWx0
cyBmb3IgR2VuMTIrIChzZWUgdWNfZXhwYW5kX2RlZmF1bHRfb3B0aW9ucyksIGFzIG9yaWdpbmFs
IHBhdGNoCihmcm9tIH4yMDE5KSBldm9sdmVkIG1vcmUgdGhhbiB3aGF0IHRpdGxlL2NvbW1pdCBt
ZXNzYWdlIHNheXMuCgpUaGVuIHdlIGNhbiBmaXggYWxsIG1lc3NhZ2luZyBhbmQgbWFrZSBzdXJl
IGl0J3MgY2xlYXIgYW5kIHVuZGVyc3Rvb2QuCgpUaGFua3MsCk1pY2hhbAoKPiAKPiBBbGwgb2Yg
dGhlIGFib3ZlIGFyZSBqdXN0IGNsZWFyIHNpZ25hbHMgZm9yIHRoZSBjb21tdW5pdHkgdG8gZ2V0
IG9mZgo+IHlvdXIgcGxheWdyb3VuZCwgd2hpY2ggaXMgZnJhbmtseSB1bmFjY2VwdGFibGUuIFlv
dXIgZW1haWwgYWRkcmVzcyBkb2VzCj4gbm90IG1hdHRlci4KPiAKPiBJbiB0aGUgc3Bpcml0IG9m
IGNvbGxhYm9yYXRpb24sIHlvdXIgcmVzcG9uc2Ugc2hvdWxkIGhhdmUgYmVlbiAiR29vZAo+IGNh
dGNoLCBob3cgYWJvdXQgWFhYWCBvciBZWVlZPyIuIFRoaXMgd291bGQgbm90IGhhdmUgd2FzdGVk
IGV2ZXJ5b25lJ3MKPiB0aW1lIGluIGFuIGF0dGVtcHQgdG8ganVzdCBoYXZlIGl0IHlvdXIgd2F5
Lgo+IAo+IE15IGxldmVsIG9mIGNvbmZpZGVuY2UgaW4gdGhpcyBHdUMgdHJhbnNpdGlvbiB3YXMg
YWxyZWFkeSBsb3csIGJ1dCB5b3UKPiBndXlzIGFyZSB3b3JraW5nIGhhcmQgdG8gc2hvb3QgeW91
cnNlbGYgaW4gdGhlIGZvb3QuIFRydXN0IHNob3VsZCBiZQo+IGVhcm5lZCEKPiAKPiBNYXJ0aW4K
PiAKPj4KPj4KPj4gVGhhbmtzLAo+PiBwcQo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
