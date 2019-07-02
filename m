Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB655D518
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 19:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B5D89FD4;
	Tue,  2 Jul 2019 17:14:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82A8789FD4
 for <Intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 17:14:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 10:14:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="164085060"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2019 10:14:20 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190702102313.9333-1-tvrtko.ursulin@linux.intel.com>
 <20190702102313.9333-2-tvrtko.ursulin@linux.intel.com>
 <156206365237.2466.8976003981692121208@skylake-alporthouse-com>
 <b9165546-24fb-ee6e-32dd-d0ea70b86968@linux.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <88fe299c-e946-b46d-7694-86e8eebfe452@intel.com>
Date: Tue, 2 Jul 2019 10:14:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <b9165546-24fb-ee6e-32dd-d0ea70b86968@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Rework some interrupt
 handling functions to take intel_gt
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzIvMTkgNDo0NSBBTSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4gCj4gT24gMDIvMDcv
MjAxOSAxMTozNCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGlu
ICgyMDE5LTA3LTAyIDExOjIzOjExKQo+Pj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KPj4+Cj4+PiBTb21lIGludGVycnVwdCBoYW5kbGluZyBmdW5jdGlv
bnMgYWxyZWFkeSBoYXZlIGd0IGluIHRoZWlyIG5hbWVzCj4+PiBzdWdnZXN0aW5nIHRoZW0gYXMg
b2J2aW91cyBjYW5kaWRhdGVzIHRvIG1ha2UgdGhlbSB0YWtlIHN0cnVjdCBpbnRlbF9ndAo+Pj4g
aW5zdGVhZCBvZiBpOTE1Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFBhdWxvIFphbm9uaSA8cGF1
bG8uci56YW5vbmlAaW50ZWwuY29tPgo+Pj4gQ28tYXV0aG9yZWQtYnk6IFBhdWxvIFphbm9uaSA8
cGF1bG8uci56YW5vbmlAaW50ZWwuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+Pgo+Pj4gwqAgc3RhdGljIHZv
aWQKPj4+IC1nZW4xMV9vdGhlcl9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
IGNvbnN0IGk5MTUsCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY29uc3QgdTggaW5zdGFuY2UsIGNvbnN0IHUxNiBpaXIpCj4+PiArZ2VuMTFfb3RoZXJf
aXJxX2hhbmRsZXIoc3RydWN0IGludGVsX2d0ICpndCwgY29uc3QgdTggaW5zdGFuY2UsCj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3QgdTE2IGlp
cikKPj4+IMKgIHsKPj4+ICvCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSBndC0+aTkxNTsKPj4+ICsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgaWYgKGluc3RhbmNlID09
IE9USEVSX0dVQ19JTlNUQU5DRSkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybiBnZW4xMV9ndWNfaXJxX2hhbmRsZXIoaTkxNSwgaWlyKTsKPj4KPj4gVGhhdCBsb29r
cyBsaWtlIGEgY2FuZGlkYXRlIGZvciBndCBhcyB3ZWxsLiBFdmVuIGZvciB0aGUgZ3VjLCB0aGUK
Pj4gaW50ZXJydXB0IHZlY3RvciBpcyBHVCBjZW50cmljLiBJIHdhcyBob3Bpbmcgd2UgY291bGQg
cGxhY2UgZ3VjLyBwYXJhbGxlbAo+PiB0byBndC8sIGJ1dCBpdCBsb29rcyBsaWtlIGl0IHdpbGwg
aW5kZWVkIGJlIGEgY2hpbGQgb2YgaW50ZWxfZ3QuCj4gCj4gWWVhaC4gRGFuaWVsZSB3aWxsIGRl
YWwgd2l0aCB0aGUgR3VDIGNvZGUgcGF0aHMuCj4gCj4+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAKPiBUaGFua3MuIEknbGwgYWxzbyBsZXQg
RGFuaWVsZSBjb21tZW50IG9uIHdoZXRoZXIgdGhpcyByZWZhY3RvcmluZyBmaXRzIAo+IHdpdGgg
aGlzIHdvcmsgYmVmb3JlIG1lcmdpbmcgaXQuCgpZdXAsIHdvcmtzIGZvciBtZS4gT24gdGhlIHdo
b2xlIHNlcmllczoKCkFja2VkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNl
cmFvbG9zcHVyaW9AaW50ZWwuY29tPgoKRGFuaWVsZQoKPiAKPiBSZWdhcmRzLAo+IAo+IFR2cnRr
bwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
