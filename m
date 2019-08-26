Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 287349CFCC
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 14:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD8589939;
	Mon, 26 Aug 2019 12:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D0E289939
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 12:46:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18266096-1500050 for multiple; Mon, 26 Aug 2019 13:46:42 +0100
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190826122102.32400-3-abdiel.janulgue@linux.intel.com>
References: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
 <20190826122102.32400-3-abdiel.janulgue@linux.intel.com>
Message-ID: <156682359990.12194.15055384771986399171@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 26 Aug 2019 13:46:39 +0100
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Add cpu fault handler for
 mmap_offset
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

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMDgtMjYgMTM6MjE6MDApCj4gKyAgICAgICBm
b3IgKGkgPSAwOyBpIDwgc2l6ZSA+PiBQQUdFX1NISUZUOyBpKyspIHsKPiArICAgICAgICAgICAg
ICAgc3RydWN0IHBhZ2UgKnBhZ2UgPSBpOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2Uob2JqLCBpKTsK
PiArCj4gKyAgICAgICAgICAgICAgIHZtZl9yZXQgPSB2bWZfaW5zZXJ0X3BmbihhcmVhLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHVuc2lnbmVkIGxvbmcpYXJl
YS0+dm1fc3RhcnQgKyBpICogUEFHRV9TSVpFLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcGFnZV90b19wZm4ocGFnZSkpOwo+ICsgICAgICAgICAgICAgICBpZiAo
dm1mX3JldCAmIFZNX0ZBVUxUX0VSUk9SKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgdm1m
X3JldCA9IGk5MTVfZXJyb3JfdG9fdm1mX2ZhdWx0KHZtX2ZhdWx0X3RvX2Vycm5vKHZtZl9yZXQs
IDApLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAmZGV2X3ByaXYtPmd0KTsKClNpZ2guIFlvdSB0YWtlIGEgbW0vLCBydW4gaXQgdGhy
b3VnaCB0aGUgaW50ZXJuYWwgZXJyb3IgY29udmVydG9yIHRoYXQKKm9ubHkqIGFwcGxpZXMgdG8g
aTkxNSBlcnJvcnMsIGFuZCB0aGVuIHJldHVybiB0aGUgb3JpZ2luYWwgZmF1bHQgY29kZS4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
