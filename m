Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 083C35BCA6
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 15:13:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A714489358;
	Mon,  1 Jul 2019 13:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 908EE89358
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 13:13:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17085382-1500050 for multiple; Mon, 01 Jul 2019 14:13:48 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-8-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190701113437.4043-8-lionel.g.landwerlin@intel.com>
Message-ID: <156198682494.1583.17536983719626873726@skylake-alporthouse-com>
Date: Mon, 01 Jul 2019 14:13:44 +0100
Subject: Re: [Intel-gfx] [PATCH v6 07/11] drm/i915: add syncobj timeline
 support
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wMSAxMjozNDozMykKPiAgc3RydWN0
IGk5MTVfZXhlY2J1ZmZlciB7Cj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NTsgLyoqIGk5MTUgYmFja3BvaW50ZXIgKi8KPiAgICAgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmls
ZTsgLyoqIHBlci1maWxlIGxvb2t1cCB0YWJsZXMgYW5kIGxpbWl0cyAqLwo+IEBAIC0yNzUsNiAr
MjgyLDcgQEAgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciB7Cj4gIAo+ICAgICAgICAgc3RydWN0IHsK
PiAgICAgICAgICAgICAgICAgdTY0IGZsYWdzOyAvKiogQXZhaWxhYmxlIGV4dGVuc2lvbnMgcGFy
YW1ldGVycyAqLwo+ICsgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZm
ZXJfZXh0X3RpbWVsaW5lX2ZlbmNlcyB0aW1lbGluZV9mZW5jZXM7Cj4gICAgICAgICB9IGV4dGVu
c2lvbnM7Cj4gIH07Cj4gK3N0YXRpYyBpbnQgcGFyc2VfdGltZWxpbmVfZmVuY2VzKHN0cnVjdCBp
OTE1X3VzZXJfZXh0ZW5zaW9uIF9fdXNlciAqZXh0LCB2b2lkICpkYXRhKQo+ICt7Cj4gKyAgICAg
ICBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiA9IGRhdGE7Cj4gKwo+ICsgICAgICAgLyogVGlt
ZWxpbmUgZmVuY2VzIGFyZSBpbmNvbXBhdGlibGUgd2l0aCB0aGUgZmVuY2UgYXJyYXkgZmxhZy4g
Ki8KPiArICAgICAgIGlmIChlYi0+YXJncy0+ZmxhZ3MgJiBJOTE1X0VYRUNfRkVOQ0VfQVJSQVkp
Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICsKPiArICAgICAgIGlmIChlYi0+
ZXh0ZW5zaW9ucy5mbGFncyAmIEJJVChEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfVElNRUxJ
TkVfRkVOQ0VTKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7CgpmbGFncyBpcyA2
NGIsIHNvIHdpc2VyIGlmIHdlIHVzZSBCSVRfVUxMKCkgZnJvbSB0aGUgc3RhcnQuIFlvdSBkb24n
dAp3YW50IHRvIGNvcHkgbXkgYnVncyA7KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
