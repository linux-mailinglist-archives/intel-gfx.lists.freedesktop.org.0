Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AA3CF5B5
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 11:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE9B6E2A0;
	Tue,  8 Oct 2019 09:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22FEB6E2A0
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 09:11:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18761007-1500050 for multiple; Tue, 08 Oct 2019 10:11:01 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191004170452.15410-5-matthew.auld@intel.com>
References: <20191004170452.15410-1-matthew.auld@intel.com>
 <20191004170452.15410-5-matthew.auld@intel.com>
Message-ID: <157052585928.5063.3702930689416789691@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 08 Oct 2019 10:10:59 +0100
Subject: Re: [Intel-gfx] [PATCH v3 04/21] drm/i915/region: support volatile
 objects
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDQgMTg6MDQ6MzUpCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaAo+IGluZGV4IDI5Yjg2Y2ExN2RkOS4uMzIz
MjcwYTFlZjY3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9y
eV9yZWdpb24uaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdp
b24uaAo+IEBAIC01Miw2ICs1MiwxMSBAQCBzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiB7Cj4g
ICAgICAgICB1bnNpZ25lZCBpbnQgdHlwZTsKPiAgICAgICAgIHVuc2lnbmVkIGludCBpbnN0YW5j
ZTsKPiAgICAgICAgIHVuc2lnbmVkIGludCBpZDsKPiArCj4gKyAgICAgICAvKiBQcm90ZWN0cyBh
Y2Nlc3MgdG8gb2JqZWN0cyBhbmQgcHVyZ2VhYmxlICovCj4gKyAgICAgICBzdHJ1Y3QgbXV0ZXgg
b2JqX2xvY2s7Cj4gKyAgICAgICBzdHJ1Y3QgbGlzdF9oZWFkIG9iamVjdHM7Cj4gKyAgICAgICBz
dHJ1Y3QgbGlzdF9oZWFkIHB1cmdlYWJsZTsKCkxvb2tzIGdvb2QuIE1pbm9yIHN1Z2dlc3Rpb24g
d291bGQgdG8gYmUgd3JhcCB0aGlzIGluIGEgc3ViLXN0cnVjdCwKCglzdHJ1Y3QgewoJCXN0cnVj
dCBtdXRleCBtdXRleDsgLyogUHJvdGVjdHMgYWNjZXNzIHRvIG9iamVjdHMgKi8KCQlzdHJ1Y3Qg
bGlzdF9oZWFkIGxpc3Q7IC8qIHllYWgsIG5vdCB0aGUgYmVzdCAqLwoJCXN0cnVjdCBsaXN0X2hl
YWQgcHVyZ2VhYmxlOwoJfSBvYmplY3RzOwo+ICB9OwoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
