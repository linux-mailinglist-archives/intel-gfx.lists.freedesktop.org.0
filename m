Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC3CA0EFF
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 03:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84ADE89ECD;
	Thu, 29 Aug 2019 01:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB80F89ECD
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 01:44:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 18:44:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="380606108"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by fmsmga005.fm.intel.com with ESMTP; 28 Aug 2019 18:44:48 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
 <29020717.Hl6jQjRASr@jkrzyszt-desk.ger.corp.intel.com>
 <8f505c10-6256-c561-1aea-b3817388c5b2@linux.intel.com>
 <3275480.HMaYE7B3nd@jkrzyszt-desk.ger.corp.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <0cf4e930-1132-1e7f-815b-57a08a1fe5de@linux.intel.com>
Date: Thu, 29 Aug 2019 09:43:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3275480.HMaYE7B3nd@jkrzyszt-desk.ger.corp.intel.com>
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

SGkgSmFudXN6LAoKT24gOC8yOC8xOSAxMDoxNyBQTSwgSmFudXN6IEtyenlzenRvZmlrIHdyb3Rl
Ogo+PiBXZSBzaG91bGQgYXZvaWQga2VybmVsIHBhbmljIHdoZW4gYSBpbnRlbF91bm1hcCgpIGlz
IGNhbGxlZCBhZ2FpbnN0Cj4+IGEgbm9uLWV4aXN0ZW50IGRvbWFpbi4KPiBEb2VzIHRoYXQgbWVh
biB5b3Ugc3VnZ2VzdCB0byByZXBsYWNlCj4gCUJVR19PTighZG9tYWluKTsKPiB3aXRoIHNvbWV0
aGluZyBsaWtlCj4gCWlmIChXQVJOX09OKCFkb21haW4pKQo+IAkJcmV0dXJuOwo+IGFuZCB0byBu
b3QgY2FyZSBvZiBvcnBoYW5lZCBtYXBwaW5ncyBsZWZ0IGFsbG9jYXRlZD8gIElzIHRoZXJlIGEg
d2F5IHRvIGluZm9ybQo+IHVzZXJzIHRoYXQgdGhlaXIgYWN0aXZlIERNQSBtYXBwaW5ncyBhcmUg
bm8gbG9uZ2VyIHZhbGlkIGFuZCB0aGV5IHNob3VsZG4ndAo+IGNhbGwgZG1hX3VubWFwXyooKT8K
PiAKPj4gQnV0IHdlIHNob3VsZG4ndCBleHBlY3QgdGhlIElPTU1VIGRyaXZlciBub3QKPj4gY2xl
YW5pbmcgdXAgdGhlIGRvbWFpbiBpbmZvIHdoZW4gYSBkZXZpY2UgcmVtb3ZlIG5vdGlmaWNhdGlv
biBjb21lcyBhbmQKPj4gd2FpdCB1bnRpbCBhbGwgZmlsZSBkZXNjcmlwdG9ycyBiZWluZyBjbG9z
ZWQsIHJpZ2h0Pwo+IFNob3VsZG4ndCB0aGVuIHRoZSBJT01NVSBkcml2ZXIgdGFrZSBjYXJlIG9m
IGNsZWFuaW5nIHVwIHJlc291cmNlcyBzdGlsbAo+IGFsbG9jYXRlZCBvbiBkZXZpY2UgcmVtb3Zl
IGJlZm9yZSBpdCBpbnZhbGlkYXRlcyBhbmQgZm9yZ2V0cyB0aGVpciBwb2ludGVycz8KPiAKCllv
dSBhcmUgcmlnaHQuIFdlIG5lZWQgdG8gd2FpdCB1bnRpbCBhbGwgYWxsb2NhdGVkIHJlc291cmNl
cyAoaW92YSBhbmQKbWFwcGluZ3MpIHRvIGJlIHJlbGVhc2VkLgoKSG93IGFib3V0IHJlZ2lzdGVy
aW5nIGEgY2FsbGJhY2sgZm9yIEJVU19OT1RJRllfVU5CT1VORF9EUklWRVIsIGFuZApyZW1vdmlu
ZyB0aGUgZG9tYWluIGluZm8gd2hlbiB0aGUgZHJpdmVyIGRldGFjaG1lbnQgY29tcGxldGVzPwoK
PiBUaGFua3MsCj4gSmFudXN6CgpCZXN0IHJlZ2FyZHMsCkJhb2x1Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
