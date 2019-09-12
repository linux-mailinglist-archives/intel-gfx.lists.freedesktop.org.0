Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C605B0C71
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 12:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C396ECAB;
	Thu, 12 Sep 2019 10:17:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C45036ECAB
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 10:17:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18462076-1500050 for multiple; Thu, 12 Sep 2019 11:16:56 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190912101339.543-1-chris@chris-wilson.co.uk>
References: <20190911163815.11430-1-chris@chris-wilson.co.uk>
 <20190912101339.543-1-chris@chris-wilson.co.uk>
Message-ID: <156828341377.4926.885534283033072108@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 12 Sep 2019 11:16:53 +0100
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/pmu: Use GT parked for
 estimating RC6 while asleep
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMTIgMTE6MTM6MzkpCj4gKyNpZiBJU19FTkFC
TEVEKENPTkZJR19QTSkKPiArCj4gK3N0YXRpYyBpbmxpbmUgczY0IGt0aW1lX3NpbmNlKGNvbnN0
IGt0aW1lX3Qga3QpCj4gK3sKPiArICAgICAgIHJldHVybiBrdGltZV90b19ucyhrdGltZV9zdWIo
a3RpbWVfZ2V0KCksIGt0KSk7Cj4gK30KPiArCj4gK3ZvaWQgaTkxNV9wbXVfZ3RfcGFya2VkKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgaTkxNV9w
bXUgKnBtdSA9ICZpOTE1LT5wbXU7Cj4gKyAgICAgICB1NjQgdmFsOwo+ICsKPiArICAgICAgIGlm
ICghcG11LT5iYXNlLmV2ZW50X2luaXQpCj4gKyAgICAgICAgICAgICAgIHJldHVybjsKPiArCj4g
KyAgICAgICBzcGluX2xvY2tfaXJxKCZwbXUtPmxvY2spOwo+ICsKPiArICAgICAgIHZhbCA9IDA7
Cj4gKyAgICAgICBpZiAocG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9SQzZdLmN1cikKPiArICAg
ICAgICAgICAgICAgdmFsID0gX19nZXRfcmM2KCZpOTE1LT5ndCk7Cj4gKwo+ICsgICAgICAgaWYg
KHZhbCA+PSBwbXUtPnNhbXBsZVtfX0k5MTVfU0FNUExFX1JDNl9FU1RJTUFURURdLmN1cikgewo+
ICsgICAgICAgICAgICAgICBwbXUtPnNhbXBsZVtfX0k5MTVfU0FNUExFX1JDNl9FU1RJTUFURURd
LmN1ciA9IDA7Cj4gKyAgICAgICAgICAgICAgIHBtdS0+c2FtcGxlW19fSTkxNV9TQU1QTEVfUkM2
XS5jdXIgPSB2YWw7Cj4gKyAgICAgICB9Cj4gKyAgICAgICBwbXUtPnNsZWVwX2xhc3QgPSBrdGlt
ZV9nZXQoKTsKPiArCj4gKyAgICAgICAvKgo+ICsgICAgICAgICogU2lnbmFsIHNhbXBsaW5nIHRp
bWVyIHRvIHN0b3AgaWYgb25seSBlbmdpbmUgZXZlbnRzIGFyZSBlbmFibGVkIGFuZAo+ICsgICAg
ICAgICogR1BVIHdlbnQgaWRsZS4KPiArICAgICAgICAqLwo+ICsgICAgICAgcG11LT50aW1lcl9l
bmFibGVkID0gcG11X25lZWRzX3RpbWVyKHBtdSwgZmFsc2UpOwoKVGhlIGNhdmVhdCBoZXJlIGlz
IHRoYXQgd2UgZG9uJ3Qgc3RvcCB0aGUgcmM2IHBtdSB0aW1lciB3aGlsZSB3ZSBzbGVlcC4KU2Vl
bXMgbGlrZSA2IG9mIG9uZSwgaGFsZi1hLWRvemVuIG9mIHRoZSBvdGhlci4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
