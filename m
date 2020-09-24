Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C43A276692
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 04:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5875B6EA65;
	Thu, 24 Sep 2020 02:42:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392096EA65
 for <Intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 02:42:02 +0000 (UTC)
IronPort-SDR: XQ0+bW0nNPGaAPLZ4RCbl8jjBWjv9yUftKBUpQxMo1gp0hFOq6kyBAaVqgyGBEUmp8jmnW8FNM
 0Pw6L/jYRKoQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="179148991"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="179148991"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 19:42:01 -0700
IronPort-SDR: asylT+JbdLNXq6L0zm+GPs77pxTgYnTgoBkQW1BuBc8Pi7Q6+pWojFR9A2tsXYVeeHZ1BtbX+s
 9RGRjnVy7Jyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="413193282"
Received: from allen-box.sh.intel.com (HELO [10.239.159.139])
 ([10.239.159.139])
 by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2020 19:41:59 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Joerg Roedel <joro@8bytes.org>, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>, Christoph Hellwig <hch@infradead.org>
References: <20200912032200.11489-1-baolu.lu@linux.intel.com>
 <51a1baec-48d1-c0ac-181b-1fba92aa428d@linux.intel.com>
 <001f4446-7c43-9832-42d8-55dc4a13c2ae@linux.intel.com>
 <9173fed9-e60f-5189-e17d-b23bfabdaa38@linux.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <a689dd8f-5390-fd4e-ab91-5ba5549faa9c@linux.intel.com>
Date: Thu, 24 Sep 2020 10:35:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9173fed9-e60f-5189-e17d-b23bfabdaa38@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 0/6] Convert the intel iommu driver to
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

SGkgVHZydGtvLAoKT24gOS8xNS8yMCA0OjMxIFBNLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4+
IFdpdGggdGhlIHByZXZpb3VzIHZlcnNpb24gb2YgdGhlIHNlcmllcyBJIGhpdCBhIHByb2JsZW0g
b24gSXZ5YnJpZGdlIAo+Pj4gd2hlcmUgYXBwYXJlbnRseSB0aGUgZG1hIGVuZ2luZSB3aWR0aCBp
cyBub3QgcmVzcGVjdGVkLiBBdCBsZWFzdCB0aGF0IAo+Pj4gaXMgbXkgbGF5bWFuIGludGVycHJl
dGF0aW9uIG9mIHRoZSBlcnJvcnMuIEZyb20gdGhlIG9sZGVyIHRocmVhZDoKPj4+Cj4+PiA8Mz4g
WzIwOS41MjY2MDVdIERNQVI6IGludGVsX2lvbW11X21hcDogaW9tbXUgd2lkdGggKDM5KSBpcyBu
b3QgCj4+PiBzdWZmaWNpZW50IGZvciB0aGUgbWFwcGVkIGFkZHJlc3MgKGZmZmYwMDgwMDApCj4+
Pgo+Pj4gUmVsZXZhbnQgaW9tbXUgYm9vdCByZWxhdGVkIG1lc3NhZ2VzIGFyZToKPj4+Cj4+PiA8
Nj5bwqDCoMKgIDAuMTg0MjM0XSBETUFSOiBIb3N0IGFkZHJlc3Mgd2lkdGggMzYKPj4+IDw2PlvC
oMKgwqAgMC4xODQyNDVdIERNQVI6IERSSEQgYmFzZTogMHgwMDAwMDBmZWQ5MDAwMCBmbGFnczog
MHgwCj4+PiA8Nj5bwqDCoMKgIDAuMTg0Mjg4XSBETUFSOiBkbWFyMDogcmVnX2Jhc2VfYWRkciBm
ZWQ5MDAwMCB2ZXIgMTowIGNhcCAKPj4+IGMwMDAwMDIwZTYwMjYyIGVjYXAgZjAxMDFhCj4+PiA8
Nj5bwqDCoMKgIDAuMTg0MzA4XSBETUFSOiBEUkhEIGJhc2U6IDB4MDAwMDAwZmVkOTEwMDAgZmxh
Z3M6IDB4MQo+Pj4gPDY+W8KgwqDCoCAwLjE4NDMzN10gRE1BUjogZG1hcjE6IHJlZ19iYXNlX2Fk
ZHIgZmVkOTEwMDAgdmVyIDE6MCBjYXAgCj4+PiBjOTAwODAyMDY2MDI2MiBlY2FwIGYwMTA1YQo+
Pj4gPDY+W8KgwqDCoCAwLjE4NDM1N10gRE1BUjogUk1SUiBiYXNlOiAweDAwMDAwMGQ4ZDI4MDAw
IGVuZDogCj4+PiAweDAwMDAwMGQ4ZDQ2ZmZmCj4+PiA8Nj5bwqDCoMKgIDAuMTg0Mzc3XSBETUFS
OiBSTVJSIGJhc2U6IDB4MDAwMDAwZGIwMDAwMDAgZW5kOiAKPj4+IDB4MDAwMDAwZGYxZmZmZmYK
Pj4+IDw2PlvCoMKgwqAgMC4xODQzOThdIERNQVItSVI6IElPQVBJQyBpZCAyIHVuZGVyIERSSEQg
YmFzZcKgIDB4ZmVkOTEwMDAgCj4+PiBJT01NVSAxCj4+PiA8Nj5bwqDCoMKgIDAuMTg0NDE0XSBE
TUFSLUlSOiBIUEVUIGlkIDAgdW5kZXIgRFJIRCBiYXNlIDB4ZmVkOTEwMDAKPj4+IDw2PlvCoMKg
wqAgMC4xODQ0MjhdIERNQVItSVI6IFF1ZXVlZCBpbnZhbGlkYXRpb24gd2lsbCBiZSBlbmFibGVk
IHRvIAo+Pj4gc3VwcG9ydCB4MmFwaWMgYW5kIEludHItcmVtYXBwaW5nLgo+Pj4gPDY+W8KgwqDC
oCAwLjE4NTE3M10gRE1BUi1JUjogRW5hYmxlZCBJUlEgcmVtYXBwaW5nIGluIHgyYXBpYyBtb2Rl
Cj4+Pgo+Pj4gPDY+W8KgwqDCoCAwLjg3ODkzNF0gRE1BUjogTm8gQVRTUiBmb3VuZAo+Pj4gPDY+
W8KgwqDCoCAwLjg3ODk2Nl0gRE1BUjogZG1hcjA6IFVzaW5nIFF1ZXVlZCBpbnZhbGlkYXRpb24K
Pj4+IDw2PlvCoMKgwqAgMC44NzkwMDddIERNQVI6IGRtYXIxOiBVc2luZyBRdWV1ZWQgaW52YWxp
ZGF0aW9uCj4+Pgo+Pj4gPDY+W8KgwqDCoCAwLjkxNTAzMl0gRE1BUjogSW50ZWwoUikgVmlydHVh
bGl6YXRpb24gVGVjaG5vbG9neSBmb3IgCj4+PiBEaXJlY3RlZCBJL08KPj4+IDw2PlvCoMKgwqAg
MC45MTUwNjBdIFBDSS1ETUE6IFVzaW5nIHNvZnR3YXJlIGJvdW5jZSBidWZmZXJpbmcgZm9yIElP
IAo+Pj4gKFNXSU9UTEIpCj4+PiA8Nj5bwqDCoMKgIDAuOTE1MDg0XSBzb2Z0d2FyZSBJTyBUTEI6
IG1hcHBlZCBbbWVtIDB4YzgwZDQwMDAtMHhjYzBkNDAwMF0gCj4+PiAoNjRNQikKPj4+Cj4+PiAo
RnVsbCBib290IGxvZyBhdCAKPj4+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvVHJ5Ym90XzcwNTQvZmktaXZiLTM3NzAvYm9vdDAudHh0LCAKPj4+IGZhaWx1cmVzIGF0
IAo+Pj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Ucnlib3RfNzA1
NC9maS1pdmItMzc3MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGJsdC5odG1sLikgCj4+Pgo+Pj4K
Pj4+IERvZXMgdGhpcyBsb29rIGZhbWlsaWFyIG9yIGF0IGxlYXN0IHBsYXVzaWJsZSB0byB5b3U/
IElzIHRoaXMgCj4+PiBzb21ldGhpbmcgeW91ciBuZXcgc2VyaWVzIGhhcyBmaXhlZD8KPj4KPj4g
VGhpcyBoYXBwZW5zIGR1cmluZyBhdHRhY2hpbmcgYSBkb21haW4gdG8gZGV2aWNlLiBJdCBoYXMg
bm90aGluZyB0byBkbwo+PiB3aXRoIHRoaXMgcGF0Y2ggc2VyaWVzLiBJIHdpbGwgbG9vayBpbnRv
IHRoaXMgaXNzdWUsIGJ1dCBub3QgaW4gdGhpcwo+PiBlbWFpbCB0aHJlYWQgY29udGV4dC4KPiAK
PiBJIGFtIG5vdCBzdXJlIHdoYXQgc3RlcCBpcyBhdHRhY2hpbmcgZG9tYWluIHRvIGRldmljZSwg
YnV0IHRoZXNlIHR5cGUgCj4gbWVzc2FnZXM6Cj4gCj4gPDM+IFsyMDkuNTI2NjA1XSBETUFSOiBp
bnRlbF9pb21tdV9tYXA6IGlvbW11IHdpZHRoICgzOSkgaXMgbm90Cj4gID4+IHN1ZmZpY2llbnQg
Zm9yIHRoZSBtYXBwZWQgYWRkcmVzcyAoZmZmZjAwODAwMCkKPiAKPiBUaGV5IGRlZmluaXRlbHkg
YXBwZWFyIHRvIGhhcHBlbiBhdCBydW50aW1lLCBhcyBpOTE1IGlzIGdldHRpbmcgCj4gZXhlcmNp
c2VkIGJ5IHVzZXJzcGFjZS4KCkNhbiB5b3UgcGxlYXNlIGNoZWNrIHdoZXRoZXIgYmVsb3cgY2hh
bmdlIGhlbHBzIGhlcmU/CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9pbnRlbC9pb21tdS5j
IGIvZHJpdmVycy9pb21tdS9pbnRlbC9pb21tdS5jCmluZGV4IGM4MzIzYTlmOGJkZS4uMDQ4NGM1
MzlkZWJjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lvbW11L2ludGVsL2lvbW11LmMKKysrIGIvZHJp
dmVycy9pb21tdS9pbnRlbC9pb21tdS5jCkBAIC03MjQsNiArNzI0LDcgQEAgc3RhdGljIGludCBk
b21haW5fdXBkYXRlX2RldmljZV9ub2RlKHN0cnVjdCAKZG1hcl9kb21haW4gKmRvbWFpbikKICAv
KiBTb21lIGNhcGFiaWxpdGllcyBtYXkgYmUgZGlmZmVyZW50IGFjcm9zcyBpb21tdXMgKi8KICBz
dGF0aWMgdm9pZCBkb21haW5fdXBkYXRlX2lvbW11X2NhcChzdHJ1Y3QgZG1hcl9kb21haW4gKmRv
bWFpbikKICB7CisgICAgICAgZG9tYWluLT5nZW9tZXRyeS5hcGVydHVyZV9lbmQgPSBfX0RPTUFJ
Tl9NQVhfQUREUihkbWFyX2RvbWFpbi0+Z2F3KTsKICAgICAgICAgZG9tYWluX3VwZGF0ZV9pb21t
dV9jb2hlcmVuY3koZG9tYWluKTsKICAgICAgICAgZG9tYWluLT5pb21tdV9zbm9vcGluZyA9IGRv
bWFpbl91cGRhdGVfaW9tbXVfc25vb3BpbmcoTlVMTCk7CiAgICAgICAgIGRvbWFpbi0+aW9tbXVf
c3VwZXJwYWdlID0gZG9tYWluX3VwZGF0ZV9pb21tdV9zdXBlcnBhZ2UoZG9tYWluLCAKTlVMTCk7
CgpCZXN0IHJlZ2FyZHMsCmJhb2x1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
