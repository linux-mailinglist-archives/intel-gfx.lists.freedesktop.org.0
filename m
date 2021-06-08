Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE2639F335
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 12:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A5836E84A;
	Tue,  8 Jun 2021 10:08:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C20C6E0E6;
 Tue,  8 Jun 2021 10:08:48 +0000 (UTC)
IronPort-SDR: HZzun275fdzUUmC+ddPYpRYNbzuVnP0Q14v/kP36EgdqxeuyhJjcGr8I0SehqWKfwY2xzU2Omw
 5JskMO37UcqQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="268668612"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="268668612"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 03:08:47 -0700
IronPort-SDR: gsP/29VvM5ukt5STobYH6h3ZJ9sp2ZApUYhvyM4OyaXKbWMAOBnJDAc+idND/w3PuDHUjNRziq
 lFth4QREu38Q==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="485160029"
Received: from mrahim1x-mobl.gar.corp.intel.com (HELO [10.215.170.251])
 ([10.215.170.251])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 03:08:44 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210608084428.142676-1-matthew.auld@intel.com>
 <20210608084428.142676-6-matthew.auld@intel.com>
 <8e8a5115-730e-c892-a241-c69a5662b2c7@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <cf0408ac-75ed-f00a-369b-db6cb2000587@intel.com>
Date: Tue, 8 Jun 2021 11:08:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <8e8a5115-730e-c892-a241-c69a5662b2c7@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/ttm: switch over to
 ttm_buddy_man
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

T24gMDgvMDYvMjAyMSAxMDo1MywgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gCj4gT24gNi84
LzIxIDEwOjQ0IEFNLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+IE1vdmUgYmFjayB0byB0aGUgYnVk
ZHkgYWxsb2NhdG9yIGZvciBtYW5hZ2luZyBkZXZpY2UgbG9jYWwgbWVtb3J5LCBhbmQKPj4gcmVz
dG9yZSB0aGUgbG9zdCBtb2NrIHNlbGZ0ZXN0cy4gS2VlcCBhcm91bmQgdGhlIHJhbmdlIG1hbmFn
ZXIgcmVsYXRlZAo+PiBiaXRzLCBzaW5jZSB3ZSBsaWtlbHkgbmVlZCB0aGlzIGZvciBtYW5hZ2lu
ZyBzdG9sZW4gYXQgc29tZSBwb2ludC4gRm9yCj4+IHN0b2xlbiB3ZSBhbHNvIGRvbid0IG5lZWQg
dG8gcmVzZXJ2ZSBhbnl0aGluZyBzbyBubyBuZWVkIHRvIHN1cHBvcnQgYQo+PiBnZW5lcmljIHJl
c2VydmUgaW50ZXJmYWNlLgo+Pgo+PiB2MihUaG9tYXMpOgo+PiDCoMKgwqDCoCAtIGJvLT5wYWdl
X2FsaWdubWVudCBpcyBpbiBwYWdlIHVuaXRzLCBub3QgYnl0ZXMKPj4KPj4gU2lnbmVkLW9mZi1i
eTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+PiBDYzogVGhvbWFzIEhl
bGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+PiBSZXZpZXdlZC1i
eTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+
PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jwqDCoMKg
wqDCoMKgIHzCoCAyNiArLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5
X3JlZ2lvbi5jwqDCoMKgIHzCoCA1NSArLS0tLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfbWVtb3J5X3JlZ2lvbi5owqDCoMKgIHzCoCAxNyAtLQo+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9yZWdpb25fdHRtLmPCoMKgwqDCoMKgwqAgfCAxMDAgKysrLS0tLS0tLS0K
Pj4gwqAgLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmPCoCB8IDE3
MCArKysrKysrKysrKystLS0tLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L21vY2tfcmVnaW9uLmPCoCB8wqAgMTUgKy0KPj4gwqAgNiBmaWxlcyBjaGFuZ2VkLCAxNjggaW5z
ZXJ0aW9ucygrKSwgMjE1IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV90dG0uYwo+PiBpbmRleCBjNjEyMjc1YzM2YzkuLjViZjFkMTk0NWRkNiAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+PiBAQCAtMTgx
LDExICsxODEsNyBAQCBzdGF0aWMgYm9vbCBpOTE1X3R0bV9ldmljdGlvbl92YWx1YWJsZShzdHJ1
Y3QgCj4+IHR0bV9idWZmZXJfb2JqZWN0ICpibywKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqID0gaTkxNV90dG1fdG9fZ2VtKGJvKTsKPj4gwqDCoMKgwqDCoCAv
KiBXaWxsIGRvIGZvciBub3cuIE91ciBwaW5uZWQgb2JqZWN0cyBhcmUgc3RpbGwgb24gVFRNJ3Mg
TFJVIAo+PiBsaXN0cyAqLwo+PiAtwqDCoMKgIGlmICghaTkxNV9nZW1fb2JqZWN0X2V2aWN0YWJs
ZShvYmopKQo+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGZhbHNlOwo+PiAtCj4+IC3CoMKgwqAg
LyogVGhpcyBpc24ndCB2YWxpZCB3aXRoIGEgYnVkZHkgYWxsb2NhdG9yICovCj4+IC3CoMKgwqAg
cmV0dXJuIHR0bV9ib19ldmljdGlvbl92YWx1YWJsZShibywgcGxhY2UpOwo+PiArwqDCoMKgIHJl
dHVybiBpOTE1X2dlbV9vYmplY3RfZXZpY3RhYmxlKG9iaik7Cj4+IMKgIH0KPj4gwqAgc3RhdGlj
IHZvaWQgaTkxNV90dG1fZXZpY3RfZmxhZ3Moc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywK
Pj4gQEAgLTMyOCwxMSArMzI0LDE1IEBAIGk5MTVfdHRtX3Jlc291cmNlX2dldF9zdChzdHJ1Y3Qg
Cj4+IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgdHRtX2J1
ZmZlcl9vYmplY3QgKmJvID0gaTkxNV9nZW1fdG9fdHRtKG9iaik7Cj4+IMKgwqDCoMKgwqAgc3Ry
dWN0IHR0bV9yZXNvdXJjZV9tYW5hZ2VyICptYW4gPQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgdHRt
X21hbmFnZXJfdHlwZShiby0+YmRldiwgcmVzLT5tZW1fdHlwZSk7Cj4+ICvCoMKgwqAgc3RydWN0
IGludGVsX21lbW9yeV9yZWdpb24gKm1yID0gb2JqLT5tbS5yZWdpb247Cj4+IMKgwqDCoMKgwqAg
aWYgKG1hbi0+dXNlX3R0KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGk5MTVfdHRtX3R0
X2dldF9zdChiby0+dHRtKTsKPj4gLcKgwqDCoCByZXR1cm4gaW50ZWxfcmVnaW9uX3R0bV9ub2Rl
X3RvX3N0KG9iai0+bW0ucmVnaW9uLCByZXMtPm1tX25vZGUpOwo+PiArwqDCoMKgIGlmIChtci0+
aXNfcmFuZ2VfbWFuYWdlcikKPiAKPiBEaWQgeW91IGxvb2sgYXQgbW92aW5nIHRoaXMgdGVzdCBp
bnRvIGludGVsX3JlZ2lvbl90dG1fbm9kZV90b19zdCgpKQoKSSBndWVzcyBJIGRpZG4ndCBsaWtl
IHRoZSBfbm9kZSBzaW5jZSB0aGF0IHNlZW1zIHRvIHN1Z2dlc3QgZHJtX21tX25vZGUgCnRvIG1l
LgoKV2hhdCBhYm91dCBzb21ldGhpbmcgbGlrZToKaTkxNV90dG1fcmVzb3VyY2VfdG9fc3QocmVz
LCBtcikKaW50ZWxfcmVnaW9uX3R0bV9yZXNvdXJjZV90b19zdChtciwgcmVzKQoKPwoKPiAKPj4g
K8KgwqDCoMKgwqDCoMKgIHJldHVybiBpbnRlbF9yZWdpb25fdHRtX25vZGVfdG9fc3QobXIsIHJl
cyk7Cj4+ICvCoMKgwqAgZWxzZQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGk5MTVfc2dfZnJv
bV9idWRkeV9yZXNvdXJjZShyZXMsIG1yLT5yZWdpb24uc3RhcnQpOwo+PiDCoCB9Cj4gCj4gVGhh
bmtzLAo+IAo+IFRob21hcwo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
