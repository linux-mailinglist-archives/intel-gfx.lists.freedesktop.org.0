Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4A74BBC2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 16:35:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929786E419;
	Wed, 19 Jun 2019 14:35:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB5726E419
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 14:35:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16954302-1500050 for multiple; Wed, 19 Jun 2019 15:35:26 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <22892c2a-194f-d41e-2408-1c4b2a97daa2@linux.intel.com>
References: <20190619112341.9082-1-chris@chris-wilson.co.uk>
 <20190619112341.9082-3-chris@chris-wilson.co.uk>
 <22892c2a-194f-d41e-2408-1c4b2a97daa2@linux.intel.com>
Message-ID: <156095492796.21217.15894705961005062341@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 19 Jun 2019 15:35:27 +0100
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Signal fence completion from
 i915_request_wait
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xOSAxNToyNzoyMSkKPiAKPiBPbiAxOS8w
Ni8yMDE5IDEyOjIzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXaXRoIHRoZSB1cGNvbWluZyBj
aGFuZ2UgdG8gYXV0b21hbmFnZWQgaTkxNV9hY3RpdmUsIHRoZSBpbnRlbnQgaXMgdGhhdAo+ID4g
d2hlbmV2ZXIgd2Ugd2FpdCBvbiB0aGUgc2V0IG9mIGFjdGl2ZSBmZW5jZXMsIHRoZXkgYXJlIHNp
Z25hbGVkIGFuZAo+ID4gY29sbGVjdGVkLiAgVGhlIHJlcXVpcmVtZW50IGlzIHRoYXQgYWxsIHN1
Y2Nlc3NmdWwgcmV0dXJucyBmcm9tCj4gPiBpOTE1X3JlcXVlc3Rfd2FpdCgpIHNpZ25hbCB0aGUg
ZmVuY2UsIHNvIGZpeHVwIHRoZSBvbmUgcmVtYWluaW5nIHBhdGgKPiA+IHdoZXJlIHdlIG1heSBy
ZXR1cm4gYmVmb3JlIHRoZSBpbnRlcnJ1cHQgaGFzIGJlZW4gcnVuLgo+ID4gCj4gPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwgNCArKystCj4gPiAgIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiA+IGluZGV4IDBjMmI1M2I4YTNkMS4uOGQ1OWMzNWJkMjJm
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gPiBAQCAtMTQ1MSw4
ICsxNDUxLDEwIEBAIGxvbmcgaTkxNV9yZXF1ZXN0X3dhaXQoc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEsCj4gPiAgICAgICBmb3IgKDs7KSB7Cj4gPiAgICAgICAgICAgICAgIHNldF9jdXJyZW50X3N0
YXRlKHN0YXRlKTsKPiA+ICAgCj4gPiAtICAgICAgICAgICAgIGlmIChpOTE1X3JlcXVlc3RfY29t
cGxldGVkKHJxKSkKPiA+ICsgICAgICAgICAgICAgaWYgKGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQo
cnEpKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgZG1hX2ZlbmNlX3NpZ25hbCgmcnEtPmZl
bmNlKTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+ICsgICAgICAgICAgICAg
fQo+ID4gICAKPiA+ICAgICAgICAgICAgICAgaWYgKHNpZ25hbF9wZW5kaW5nX3N0YXRlKHN0YXRl
LCBjdXJyZW50KSkgewo+ID4gICAgICAgICAgICAgICAgICAgICAgIHRpbWVvdXQgPSAtRVJFU1RB
UlRTWVM7Cj4gPiAKPiAKPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KPiAKPiBQYXRjaCBpcyBmaW5lLCBidXQgSSBoYXZlIHRvIHNheSBjb21t
aXQgbWVzc2FnZSBzY2FyZXMgbWUgYSBiaXQuIFdoZXJlIAo+IGFyZSB3ZSBhZGRpbmcgc3VjaCBz
dWJ0bGUgZnJhZ2lsaXR5IHRoYXQgd2FpdCBoYXMgdG8gZXhpdCB3aXRoIGZlbmNlIAo+IHNpZ25h
bGVkPyBJcyBpdCBqdXN0IHNvbWUgc3BlY2lmaWMgaTkxNV9yZXF1ZXN0X3dhaXQgY2FsbCBzaXRl
IG9yIGFsbCBvZiAKPiB0aGVtPwoKZG1hX2ZlbmNlX3dhaXRfZGVmYXVsdCBhbHJlYWR5IGltcGxp
ZXMgdGhhdCB0aGUgZmVuY2UgaXMgc2lnbmFsZWQgcHJpb3IKdG8gaXRzIHJldHVybiwgc28gaW4g
dGVybXMgb2YgdGhlIGJpZ2dlciBwaWN0dXJlIEkgY2FuIGFyZ3VlIHRoaXMgYnJpbmcKdXMgaW50
byBsaW5lLgoKSW4gdGhlIHNjZW5hcmlvcyBJJ3ZlIGJlZW4gZml4aW5nIGl0J3MgYmFzaWNhbGx5
IG1ha2luZyBzdXJlIHRoYXQKaTkxNV9nZW1fd2FpdF9mb3JfaWRsZSgpIGRvZXMgZ3VhcmFudGVl
IHRoYXQgd2UgaWRsZSwgd2hpY2ggaW52b2x2ZXMKc29tZSBhc3N1cmFuY2UgdGhhdCB0aGUgcmVx
dWVzdCBhcmUgcmV0aXJlZCwgYW5kIHVzZXMKaTkxNV9yZXF1ZXN0X3dhaXQoKSBkaXJlY3RseSBm
b3IgdGhlIG1vc3QgcGFydC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
