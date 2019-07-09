Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C46F633C6
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 11:58:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F21F89CCB;
	Tue,  9 Jul 2019 09:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5A7F89CCB
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 09:58:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17181359-1500050 for multiple; Tue, 09 Jul 2019 10:58:27 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
 <20190709093208.20470-10-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190709093208.20470-10-lionel.g.landwerlin@intel.com>
Message-ID: <156266630516.9375.14447795535063304479@skylake-alporthouse-com>
Date: Tue, 09 Jul 2019 10:58:25 +0100
Subject: Re: [Intel-gfx] [PATCH v7 09/12] drm/i915: add a new perf
 configuration execbuf parameter
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wOSAxMDozMjowNSkKPiArc3RhdGlj
IGludCBlYl9vYV9jb25maWcoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4gK3sKPiArICAg
ICAgIGludCBlcnI7Cj4gKwo+ICsgICAgICAgaWYgKCFlYi0+b2FfY29uZmlnKQo+ICsgICAgICAg
ICAgICAgICByZXR1cm4gMDsKPiArCj4gKyAgICAgICBlcnIgPSBpOTE1X2FjdGl2ZV9yZXF1ZXN0
X3NldCgmZWItPmVuZ2luZS0+bGFzdF9vYV9jb25maWcsCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBlYi0+cmVxdWVzdCk7CgpUaGlzIGlzIG91dHNpZGUgb2YgdGhlIGVi
LT5yZXF1ZXN0LT50aW1lbGluZS0+bXV0ZXggYW5kIG5lZWRzIGEgbXV0ZXguCgo+ICsgICAgICAg
aWYgKGVycikKPiArICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPiArCj4gKyAgICAgICAvKgo+
ICsgICAgICAgICogSWYgdGhlIGNvbmZpZyBoYXNuJ3QgY2hhbmdlZCwgc2tpcCByZWNvbmZpZ3Vy
aW5nIHRoZSBIVyAodGhpcyBpcwo+ICsgICAgICAgICogc3ViamVjdCB0byBhIGRlbGF5IHdlIHdh
bnQgdG8gYXZvaWQgaGFzIG11Y2ggYXMgcG9zc2libGUpLgo+ICsgICAgICAgICovCj4gKyAgICAg
ICBpZiAoZWItPm9hX2NvbmZpZyA9PSBlYi0+aTkxNS0+cGVyZi5vYS5leGNsdXNpdmVfc3RyZWFt
LT5vYV9jb25maWcpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAwOwo+ICsKPiArICAgICAgIGVy
ciA9IGk5MTVfdm1hX21vdmVfdG9fYWN0aXZlKGViLT5vYV92bWEsIGViLT5yZXF1ZXN0LCAwKTsK
PiArICAgICAgIGlmIChlcnIpCj4gKyAgICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4gKwo+ICsg
ICAgICAgZXJyID0gZWItPmVuZ2luZS0+ZW1pdF9iYl9zdGFydChlYi0+cmVxdWVzdCwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZWItPm9hX3ZtYS0+bm9kZS5zdGFy
dCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCwgSTkxNV9ESVNQ
QVRDSF9TRUNVUkUpOwo+ICsgICAgICAgaWYgKGVycikKPiArICAgICAgICAgICAgICAgcmV0dXJu
IGVycjsKPiArCj4gKyAgICAgICBzd2FwKGViLT5vYV9jb25maWcsIGViLT5pOTE1LT5wZXJmLm9h
LmV4Y2x1c2l2ZV9zdHJlYW0tPm9hX2NvbmZpZyk7CgpBcyBkb2VzIHRoaXMgdGhpcy4gU28gd2hp
Y2ggbXV0ZXggaXMgdG8gZ3VhcmQKaTkxNS0+cGVyZi5vYS5leGNsdXNpdmVfc3RyZWFtLT5vYV9j
b25maWcgPwoKSXMgaTkxNS0+cGVyZi5tZXRyaWNzX2xvY2tzIHNlbnNpYmxlIHRvIGd1YXJkIFtk
YXRhIHdpdGhpbl0gdGhpcyBmdW5jdGlvbj8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
