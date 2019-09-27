Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F03CC0C11
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 21:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 848C96E0D4;
	Fri, 27 Sep 2019 19:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A8726E0D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 19:27:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18644133-1500050 for multiple; Fri, 27 Sep 2019 20:27:17 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-11-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-11-matthew.auld@intel.com>
Message-ID: <156961243276.1880.15746228069955692928@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 20:27:12 +0100
Subject: Re: [Intel-gfx] [PATCH 10/22] drm/i915/selftests: add write-dword
 test for LMEM
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzM6NTcpCj4gK3N0YXRpYyBpbnQg
aWd0X2dwdV93cml0ZV9kdyhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1MzIgZHdvcmQsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiB2
YWx1ZSkKPiArewo+ICsgICAgICAgaW50IGVycjsKPiArCj4gKyAgICAgICBpOTE1X2dlbV9vYmpl
Y3RfbG9jayh2bWEtPm9iaik7Cj4gKyAgICAgICBlcnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3Rv
X2d0dF9kb21haW4odm1hLT5vYmosIHRydWUpOwo+ICsgICAgICAgaTkxNV9nZW1fb2JqZWN0X3Vu
bG9jayh2bWEtPm9iaik7Cj4gKyAgICAgICBpZiAoZXJyKQo+ICsgICAgICAgICAgICAgICByZXR1
cm4gZXJyOwoKWW91ciBjcHUgY2hlY2sgZG9lc24ndCBsZWF2ZSB0aGUgY2FjaGVzIGRpcnR5IHNv
IHRoaXMgaXMgb3ZlcmtpbGwsIGFuZAp3b3JzZSBtYXkgaGlkZSBhIGNvaGVyZW5jeSBwcm9ibGVt
PwoKPiArICAgICAgIHJldHVybiBpZ3RfZ3B1X2ZpbGxfZHcoY2UsIHZtYSwgZHdvcmQgKiBzaXpl
b2YodTMyKSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm1hLT5zaXplID4+IFBB
R0VfU0hJRlQsIHZhbHVlKTsKPiArfQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
