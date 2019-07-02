Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1885CD96
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 12:32:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 126F089875;
	Tue,  2 Jul 2019 10:32:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C8489875
 for <Intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 10:32:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17097114-1500050 for multiple; Tue, 02 Jul 2019 11:32:06 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190702102313.9333-4-tvrtko.ursulin@linux.intel.com>
References: <20190702102313.9333-1-tvrtko.ursulin@linux.intel.com>
 <20190702102313.9333-4-tvrtko.ursulin@linux.intel.com>
Message-ID: <156206352379.2466.4669380737274769454@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 02 Jul 2019 11:32:03 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Move dev_priv->pm_i{m,
 e}r into intel_gt
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0wMiAxMToyMzoxMykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFBNIGludGVycnVwdHMg
YmVsb25nIHRvIHRoZSBHVCBzbyBtb3ZlIHRoZSB2YXJpYWJsZXMgdG8gYmUgaW5zaWRlCj4gc3Ry
dWN0IGludGVsX2d0LgoKSSBldmVuIGhhZCBndF9wbSBwYXRjaGVzIGtpY2tpbmcgYXJvdW5kIDot
cApXaGljaCBhcmUgaW4gZGVzcGVyYXRlIG5lZWQgb2YgcmV2aXZhbC4gOi0oCgo+IENvLWF1dGhv
cmVkLWJ5OiBQYXVsbyBaYW5vbmkgPHBhdWxvLnIuemFub25pQGludGVsLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBQYXVsbyBaYW5vbmkgPHBhdWxvLnIuemFub25pQGludGVsLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IENjOiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+
IENjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgIHwgICAzICsKPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIHwgICA0ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmggICAgICAgICAgICB8ICAgMiAtCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMgICAgICAgICAgICB8IDEyMSArKysrKysrKysrKy0tLS0tLS0tLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuaCAgICAgICAgICAgIHwgICA0ICstCj4gIDUgZmls
ZXMgY2hhbmdlZCwgNzEgaW5zZXJ0aW9ucygrKSwgNjMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCj4gaW5kZXggYzAzZTU2NjI4ZWUyLi4z
N2RhNDI4YmVmNjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfdHlwZXMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVz
LmgKPiBAQCAtNTUsNiArNTUsOSBAQCBzdHJ1Y3QgaW50ZWxfZ3Qgewo+ICAgICAgICAga3RpbWVf
dCBsYXN0X2luaXRfdGltZTsKPiAgCj4gICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnNjcmF0Y2g7
Cj4gKwo+ICsgICAgICAgdTMyIHBtX2ltcjsKPiArICAgICAgIHUzMiBwbV9pZXI7CgpGd2l3LCBJ
IGRvIGludGVuZCB0byBicmluZyBiYWNrIGd0X3BtIGFuZCBtb3ZlIGFsbCB0aGUgcnBzL2lwcyB0
cmFja2luZwp1bmRlcm5lYXRoIGl0IGFuZCBleHRyYWN0IGl0IGZyb20gaTkxNV9pcnEuYyAmIGlu
dGVsX3BtLmMgaW50byBndC8KCldlIGhhdmUgYSBsb25nIHN0YW5kaW5nIGJ1Z3MgaW4gcmFjZSBj
b25kaXRpb25zIGJldHdlZW4gdGhlIHBtCmludGVycnVwdHMgYW5kIHRoZSBycHMgd29ya2VyLCBw
bHVzIG92ZXJkdWUgd29yayB0byBsZXQgdXNlcnNwYWNlIG1ha2UKZmluZSBncmFpbmVkIHN1Z2dl
c3Rpb25zIGZvciBmcmVxdWVuY3kvcG93ZXIgY29udHJvbC4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
