Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EF63B1B4A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 15:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E4436E0FD;
	Wed, 23 Jun 2021 13:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C97986E0FD;
 Wed, 23 Jun 2021 13:38:18 +0000 (UTC)
IronPort-SDR: tmNkx8BjDvNMerOLYD1oRQB8j8reDMLR9dnM8dbIP8cpvYa09oz3tnOIjU5zz3OHoDGbL5HCSq
 K21yoWUphH5A==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="207303759"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="207303759"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:38:18 -0700
IronPort-SDR: 67FtzThmrc+WMNzI657Eo3Qoz/sEqioLFx5yLJT6Hhj++h4QktoEpdOYtLFr18BhpfqHIinPvw
 JGAdhvnmFMzg==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="556146595"
Received: from dconnon-mobl.ger.corp.intel.com (HELO [10.252.14.111])
 ([10.252.14.111])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:38:17 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210623112637.266855-1-matthew.auld@intel.com>
 <20210623112637.266855-3-matthew.auld@intel.com>
 <62c8a7a3-dcdd-ec6d-a976-7203e406d364@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <fbb13fc4-18bb-8e92-71b6-7a4a7d84b633@intel.com>
Date: Wed, 23 Jun 2021 14:38:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <62c8a7a3-dcdd-ec6d-a976-7203e406d364@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gtt: ignore min_page_size for
 paging structures
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
Cc: dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjMvMDYvMjAyMSAxNDozMiwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gCj4gT24gNi8y
My8yMSAxOjI2IFBNLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+IFRoZSBtaW5fcGFnZV9zaXplIGlz
IG9ubHkgbmVlZGVkIGZvciBwYWdlcyBpbnNlcnRlZCBpbnRvIHRoZSBHVFQsIGFuZAo+PiBmb3Ig
b3VyIHBhZ2luZyBzdHJ1Y3R1cmVzIHdlIG9ubHkgbmVlZCBhdCBtb3N0IDRLIGJ5dGVzLCBzbyBz
aW1wbHkKPj4gaWdub3JlIHRoZSBtaW5fcGFnZV9zaXplIHJlc3RyaWN0aW9ucyBoZXJlLCBvdGhl
cndpc2Ugd2UgbWlnaHQgc2VlIHNvbWUKPj4gc2V2ZXJlIG92ZXJhbGxvY2F0aW9uIG9uIHNvbWUg
ZGV2aWNlcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRA
aW50ZWwuY29tPgo+PiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGlu
dXguaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3R0LmMgfCAyICstCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3R0LmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMKPj4gaW5kZXgg
MDg0ZWE2NWQ1OWMwLi42MWU4YThjMjUzNzQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0dC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0dC5jCj4+IEBAIC0xNiw3ICsxNiw3IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICphbGxvY19wdF9sbWVtKHN0cnVjdCAKPj4gaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwgaW50IHN6
KQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsK
Pj4gLcKgwqDCoCBvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2xtZW0odm0tPmk5MTUsIHN6
LCAwKTsKPj4gK8KgwqDCoCBvYmogPSBfX2k5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbV93aXRo
X3BzKHZtLT5pOTE1LCBzeiwgc3osIDApOwo+IAo+IFNvIGlzIHRoaXMgbWVtb3J5IGFsd2F5cyBy
ZXF1aXJlZCB0byBiZSBzaXplIGFsaWduZWQ/IG9yIHNob3VsZCBpdCBzYXkgCj4gc3osIFBBR0Vf
U0laRT8KClRoZSBzY3JhdGNoIHBhZ2UgYWxzbyBoaXRzIHRoaXMgcGF0aCwgd2hpY2ggaXMgYW5v
dGhlciBjYW4gb2Ygd29ybXMuIEluIAp0ZXJtcyBvZiBzaXplIGl0IG1pZ2h0IG5lZWQgdG8gYmUg
NjRLKHdpdGggcHJvcGVyIHBoeXNpY2FsIGFsaWdubWVudCksIAp3aGljaCBpcyB3aHkgd2UgY2Fu
J3QgZm9yY2UgNEsgaGVyZSwgYW5kIGluc3RlYWQgbmVlZCB0byB1c2UgdGhlIHBhc3NlZCAKaW4g
c2l6ZSwgd2hlcmUgdGhlIHJldHVybmVkIHBhZ2Ugd2lsbCBoYXZlIHRoZSBzYW1lIGFsaWdubWVu
dC4KCj4gCj4gL1Rob21hcwo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
