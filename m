Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3AF3B1B55
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 15:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6F66E8E3;
	Wed, 23 Jun 2021 13:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEA536E0FD;
 Wed, 23 Jun 2021 13:39:49 +0000 (UTC)
IronPort-SDR: To1PRn6e3nfvbhR4gsCYjW0EKGm1yPJkjNfmISGTPClMRg89EzjOTWny6FchvCucgHF5CL3bFQ
 25PYgs0bD6IA==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="207079119"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="207079119"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:39:49 -0700
IronPort-SDR: NWu3WrtkcX/QcWVFULjOqZtpp3hP2On52So8K+zEupHyrHkn5WO7/f5SxSaCVCvx30HpVXk00P
 bIQ1OAFkFt3g==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="639454086"
Received: from bkuncer-mobl1.ger.corp.intel.com (HELO [10.249.254.243])
 ([10.249.254.243])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:39:48 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210623112637.266855-1-matthew.auld@intel.com>
 <20210623112637.266855-3-matthew.auld@intel.com>
 <62c8a7a3-dcdd-ec6d-a976-7203e406d364@linux.intel.com>
 <fbb13fc4-18bb-8e92-71b6-7a4a7d84b633@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <3612201f-27e0-b6e1-09f3-347b284fea4a@linux.intel.com>
Date: Wed, 23 Jun 2021 15:39:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <fbb13fc4-18bb-8e92-71b6-7a4a7d84b633@intel.com>
Content-Language: en-US
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

Ck9uIDYvMjMvMjEgMzozOCBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IE9uIDIzLzA2LzIwMjEg
MTQ6MzIsIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+Pgo+PiBPbiA2LzIzLzIxIDE6MjYgUE0s
IE1hdHRoZXcgQXVsZCB3cm90ZToKPj4+IFRoZSBtaW5fcGFnZV9zaXplIGlzIG9ubHkgbmVlZGVk
IGZvciBwYWdlcyBpbnNlcnRlZCBpbnRvIHRoZSBHVFQsIGFuZAo+Pj4gZm9yIG91ciBwYWdpbmcg
c3RydWN0dXJlcyB3ZSBvbmx5IG5lZWQgYXQgbW9zdCA0SyBieXRlcywgc28gc2ltcGx5Cj4+PiBp
Z25vcmUgdGhlIG1pbl9wYWdlX3NpemUgcmVzdHJpY3Rpb25zIGhlcmUsIG90aGVyd2lzZSB3ZSBt
aWdodCBzZWUgc29tZQo+Pj4gc2V2ZXJlIG92ZXJhbGxvY2F0aW9uIG9uIHNvbWUgZGV2aWNlcy4K
Pj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5j
b20+Cj4+PiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50
ZWwuY29tPgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQu
YyB8IDIgKy0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dHQuYyAKPj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMKPj4+IGluZGV4
IDA4NGVhNjVkNTljMC4uNjFlOGE4YzI1Mzc0IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0dC5jCj4+PiBAQCAtMTYsNyArMTYsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqYWxsb2NfcHRfbG1lbShzdHJ1Y3QgCj4+PiBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLCBp
bnQgc3opCj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmo7Cj4+PiAtwqDCoMKgIG9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbSh2bS0+
aTkxNSwgc3osIDApOwo+Pj4gK8KgwqDCoCBvYmogPSBfX2k5MTVfZ2VtX29iamVjdF9jcmVhdGVf
bG1lbV93aXRoX3BzKHZtLT5pOTE1LCBzeiwgc3osIDApOwo+Pgo+PiBTbyBpcyB0aGlzIG1lbW9y
eSBhbHdheXMgcmVxdWlyZWQgdG8gYmUgc2l6ZSBhbGlnbmVkPyBvciBzaG91bGQgaXQgCj4+IHNh
eSBzeiwgUEFHRV9TSVpFPwo+Cj4gVGhlIHNjcmF0Y2ggcGFnZSBhbHNvIGhpdHMgdGhpcyBwYXRo
LCB3aGljaCBpcyBhbm90aGVyIGNhbiBvZiB3b3Jtcy4gCj4gSW4gdGVybXMgb2Ygc2l6ZSBpdCBt
aWdodCBuZWVkIHRvIGJlIDY0Syh3aXRoIHByb3BlciBwaHlzaWNhbCAKPiBhbGlnbm1lbnQpLCB3
aGljaCBpcyB3aHkgd2UgY2FuJ3QgZm9yY2UgNEsgaGVyZSwgYW5kIGluc3RlYWQgbmVlZCB0byAK
PiB1c2UgdGhlIHBhc3NlZCBpbiBzaXplLCB3aGVyZSB0aGUgcmV0dXJuZWQgcGFnZSB3aWxsIGhh
dmUgdGhlIHNhbWUgCj4gYWxpZ25tZW50LgoKT0suIFBlcmhhcHMgYSBjb21tZW50IHRvIGV4cGxh
aW4gdGhhdD8KClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJv
bUBsaW51eC5pbnRlbC5jb20+CgoKCj4KPj4KPj4gL1Rob21hcwo+Pgo+PgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
