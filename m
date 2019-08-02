Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 680F78023C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 23:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0966E43B;
	Fri,  2 Aug 2019 21:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA7826E40F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 21:24:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17827746-1500050 for multiple; Fri, 02 Aug 2019 22:24:51 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190802205134.303-1-stuart.summers@intel.com>
 <20190802205134.303-2-stuart.summers@intel.com>
In-Reply-To: <20190802205134.303-2-stuart.summers@intel.com>
Message-ID: <156478108903.6598.3286826396951998945@skylake-alporthouse-com>
Date: Fri, 02 Aug 2019 22:24:49 +0100
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: Use variable for debugfs
 device status
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wMiAyMTo1MToyNSkKPiBVc2UgYSBsb2Nh
bCB2YXJpYWJsZSB0byBmaW5kIFNTRVUgcnVudGltZSBpbmZvcm1hdGlvbgo+IGluIHZhcmlvdXMg
ZGVidWdmcyBmdW5jdGlvbnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0
dWFydC5zdW1tZXJzQGludGVsLmNvbT4KPiAtLS0KPiBAQCAtMzk2OSwxMCArMzk2OSwxMCBAQCBz
dGF0aWMgdm9pZCBicm9hZHdlbGxfc3NldV9kZXZpY2Vfc3RhdHVzKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKPiAgCj4gICAgICAgICBpZiAoc3NldS0+c2xpY2VfbWFzaykgewo+
ICAgICAgICAgICAgICAgICBzc2V1LT5ldV9wZXJfc3Vic2xpY2UgPQo+IC0gICAgICAgICAgICAg
ICAgICAgICAgIFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPnNzZXUuZXVfcGVyX3N1YnNsaWNlOwo+
ICsgICAgICAgICAgICAgICAgICAgICAgIGluZm8tPnNzZXUuZXVfcGVyX3N1YnNsaWNlOwo+ICAg
ICAgICAgICAgICAgICBmb3IgKHMgPSAwOyBzIDwgZmxzKHNzZXUtPnNsaWNlX21hc2spOyBzKysp
IHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBzc2V1LT5zdWJzbGljZV9tYXNrW3NdID0KPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPnNz
ZXUuc3Vic2xpY2VfbWFza1tzXTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlu
Zm8tPnNzZXUuc3Vic2xpY2VfbWFza1tzXTsKPiAgICAgICAgICAgICAgICAgfQo+ICAgICAgICAg
ICAgICAgICBzc2V1LT5ldV90b3RhbCA9IHNzZXUtPmV1X3Blcl9zdWJzbGljZSAqCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50ZWxfc3NldV9zdWJzbGljZV90b3RhbChzc2V1
KTsKPiBAQCAtMzk4MCw3ICszOTgwLDcgQEAgc3RhdGljIHZvaWQgYnJvYWR3ZWxsX3NzZXVfZGV2
aWNlX3N0YXR1cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gICAgICAgICAg
ICAgICAgIC8qIHN1YnRyYWN0IGZ1c2VkIG9mZiBFVShzKSBmcm9tIGVuYWJsZWQgc2xpY2Uocykg
Ki8KPiAgICAgICAgICAgICAgICAgZm9yIChzID0gMDsgcyA8IGZscyhzc2V1LT5zbGljZV9tYXNr
KTsgcysrKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgdTggc3Vic2xpY2VfN2V1ID0KPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPnNz
ZXUuc3Vic2xpY2VfN2V1W3NdOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW5m
by0+c3NldS5zdWJzbGljZV83ZXVbc107CgpUaGVzZSAzIGNvbmRlbnNlIGJhY2sgdG8gc2luZ2xl
IGxpbmVzLgoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
