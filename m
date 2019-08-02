Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B8980242
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 23:28:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DAA76E40F;
	Fri,  2 Aug 2019 21:28:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23426E40F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 21:28:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17827797-1500050 for multiple; Fri, 02 Aug 2019 22:28:49 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190802205134.303-1-stuart.summers@intel.com>
 <20190802205134.303-4-stuart.summers@intel.com>
In-Reply-To: <20190802205134.303-4-stuart.summers@intel.com>
Message-ID: <156478132733.6598.547320138135011818@skylake-alporthouse-com>
Date: Fri, 02 Aug 2019 22:28:47 +0100
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: Use local variable for
 subslice_mask on HSW
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wMiAyMTo1MToyNykKPiBJbnN0ZWFkIG9m
IGFzc3VtaW5nIGEgc2luZ2xlIHNsaWNlIG9uIEhTVyB3aGVuIGRlZmluaW5nCj4gc3Vic2xpY2Vz
IGZvciB0aGUgcGxhdGZvcm0sIHVzZSBhIGxvY2FsIHZhcmlhYmxlIHRvIHNldAo+IHRoZSBtYXhp
bXVtIHN1YnNsaWNlcyBwZXIgc2xpY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1l
cnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDExICsrKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5jCj4gaW5kZXggOWE3OWQ5ZDU0N2M1Li4yYjgxY2M3MzFmYTIg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKPiBAQCAtNTQx
LDYgKzU0MSw3IEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxfc3NldV9pbmZvX2luaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3Qgc3NldV9kZXZf
aW5mbyAqc3NldSA9ICZSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1Owo+ICAgICAgICAgdTMy
IGZ1c2UxOwo+ICsgICAgICAgdTggc3Vic2xpY2VfbWFzazsKPiAgICAgICAgIGludCBzLCBzczsK
PiAgCj4gICAgICAgICAvKgo+IEBAIC01NTMsMTYgKzU1NCwxNiBAQCBzdGF0aWMgdm9pZCBoYXN3
ZWxsX3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAg
ICAgICAgICAgICAgICAgLyogZmFsbCB0aHJvdWdoICovCj4gICAgICAgICBjYXNlIDE6Cj4gICAg
ICAgICAgICAgICAgIHNzZXUtPnNsaWNlX21hc2sgPSBCSVQoMCk7Cj4gLSAgICAgICAgICAgICAg
IHNzZXUtPnN1YnNsaWNlX21hc2tbMF0gPSBCSVQoMCk7Cj4gKyAgICAgICAgICAgICAgIHN1YnNs
aWNlX21hc2sgPSBCSVQoMCk7Cj4gICAgICAgICAgICAgICAgIGJyZWFrOwo+ICAgICAgICAgY2Fz
ZSAyOgo+ICAgICAgICAgICAgICAgICBzc2V1LT5zbGljZV9tYXNrID0gQklUKDApOwo+IC0gICAg
ICAgICAgICAgICBzc2V1LT5zdWJzbGljZV9tYXNrWzBdID0gQklUKDApIHwgQklUKDEpOwo+ICsg
ICAgICAgICAgICAgICBzdWJzbGljZV9tYXNrID0gQklUKDApIHwgQklUKDEpOwo+ICAgICAgICAg
ICAgICAgICBicmVhazsKPiAgICAgICAgIGNhc2UgMzoKPiAgICAgICAgICAgICAgICAgc3NldS0+
c2xpY2VfbWFzayA9IEJJVCgwKSB8IEJJVCgxKTsKPiAtICAgICAgICAgICAgICAgc3NldS0+c3Vi
c2xpY2VfbWFza1swXSA9IEJJVCgwKSB8IEJJVCgxKTsKPiAtICAgICAgICAgICAgICAgc3NldS0+
c3Vic2xpY2VfbWFza1sxXSA9IEJJVCgwKSB8IEJJVCgxKTsKPiArICAgICAgICAgICAgICAgc3Vi
c2xpY2VfbWFzayA9IEJJVCgwKSB8IEJJVCgxKTsKPiArICAgICAgICAgICAgICAgc3Vic2xpY2Vf
bWFzayA9IEJJVCgwKSB8IEJJVCgxKTsKClRoaXMgaXMgZGVmaW5pdGVseSBub3QgYSBzaW5nbGUg
c2xpY2UuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
