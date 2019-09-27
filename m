Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DE0C0CBE
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 22:40:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4EFB6E226;
	Fri, 27 Sep 2019 20:40:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 382496E226
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 20:40:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18644548-1500050 for multiple; Fri, 27 Sep 2019 21:39:40 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-10-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-10-matthew.auld@intel.com>
Message-ID: <156961677641.1880.13826905682574823996@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 21:39:36 +0100
Subject: Re: [Intel-gfx] [PATCH 09/22] drm/i915/lmem: support kernel mapping
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzM6NTYpCj4gK3N0YXRpYyBpbnQg
aWd0X2xtZW1fd3JpdGVfY3B1KHZvaWQgKmFyZykKPiArewo+ICsgICAgICAgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSBhcmc7Cj4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UgPSBpOTE1LT5lbmdpbmVbQkNTMF0tPmtlcm5lbF9jb250ZXh0Owo+ICsgICAgICAgc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiArICAgICAgIHN0cnVjdCBybmRfc3RhdGUgcHJu
ZzsKPiArICAgICAgIHUzMiAqdmFkZHI7Cj4gKyAgICAgICB1MzIgZHdvcmQ7Cj4gKyAgICAgICB1
MzIgdmFsOwo+ICsgICAgICAgdTMyIHN6Owo+ICsgICAgICAgaW50IGVycjsKPiArCj4gKyAgICAg
ICBpZiAoIUhBU19FTkdJTkUoaTkxNSwgQkNTMCkpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAw
OwoKVG9vIGxhdGUuIFlvdSd2ZSBhbHJlYWR5ICppOTE1LT5lbmdpbmVbQkNTMF0KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
