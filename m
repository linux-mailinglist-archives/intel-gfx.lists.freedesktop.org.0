Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB749FDF87
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 14:58:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106886E600;
	Fri, 15 Nov 2019 13:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4CAD6E600
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 13:58:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19213489-1500050 for multiple; Fri, 15 Nov 2019 13:58:27 +0000
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191115114549.23716-4-abdiel.janulgue@linux.intel.com>
References: <20191115114549.23716-1-abdiel.janulgue@linux.intel.com>
 <20191115114549.23716-4-abdiel.janulgue@linux.intel.com>
Message-ID: <157382630489.11997.11206031084793990170@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 15 Nov 2019 13:58:24 +0000
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Add cpu fault handler for
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

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMTEtMTUgMTE6NDU6NDkpCj4gK3N0YXRpYyB2
bV9mYXVsdF90IGk5MTVfZ2VtX2ZhdWx0X2NwdShzdHJ1Y3Qgdm1fZmF1bHQgKnZtZikKPiArewo+
ICsgICAgICAgc3RydWN0IHZtX2FyZWFfc3RydWN0ICphcmVhID0gdm1mLT52bWE7Cj4gKyAgICAg
ICBzdHJ1Y3QgaTkxNV9tbWFwX29mZnNldCAqcHJpdiA9IGFyZWEtPnZtX3ByaXZhdGVfZGF0YTsK
PiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBwcml2LT5vYmo7Cj4g
KyAgICAgICB2bV9mYXVsdF90IHZtZl9yZXQ7Cj4gKyAgICAgICB1bnNpZ25lZCBsb25nIGksIHNp
emUgPSBhcmVhLT52bV9lbmQgLSBhcmVhLT52bV9zdGFydDsKPiArICAgICAgIGJvb2wgd3JpdGUg
PSBhcmVhLT52bV9mbGFncyAmIFZNX1dSSVRFOwo+ICsgICAgICAgaW50IHJldDsKPiArCj4gKyAg
ICAgICBpZiAoIWk5MTVfZ2VtX29iamVjdF9oYXNfc3RydWN0X3BhZ2Uob2JqKSkKPiArICAgICAg
ICAgICAgICAgcmV0dXJuIFZNX0ZBVUxUX1NJR0JVUzsKPiArCj4gKyAgICAgICAvKiBTYW5pdHkg
Y2hlY2sgdGhhdCB3ZSBhbGxvdyB3cml0aW5nIGludG8gdGhpcyBvYmplY3QgKi8KPiArICAgICAg
IGlmIChpOTE1X2dlbV9vYmplY3RfaXNfcmVhZG9ubHkob2JqKSAmJiB3cml0ZSkKPiArICAgICAg
ICAgICAgICAgcmV0dXJuIFZNX0ZBVUxUX1NJR0JVUzsKPiArCj4gKyAgICAgICByZXQgPSBpOTE1
X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Cj4gKyAgICAgICBpZiAocmV0KQo+ICsgICAgICAg
ICAgICAgICByZXR1cm4gaTkxNV9lcnJvcl90b192bWZfZmF1bHQocmV0KTsKPiArCgpJdCBpcyBw
cm9iYWJseSBhIGdvb2QgaWRlYSB0byBtZW50aW9uIGhlcmUgaG93IHdlIHJldm9rZSB0aGUgUFRF
LgoKLyogUFRFcyBhcmUgcmV2b2tlZCBpbiBvYmotPm9wcy0+cHV0X3BhZ2VzKCkgKi8KCj4gKyAg
ICAgICBmb3IgKGkgPSAwOyBpIDwgc2l6ZSA+PiBQQUdFX1NISUZUOyBpKyspIHsKPiArICAgICAg
ICAgICAgICAgc3RydWN0IHBhZ2UgKnBhZ2UgPSBpOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2Uob2Jq
LCBpKTsKPiArCj4gKyAgICAgICAgICAgICAgIHZtZl9yZXQgPSB2bWZfaW5zZXJ0X3BmbihhcmVh
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHVuc2lnbmVkIGxv
bmcpYXJlYS0+dm1fc3RhcnQgKyBpICogUEFHRV9TSVpFLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgcGFnZV90b19wZm4ocGFnZSkpOwo+ICsgICAgICAgICAgICAg
ICBpZiAodm1mX3JldCAhPSBWTV9GQVVMVF9OT1BBR0UpCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgYnJlYWs7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgaTkxNV9nZW1fb2JqZWN0X3VucGlu
X3BhZ2VzKG9iaik7Cj4gKwo+ICsgICAgICAgcmV0dXJuIHZtZl9yZXQ7CgpXaXRoIHRoZSByZXZv
a2UgKyBzZWxmdGVzdHMgaW4gcGxhY2UsIHRoaXMgbG9va3MgY29ycmVjdC4KUmV2aWV3ZWQtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKVGhlcmUgbWlnaHQgYmUg
cm9vbSBmb3IgZmluZSB0dW5pbmcgKG5vdCBwaW4vbWFwcGluZyB0aGUgd2hvbGUgb2JqZWN0KSwK
YnV0IHRoYXQgaGFzIGJlZW4gYSBjb25jZXJuIGZvciBhIGxvbmcgdGltZSBhbmQgcmVtYWlucyBh
IGNvbmNlcm4gOikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
