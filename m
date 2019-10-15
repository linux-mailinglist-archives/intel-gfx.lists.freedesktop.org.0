Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25275D742E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 13:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 082866E038;
	Tue, 15 Oct 2019 11:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E01D6E038
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 11:06:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18842746-1500050 for multiple; Tue, 15 Oct 2019 12:06:03 +0100
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191015083724.24390-1-abdiel.janulgue@linux.intel.com>
References: <20191015083724.24390-1-abdiel.janulgue@linux.intel.com>
Message-ID: <157113756111.22469.4120475424659067521@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 15 Oct 2019 12:06:01 +0100
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915: Allow i915 to manage the
 vma offset nodes instead of drm core
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMTAtMTUgMDk6Mzc6MjApCj4gQEAgLTMxMiw2
ICszMTMsOSBAQCB2bV9mYXVsdF90IGk5MTVfZ2VtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAqdm1m
KQo+ICAgICAgICAgICAgICAgICBsaXN0X2FkZCgmb2JqLT51c2VyZmF1bHRfbGluaywgJmk5MTUt
PmdndHQudXNlcmZhdWx0X2xpc3QpOwo+ICAgICAgICAgbXV0ZXhfdW5sb2NrKCZpOTE1LT5nZ3R0
LnZtLm11dGV4KTsKPiAgCj4gKyAgICAgICAvKiBUcmFjayB0aGUgbW1vIGFzc29jaWF0ZWQgd2l0
aCB0aGUgZmVuY2VkIHZtYSAqLwo+ICsgICAgICAgdm1hLT5tbW8gPSBwcml2Owo+ICsKPiAgICAg
ICAgIGlmIChDT05GSUdfRFJNX0k5MTVfVVNFUkZBVUxUX0FVVE9TVVNQRU5EKQo+ICAgICAgICAg
ICAgICAgICBpbnRlbF93YWtlcmVmX2F1dG8oJmk5MTUtPmdndHQudXNlcmZhdWx0X3dha2VyZWYs
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtc2Vjc190b19qaWZmaWVzX3Rp
bWVvdXQoQ09ORklHX0RSTV9JOTE1X1VTRVJGQVVMVF9BVVRPU1VTUEVORCkpOwo+IEBAIC0zNTgs
MjggKzM2MiwyOSBAQCB2bV9mYXVsdF90IGk5MTVfZ2VtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAq
dm1mKQo+ICAgICAgICAgfQo+ICB9Cj4gIAo+IC12b2lkIF9faTkxNV9nZW1fb2JqZWN0X3JlbGVh
c2VfbW1hcChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ICt2b2lkIF9faTkxNV9n
ZW1fb2JqZWN0X3JlbGVhc2VfbW1hcF9ndHQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aikKPiAgewo+ICAgICAgICAgc3RydWN0IGk5MTVfdm1hICp2bWE7Cj4gKyAgICAgICBzdHJ1Y3Qg
aTkxNV9tbWFwX29mZnNldCAqbW1vOwo+ICAKPiAgICAgICAgIEdFTV9CVUdfT04oIW9iai0+dXNl
cmZhdWx0X2NvdW50KTsKPiAgCj4gICAgICAgICBvYmotPnVzZXJmYXVsdF9jb3VudCA9IDA7Cj4g
ICAgICAgICBsaXN0X2RlbCgmb2JqLT51c2VyZmF1bHRfbGluayk7Cj4gLSAgICAgICBkcm1fdm1h
X25vZGVfdW5tYXAoJm9iai0+YmFzZS52bWFfbm9kZSwKPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICBvYmotPmJhc2UuZGV2LT5hbm9uX2lub2RlLT5pX21hcHBpbmcpOwo+ICsKPiArICAgICAg
IG11dGV4X2xvY2soJm9iai0+bW1vX2xvY2spOwo+ICsgICAgICAgbGlzdF9mb3JfZWFjaF9lbnRy
eShtbW8sICZvYmotPm1tYXBfb2Zmc2V0cywgb2Zmc2V0KSB7Cj4gKyAgICAgICAgICAgICAgIGlm
IChtbW8tPm1tYXBfdHlwZSA9PSBJOTE1X01NQVBfVFlQRV9HVFQpCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgZHJtX3ZtYV9ub2RlX3VubWFwKCZtbW8tPnZtYV9ub2RlLAo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvYmotPmJhc2UuZGV2LT5hbm9uX2lub2Rl
LT5pX21hcHBpbmcpOwo+ICsgICAgICAgfQo+ICsgICAgICAgbXV0ZXhfdW5sb2NrKCZvYmotPm1t
b19sb2NrKTsKPiAgCj4gICAgICAgICBmb3JfZWFjaF9nZ3R0X3ZtYSh2bWEsIG9iaikKCldoeSBu
b3QgdHJlYXQgdm1hLT5tbW8gYXMgcGFydCBvZiB0aGUgdXNlcmZhdWx0IGl0IGlzPwoKPiAgICAg
ICAgICAgICAgICAgaTkxNV92bWFfdW5zZXRfdXNlcmZhdWx0KHZtYSk7Ci1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
