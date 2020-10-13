Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E773128C66D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 02:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61DE6E867;
	Tue, 13 Oct 2020 00:39:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDBCF6E867
 for <Intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 00:39:27 +0000 (UTC)
IronPort-SDR: b4K+V9nFAOOXZHgr5f4aonglUNwVRy/9PELa71IA/fXyry7mEBqX4ZXmHYPIy7LmbRiQQ/le+s
 CNnFB+2ccVaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="250519760"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="250519760"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 17:39:26 -0700
IronPort-SDR: y5z+hZ5cSYkx8JvU5SikKp8uKnzwJcOTZpQUxSZ2OpbG2uHta4q8jOnZrxRAVQIeMo6nhBc5zd
 USpox1hI//bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="345083735"
Received: from allen-box.sh.intel.com (HELO [10.239.159.139])
 ([10.239.159.139])
 by fmsmga004.fm.intel.com with ESMTP; 12 Oct 2020 17:39:24 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Joerg Roedel <joro@8bytes.org>, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>, Christoph Hellwig <hch@infradead.org>
References: <20200927063437.13988-1-baolu.lu@linux.intel.com>
 <e999e371-6d36-ffea-542f-a5f4b230b0ed@linux.intel.com>
 <c2af9a9d-1cae-b8f7-a0b3-880574060a23@linux.intel.com>
 <8bac9e91-36a0-c1d6-a887-4d60567ac75a@linux.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <dce088b4-38ab-a540-6ac0-05ecc0b60aae@linux.intel.com>
Date: Tue, 13 Oct 2020 08:32:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <8bac9e91-36a0-c1d6-a887-4d60567ac75a@linux.intel.com>
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

SGkgVHZydGtvLAoKT24gMTAvMTIvMjAgNDo0NCBQTSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4g
Cj4gT24gMjkvMDkvMjAyMCAwMToxMSwgTHUgQmFvbHUgd3JvdGU6Cj4+IEhpIFR2cnRrbywKPj4K
Pj4gT24gOS8yOC8yMCA1OjQ0IFBNLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4+Cj4+PiBPbiAy
Ny8wOS8yMDIwIDA3OjM0LCBMdSBCYW9sdSB3cm90ZToKPj4+PiBIaSwKPj4+Pgo+Pj4+IFRoZSBw
cmV2aW91cyBwb3N0IG9mIHRoaXMgc2VyaWVzIGNvdWxkIGJlIGZvdW5kIGhlcmUuCj4+Pj4KPj4+
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21tdS8yMDIwMDkxMjAzMjIwMC4xMTQ4
OS0xLWJhb2x1Lmx1QGxpbnV4LmludGVsLmNvbS8gCj4+Pj4KPj4+Pgo+Pj4+IFRoaXMgdmVyc2lv
biBpbnRyb2R1Y2UgYSBuZXcgcGF0Y2ggWzQvN10gdG8gZml4IGFuIGlzc3VlIHJlcG9ydGVkIGhl
cmUuCj4+Pj4KPj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21tdS81MWExYmFl
Yy00OGQxLWMwYWMtMTgxYi0xZmJhOTJhYTQyOGRAbGludXguaW50ZWwuY29tLyAKPj4+Pgo+Pj4+
Cj4+Pj4gVGhlcmUgYXJlbid0IGFueSBvdGhlciBjaGFuZ2VzLgo+Pj4+Cj4+Pj4gUGxlYXNlIGhl
bHAgdG8gdGVzdCBhbmQgcmV2aWV3Lgo+Pj4+Cj4+Pj4gQmVzdCByZWdhcmRzLAo+Pj4+IGJhb2x1
Cj4+Pj4KPj4+PiBMdSBCYW9sdSAoMyk6Cj4+Pj4gwqDCoCBpb21tdTogQWRkIHF1aXJrIGZvciBJ
bnRlbCBncmFwaGljIGRldmljZXMgaW4gbWFwX3NnCj4+Pgo+Pj4gU2luY2UgSSBkbyBoYXZlIHBh
dGNoZXMgdG8gZml4IGk5MTUgdG8gaGFuZGxlIHRoaXMsIGRvIHdlIHdhbnQgdG8gCj4+PiBjby1v
cmRpbmF0ZSB0aGUgdHdvIGFuZCBhdm9pZCBoYXZpbmcgdG8gYWRkIHRoaXMgcXVpcmsgYW5kIHRo
ZW4gbGF0ZXIgCj4+PiByZW1vdmUgaXQ/IE9yIHlvdSB3YW50IHRvIGdvIHRoZSBzdGFnZWQgYXBw
cm9hY2g/Cj4+Cj4+IEkgaGF2ZSBubyBwcmVmZXJlbmNlLiBJdCBkZXBlbmRzIG9uIHdoaWNoIHBh
dGNoIGdvZXMgZmlyc3QuIExldCB0aGUKPj4gbWFpbnRhaW5lcnMgaGVscCBoZXJlLgo+IAo+IEZZ
SSB3ZSBoYXZlIG1lcmdlZCB0aGUgcmVxdWlyZWQgaTkxNSBwYXRjaGVzIHRvIG91dCB0cmVlIGxh
c3Qgd2VlayBvciAKPiBzby4gSSAqdGhpbmsqIHRoaXMgbWVhbnMgdGhleSB3aWxsIGdvIGludG8g
NS4xMS4gU28gdGhlIGk5MTUgc3BlY2lmaWMgCj4gd29ya2Fyb3VuZCBwYXRjaCB3aWxsIG5vdCBi
ZSBuZWVkZWQgaW4gSW50ZWwgSU9NTVUuCgpUaGFua3MgZm9yIGxldHRpbmcgdXMga25vdyB0aGlz
LiBJIHdpbGwgZHJvcCB0aGUgd29ya2Fyb3VuZCBwYXRjaCBhbmQKdGVzdCB0aGUgd2hvbGUgc2Vy
aWVzIGFmdGVyIHRoZSBuZXh0IHJjMS4KCkJlc3QgcmVnYXJkcywKYmFvbHUKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
