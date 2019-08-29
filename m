Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2B2A1317
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 09:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B422089FCC;
	Thu, 29 Aug 2019 07:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BCA189FCC
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 07:58:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 00:58:13 -0700
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="171821817"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 00:58:12 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Lu Baolu <baolu.lu@linux.intel.com>
Date: Thu, 29 Aug 2019 09:58:05 +0200
Message-ID: <3255251.C7nBVfOIaa@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <0cf4e930-1132-1e7f-815b-57a08a1fe5de@linux.intel.com>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
 <3275480.HMaYE7B3nd@jkrzyszt-desk.ger.corp.intel.com>
 <0cf4e930-1132-1e7f-815b-57a08a1fe5de@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH] iommu/vt-d: Fix IOMMU field not
 populated on device hot re-plug
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQmFvbHUsCgpPbiBUaHVyc2RheSwgQXVndXN0IDI5LCAyMDE5IDM6NDM6MzEgQU0gQ0VTVCBM
dSBCYW9sdSB3cm90ZToKPiBIaSBKYW51c3osCj4gCj4gT24gOC8yOC8xOSAxMDoxNyBQTSwgSmFu
dXN6IEtyenlzenRvZmlrIHdyb3RlOgo+ID4+IFdlIHNob3VsZCBhdm9pZCBrZXJuZWwgcGFuaWMg
d2hlbiBhIGludGVsX3VubWFwKCkgaXMgY2FsbGVkIGFnYWluc3QKPiA+PiBhIG5vbi1leGlzdGVu
dCBkb21haW4uCj4gPiBEb2VzIHRoYXQgbWVhbiB5b3Ugc3VnZ2VzdCB0byByZXBsYWNlCj4gPiAJ
QlVHX09OKCFkb21haW4pOwo+ID4gd2l0aCBzb21ldGhpbmcgbGlrZQo+ID4gCWlmIChXQVJOX09O
KCFkb21haW4pKQo+ID4gCQlyZXR1cm47Cj4gPiBhbmQgdG8gbm90IGNhcmUgb2Ygb3JwaGFuZWQg
bWFwcGluZ3MgbGVmdCBhbGxvY2F0ZWQ/ICBJcyB0aGVyZSBhIHdheSB0byAKaW5mb3JtCj4gPiB1
c2VycyB0aGF0IHRoZWlyIGFjdGl2ZSBETUEgbWFwcGluZ3MgYXJlIG5vIGxvbmdlciB2YWxpZCBh
bmQgdGhleSAKc2hvdWxkbid0Cj4gPiBjYWxsIGRtYV91bm1hcF8qKCk/Cj4gPiAKPiA+PiBCdXQg
d2Ugc2hvdWxkbid0IGV4cGVjdCB0aGUgSU9NTVUgZHJpdmVyIG5vdAo+ID4+IGNsZWFuaW5nIHVw
IHRoZSBkb21haW4gaW5mbyB3aGVuIGEgZGV2aWNlIHJlbW92ZSBub3RpZmljYXRpb24gY29tZXMg
YW5kCj4gPj4gd2FpdCB1bnRpbCBhbGwgZmlsZSBkZXNjcmlwdG9ycyBiZWluZyBjbG9zZWQsIHJp
Z2h0Pwo+ID4gU2hvdWxkbid0IHRoZW4gdGhlIElPTU1VIGRyaXZlciB0YWtlIGNhcmUgb2YgY2xl
YW5pbmcgdXAgcmVzb3VyY2VzIHN0aWxsCj4gPiBhbGxvY2F0ZWQgb24gZGV2aWNlIHJlbW92ZSBi
ZWZvcmUgaXQgaW52YWxpZGF0ZXMgYW5kIGZvcmdldHMgdGhlaXIgCnBvaW50ZXJzPwo+ID4gCj4g
Cj4gWW91IGFyZSByaWdodC4gV2UgbmVlZCB0byB3YWl0IHVudGlsIGFsbCBhbGxvY2F0ZWQgcmVz
b3VyY2VzIChpb3ZhIGFuZAo+IG1hcHBpbmdzKSB0byBiZSByZWxlYXNlZC4KPiAKPiBIb3cgYWJv
dXQgcmVnaXN0ZXJpbmcgYSBjYWxsYmFjayBmb3IgQlVTX05PVElGWV9VTkJPVU5EX0RSSVZFUiwg
YW5kCj4gcmVtb3ZpbmcgdGhlIGRvbWFpbiBpbmZvIHdoZW4gdGhlIGRyaXZlciBkZXRhY2htZW50
IGNvbXBsZXRlcz8KCkRldmljZSBjb3JlIGNhbGxzIEJVU19OT1RJRllfVU5CT1VORF9EUklWRVIg
b24gZWFjaCBkcml2ZXIgdW5iaW5kLCByZWdhcmRsZXNzIApvZiBhIGRldmljZSBiZWluZyByZW1v
dmVkIG9yIG5vdC4gIEFzIGxvbmcgYXMgdGhlIGRldmljZSBpcyBub3QgdW5wbHVnZ2VkIGFuZCAK
dGhlIEJVU19OT1RJRllfUkVNT1ZFRF9ERVZJQ0Ugbm90aWZpY2F0aW9uIG5vdCBnZW5lcmF0ZWQs
IGFuIHVuYm91bmQgZHJpdmVyIGlzIApub3QgYSBwcm9ibGVtIGhlcmUuCk1vcmV2ZXIsIEJVU19O
T1RJRllfVU5CT1VORF9EUklWRVIgIGlzIGNhbGxlZCBldmVuIGJlZm9yZSAKQlVTX05PVElGWV9S
RU1PVkVEX0RFVklDRSBzbyB0aGF0IHdvdWxkbid0IGhlbHAgYW55d2F5LgpMYXN0IGJ1dCBub3Qg
bGVhc3QsIGJ1cyBldmVudHMgYXJlIGluZGVwZW5kZW50IG9mIHRoZSBJT01NVSBkcml2ZXIgdXNl
IHZpYSAKRE1BLUFQSSBpdCBleHBvc2VzLgoKSWYga2VlcGluZyBkYXRhIGZvciB1bnBsdWdnZWQg
ZGV2aWNlcyBhbmQgcmV1c2luZyBpdCBvbiBkZXZpY2UgcmUtcGx1ZyBpcyBub3QgCmFjY2VwdGFi
bGUgdGhlbiBtYXliZSB0aGUgSU9NTVUgZHJpdmVyIHNob3VsZCBwZXJmb3JtIHJlZmVyZW5jZSBj
b3VudGluZyBvZiAKaXRzIGludGVybmFsIHJlc291cmNlcyBvY2N1cGllZCBieSBETUEtQVBJIHVz
ZXJzIGFuZCBwZXJmb3JtIGNsZWFudXBzIG9uIGxhc3QgCnJlbGVhc2U/CgpUaGFua3MsCkphbnVz
egoKCj4gPiBUaGFua3MsCj4gPiBKYW51c3oKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gQmFvbHUKPiAK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
