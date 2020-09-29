Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C41BF27B8C4
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 02:17:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1D1089FEC;
	Tue, 29 Sep 2020 00:17:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C236F89FEC
 for <Intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 00:17:49 +0000 (UTC)
IronPort-SDR: Huf98/w6hAncuOKml38Fyr54ePo2SHmZoDUxj0Ig+YgTLIahOQgAKJLsW7sGp/mfsq1gqmJZv9
 H97J98R0/WaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="246824733"
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="246824733"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 17:17:49 -0700
IronPort-SDR: vBRBwymd2PTiWX2JYPy/kVamnLH16EZO03swENsMtJAUXMzMi//4+COfuiuFAY5Az4SbuQygQB
 dsW9T/Fk2OZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="415182150"
Received: from allen-box.sh.intel.com (HELO [10.239.159.139])
 ([10.239.159.139])
 by fmsmga001.fm.intel.com with ESMTP; 28 Sep 2020 17:17:47 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Joerg Roedel <joro@8bytes.org>, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>, Christoph Hellwig <hch@infradead.org>
References: <20200927063437.13988-1-baolu.lu@linux.intel.com>
 <e999e371-6d36-ffea-542f-a5f4b230b0ed@linux.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <c2af9a9d-1cae-b8f7-a0b3-880574060a23@linux.intel.com>
Date: Tue, 29 Sep 2020 08:11:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e999e371-6d36-ffea-542f-a5f4b230b0ed@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 0/7] Convert the intel iommu driver to
 the dma-iommu api
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
Cc: linux-kernel@vger.kernel.org, Intel-gfx@lists.freedesktop.org,
 Ashok Raj <ashok.raj@intel.com>, iommu@lists.linux-foundation.org,
 baolu.lu@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVHZydGtvLAoKT24gOS8yOC8yMCA1OjQ0IFBNLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiAK
PiBPbiAyNy8wOS8yMDIwIDA3OjM0LCBMdSBCYW9sdSB3cm90ZToKPj4gSGksCj4+Cj4+IFRoZSBw
cmV2aW91cyBwb3N0IG9mIHRoaXMgc2VyaWVzIGNvdWxkIGJlIGZvdW5kIGhlcmUuCj4+Cj4+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11LzIwMjAwOTEyMDMyMjAwLjExNDg5LTEt
YmFvbHUubHVAbGludXguaW50ZWwuY29tLyAKPj4KPj4KPj4gVGhpcyB2ZXJzaW9uIGludHJvZHVj
ZSBhIG5ldyBwYXRjaCBbNC83XSB0byBmaXggYW4gaXNzdWUgcmVwb3J0ZWQgaGVyZS4KPj4KPj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtaW9tbXUvNTFhMWJhZWMtNDhkMS1jMGFjLTE4
MWItMWZiYTkyYWE0MjhkQGxpbnV4LmludGVsLmNvbS8gCj4+Cj4+Cj4+IFRoZXJlIGFyZW4ndCBh
bnkgb3RoZXIgY2hhbmdlcy4KPj4KPj4gUGxlYXNlIGhlbHAgdG8gdGVzdCBhbmQgcmV2aWV3Lgo+
Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+IGJhb2x1Cj4+Cj4+IEx1IEJhb2x1ICgzKToKPj4gwqDCoCBp
b21tdTogQWRkIHF1aXJrIGZvciBJbnRlbCBncmFwaGljIGRldmljZXMgaW4gbWFwX3NnCj4gCj4g
U2luY2UgSSBkbyBoYXZlIHBhdGNoZXMgdG8gZml4IGk5MTUgdG8gaGFuZGxlIHRoaXMsIGRvIHdl
IHdhbnQgdG8gCj4gY28tb3JkaW5hdGUgdGhlIHR3byBhbmQgYXZvaWQgaGF2aW5nIHRvIGFkZCB0
aGlzIHF1aXJrIGFuZCB0aGVuIGxhdGVyIAo+IHJlbW92ZSBpdD8gT3IgeW91IHdhbnQgdG8gZ28g
dGhlIHN0YWdlZCBhcHByb2FjaD8KCkkgaGF2ZSBubyBwcmVmZXJlbmNlLiBJdCBkZXBlbmRzIG9u
IHdoaWNoIHBhdGNoIGdvZXMgZmlyc3QuIExldCB0aGUKbWFpbnRhaW5lcnMgaGVscCBoZXJlLgoK
QmVzdCByZWdhcmRzLApiYW9sdQoKPiAKPiBSZWdhcmRzLAo+IAo+IFR2cnRrbwo+IAo+PiDCoMKg
IGlvbW11L3Z0LWQ6IFVwZGF0ZSBkb21haW4gZ2VvbWV0cnkgaW4gaW9tbXVfb3BzLmF0KGRlKXRh
Y2hfZGV2Cj4+IMKgwqAgaW9tbXUvdnQtZDogQ2xlYW51cCBhZnRlciBjb252ZXJ0aW5nIHRvIGRt
YS1pb21tdSBvcHMKPj4KPj4gVG9tIE11cnBoeSAoNCk6Cj4+IMKgwqAgaW9tbXU6IEhhbmRsZSBm
cmVlbGlzdHMgd2hlbiB1c2luZyBkZWZlcnJlZCBmbHVzaGluZyBpbiBpb21tdSBkcml2ZXJzCj4+
IMKgwqAgaW9tbXU6IEFkZCBpb21tdV9kbWFfZnJlZV9jcHVfY2FjaGVkX2lvdmFzKCkKPj4gwqDC
oCBpb21tdTogQWxsb3cgdGhlIGRtYS1pb21tdSBhcGkgdG8gdXNlIGJvdW5jZSBidWZmZXJzCj4+
IMKgwqAgaW9tbXUvdnQtZDogQ29udmVydCBpbnRlbCBpb21tdSBkcml2ZXIgdG8gdGhlIGlvbW11
IG9wcwo+Pgo+PiDCoCAuLi4vYWRtaW4tZ3VpZGUva2VybmVsLXBhcmFtZXRlcnMudHh0wqDCoMKg
wqDCoMKgwqDCoCB8wqDCoCA1IC0KPj4gwqAgZHJpdmVycy9pb21tdS9kbWEtaW9tbXUuY8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyMjggKysrKy0KPj4gwqAgZHJp
dmVycy9pb21tdS9pbnRlbC9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHzCoMKgIDEgKwo+PiDCoCBkcml2ZXJzL2lvbW11L2ludGVsL2lvbW11LmPCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA5MDEgKysrLS0tLS0tLS0tLS0tLS0tCj4+IMKg
IGluY2x1ZGUvbGludXgvZG1hLWlvbW11LmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHzCoMKgIDggKwo+PiDCoCBpbmNsdWRlL2xpbnV4L2lvbW11LmjCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+IMKgIDYg
ZmlsZXMgY2hhbmdlZCwgMzM2IGluc2VydGlvbnMoKyksIDgwOCBkZWxldGlvbnMoLSkKPj4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
