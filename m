Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEC1D1307
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 17:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4B586E9EE;
	Wed,  9 Oct 2019 15:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B6DB6E9EE
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 15:38:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 08:38:46 -0700
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="196950373"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 09 Oct 2019 08:38:45 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191009100955.21477-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ef48a430-eb52-b4d9-e9a8-adb389188efe@linux.intel.com>
Date: Wed, 9 Oct 2019 16:38:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191009100955.21477-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Protect peeking at
 execlists->active
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

Ck9uIDA5LzEwLzIwMTkgMTE6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBOb3cgdGhhdCB3ZSBk
cm9wcGVkIHRoZSBlbmdpbmUtPmFjdGl2ZS5sb2NrIHNlcmlhbGlzYXRpb24gZnJvbSBhcm91bmQK
PiBwcm9jZXNzX2NzYigpLCBkaXJlY3Qgc3VibWlzc2lvbiBjYW4gcnVuIGNvbmN1cnJlbnRseSB0
byB0aGUgaW50ZXJydXB0Cj4gaGFuZGxlci4gQXMgc3VjaCBleGVjbGlzdHMtPmFjdGl2ZSBtYXkg
YmUgYWR2YW5jZWQgYXMgd2UgZGVxdWV1ZSwKPiBkcm9wcGluZyB0aGUgcmVmZXJlbmNlIHRvIHRo
ZSByZXF1ZXN0LiBXZSBuZWVkIHRvIGVtcGxveSBvdXIgUkNVIHJlcXVlc3QKPiBwcm90ZWN0aW9u
IHRvIGVuc3VyZSB0aGF0IHRoZSByZXF1ZXN0IGlzIG5vdCBmcmVlZCB0b28gZWFybHkuCj4gCj4g
Rml4ZXM6IGRmNDAzMDY5MDI5ZCAoImRybS9pOTE1L2V4ZWNsaXN0czogTGlmdCBwcm9jZXNzX2Nz
YigpIG91dCBvZiB0aGUgaXJxLW9mZiBzcGlubG9jayIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1p
a2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgfCA3ICsrKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRl
eCA2ZGI3NjJjNTA5YjguLjdlYTU4MzM1ZjA0YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCj4gQEAgLTEyODksNyArMTI4OSw3IEBAIHN0YXRpYyB2b2lkIHZpcnR1YWxfeGZl
cl9icmVhZGNydW1icyhzdHJ1Y3QgdmlydHVhbF9lbmdpbmUgKnZlLAo+ICAgc3RhdGljIHN0cnVj
dCBpOTE1X3JlcXVlc3QgKgo+ICAgbGFzdF9hY3RpdmUoY29uc3Qgc3RydWN0IGludGVsX2VuZ2lu
ZV9leGVjbGlzdHMgKmV4ZWNsaXN0cykKPiAgIHsKPiAtCXN0cnVjdCBpOTE1X3JlcXVlc3QgKiBj
b25zdCAqbGFzdCA9IGV4ZWNsaXN0cy0+YWN0aXZlOwo+ICsJc3RydWN0IGk5MTVfcmVxdWVzdCAq
IGNvbnN0ICpsYXN0ID0gUkVBRF9PTkNFKGV4ZWNsaXN0cy0+YWN0aXZlKTsKPiAgIAo+ICAgCXdo
aWxlICgqbGFzdCAmJiBpOTE1X3JlcXVlc3RfY29tcGxldGVkKCpsYXN0KSkKPiAgIAkJbGFzdCsr
Owo+IEBAIC0xOTgxLDggKzE5ODEsMTEgQEAgc3RhdGljIHZvaWQgcHJvY2Vzc19jc2Ioc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgc3RhdGljIHZvaWQgX19leGVjbGlzdHNfc3Vi
bWlzc2lvbl90YXNrbGV0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmNvbnN0IGVuZ2luZSkKPiAg
IHsKPiAgIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZlbmdpbmUtPmFjdGl2ZS5sb2NrKTsKPiAtCWlm
ICghZW5naW5lLT5leGVjbGlzdHMucGVuZGluZ1swXSkKPiArCWlmICghZW5naW5lLT5leGVjbGlz
dHMucGVuZGluZ1swXSkgewo+ICsJCXJjdV9yZWFkX2xvY2soKTsgLyogcHJvdGVjdCBwZWVraW5n
IGF0IGV4ZWNsaXN0cy0+YWN0aXZlICovCj4gICAJCWV4ZWNsaXN0c19kZXF1ZXVlKGVuZ2luZSk7
Cj4gKwkJcmN1X3JlYWRfdW5sb2NrKCk7Cj4gKwl9Cj4gICB9Cj4gICAKPiAgIC8qCj4gCgpSZXZp
ZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2Fy
ZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
