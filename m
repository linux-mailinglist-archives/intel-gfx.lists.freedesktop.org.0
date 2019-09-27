Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E25BC0C19
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 21:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A71D6E11E;
	Fri, 27 Sep 2019 19:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4080B6E11E
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 19:30:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18644162-1500050 for multiple; Fri, 27 Sep 2019 20:30:13 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-15-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-15-matthew.auld@intel.com>
Message-ID: <156961260843.1880.12632649020136306573@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 20:30:08 +0100
Subject: Re: [Intel-gfx] [PATCH 14/22] drm/i915: treat stolen as a region
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzQ6MDEpCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9yZWdpb24uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9yZWdpb24uYwo+IGluZGV4IDBhZWFlYmI0MTA1MC4uNzdl
ODlmYWJiZGRmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9yZWdpb24uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9yZWdp
b24uYwo+IEBAIC0xNTksNyArMTU5LDcgQEAgaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9yZWdpb24o
c3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPiAgICAgICAgICAgICAgICAgcmV0dXJu
IEVSUl9QVFIoLUUyQklHKTsKPiAgCj4gICAgICAgICBvYmogPSBtZW0tPm9wcy0+Y3JlYXRlX29i
amVjdChtZW0sIHNpemUsIGZsYWdzKTsKPiAtICAgICAgIGlmICghSVNfRVJSKG9iaikpCj4gKyAg
ICAgICBpZiAoIUlTX0VSUl9PUl9OVUxMKG9iaikpCgpIYXZlIGEgcHJlcCBwYXRjaCB0byBicmlu
ZyBzdG9sZW4gZnVuY3Rpb24gc2lnbmF0dXJlIGludG8gbGluZS4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
