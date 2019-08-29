Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E9EA1467
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 11:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95B8189259;
	Thu, 29 Aug 2019 09:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6167689270
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 09:09:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 02:09:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="380707285"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by fmsmga005.fm.intel.com with ESMTP; 29 Aug 2019 02:09:36 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
 <3275480.HMaYE7B3nd@jkrzyszt-desk.ger.corp.intel.com>
 <0cf4e930-1132-1e7f-815b-57a08a1fe5de@linux.intel.com>
 <3255251.C7nBVfOIaa@jkrzyszt-desk.ger.corp.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <ccb1434d-281c-abae-0726-7fd924041315@linux.intel.com>
Date: Thu, 29 Aug 2019 17:08:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3255251.C7nBVfOIaa@jkrzyszt-desk.ger.corp.intel.com>
Content-Language: en-US
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
 intel-gfx@lists.freedesktop.org, baolu.lu@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiA4LzI5LzE5IDM6NTggUE0sIEphbnVzeiBLcnp5c3p0b2ZpayB3cm90ZToKPiBIaSBC
YW9sdSwKPiAKPiBPbiBUaHVyc2RheSwgQXVndXN0IDI5LCAyMDE5IDM6NDM6MzEgQU0gQ0VTVCBM
dSBCYW9sdSB3cm90ZToKPj4gSGkgSmFudXN6LAo+Pgo+PiBPbiA4LzI4LzE5IDEwOjE3IFBNLCBK
YW51c3ogS3J6eXN6dG9maWsgd3JvdGU6Cj4+Pj4gV2Ugc2hvdWxkIGF2b2lkIGtlcm5lbCBwYW5p
YyB3aGVuIGEgaW50ZWxfdW5tYXAoKSBpcyBjYWxsZWQgYWdhaW5zdAo+Pj4+IGEgbm9uLWV4aXN0
ZW50IGRvbWFpbi4KPj4+IERvZXMgdGhhdCBtZWFuIHlvdSBzdWdnZXN0IHRvIHJlcGxhY2UKPj4+
IAlCVUdfT04oIWRvbWFpbik7Cj4+PiB3aXRoIHNvbWV0aGluZyBsaWtlCj4+PiAJaWYgKFdBUk5f
T04oIWRvbWFpbikpCj4+PiAJCXJldHVybjsKPj4+IGFuZCB0byBub3QgY2FyZSBvZiBvcnBoYW5l
ZCBtYXBwaW5ncyBsZWZ0IGFsbG9jYXRlZD8gIElzIHRoZXJlIGEgd2F5IHRvCj4gaW5mb3JtCj4+
PiB1c2VycyB0aGF0IHRoZWlyIGFjdGl2ZSBETUEgbWFwcGluZ3MgYXJlIG5vIGxvbmdlciB2YWxp
ZCBhbmQgdGhleQo+IHNob3VsZG4ndAo+Pj4gY2FsbCBkbWFfdW5tYXBfKigpPwo+Pj4KPj4+PiBC
dXQgd2Ugc2hvdWxkbid0IGV4cGVjdCB0aGUgSU9NTVUgZHJpdmVyIG5vdAo+Pj4+IGNsZWFuaW5n
IHVwIHRoZSBkb21haW4gaW5mbyB3aGVuIGEgZGV2aWNlIHJlbW92ZSBub3RpZmljYXRpb24gY29t
ZXMgYW5kCj4+Pj4gd2FpdCB1bnRpbCBhbGwgZmlsZSBkZXNjcmlwdG9ycyBiZWluZyBjbG9zZWQs
IHJpZ2h0Pwo+Pj4gU2hvdWxkbid0IHRoZW4gdGhlIElPTU1VIGRyaXZlciB0YWtlIGNhcmUgb2Yg
Y2xlYW5pbmcgdXAgcmVzb3VyY2VzIHN0aWxsCj4+PiBhbGxvY2F0ZWQgb24gZGV2aWNlIHJlbW92
ZSBiZWZvcmUgaXQgaW52YWxpZGF0ZXMgYW5kIGZvcmdldHMgdGhlaXIKPiBwb2ludGVycz8KPj4+
Cj4+Cj4+IFlvdSBhcmUgcmlnaHQuIFdlIG5lZWQgdG8gd2FpdCB1bnRpbCBhbGwgYWxsb2NhdGVk
IHJlc291cmNlcyAoaW92YSBhbmQKPj4gbWFwcGluZ3MpIHRvIGJlIHJlbGVhc2VkLgo+Pgo+PiBI
b3cgYWJvdXQgcmVnaXN0ZXJpbmcgYSBjYWxsYmFjayBmb3IgQlVTX05PVElGWV9VTkJPVU5EX0RS
SVZFUiwgYW5kCj4+IHJlbW92aW5nIHRoZSBkb21haW4gaW5mbyB3aGVuIHRoZSBkcml2ZXIgZGV0
YWNobWVudCBjb21wbGV0ZXM/Cj4gCj4gRGV2aWNlIGNvcmUgY2FsbHMgQlVTX05PVElGWV9VTkJP
VU5EX0RSSVZFUiBvbiBlYWNoIGRyaXZlciB1bmJpbmQsIHJlZ2FyZGxlc3MKPiBvZiBhIGRldmlj
ZSBiZWluZyByZW1vdmVkIG9yIG5vdC4gIEFzIGxvbmcgYXMgdGhlIGRldmljZSBpcyBub3QgdW5w
bHVnZ2VkIGFuZAo+IHRoZSBCVVNfTk9USUZZX1JFTU9WRURfREVWSUNFIG5vdGlmaWNhdGlvbiBu
b3QgZ2VuZXJhdGVkLCBhbiB1bmJvdW5kIGRyaXZlciBpcwo+IG5vdCBhIHByb2JsZW0gaGVyZS4K
PiBNb3JldmVyLCBCVVNfTk9USUZZX1VOQk9VTkRfRFJJVkVSICBpcyBjYWxsZWQgZXZlbiBiZWZv
cmUKPiBCVVNfTk9USUZZX1JFTU9WRURfREVWSUNFIHNvIHRoYXQgd291bGRuJ3QgaGVscCBhbnl3
YXkuCj4gTGFzdCBidXQgbm90IGxlYXN0LCBidXMgZXZlbnRzIGFyZSBpbmRlcGVuZGVudCBvZiB0
aGUgSU9NTVUgZHJpdmVyIHVzZSB2aWEKPiBETUEtQVBJIGl0IGV4cG9zZXMuCgpGYWlyIGVub3Vn
aC4KCj4gCj4gSWYga2VlcGluZyBkYXRhIGZvciB1bnBsdWdnZWQgZGV2aWNlcyBhbmQgcmV1c2lu
ZyBpdCBvbiBkZXZpY2UgcmUtcGx1ZyBpcyBub3QKPiBhY2NlcHRhYmxlIHRoZW4gbWF5YmUgdGhl
IElPTU1VIGRyaXZlciBzaG91bGQgcGVyZm9ybSByZWZlcmVuY2UgY291bnRpbmcgb2YKPiBpdHMg
aW50ZXJuYWwgcmVzb3VyY2VzIG9jY3VwaWVkIGJ5IERNQS1BUEkgdXNlcnMgYW5kIHBlcmZvcm0g
Y2xlYW51cHMgb24gbGFzdAo+IHJlbGVhc2U/CgpJIGFtIG5vdCBzYXlpbmcgdGhhdCBrZWVwaW5n
IGRhdGEgaXMgbm90IGFjY2VwdGFibGUuIEkganVzdCB3YW50IHRvCmNoZWNrIHdoZXRoZXIgdGhl
cmUgYXJlIGFueSBvdGhlciBzb2x1dGlvbnMuCgpCZXN0IHJlZ2FyZHMsCkJhb2x1Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
