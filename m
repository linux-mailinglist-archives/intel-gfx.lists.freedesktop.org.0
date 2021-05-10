Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E203B377F39
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:17:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364016E09F;
	Mon, 10 May 2021 09:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC8DA6E09F;
 Mon, 10 May 2021 09:17:41 +0000 (UTC)
IronPort-SDR: 5Q/OMVQ0Z48o9SbmhUaqBe6GVxhdOJ/1GugmS7x1Hyo4mpG1RD2pE8kWJl7+PN9u6D2W1CvCVo
 F+l73GIMRT5A==
X-IronPort-AV: E=McAfee;i="6200,9189,9979"; a="260417040"
X-IronPort-AV: E=Sophos;i="5.82,286,1613462400"; d="scan'208";a="260417040"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 02:17:40 -0700
IronPort-SDR: XAyWbyjvDAdzpa53tYh5XlG8UucgMEBOTmKN61/sYNXWqMYFZxIH7RvPbXpvteE1yEQvScAa91
 RuWAqqY4eT1g==
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; d="scan'208";a="536313992"
Received: from agriffin-mobl1.ger.corp.intel.com (HELO [10.213.193.195])
 ([10.213.193.195])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 02:17:39 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210507095948.384230-1-matthew.auld@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <41dd4d70-1bc9-c414-d0ed-e5502ef83038@linux.intel.com>
Date: Mon, 10 May 2021 10:17:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210507095948.384230-1-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/stolen: shuffle around
 init_memory_region
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA3LzA1LzIwMjEgMTA6NTksIE1hdHRoZXcgQXVsZCB3cm90ZToKPiBXZSBnZW5lcmFsbHkg
d2FudCB0byBmaXJzdCBjYWxsIGk5MTVfZ2VtX29iamVjdF9pbml0X21lbW9yeV9yZWdpb24oKQo+
IGJlZm9yZSBjYWxsaW5nIGludG8gZ2V0X3BhZ2VzKCksIHNpbmNlIHRoaXMgc2V0cyB1cCB2YXJp
b3VzIGJpdHMgb2YKPiBzdGF0ZSB3aGljaCBtaWdodCBiZSBuZWVkZWQgdGhlcmUuIEN1cnJlbnRs
eSBmb3Igc3RvbGVuIHRoaXMgZG9lc24ndAo+IG1hdHRlciBtdWNoLCBidXQgaXQgbWlnaHQgaW4g
dGhlIGZ1dHVyZSwgYW5kIGF0IHRoZSB2ZXJ5IGxlYXN0IHRoaXMKPiBtYWtlcyB0aGluZ3MgY29u
c2lzdGVudCB3aXRoIHRoZSBvdGhlciBiYWNrZW5kcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYyB8IDYgKysrKy0tCj4gICAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKPiBpbmRleCAyOTNmNjQwZmFhMGEuLmI1NTUz
ZmMzYWM0ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
c3RvbGVuLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVu
LmMKPiBAQCAtNjU3LDkgKzY1NywxMSBAQCBzdGF0aWMgaW50IF9faTkxNV9nZW1fb2JqZWN0X2Ny
ZWF0ZV9zdG9sZW4oc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPiAgIAlpZiAoV0FS
Tl9PTighaTkxNV9nZW1fb2JqZWN0X3RyeWxvY2sob2JqKSkpCj4gICAJCXJldHVybiAtRUJVU1k7
Cj4gICAKPiArCWk5MTVfZ2VtX29iamVjdF9pbml0X21lbW9yeV9yZWdpb24ob2JqLCBtZW0pOwo+
ICsKPiAgIAllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Cj4gLQlpZiAoIWVy
cikKPiAtCQlpOTE1X2dlbV9vYmplY3RfaW5pdF9tZW1vcnlfcmVnaW9uKG9iaiwgbWVtKTsKPiAr
CWlmIChlcnIpCj4gKwkJaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbWVtb3J5X3JlZ2lvbihvYmop
Owo+ICAgCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKPiAgIAo+ICAgCXJldHVybiBlcnI7
Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
