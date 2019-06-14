Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D80FA463F7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:24:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 290BF89AB5;
	Fri, 14 Jun 2019 16:24:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E6E89AB5
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:24:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16905091-1500050 for multiple; Fri, 14 Jun 2019 17:24:11 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-22-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190614151731.17608-22-tvrtko.ursulin@linux.intel.com>
Message-ID: <156052944909.7796.11068896519526101567@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 17:24:09 +0100
Subject: Re: [Intel-gfx] [RFC 21/31] drm/i915: Convert
 i915_gem_flush_ggtt_writes to intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxNjoxNzoyMSkKPiBAQCAtMzY3LDcg
KzM2OCw2IEBAIHZvaWQKPiAgaTkxNV9nZW1fb2JqZWN0X2ZsdXNoX3dyaXRlX2RvbWFpbihzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdW5zaWduZWQgaW50IGZsdXNoX2RvbWFpbnMpCj4gIHsKPiAtICAgICAgIHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7Cj4g
ICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiAgCj4gICAgICAgICBhc3NlcnRfb2JqZWN0
X2hlbGQob2JqKTsKPiBAQCAtMzc3LDggKzM3Nyw2IEBAIGk5MTVfZ2VtX29iamVjdF9mbHVzaF93
cml0ZV9kb21haW4oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgCj4gICAgICAg
ICBzd2l0Y2ggKG9iai0+d3JpdGVfZG9tYWluKSB7Cj4gICAgICAgICBjYXNlIEk5MTVfR0VNX0RP
TUFJTl9HVFQ6Cj4gLSAgICAgICAgICAgICAgIGk5MTVfZ2VtX2ZsdXNoX2dndHRfd3JpdGVzKGRl
dl9wcml2KTsKPiAtCj4gICAgICAgICAgICAgICAgIGludGVsX2ZiX29ial9mbHVzaChvYmosCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmYl93cml0ZV9vcmlnaW4ob2JqLCBJ
OTE1X0dFTV9ET01BSU5fR1RUKSk7Cj4gIAo+IEBAIC0zODYsNiArMzg0LDcgQEAgaTkxNV9nZW1f
b2JqZWN0X2ZsdXNoX3dyaXRlX2RvbWFpbihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgIGlmICh2bWEtPmlvbWFwKQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gIAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKHZtYS0+dm0tPmd0KTsKCkhtbS4gSSdkIGxp
a2UgdG8gaGF2ZSB0aGUgZmx1c2ggYmVmb3JlIHdlIHRlbGwgZmJjIGl0IGNhbiByZWFkIGZyb20K
bWVtb3J5LCBhbmQgSSdkIHJhdGhlciBub3QgaGF2ZSB0aGUgaGVhdnkgZmx1c2ggb24gZXZlcnkg
dm1hLgoKSSdtIHByb2JhYmx5IGJlaW5nIG92ZXJseSBzZW5zaXRpdmUsIGJ1dCBhdCB0aGUgdmVy
eSBsZWFzdCBJIHdvdWxkCnJlb3JkZXIgdGhpcyBmbHVzaCB0byBtZW1vcnkgYmVmb3JlIHRoZSBm
cm9udGJ1ZmZlci4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
