Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB6858ED6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 01:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F25326E853;
	Thu, 27 Jun 2019 23:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F41676E853
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 23:56:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050844-1500050 for multiple; Fri, 28 Jun 2019 00:55:58 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-20-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-20-matthew.auld@intel.com>
Message-ID: <156167975633.21955.6084963918672132956@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 00:55:56 +0100
Subject: Re: [Intel-gfx] [PATCH v2 19/37] drm/i915: treat shmem as a region
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTY6MTUpCj4gIGludCBpOTE1X2dl
bV9mcmVlemUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXggZTRmODExZmRhZWRjLi45NThjNjFlODgyMDAgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+IEBAIC0yOTQxLDcgKzI5NDEsOCBA
QCBpbnQgaTkxNV9nZW1faW5pdF9tZW1vcnlfcmVnaW9ucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKPiAgCj4gICAgICAgICAgICAgICAgIHR5cGUgPSBNRU1PUllfVFlQRV9GUk9NX1JF
R0lPTihpbnRlbF9yZWdpb25fbWFwW2ldKTsKPiAgICAgICAgICAgICAgICAgc3dpdGNoICh0eXBl
KSB7Cj4gLSAgICAgICAgICAgICAgIGRlZmF1bHQ6Cj4gKyAgICAgICAgICAgICAgIGNhc2UgSU5U
RUxfU01FTToKPiArICAgICAgICAgICAgICAgICAgICAgICBtZW0gPSBpOTE1X2dlbV9zaG1lbV9z
ZXR1cChpOTE1KTsKPiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiAgICAgICAgICAg
ICAgICAgfQo+ICAKPiBAQCAtMjk1MSwxMSArMjk1Miw5IEBAIGludCBpOTE1X2dlbV9pbml0X21l
bW9yeV9yZWdpb25zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIGdvdG8gb3V0X2NsZWFudXA7Cj4gICAgICAgICAgICAgICAgIH0KPiAgCj4g
LSAgICAgICAgICAgICAgIGlmIChtZW0pIHsKPiAtICAgICAgICAgICAgICAgICAgICAgICBtZW0t
PmlkID0gaW50ZWxfcmVnaW9uX21hcFtpXTsKPiAtICAgICAgICAgICAgICAgICAgICAgICBtZW0t
PnR5cGUgPSB0eXBlOwo+IC0gICAgICAgICAgICAgICAgICAgICAgIG1lbS0+aW5zdGFuY2UgPSBN
RU1PUllfSU5TVEFOQ0VfRlJPTV9SRUdJT04oaW50ZWxfcmVnaW9uX21hcFtpXSk7Cj4gLSAgICAg
ICAgICAgICAgIH0KPiArICAgICAgICAgICAgICAgbWVtLT5pZCA9IGludGVsX3JlZ2lvbl9tYXBb
aV07Cj4gKyAgICAgICAgICAgICAgIG1lbS0+dHlwZSA9IHR5cGU7Cj4gKyAgICAgICAgICAgICAg
IG1lbS0+aW5zdGFuY2UgPSBNRU1PUllfSU5TVEFOQ0VfRlJPTV9SRUdJT04oaW50ZWxfcmVnaW9u
X21hcFtpXSk7CgpHbyBiYWNrIGFuZCBhZGp1c3QgdGhlIHN0dWIgZnVuY3Rpb24geW91IGp1c3Qg
aW50cm9kdWNlZCB0byBhdm9pZApzZWxmLWluZmxpY3RlZCBjaHVybi4KCk1lYW53aGlsZSBJJ20g
bGVmdCB3aXRoIHRoaXMgbWFnaWMgdGhhdCBpc24ndCBldmVuIGRlZmluZWQgaW4gdGhpcyBwYXRj
aAp0byB0cnkgYW5kIGZpZ3VyZSBvdXQgaWYgdGhpcyBpcyBlcXVpdmFsZW50IHRvIHRoZSBjb2Rl
IHlvdSBqdXN0CnJlbW92ZWQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
