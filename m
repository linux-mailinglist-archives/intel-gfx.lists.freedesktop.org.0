Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE83C11B05
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0318889617;
	Thu,  2 May 2019 14:14:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11E2189617
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:14:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 07:14:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="140681532"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2019 07:14:09 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-3-chris@chris-wilson.co.uk>
 <2aec6c87-7142-4756-b4ed-db9ff6e057d7@linux.intel.com>
 <155680523278.9023.7792263043329338669@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d9f738e1-52a9-ef72-374c-c42dbbedcbbb@linux.intel.com>
Date: Thu, 2 May 2019 15:14:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155680523278.9023.7792263043329338669@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915/execlists: Flush the tasklet
 on parking
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAyLzA1LzIwMTkgMTQ6NTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTAyIDE0OjQ4OjE4KQo+Pgo+PiBPbiAwMS8wNS8yMDE5IDEyOjQ1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBUaWR5IHVwIHRoZSBjbGVhbnVwIHNlcXVlbmNlIGJ5
IGFsd2F5cyBlbnN1cmUgdGhhdCB0aGUgdGFza2xldCBpcwo+Pj4gZmx1c2hlZCBvbiBwYXJraW5n
IChiZWZvcmUgd2UgY2xlYW51cCkuIFRoZSBwYXJraW5nIHByb3ZpZGVzIGEKPj4+IGNvbnZlbmll
bnQgcG9pbnQgdG8gZW5zdXJlIHRoYXQgdGhlIGJhY2tlbmQgaXMgdHJ1bHkgaWRsZS4KPj4+Cj4+
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Pj4+IC0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAg
ICB8IDcgKysrKysrLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1p
c3Npb24uYyB8IDEgKwo+Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+Pj4gaW5k
ZXggODUxZTYyZGRjYjg3Li43YmU1NGI4NjhkOGUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKPj4+IEBAIC0yMzMxLDYgKzIzMzEsMTEgQEAgc3RhdGljIGludCBnZW44
X2luaXRfcmNzX2NvbnRleHQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4+PiAgICAgICAgcmV0
dXJuIGk5MTVfZ2VtX3JlbmRlcl9zdGF0ZV9lbWl0KHJxKTsKPj4+ICAgIH0KPj4+ICAgIAo+Pj4g
K3N0YXRpYyB2b2lkIGV4ZWNsaXN0c19wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSkKPj4+ICt7Cj4+PiArICAgICB0YXNrbGV0X2tpbGwoJmVuZ2luZS0+ZXhlY2xpc3RzLnRhc2ts
ZXQpOwo+Pgo+PiBJc24ndCBpdCBhY3R1YWxseSBhIHByb2JsZW0gaWYgdGFza2xldCBpcyBzY2hl
ZHVsZWQgYW5kIHVuc3RhcnRlZCwgb3IKPj4gZXZlbiBpbiBwcm9ncmVzcyBhdCB0aGUgcG9pbnQg
b2YgZW5naW5lIGdldHRpbmcgcGFya2VkPwo+IAo+IFRoYXQgd291bGQgYmUgYSBicm9rZW4gZHJp
dmVyLiA6fAo+IAo+IFdlIG11c3QgYmUgcXVpdGUgc3VyZSB0aGF0IGVuZ2luZSBpc24ndCBnb2lu
ZyB0byBzZW5kIGFuIGludGVycnVwdCBhcyB3ZQo+IGFyZSBqdXN0IGFib3V0IHRvIGRyb3AgdGhl
IHdha2VyZWYgd2UgbmVlZCB0byBzZXJ2aWNlIHRoYXQgaW50ZXJydXB0Lgo+IAo+IHRhc2tsZXRf
a2lsbCgpCj4gR0VNX0JVR19PTihlbmdpbmUtPmV4ZWNsaXN0cy5hY3RpdmUpOwoKT3IgaW5zdGVh
ZCBvZiBib3RoOgoKLyogVGFza2xldCBtdXN0IG5vdCBiZSBydW5uaW5nIG9yIHNjaGVkdWxlZCBh
dCB0aGlzIHBvaW50LiAqLwpHRU1fQlVHX09OKGVuZ2luZS0+ZXhlY2xpc3RzLnRhc2tsZXQuc3Rh
dGUpOwoKPwoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
