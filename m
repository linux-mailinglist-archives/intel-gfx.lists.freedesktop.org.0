Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C59883BE62D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 12:11:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C75C6E879;
	Wed,  7 Jul 2021 10:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ECA76E86E;
 Wed,  7 Jul 2021 10:11:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="209233454"
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="209233454"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 03:11:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="457428091"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 07 Jul 2021 03:11:11 -0700
Received: from [10.249.150.24] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.150.24])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 167AB9Zx017365; Wed, 7 Jul 2021 11:11:10 +0100
To: John Harrison <john.c.harrison@intel.com>,
 Martin Peres <martin.peres@free.fr>,
 Pekka Paalanen <ppaalanen@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-48-matthew.brost@intel.com>
 <88cbe963-7188-f4ae-5acf-01a80bd2fe25@free.fr>
 <05e1d462-57ae-888a-888c-3ad486150821@intel.com>
 <20210701111410.3fc6551e@eldfell>
 <050296b9-8958-353a-9f76-699bfbafa1c1@free.fr>
 <CAKMK7uH1svoSEGa=sv+BsU4_BMou2sEJQWddQgy1XDMYtz7-Dw@mail.gmail.com>
 <20210702102944.3a8c4915@eldfell>
 <2d3b06c3-5f69-5045-191f-3fd705a3fb40@free.fr>
 <a7e1ab69-7d68-4f34-1c92-c32c6c38f8f0@intel.com>
 <7889d935-65fb-5f11-ac5d-f9d757b9ee84@free.fr>
 <cc3c280e-de31-555c-d1f8-369e361e13c5@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <7a58c0e7-7b1f-415e-650f-1680e1abba6f@intel.com>
Date: Wed, 7 Jul 2021 12:11:09 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <cc3c280e-de31-555c-d1f8-369e361e13c5@intel.com>
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

CgpPbiAwNy4wNy4yMDIxIDAyOjU3LCBKb2huIEhhcnJpc29uIHdyb3RlOgo+IE9uIDcvMy8yMDIx
IDAxOjIxLCBNYXJ0aW4gUGVyZXMgd3JvdGU6Cj4+IE9uIDAyLzA3LzIwMjEgMTg6MDcsIE1pY2hh
bCBXYWpkZWN6a28gd3JvdGU6Cj4+PiBPbiAwMi4wNy4yMDIxIDEwOjA5LCBNYXJ0aW4gUGVyZXMg
d3JvdGU6Cj4+Pj4gT24gMDIvMDcvMjAyMSAxMDoyOSwgUGVra2EgUGFhbGFuZW4gd3JvdGU6Cj4+
Pj4+IE9uIFRodSwgMSBKdWwgMjAyMSAyMToyODowNiArMDIwMAo+Pj4+PiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+Pj4+Pgo+Pj4+Pj4gT24gVGh1LCBKdWwgMSwgMjAy
MSBhdCA4OjI3IFBNIE1hcnRpbiBQZXJlcyA8bWFydGluLnBlcmVzQGZyZWUuZnI+Cj4+Pj4+PiB3
cm90ZToKPj4+Pj4+Pgo+Pj4+Pj4+IE9uIDAxLzA3LzIwMjEgMTE6MTQsIFBla2thIFBhYWxhbmVu
IHdyb3RlOgo+Pj4+Pj4+PiBPbiBXZWQsIDMwIEp1biAyMDIxIDExOjU4OjI1IC0wNzAwCj4+Pj4+
Pj4+IEpvaG4gSGFycmlzb24gPGpvaG4uYy5oYXJyaXNvbkBpbnRlbC5jb20+IHdyb3RlOgo+Pj4+
Pj4+Pj4gT24gNi8zMC8yMDIxIDAxOjIyLCBNYXJ0aW4gUGVyZXMgd3JvdGU6Cj4+Pj4+Pj4+Pj4g
T24gMjQvMDYvMjAyMSAxMDowNSwgTWF0dGhldyBCcm9zdCB3cm90ZToKPj4+Pj4+Pj4+Pj4gRnJv
bTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4KPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gVW5ibG9jayBHdUMgc3VibWlzc2lvbiBvbiBHZW4x
MSsgcGxhdGZvcm1zLgo+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWNo
YWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4+Pj4+Pj4+Pj4gU2ln
bmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbwo+Pj4+Pj4+Pj4+PiA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogTWF0dGhl
dyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+Cj4+Pj4+Pj4+Pj4+IC0tLQo+Pj4+Pj4+
Pj4+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaCB8wqAgMSArCj4+Pj4+
Pj4+Pj4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMg
fMKgIDggKysrKysrKysKPj4+Pj4+Pj4+Pj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjX3N1Ym1pc3Npb24uaCB8wqAgMyArLS0KPj4+Pj4+Pj4+Pj4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8IDE0Cj4+Pj4+Pj4+Pj4+ICsrKysrKysrKy0tLS0tCj4+
Pj4+Pj4+Pj4+IMKgwqDCoMKgIDQgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgNyBk
ZWxldGlvbnMoLSkKPj4+Pj4+Pj4KPj4+Pj4+Pj4gLi4uCj4+Pj4+Pj4+Pj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4+Pj4+Pj4+Pj4+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+Pj4+Pj4+Pj4+PiBpbmRleCA3YTY5
YzNjMDI3ZTkuLjYxYmUwYWE4MTQ5MiAxMDA2NDQKPj4+Pj4+Pj4+Pj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+Pj4+Pj4+Pj4+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4+Pj4+Pj4+Pj4+IEBAIC0zNCw4ICszNCwxNSBA
QCBzdGF0aWMgdm9pZCB1Y19leHBhbmRfZGVmYXVsdF9vcHRpb25zKHN0cnVjdAo+Pj4+Pj4+Pj4+
PiBpbnRlbF91YyAqdWMpCj4+Pj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1
cm47Cj4+Pj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4+Pj4+Pj4+PiDCoMKgwqDCoCAt
wqDCoMKgIC8qIERlZmF1bHQ6IGVuYWJsZSBIdUMgYXV0aGVudGljYXRpb24gb25seSAqLwo+Pj4+
Pj4+Pj4+PiAtwqDCoMKgIGk5MTUtPnBhcmFtcy5lbmFibGVfZ3VjID0gRU5BQkxFX0dVQ19MT0FE
X0hVQzsKPj4+Pj4+Pj4+Pj4gK8KgwqDCoCAvKiBJbnRlcm1lZGlhdGUgcGxhdGZvcm1zIGFyZSBI
dUMgYXV0aGVudGljYXRpb24gb25seSAqLwo+Pj4+Pj4+Pj4+PiArwqDCoMKgIGlmIChJU19ERzEo
aTkxNSkgfHwgSVNfQUxERVJMQUtFX1MoaTkxNSkpIHsKPj4+Pj4+Pj4+Pj4gK8KgwqDCoMKgwqDC
oMKgIGRybV9kYmcoJmk5MTUtPmRybSwgIkRpc2FibGluZyBHdUMgb25seSBkdWUgdG8gb2xkCj4+
Pj4+Pj4+Pj4+IHBsYXRmb3JtXG4iKTsKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IFRoaXMgY29tbWVu
dCBkb2VzIG5vdCBzZWVtIGFjY3VyYXRlLCBnaXZlbiB0aGF0IERHMSBpcyBiYXJlbHkKPj4+Pj4+
Pj4+PiBvdXQsIGFuZAo+Pj4+Pj4+Pj4+IEFETCBpcyBub3Qgb3V0IHlldC4gSG93IGFib3V0Ogo+
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gIkRpc2FibGluZyBHdUMgb24gdW50ZXN0ZWQgcGxhdGZvcm1z
Ij8KPj4+Pj4+Pj4+IEp1c3QgYmVjYXVzZSBzb21ldGhpbmcgaXMgbm90IGluIHRoZSBzaG9wcyB5
ZXQgZG9lcyBub3QgbWVhbiBpdCBpcwo+Pj4+Pj4+Pj4gbmV3Lgo+Pj4+Pj4+Pj4gVGVjaG5vbG9n
eSBpcyBhbHdheXMgb2Jzb2xldGUgYnkgdGhlIHRpbWUgaXQgZ29lcyBvbiBzYWxlLgo+Pj4+Pj4+
Pgo+Pj4+Pj4+PiBUaGF0IGlzIGEgdmVyeSBnb29kIHJlYXNvbiB0byBub3QgdXNlIHRlcm1pbm9s
b2d5IGxpa2UgIm5ldyIsCj4+Pj4+Pj4+ICJvbGQiLAo+Pj4+Pj4+PiAiY3VycmVudCIsICJtb2Rl
cm4iIGV0Yy4gYXQgYWxsLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBFbmQgdXNlcnMgbGlrZSBtZSBkZWZp
bml0ZWx5IGRvIG5vdCBzaGFyZSB5b3VyIGludGVycHJldGF0aW9uIG9mCj4+Pj4+Pj4+ICJvbGQi
Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gWWVwLCBvbGQgYW5kIG5ldyBpcyByZWxhdGl2ZS4gSW4gdGhlIGVu
ZCwgd2hhdCBtYXR0ZXJzIGlzIHRoZQo+Pj4+Pj4+IHZhbGlkYXRpb24KPj4+Pj4+PiBlZmZvcnQs
IHdoaWNoIGlzIHdoeSBJIHdhcyBwcm9wb3NpbmcgInVudGVzdGVkIHBsYXRmb3JtcyIuCj4+Pj4+
Pj4KPj4+Pj4+PiBBbHNvLCByZW1lbWJlciB0aGF0IHlvdSBhcmUgbm90IHdyaXRpbmcgdGhlc2Ug
bWVzc2FnZXMgZm9yIEludGVsCj4+Pj4+Pj4gZW5naW5lZXJzLCBidXQgaW5zdGVhZCBhcmUgd3Jp
dGluZyBmb3IgTGludXggKnVzZXJzKi4KPj4+Pj4+Cj4+Pj4+PiBJdCdzIGRybV9kYmcuIFVzZXJz
IGRvbid0IHJlYWQgdGhpcyBzdHVmZiwgYXQgbGVhc3Qgbm90IHVzZXJzIHdpdGggbm8KPj4+Pj4+
IGNsdWUgd2hhdCB0aGUgZHJpdmVyIGRvZXMgYW5kIHN0dWZmIGxpa2UgdGhhdC4KPj4+Pj4KPj4+
Pj4gSWYgSSBoYWQgYSBwcm9ibGVtLCBJIHdvdWxkIHJlYWQgaXQsIGFuZCBJIGhhdmUgbm8gY2x1
ZSB3aGF0IGFueXRoaW5nCj4+Pj4+IG9mIHRoYXQgaXMuCj4+Pj4KPj4+PiBFeGFjdGx5Lgo+IEkg
ZG9uJ3Qgc2VlIGhvdyByZXBsYWNpbmcgJ29sZCcgZm9yICd1bnRlc3RlZCcgaGVscHMgYW55Ym9k
eSB0bwo+IHVuZGVyc3RhbmQgYW55dGhpbmcuIFVudGVzdGVkIGp1c3QgaW1wbGllcyB3ZSBjYW4n
dCBiZSBib3RoZXJlZCB0byB0ZXN0Cj4gc3R1ZmYgYmVmb3JlIHB1Ymxpc2hpbmcgaXQuIEFuZCBh
cyBwcmV2aW91c2x5IHN0YXRlZCwgdGhpcyBpcyBwdXJlbHkgYQo+IHBvbGl0aWNhbCBkZWNpc2lv
biBub3QgYSB0ZWNobmljYWwgb25lLiBTdXJlLCBjaGFuZ2UgdGhlIG1lc3NhZ2UgdG8gYmUKPiAn
RGlzYWJsaW5nIEd1QyBzdWJtaXNzaW9uIGJ1dCBlbmFibGluZyBIdUMgbG9hZGluZyB2aWEgR3VD
IG9uIHBsYXRmb3JtCj4gWFhYJyBpZiB0aGF0IG1ha2VzIGl0IGNsZWFyZXIgd2hhdCBpcyBnb2lu
ZyBvbi4gT3IganVzdCBkcm9wIHRoZSBtZXNzYWdlCj4gY29tcGxldGVseS4gSXQncyBzaW1wbHkg
ZXhwbGFpbmluZyB3aGF0IHRoZSBkZWZhdWx0IG9wdGlvbiBpcyBmb3IgdGhlCj4gY3VycmVudCBw
bGF0Zm9ybSB3aGljaCB5b3UgY2FuIGFsc28gZ2V0IGJ5IHJlYWRpbmcgdGhlIGNvZGUuIEhvd2V2
ZXIsIEkKPiBkaXNhZ3JlZSB0aGF0ICd1bnRlc3RlZCcgaXMgdGhlIGNvcnJlY3QgbWVzc2FnZS4g
UXVpdGUgYSBsb3Qgb2YgdGVzdGluZwo+IGhhcyBiZWVuIGhhcHBlbmluZyBvbiBUR0wrIHdpdGgg
R3VDIHN1Ym1pc3Npb24gZW5hYmxlZC4KPiAKPj4+Pgo+Pj4+IFRoaXMgbGV2ZWwgb2YgZGVmZW5z
ZSBmb3Igd2hhdCBpcyBjbGVhcmx5IGEgYmFkICpkZWJ1ZyogbWVzc2FnZSAoYXQgdGhlCj4+Pj4g
dmVyeSBsZWFzdCwgdGhlIGdyYW1tYXIpIG1ha2VzIG5vIHNlbnNlIGF0IGFsbCEKPj4+Pgo+Pj4+
IEkgZG9uJ3Qgd2FudCB0byBoZWFyIGFyZ3VtZW50cyBsaWtlICJOb3QgbXkgcGF0Y2giIGZyb20g
YSBkZXZlbG9wZXIKPj4+PiBsaXRlcmFsbHkgc2VuZGluZyB0aGUgcGF0Y2ggdG8gdGhlIE1MIGFu
ZCB3aG8gYWRkZWQgaGlzIFNvQiB0byB0aGUKPj4+PiBwYXRjaCwgcGxheWluZyB3aXRoIHdvcmRz
LCBvciBtaW5pbWl6aW5nIHRoZSBwcm9ibGVtIG9mIGhhdmluZyBzdWNoIGEKPj4+PiBtZXNzYWdl
Lgo+Pj4KPj4+IEFncmVlIHRoYXQgJ25vdCBteSBwYXRjaCcgaXMgbmV2ZXIgYSBnb29kIGV4Y3Vz
ZSwgYnV0IGVxdWFsbHkgd2UgY2FuJ3QKPj4+IGJsYW1lIG9yaWdpbmFsIHBhdGNoIGF1dGhvciBh
cyBwYXRjaCB3YXMgdXBkYXRlZCBmZXcgdGltZXMgc2luY2UgdGhlbi4KPj4KPj4gSSBuZXZlciB3
YW50ZWQgdG8gYmxhbWUgdGhlIGF1dGhvciBoZXJlLCBJIHdhcyBvbmx5IHNwZWFraW5nIGFib3V0
IHRoZQo+PiBoYW5kbGluZyBvZiBmZWVkYmFjayBvbiB0aGUgcGF0Y2guCj4+Cj4+Pgo+Pj4gTWF5
YmUgdG8gYXZvaWQgY29uZnVzaW9ucyBhbmQgc2ltcGxpZnkgcmV2aWV3cywgd2UgY291bGQgc3Bs
aXQgdGhpcwo+Pj4gcGF0Y2ggaW50byB0d28gc21hbGxlcjogZmlyc3Qgb25lIHRoYXQgcmVhbGx5
IHVuYmxvY2tzIEd1QyBzdWJtaXNzaW9uIG9uCj4+PiBhbGwgR2VuMTErIChzZWUgX19ndWNfc3Vi
bWlzc2lvbl9zdXBwb3J0ZWQpIGFuZCBzZWNvbmQgb25lIHRoYXQgdXBkYXRlcwo+Pj4gZGVmYXVs
dHMgZm9yIEdlbjEyKyAoc2VlIHVjX2V4cGFuZF9kZWZhdWx0X29wdGlvbnMpLCBhcyBvcmlnaW5h
bCBwYXRjaAo+Pj4gKGZyb20gfjIwMTkpIGV2b2x2ZWQgbW9yZSB0aGFuIHdoYXQgdGl0bGUvY29t
bWl0IG1lc3NhZ2Ugc2F5cy4KPj4KPj4gQm90aCB3b3JrIGZvciBtZSwgYXMgbG9uZyBhcyBpdCBp
cyBhIGNvbGxhYm9yYXRpdmUgZWZmb3J0Lgo+IEknbSBub3Qgc2VlaW5nIGhvdyBzcGxpdHRpbmcg
dGhlIHBhdGNoIHVwIGZpeGVzIHRoZSBjb21wbGFpbnRzIGFib3V0IHRoZQo+IGRlYnVnIG1lc3Nh
Z2UuCgpJIGFzc3VtZSBpdCdzIG5vdCBqdXN0IGFib3V0IGRlYnVnIG1lc3NhZ2UgKGJ1dCBzdGls
bCByZWxhdGVkKQoKV2l0aCBzZXBhcmF0ZSBwYXRjaGVzIHlvdSBjYW4gZXhwbGFpbiBpbiBjb21t
aXQgbWVzc2FnZXM6CgpwYXRjaDE6IHdoeSAoZnJvbSB0ZWNobmljYWwgcG9pbnQgb2Ygdmlldykg
d2UgdW5ibG9jayBHdUMgc3VibWlzc2lvbgpvbmx5IGZvciBHZW4xMSsgKGFzIHByZS1HZW4xMSBh
cmUgYWxzbyB1c2luZyB0aGUgc2FtZSBHdUMgZmlybXdhcmUgc28Kb25lIGNhbiBhc3N1bWUgR3VD
IHN1Ym1pc3Npb24gd2lsbCB3b3JrIHRoZXJlIHRvbyksCgpwYXRjaDI6IHdoeSAoZnJvbSAicG9s
aXRpY2FsIiBwb2ludCBvZiB2aWV3KSB3ZSB3YW50IHRvIHR1cm4gb24gR3VDCnN1Ym1pc3Npb24g
YnkgZGVmYXVsdCBvbmx5IG9uIHNlbGVjdGVkIEdlbjEyKyBwbGF0Zm9ybXMgKGFzIG9uZSBjb3Vs
ZAp3b25kZXIgd2h5IHdlIGRvbid0IGVuYWJsZSBHdUMgc3VibWlzc2lvbiBmb3IgR2VuMTErIHNp
bmNlIGl0IHNob3VsZAp3b3JrIHRoZXJlIHRvbykuCgpUaGVuIGl0IHNob3VsZCBiZSBlYXN5IHRv
IGZpbmQgcHJvcGVyIHdvcmRpbmcgZm9yIGFueSBkZWJ1ZyBtZXNzYWdlIHdlCm1heSB3YW50IHRv
IGFkZC4KCj4gCj4gQW5kIHRvIGJlIGNsZWFyLCBuby1vbmUgaXMgYWN0dWFsbHkgYXJndWluZyBm
b3IgYSBjb2RlIGNoYW5nZSBhcyBzdWNoPwo+IFRoZSBpc3N1ZSBpcyBqdXN0IGFib3V0IHRoZSB0
ZXh0IG9mIHRoZSBkZWJ1ZyBtZXNzYWdlPyBPciBkaWQgSSBtaXNzCj4gc29tZXRoaW5nIHNvbWV3
aGVyZT8KCkNoYW5nZSBpcyB0cml2aWFsIGlzIGhhcmQgdG8gY29tcGxhaW4sIHdoYXQgaXMgbWlz
c2luZywgSU1ITywgaXMgZ29vZApyYXRpb25hbGUgd2h5IHdlIGFyZSBtYWtpbmcgR3VDIHN1Ym1p
c3Npb24gZW5hYmxpbmcgc28gc2VsZWN0aXZlLgoKTWljaGFsCgo+IAo+IEpvaG4uCj4gCj4gCj4+
Cj4+IENoZWVycywKPj4gTWFydGluCj4+Cj4+Pgo+Pj4gVGhlbiB3ZSBjYW4gZml4IGFsbCBtZXNz
YWdpbmcgYW5kIG1ha2Ugc3VyZSBpdCdzIGNsZWFyIGFuZCB1bmRlcnN0b29kLgo+Pj4KPj4+IFRo
YW5rcywKPj4+IE1pY2hhbAo+Pj4KPj4+Pgo+Pj4+IEFsbCBvZiB0aGUgYWJvdmUgYXJlIGp1c3Qg
Y2xlYXIgc2lnbmFscyBmb3IgdGhlIGNvbW11bml0eSB0byBnZXQgb2ZmCj4+Pj4geW91ciBwbGF5
Z3JvdW5kLCB3aGljaCBpcyBmcmFua2x5IHVuYWNjZXB0YWJsZS4gWW91ciBlbWFpbCBhZGRyZXNz
IGRvZXMKPj4+PiBub3QgbWF0dGVyLgo+Pj4+Cj4+Pj4gSW4gdGhlIHNwaXJpdCBvZiBjb2xsYWJv
cmF0aW9uLCB5b3VyIHJlc3BvbnNlIHNob3VsZCBoYXZlIGJlZW4gIkdvb2QKPj4+PiBjYXRjaCwg
aG93IGFib3V0IFhYWFggb3IgWVlZWT8iLiBUaGlzIHdvdWxkIG5vdCBoYXZlIHdhc3RlZCBldmVy
eW9uZSdzCj4+Pj4gdGltZSBpbiBhbiBhdHRlbXB0IHRvIGp1c3QgaGF2ZSBpdCB5b3VyIHdheS4K
Pj4+Pgo+Pj4+IE15IGxldmVsIG9mIGNvbmZpZGVuY2UgaW4gdGhpcyBHdUMgdHJhbnNpdGlvbiB3
YXMgYWxyZWFkeSBsb3csIGJ1dCB5b3UKPj4+PiBndXlzIGFyZSB3b3JraW5nIGhhcmQgdG8gc2hv
b3QgeW91cnNlbGYgaW4gdGhlIGZvb3QuIFRydXN0IHNob3VsZCBiZQo+Pj4+IGVhcm5lZCEKPj4+
Pgo+Pj4+IE1hcnRpbgo+Pj4+Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFRoYW5rcywKPj4+Pj4gcHEKPj4+
Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4+Pj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
