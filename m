Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8F39CFBC
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 14:42:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 736EE89CD7;
	Mon, 26 Aug 2019 12:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5FF89CD7
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 12:42:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18266065-1500050 for multiple; Mon, 26 Aug 2019 13:42:15 +0100
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
References: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
Message-ID: <156682333351.12194.18274494737447427097@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 26 Aug 2019 13:42:13 +0100
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Allow i915 to manage the vma
 offset nodes instead of drm core
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

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMDgtMjYgMTM6MjA6NTgpCj4gLXN0YXRpYyBp
bnQgY3JlYXRlX21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4g
K3N0YXRpYyB2b2lkIGluaXRfbW1hcF9vZmZzZXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X21tYXBfb2Zm
c2V0ICptbW8pCj4gK3sKPiArICAgICAgIG11dGV4X2xvY2soJm9iai0+bW1vX2xvY2spOwoKVGhp
cyBsb2NrIHNob3VsZCBvbmx5IGJlIGd1YXJkaW5nIG9iai0+bW1hcF9vZmZzZXRzLiBZb3UgZG9u
J3QgbmVlZCB0bwp0YWtlIGl0IGFyb3VuZCBldmVyeSBrcmVmLCBqdXN0IGJlIGNhcmVmdWwgdG8g
cmVtb3ZlIHRoZSBsaW5rIG9uIGNsb3NlLgoKPiArICAgICAgIGtyZWZfaW5pdCgmbW1vLT5yZWYp
Owo+ICsgICAgICAgbGlzdF9hZGQoJm1tby0+b2Zmc2V0LCAmb2JqLT5tbWFwX29mZnNldHMpOwo+
ICsgICAgICAgbXV0ZXhfdW5sb2NrKCZvYmotPm1tb19sb2NrKTsKPiArCj4gKyAgICAgICBtbW8t
Pm9iaiA9IG9iajsKPiArfQoKPiArLyogVGhpcyBvdmVyY29tZXMgdGhlIGxpbWl0YXRpb24gaW4g
ZHJtX2dlbV9tbWFwJ3MgYXNzaWdubWVudCBvZiBhCj4gKyAqIGRybV9nZW1fb2JqZWN0IGFzIHRo
ZSB2bWEtPnZtX3ByaXZhdGVfZGF0YS4gU2luY2Ugd2UgbmVlZCB0bwo+ICsgKiBiZSBhYmxlIHRv
IHJlc29sdmUgbXVsdGlwbGUgbW1hcCBvZmZzZXRzIHdoaWNoIGNvdWxkIGJlIHRpZWQKPiArICog
dG8gYSBzaW5nbGUgZ2VtIG9iamVjdC4KPiArICovCj4gK2ludCBpOTE1X2dlbV9tbWFwKHN0cnVj
dCBmaWxlICpmaWxwLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPiArewo+ICsgICAgICAg
c3RydWN0IGRybV92bWFfb2Zmc2V0X25vZGUgKm5vZGU7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2Zp
bGUgKnByaXYgPSBmaWxwLT5wcml2YXRlX2RhdGE7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2ID0gcHJpdi0+bWlub3ItPmRldjsKPiArICAgICAgIHN0cnVjdCBpOTE1X21tYXBfb2Zm
c2V0ICptbW8gPSBOVUxMOwo+ICsgICAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSBO
VUxMOwo+ICsKPiArICAgICAgIGlmIChkcm1fZGV2X2lzX3VucGx1Z2dlZChkZXYpKQo+ICsgICAg
ICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiArCj4gKyAgICAgICBkcm1fdm1hX29mZnNldF9s
b2NrX2xvb2t1cChkZXYtPnZtYV9vZmZzZXRfbWFuYWdlcik7Cj4gKyAgICAgICBub2RlID0gZHJt
X3ZtYV9vZmZzZXRfZXhhY3RfbG9va3VwX2xvY2tlZChkZXYtPnZtYV9vZmZzZXRfbWFuYWdlciwK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZtYS0+
dm1fcGdvZmYsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB2bWFfcGFnZXModm1hKSk7Cj4gKyAgICAgICBpZiAobGlrZWx5KG5vZGUpKSB7Cj4gKyAg
ICAgICAgICAgICAgIG1tbyA9IGNvbnRhaW5lcl9vZihub2RlLCBzdHJ1Y3QgaTkxNV9tbWFwX29m
ZnNldCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZtYV9ub2RlKTsKPiAr
ICAgICAgICAgICAgICAgLyoKPiArICAgICAgICAgICAgICAgICogU2tpcCAwLXJlZmNudGVkIG9i
amVjdHMgYXMgaXQgaXMgaW4gdGhlIHByb2Nlc3Mgb2YgYmVpbmcKPiArICAgICAgICAgICAgICAg
ICogZGVzdHJveWVkIGFuZCB3aWxsIGJlIGludmFsaWQgd2hlbiB0aGUgdm1hIG1hbmFnZXIgbG9j
awo+ICsgICAgICAgICAgICAgICAgKiBpcyByZWxlYXNlZC4KPiArICAgICAgICAgICAgICAgICov
Cj4gKyAgICAgICAgICAgICAgIG9iaiA9ICZtbW8tPm9iai0+YmFzZTsKPiArICAgICAgICAgICAg
ICAgaWYgKCFrcmVmX2dldF91bmxlc3NfemVybygmb2JqLT5yZWZjb3VudCkpCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgb2JqID0gTlVMTDsKCkhtbSwgcmVmZXJlbmNlcyBhcmUgc3RpbGwgd2Vp
cmQuIFRoaXMgZG9lc24ndCBzZWVtIGxpa2UgaXQgcHJvdGVjdHMKYWdhaW5zdAoKVGhyZWFkIEEJ
CQlUaHJlYWQgQgogIG1tYXAoZmQsIG9mZnNldF9vZl9BKTsJICBnZW1fY2xvc2UoZmQsIEEpOwoK
ClRpbWUgZm9yIGEgZ2VtX21tYXBfZ3R0L2Nsb3NlLXJhY2UuCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
