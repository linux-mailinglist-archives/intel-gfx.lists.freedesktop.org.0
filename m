Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CF634FF4
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 20:43:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6BFA89B03;
	Tue,  4 Jun 2019 18:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD38D89B03;
 Tue,  4 Jun 2019 18:43:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 11:43:35 -0700
X-ExtLoop1: 1
Received: from relo-linux-2.fm.intel.com (HELO [10.1.27.125]) ([10.1.27.125])
 by fmsmga008.fm.intel.com with ESMTP; 04 Jun 2019 11:43:35 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190604162912.28359-1-chris@chris-wilson.co.uk>
From: Antonio Argenziano <antonio.argenziano@intel.com>
Message-ID: <cc7dacb7-a364-7003-1161-e4424e9adde0@intel.com>
Date: Tue, 4 Jun 2019 11:43:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190604162912.28359-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ctx_shared: Fixup
 vec0 mmio base for icl
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAwNC8wNi8xOSAwOToyOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEkgdG9sZCB2ZWNzMCB0
byB1c2UgdmVjczEgcmVnaXN0ZXJzLi4uCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICB0ZXN0cy9pOTE1L2dlbV9jdHhf
c2hhcmVkLmMgfCA0ICsrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5j
IGIvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jCj4gaW5kZXggNjdlY2QwOTUzLi4wNjk5NjQ1
NDYgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jCj4gKysrIGIvdGVz
dHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jCj4gQEAgLTU0NCw5ICs1NDQsMTEgQEAgc3RhdGljIHZv
aWQgaW5kZXBlbmRlbnQoaW50IGk5MTUsIHVuc2lnbmVkIHJpbmcsIHVuc2lnbmVkIGZsYWdzKQo+
ICAgCQltbWlvX2Jhc2UgPSAweDIyMDAwOwo+ICAgCQlicmVhazsKPiAgIAo+ICsjZGVmaW5lIEdF
TjExX1ZFQ1MwX0JBU0UgMHgxYzgwMDAKPiArI2RlZmluZSBHRU4xMV9WRUNTMV9CQVNFIDB4MWQ4
MDAwCgpWRUNTMSBjb21pbmcgbmV4dD8KCj4gICAJY2FzZSBJOTE1X0VYRUNfVkVCT1g6CgpUaGVy
ZSBpcyBhIGNvbW1lbnRlZC1vdXQgY2FzZSBmb3IgQlNELCB3aHkgaXMgdGhhdD8KCj4gICAJCWlm
IChpbnRlbF9nZW4oaW50ZWxfZ2V0X2RybV9kZXZpZChpOTE1KSkgPj0gMTEpCj4gLQkJCW1taW9f
YmFzZSA9IDB4MWQ4MDAwOwo+ICsJCQltbWlvX2Jhc2UgPSBHRU4xMV9WRUNTMF9CQVNFOwoKTWln
aHQgYXMgd2VsbCBkZWZpbmUgYWxsIGJhc2VzLgoKU3RpbGwsIGZpeGVzIHRoZSB0ZXN0IHNvOgoK
UmV2aWV3ZWQtYnk6IEFudG9uaW8gQXJnZW56aWFubyA8YW50b25pby5hcmdlbnppYW5vQGludGVs
LmNvbT4KCkFudG9uaW8KCj4gICAJCWVsc2UKPiAgIAkJCW1taW9fYmFzZSA9IDB4MWEwMDA7Cj4g
ICAJCWJyZWFrOwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
