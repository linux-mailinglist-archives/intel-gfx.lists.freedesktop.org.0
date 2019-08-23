Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 491319A513
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 03:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378536EA61;
	Fri, 23 Aug 2019 01:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CDE46EA61
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 01:52:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 18:52:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,419,1559545200"; d="scan'208";a="173330337"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by orsmga008.jf.intel.com with ESMTP; 22 Aug 2019 18:52:21 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 David Woodhouse <dwmw2@infradead.org>, Joerg Roedel <joro@8bytes.org>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <00f1a3a7-7ff6-e9a0-d9de-a177af6fd64b@linux.intel.com>
Date: Fri, 23 Aug 2019 09:51:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
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
Cc: linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 intel-gfx@lists.freedesktop.org, baolu.lu@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiA4LzIyLzE5IDEwOjI5IFBNLCBKYW51c3ogS3J6eXN6dG9maWsgd3JvdGU6Cj4gV2hl
biBhIHBlcmZlY3RseSB3b3JraW5nIGk5MTUgZGV2aWNlIGlzIGhvdCB1bnBsdWdnZWQgKHZpYSBz
eXNmcykgYW5kCj4gaG90IHJlLXBsdWdnZWQgYWdhaW4sIGl0cyBkZXYtPmFyY2hkYXRhLmlvbW11
IGZpZWxkIGlzIG5vdCBwb3B1bGF0ZWQKPiBhZ2FpbiB3aXRoIGFuIElPTU1VIHBvaW50ZXIuICBB
cyBhIHJlc3VsdCwgdGhlIGRldmljZSBwcm9iZSBmYWlscyBvbgo+IERNQSBtYXBwaW5nIGVycm9y
IGR1cmluZyBzY3JhdGNoIHBhZ2Ugc2V0dXAuCj4gCj4gSXQgbG9va3MgbGlrZSB0aGF0IGhhcHBl
bnMgYmVjYXVzZSBkZXZpY2VzIGFyZSBub3QgZGV0YWNoZWQgZnJvbSB0aGVpcgo+IE1NVUlPIGJ1
cyBiZWZvcmUgdGhleSBhcmUgcmVtb3ZlZCBvbiBkZXZpY2UgdW5wbHVnLiAgVGhlbiwgd2hlbiBh
bgo+IGFscmVhZHkgcmVnaXN0ZXJlZCBkZXZpY2UvSU9NTVUgYXNzb2NpYXRpb24gaXMgaWRlbnRp
ZmllZCBieSB0aGUKPiByZWluc3RhbnRpYXRlZCBkZXZpY2UncyBidXMgYW5kIGZ1bmN0aW9uIElE
cyBvbiBJT01NVSBidXMgcmUtYXR0YWNoCj4gYXR0ZW1wdCwgdGhlIGRldmljZSdzIGFyY2hkYXRh
IGlzIG5vdCBwb3B1bGF0ZWQgd2l0aCBJT01NVSBpbmZvcm1hdGlvbgo+IGFuZCB0aGUgYmFkIGhh
cHBlbnMuCj4gCj4gSSdtIG5vdCBzdXJlIGlmIHRoaXMgaXMgYSBwcm9wZXIgZml4IGJ1dCBpdCB3
b3JrcyBmb3IgbWUgc28gYXQgbGVhc3QgaXQKPiBjb25maXJtcyBjb3JyZWN0bmVzcyBvZiBteSBh
bmFseXNpcyByZXN1bHRzLCBJIGJlbGlldmUuICBTbyBmYXIgSQo+IGhhdmVuJ3QgYmVlbiBhYmxl
IHRvIGlkZW50aWZ5IGEgZ29vZCBwbGFjZSB3aGVyZSB0aGUgcG9zc2libHkgbWlzc2luZwo+IElP
TU1VIGJ1cyBkZXRhY2ggb24gZGV2aWNlIHVucGx1ZyBvcGVyYXRpb24gY291bGQgYmUgYWRkZWQu
CgpXaGljaCBrZXJuZWwgdmVyc2lvbiBhcmUgeW91IHRlc3Rpbmcgd2l0aD8gRG9lcyBpdCBjb250
YWluIGJlbG93IGNvbW1pdD8KCmNvbW1pdCA0NThiN2M4ZTBkZGUxMmQxNDBlMzQ3MmI4MDkxOWNi
YjlhZTc5M2Y0CkF1dGhvcjogTHUgQmFvbHUgPGJhb2x1Lmx1QGxpbnV4LmludGVsLmNvbT4KRGF0
ZTogICBUaHUgQXVnIDEgMTE6MTQ6NTggMjAxOSArMDgwMAoKICAgICBpb21tdS92dC1kOiBEZXRh
Y2ggZG9tYWluIHdoZW4gbW92ZSBkZXZpY2Ugb3V0IG9mIGdyb3VwCgogICAgIFdoZW4gcmVtb3Zp
bmcgYSBkZXZpY2UgZnJvbSBhbiBpb21tdSBncm91cCwgdGhlIGRvbWFpbiBzaG91bGQKICAgICBi
ZSBkZXRhY2hlZCBmcm9tIHRoZSBkZXZpY2UuIE90aGVyd2lzZSwgdGhlIHN0YWxlIGRvbWFpbiBp
bmZvCiAgICAgd2lsbCBzdGlsbCBiZSBjYWNoZWQgYnkgdGhlIGRyaXZlciBhbmQgdGhlIGRyaXZl
ciB3aWxsIHJlZnVzZQogICAgIHRvIGF0dGFjaCBhbnkgZG9tYWluIHRvIHRoZSBkZXZpY2UgYWdh
aW4uCgogICAgIENjOiBBc2hvayBSYWogPGFzaG9rLnJhakBpbnRlbC5jb20+CiAgICAgQ2M6IEph
Y29iIFBhbiA8amFjb2IuanVuLnBhbkBsaW51eC5pbnRlbC5jb20+CiAgICAgQ2M6IEtldmluIFRp
YW4gPGtldmluLnRpYW5AaW50ZWwuY29tPgogICAgIEZpeGVzOiBiNzI5Nzc4M2MyYmI2ICgiaW9t
bXUvdnQtZDogUmVtb3ZlIGR1cGxpY2F0ZWQgY29kZSBmb3IgCmRldmljZSBob3RwbHVnIikKICAg
ICBSZXBvcnRlZC1hbmQtdGVzdGVkLWJ5OiBWbGFkIEJ1c2xvdiA8dmxhZGJ1QG1lbGxhbm94LmNv
bT4KICAgICBTdWdnZXN0ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+
CiAgICAgTGluazogaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNy8yNi8xMTMzCiAgICAgU2ln
bmVkLW9mZi1ieTogTHUgQmFvbHUgPGJhb2x1Lmx1QGxpbnV4LmludGVsLmNvbT4KICAgICBTaWdu
ZWQtb2ZmLWJ5OiBKb2VyZyBSb2VkZWwgPGpyb2VkZWxAc3VzZS5kZT4KCkJlc3QgcmVnYXJkcywK
THUgQmFvbHUKCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3ou
a3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9pb21tdS9pbnRl
bC1pb21tdS5jIHwgMyArKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9pbnRlbC1pb21tdS5jIGIvZHJpdmVycy9pb21t
dS9pbnRlbC1pb21tdS5jCj4gaW5kZXggMTJkMDk0ZDA4YzBhLi43Y2RjZDA1OTU0MDggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9pb21tdS9pbnRlbC1pb21tdS5jCj4gKysrIGIvZHJpdmVycy9pb21t
dS9pbnRlbC1pb21tdS5jCj4gQEAgLTI0NzcsNiArMjQ3Nyw5IEBAIHN0YXRpYyBzdHJ1Y3QgZG1h
cl9kb21haW4gKmRtYXJfaW5zZXJ0X29uZV9kZXZfaW5mbyhzdHJ1Y3QgaW50ZWxfaW9tbXUgKmlv
bW11LAo+ICAgCQlpZiAoaW5mbzIpIHsKPiAgIAkJCWZvdW5kICAgICAgPSBpbmZvMi0+ZG9tYWlu
Owo+ICAgCQkJaW5mbzItPmRldiA9IGRldjsKPiArCj4gKwkJCWlmIChkZXYgJiYgIWRldi0+YXJj
aGRhdGEuaW9tbXUpCj4gKwkJCQlkZXYtPmFyY2hkYXRhLmlvbW11ID0gaW5mbzI7Cj4gICAJCX0K
PiAgIAl9Cj4gICAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
