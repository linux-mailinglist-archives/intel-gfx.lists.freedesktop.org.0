Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE00F58EAB
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 01:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60BE16E853;
	Thu, 27 Jun 2019 23:42:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 284546E853
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 23:42:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050772-1500050 for multiple; Fri, 28 Jun 2019 00:42:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-15-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-15-matthew.auld@intel.com>
Message-ID: <156167892348.21955.16574046982100913060@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 00:42:03 +0100
Subject: Re: [Intel-gfx] [PATCH v2 14/37] drm/i915/selftest: extend coverage
 to include LMEM huge-pages
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTY6MTApCj4gU2lnbmVkLW9mZi1i
eTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IC0tLQo+ICAuLi4vZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jICAgfCAxMjIgKysrKysrKysrKysr
KysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMjEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1
Z2VfcGFnZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdl
cy5jCj4gaW5kZXggMTg2MmJmMDZhMjBmLi5jODFlYTljZTI4OWIgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwo+IEBAIC05ODEsNyAr
OTgxLDcgQEAgc3RhdGljIGludCBncHVfd3JpdGUoc3RydWN0IGk5MTVfdm1hICp2bWEsCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZtYS0+c2l6ZSA+PiBQQUdFX1NISUZULCB2YWwp
Owo+ICB9Cj4gIAo+IC1zdGF0aWMgaW50IGNwdV9jaGVjayhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqLCB1MzIgZHdvcmQsIHUzMiB2YWwpCj4gK3N0YXRpYyBpbnQgX19jcHVfY2hlY2tf
c2htZW0oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgdTMyIGR3b3JkLCB1MzIgdmFs
KQo+ICB7Cj4gICAgICAgICB1bnNpZ25lZCBpbnQgbmVlZHNfZmx1c2g7Cj4gICAgICAgICB1bnNp
Z25lZCBsb25nIG47Cj4gQEAgLTEwMTMsNiArMTAxMyw1MyBAQCBzdGF0aWMgaW50IGNwdV9jaGVj
ayhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLCB1MzIgZHdvcmQsIHUzMiB2YWwpCj4g
ICAgICAgICByZXR1cm4gZXJyOwo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50IF9fY3B1X2NoZWNrX2xt
ZW0oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgdTMyIGR3b3JkLCB1MzIgdmFsKQo+
ICt7Cj4gKyAgICAgICB1bnNpZ25lZCBsb25nIG47Cj4gKyAgICAgICBpbnQgZXJyOwo+ICsKPiAr
ICAgICAgIGk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7Cj4gKyAgICAgICBlcnIgPSBpOTE1X2dl
bV9vYmplY3Rfc2V0X3RvX3djX2RvbWFpbihvYmosIGZhbHNlKTsKPiArICAgICAgIGk5MTVfZ2Vt
X29iamVjdF91bmxvY2sob2JqKTsKPiArICAgICAgIGlmIChlcnIpCj4gKyAgICAgICAgICAgICAg
IHJldHVybiBlcnI7Cj4gKwo+ICsgICAgICAgZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdl
cyhvYmopOwo+ICsgICAgICAgaWYgKGVycikKPiArICAgICAgICAgICAgICAgcmV0dXJuIGVycjsK
PiArCj4gKyAgICAgICBmb3IgKG4gPSAwOyBuIDwgb2JqLT5iYXNlLnNpemUgPj4gUEFHRV9TSElG
VDsgKytuKSB7Cj4gKyAgICAgICAgICAgICAgIHUzMiBfX2lvbWVtICpiYXNlOwo+ICsgICAgICAg
ICAgICAgICB1MzIgcmVhZF92YWw7Cj4gKwo+ICsgICAgICAgICAgICAgICBiYXNlID0gaTkxNV9n
ZW1fb2JqZWN0X2xtZW1faW9fbWFwX3BhZ2Uob2JqLCBuKTsKPiArCj4gKyAgICAgICAgICAgICAg
IHJlYWRfdmFsID0gaW9yZWFkMzIoYmFzZSArIGR3b3JkKTsKPiArICAgICAgICAgICAgICAgaW9f
bWFwcGluZ191bm1hcF9hdG9taWMoYmFzZSk7Cj4gKyAgICAgICAgICAgICAgIGlmIChyZWFkX3Zh
bCAhPSB2YWwpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBwcl9lcnIoIm49JWx1IGJhc2Vb
JXVdPSV1LCB2YWw9JXVcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG4sIGR3
b3JkLCByZWFkX3ZhbCwgdmFsKTsKPiArICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSAtRUlO
VkFMOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ICsgICAgICAgICAgICAgICB9
Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9i
aik7Cj4gKyAgICAgICByZXR1cm4gZXJyOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGNwdV9jaGVj
ayhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLCB1MzIgZHdvcmQsIHUzMiB2YWwpCgpX
ZSBoYXZlIGRpZmZlcmVudCBtZWFuaW5ncyBvZiBjcHUgOi1wCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
