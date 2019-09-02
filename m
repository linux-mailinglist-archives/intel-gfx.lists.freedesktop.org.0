Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FE5A51E9
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 10:38:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689F489C0D;
	Mon,  2 Sep 2019 08:38:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 326F389C0D
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 08:38:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 01:38:02 -0700
X-IronPort-AV: E=Sophos;i="5.64,457,1559545200"; d="scan'208";a="184442382"
Received: from jkrzyszt-desk.ger.corp.intel.com ([172.22.244.17])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 01:38:00 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Lu Baolu <baolu.lu@linux.intel.com>
Date: Mon, 02 Sep 2019 10:37:41 +0200
Message-ID: <1769080.0GM3UzqXcv@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <ccb1434d-281c-abae-0726-7fd924041315@linux.intel.com>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
 <3255251.C7nBVfOIaa@jkrzyszt-desk.ger.corp.intel.com>
 <ccb1434d-281c-abae-0726-7fd924041315@linux.intel.com>
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

SGkgQmFvbHUsCgpPbiBUaHVyc2RheSwgQXVndXN0IDI5LCAyMDE5IDExOjA4OjE4IEFNIENFU1Qg
THUgQmFvbHUgd3JvdGU6Cj4gSGksCj4gCj4gT24gOC8yOS8xOSAzOjU4IFBNLCBKYW51c3ogS3J6
eXN6dG9maWsgd3JvdGU6Cj4gPiBIaSBCYW9sdSwKPiA+IAo+ID4gT24gVGh1cnNkYXksIEF1Z3Vz
dCAyOSwgMjAxOSAzOjQzOjMxIEFNIENFU1QgTHUgQmFvbHUgd3JvdGU6Cj4gPj4gSGkgSmFudXN6
LAo+ID4+Cj4gPj4gT24gOC8yOC8xOSAxMDoxNyBQTSwgSmFudXN6IEtyenlzenRvZmlrIHdyb3Rl
Ogo+ID4+Pj4gV2Ugc2hvdWxkIGF2b2lkIGtlcm5lbCBwYW5pYyB3aGVuIGEgaW50ZWxfdW5tYXAo
KSBpcyBjYWxsZWQgYWdhaW5zdAo+ID4+Pj4gYSBub24tZXhpc3RlbnQgZG9tYWluLgo+ID4+PiBE
b2VzIHRoYXQgbWVhbiB5b3Ugc3VnZ2VzdCB0byByZXBsYWNlCj4gPj4+IAlCVUdfT04oIWRvbWFp
bik7Cj4gPj4+IHdpdGggc29tZXRoaW5nIGxpa2UKPiA+Pj4gCWlmIChXQVJOX09OKCFkb21haW4p
KQo+ID4+PiAJCXJldHVybjsKPiA+Pj4gYW5kIHRvIG5vdCBjYXJlIG9mIG9ycGhhbmVkIG1hcHBp
bmdzIGxlZnQgYWxsb2NhdGVkPyAgSXMgdGhlcmUgYSB3YXkgdG8KPiA+IGluZm9ybQo+ID4+PiB1
c2VycyB0aGF0IHRoZWlyIGFjdGl2ZSBETUEgbWFwcGluZ3MgYXJlIG5vIGxvbmdlciB2YWxpZCBh
bmQgdGhleQo+ID4gc2hvdWxkbid0Cj4gPj4+IGNhbGwgZG1hX3VubWFwXyooKT8KPiA+Pj4KPiA+
Pj4+IEJ1dCB3ZSBzaG91bGRuJ3QgZXhwZWN0IHRoZSBJT01NVSBkcml2ZXIgbm90Cj4gPj4+PiBj
bGVhbmluZyB1cCB0aGUgZG9tYWluIGluZm8gd2hlbiBhIGRldmljZSByZW1vdmUgbm90aWZpY2F0
aW9uIGNvbWVzIGFuZAo+ID4+Pj4gd2FpdCB1bnRpbCBhbGwgZmlsZSBkZXNjcmlwdG9ycyBiZWlu
ZyBjbG9zZWQsIHJpZ2h0Pwo+ID4+PiBTaG91bGRuJ3QgdGhlbiB0aGUgSU9NTVUgZHJpdmVyIHRh
a2UgY2FyZSBvZiBjbGVhbmluZyB1cCByZXNvdXJjZXMgc3RpbGwKPiA+Pj4gYWxsb2NhdGVkIG9u
IGRldmljZSByZW1vdmUgYmVmb3JlIGl0IGludmFsaWRhdGVzIGFuZCBmb3JnZXRzIHRoZWlyCj4g
PiBwb2ludGVycz8KPiA+Pj4KPiA+Pgo+ID4+IFlvdSBhcmUgcmlnaHQuIFdlIG5lZWQgdG8gd2Fp
dCB1bnRpbCBhbGwgYWxsb2NhdGVkIHJlc291cmNlcyAoaW92YSBhbmQKPiA+PiBtYXBwaW5ncykg
dG8gYmUgcmVsZWFzZWQuCj4gPj4KPiA+PiBIb3cgYWJvdXQgcmVnaXN0ZXJpbmcgYSBjYWxsYmFj
ayBmb3IgQlVTX05PVElGWV9VTkJPVU5EX0RSSVZFUiwgYW5kCj4gPj4gcmVtb3ZpbmcgdGhlIGRv
bWFpbiBpbmZvIHdoZW4gdGhlIGRyaXZlciBkZXRhY2htZW50IGNvbXBsZXRlcz8KPiA+IAo+ID4g
RGV2aWNlIGNvcmUgY2FsbHMgQlVTX05PVElGWV9VTkJPVU5EX0RSSVZFUiBvbiBlYWNoIGRyaXZl
ciB1bmJpbmQsIApyZWdhcmRsZXNzCj4gPiBvZiBhIGRldmljZSBiZWluZyByZW1vdmVkIG9yIG5v
dC4gIEFzIGxvbmcgYXMgdGhlIGRldmljZSBpcyBub3QgdW5wbHVnZ2VkIAphbmQKPiA+IHRoZSBC
VVNfTk9USUZZX1JFTU9WRURfREVWSUNFIG5vdGlmaWNhdGlvbiBub3QgZ2VuZXJhdGVkLCBhbiB1
bmJvdW5kIApkcml2ZXIgaXMKPiA+IG5vdCBhIHByb2JsZW0gaGVyZS4KPiA+IE1vcmV2ZXIsIEJV
U19OT1RJRllfVU5CT1VORF9EUklWRVIgIGlzIGNhbGxlZCBldmVuIGJlZm9yZQo+ID4gQlVTX05P
VElGWV9SRU1PVkVEX0RFVklDRSBzbyB0aGF0IHdvdWxkbid0IGhlbHAgYW55d2F5Lgo+ID4gTGFz
dCBidXQgbm90IGxlYXN0LCBidXMgZXZlbnRzIGFyZSBpbmRlcGVuZGVudCBvZiB0aGUgSU9NTVUg
ZHJpdmVyIHVzZSB2aWEKPiA+IERNQS1BUEkgaXQgZXhwb3Nlcy4KPiAKPiBGYWlyIGVub3VnaC4K
PiAKPiA+IAo+ID4gSWYga2VlcGluZyBkYXRhIGZvciB1bnBsdWdnZWQgZGV2aWNlcyBhbmQgcmV1
c2luZyBpdCBvbiBkZXZpY2UgcmUtcGx1ZyBpcyAKbm90Cj4gPiBhY2NlcHRhYmxlIHRoZW4gbWF5
YmUgdGhlIElPTU1VIGRyaXZlciBzaG91bGQgcGVyZm9ybSByZWZlcmVuY2UgY291bnRpbmcgCm9m
Cj4gPiBpdHMgaW50ZXJuYWwgcmVzb3VyY2VzIG9jY3VwaWVkIGJ5IERNQS1BUEkgdXNlcnMgYW5k
IHBlcmZvcm0gY2xlYW51cHMgb24gCmxhc3QKPiA+IHJlbGVhc2U/Cj4gCj4gSSBhbSBub3Qgc2F5
aW5nIHRoYXQga2VlcGluZyBkYXRhIGlzIG5vdCBhY2NlcHRhYmxlLiBJIGp1c3Qgd2FudCB0bwo+
IGNoZWNrIHdoZXRoZXIgdGhlcmUgYXJlIGFueSBvdGhlciBzb2x1dGlvbnMuCgpUaGVuIHJldmVy
dGluZyA0NThiN2M4ZTBkZGUgYW5kIGFwcGx5aW5nIHRoaXMgcGF0Y2ggc3RpbGwgcmVzb2x2ZXMg
dGhlIGlzc3VlIApmb3IgbWUuICBObyBlcnJvcnMgYXBwZWFyIHdoZW4gbWFwcGluZ3MgYXJlIHVu
bWFwcGVkIG9uIGRldmljZSBjbG9zZSBhZnRlciB0aGUgCmRldmljZSBoYXMgYmVlbiByZW1vdmVk
LCBhbmQgZG9tYWluIGluZm8gcHJlc2VydmVkIG9uIGRldmljZSByZW1vdmFsIGlzIApzdWNjZXNz
ZnVsbHkgcmV1c2VkIG9uIGRldmljZSByZS1wbHVnLgoKSXMgdGhlcmUgYW55dGhpbmcgZWxzZSBJ
IGNhbiBkbyB0byBoZWxwPwoKVGhhbmtzLApKYW51c3oKCj4gCj4gQmVzdCByZWdhcmRzLAo+IEJh
b2x1Cj4gCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
