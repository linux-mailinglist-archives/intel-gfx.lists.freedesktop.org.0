Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B6C6BD70
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B59CE6E193;
	Wed, 17 Jul 2019 13:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C605F6E193
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:40:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17371651-1500050 for multiple; Wed, 17 Jul 2019 14:40:27 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <20190716124931.5870-3-chris@chris-wilson.co.uk>
 <7d301fff-3bbe-eb05-2276-347c58b00d22@linux.intel.com>
In-Reply-To: <7d301fff-3bbe-eb05-2276-347c58b00d22@linux.intel.com>
Message-ID: <156337082615.4375.11008860472465929485@skylake-alporthouse-com>
Date: Wed, 17 Jul 2019 14:40:26 +0100
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/execlists: Process interrupted
 context on reset
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNyAxNDozMTowMCkKPiAKPiBPbiAxNi8w
Ny8yMDE5IDEzOjQ5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBCeSBzdG9wcGluZyB0aGUgcmlu
Z3MsIHdlIG1heSB0cmlnZ2VyIGFuIGFyYml0cmF0aW9uIHBvaW50IHJlc3VsdGluZyBpbgo+ID4g
YSBwcmVtYXR1cmUgY29udGV4dC1zd2l0Y2ggKGkuZS4gYSBjb21wbGV0aW9uIGV2ZW50IGJlZm9y
ZSB0aGUgcmVxdWVzdAo+ID4gaXMgYWN0dWFsbHkgY29tcGxldGUpLiBUaGlzIGNsZWFycyB0aGUg
YWN0aXZlIGNvbnRleHQgYmVmb3JlIHRoZSByZXNldCwKPiA+IGJ1dCB3ZSBtdXN0IHJlbWVtYmVy
IHRvIHJld2luZCB0aGUgaW5jb21wbGV0ZSBjb250ZXh0IGZvciByZXBsYXkgdXBvbgo+ID4gcmVz
dW1lLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYyB8IDYgKysrKy0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiBp
bmRleCA5Yjg3YTJmYzE4NmMuLjc1NzBhOTI1NjAwMSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwo+ID4gQEAgLTE0MTksNyArMTQxOSw4IEBAIHN0YXRpYyB2b2lkIHBy
b2Nlc3NfY3NiKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgKiBjb2hlcmVudCAodmlzaWJsZSBmcm9tIHRoZSBDUFUpIGJlZm9yZSB0aGUK
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgKiB1c2VyIGludGVycnVwdCBhbmQgQ1NCIGlzIHBy
b2Nlc3NlZC4KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgKi8KPiA+IC0gICAgICAgICAgICAg
ICAgICAgICBHRU1fQlVHX09OKCFpOTE1X3JlcXVlc3RfY29tcGxldGVkKCpleGVjbGlzdHMtPmFj
dGl2ZSkpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIEdFTV9CVUdfT04oIWk5MTVfcmVxdWVz
dF9jb21wbGV0ZWQoKmV4ZWNsaXN0cy0+YWN0aXZlKSAmJgo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIXJlc2V0X2luX3Byb2dyZXNzKGV4ZWNsaXN0cykpOwo+ID4gICAgICAg
ICAgICAgICAgICAgICAgIGV4ZWNsaXN0c19zY2hlZHVsZV9vdXQoKmV4ZWNsaXN0cy0+YWN0aXZl
KyspOwo+ID4gICAKPiA+ICAgICAgICAgICAgICAgICAgICAgICBHRU1fQlVHX09OKGV4ZWNsaXN0
cy0+YWN0aXZlIC0gZXhlY2xpc3RzLT5pbmZsaWdodCA+Cj4gPiBAQCAtMjI1NCw3ICsyMjU1LDcg
QEAgc3RhdGljIHZvaWQgX19leGVjbGlzdHNfcmVzZXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lLCBib29sIHN0YWxsZWQpCj4gPiAgICAgICAgKi8KPiA+ICAgICAgIHJxID0gZXhlY2xp
c3RzX2FjdGl2ZShleGVjbGlzdHMpOwo+ID4gICAgICAgaWYgKCFycSkKPiA+IC0gICAgICAgICAg
ICAgcmV0dXJuOwo+ID4gKyAgICAgICAgICAgICBnb3RvIHVud2luZDsKPiA+ICAgCj4gPiAgICAg
ICBjZSA9IHJxLT5od19jb250ZXh0Owo+ID4gICAgICAgR0VNX0JVR19PTihpOTE1X2FjdGl2ZV9p
c19pZGxlKCZjZS0+YWN0aXZlKSk7Cj4gPiBAQCAtMjMzMSw2ICsyMzMyLDcgQEAgc3RhdGljIHZv
aWQgX19leGVjbGlzdHNfcmVzZXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBib29s
IHN0YWxsZWQpCj4gPiAgICAgICBpbnRlbF9yaW5nX3VwZGF0ZV9zcGFjZShjZS0+cmluZyk7Cj4g
PiAgICAgICBfX2V4ZWNsaXN0c191cGRhdGVfcmVnX3N0YXRlKGNlLCBlbmdpbmUpOwo+ID4gICAK
PiA+ICt1bndpbmQ6Cj4gPiAgICAgICAvKiBQdXNoIGJhY2sgYW55IGluY29tcGxldGUgcmVxdWVz
dHMgZm9yIHJlcGxheSBhZnRlciB0aGUgcmVzZXQuICovCj4gPiAgICAgICBfX3Vud2luZF9pbmNv
bXBsZXRlX3JlcXVlc3RzKGVuZ2luZSk7Cj4gPiAgIH0KPiA+IAo+IAo+IFNvdW5kcyBwbGF1c2li
bGUuCj4gCj4gUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Cj4gCj4gU2hvdWxkbid0IHRoZXJlIGJlIGEgRml4ZXM6IHRhZyB0byBnbyB3aXRoIGl0
PwoKWWVhaCwgaXQncyByYXJlIGV2ZW4gYnkgb3VyIHN0YW5kYXJkcywgSSB0aGluayB0aGVyZSdz
IGEgbGl2ZV9oYW5nY2hlY2sKZmFpbHVyZSBhYm91dCBvbmNlIGEgbW9udGggdGhhdCBjb3VsZCBi
ZSB0aGUgcmVzdWx0IG9mIHRoaXMuIEhvd2V2ZXIsCnRoZSByZXN1bHQgd291bGQgYmUgYW4gdW5y
ZWNvdmVyYWJsZSBHUFUgaGFuZyBhcyBlYWNoIGF0dGVtcHQgYXQKcmVzZXR0aW5nIHdvdWxkIG5v
dCBzZWUgdGhlIG1pc3NpbmcgcmVxdWVzdCBhbmQgc28gaXQgd291bGQgcmVtYWluCnBlcnBldHVh
bGx5IGluIHRoZSBlbmdpbmUtPmFjdGl2ZS5saXN0IHVudGlsIGEgc2V0LXdlZGdlZCAoaS5lLiBz
dXNwZW5kCmluIHRoZSB1c2VyIGNhc2UpLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
