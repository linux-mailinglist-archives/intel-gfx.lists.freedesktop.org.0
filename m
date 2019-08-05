Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 898A58258B
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 21:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 981EB6E143;
	Mon,  5 Aug 2019 19:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F6C86E143
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 19:26:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17896861-1500050 for multiple; Mon, 05 Aug 2019 20:25:59 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190805094333.17600-2-chris@chris-wilson.co.uk>
References: <20190805094333.17600-1-chris@chris-wilson.co.uk>
 <20190805094333.17600-2-chris@chris-wilson.co.uk>
Message-ID: <156503315812.30510.9010992993994938997@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 05 Aug 2019 20:25:58 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pmu: Use GT parked for
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMDUgMTA6NDM6MzMpCj4gQXMgd2UgdHJhY2sg
d2hlbiB3ZSBwdXQgdGhlIEdUIGRldmljZSB0byBzbGVlcCB1cG9uIGlkbGluZywgd2UgY2FuIHVz
ZQo+IHRoYXQgY2FsbGJhY2sgdG8gc2FtcGxlIHRoZSBjdXJyZW50IHJjNiBjb3VudGVycyBhbmQg
cmVjb3JkIHRoZQo+IHRpbWVzdGFtcCBmb3IgZXN0aW1hdGluZyBzYW1wbGVzIGFmdGVyIHRoYXQg
cG9pbnQgd2hpbGUgYXNsZWVwLgo+IAo+IHYyOiBTdGljayB0byB1c2luZyBrdGltZV90Cj4gCj4g
QnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEw
NTAxMAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8ICAyMSArKystLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jICAgICB8IDEyMCArKysrKysrKysrKysrKy0t
LS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmggICAgIHwgICA0
ICstCj4gIDMgZmlsZXMgY2hhbmdlZCwgNjkgaW5zZXJ0aW9ucygrKSwgNzYgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBpbmRleCA4OTUzMzM2ZjJhZTUu
LmJjYjgwODFmNTY0ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gQEAg
LTM5LDYgKzM5LDcgQEAKPiAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfcHNyLmgiCj4gIAo+ICAj
aW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKPiArI2luY2x1ZGUgImd0L2ludGVsX2d0
X3BtLmgiCj4gICNpbmNsdWRlICJndC9pbnRlbF9yZXNldC5oIgo+ICAjaW5jbHVkZSAiZ3QvdWMv
aW50ZWxfZ3VjX3N1Ym1pc3Npb24uaCIKPiAgCj4gQEAgLTM5OTYsMTMgKzM5OTcsMTEgQEAgc3Rh
dGljIGludCBpOTE1X3NzZXVfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2Vk
KQo+ICBzdGF0aWMgaW50IGk5MTVfZm9yY2V3YWtlX29wZW4oc3RydWN0IGlub2RlICppbm9kZSwg
c3RydWN0IGZpbGUgKmZpbGUpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gaW5vZGUtPmlfcHJpdmF0ZTsKPiArICAgICAgIHN0cnVjdCBpbnRlbF9ndCAqZ3Qg
PSAmaTkxNS0+Z3Q7Cj4gIAo+IC0gICAgICAgaWYgKElOVEVMX0dFTihpOTE1KSA8IDYpCj4gLSAg
ICAgICAgICAgICAgIHJldHVybiAwOwo+IC0KPiAtICAgICAgIGZpbGUtPnByaXZhdGVfZGF0YSA9
Cj4gLSAgICAgICAgICAgICAgICh2b2lkICopKHVpbnRwdHJfdClpbnRlbF9ydW50aW1lX3BtX2dl
dCgmaTkxNS0+cnVudGltZV9wbSk7Cj4gLSAgICAgICBpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3Vz
ZXJfZ2V0KCZpOTE1LT51bmNvcmUpOwo+ICsgICAgICAgaW50ZWxfZ3RfcG1fZ2V0KGd0KTsKPiAr
ICAgICAgIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNikKPiArICAgICAgICAgICAgICAgaW50ZWxf
dW5jb3JlX2ZvcmNld2FrZV91c2VyX2dldChndC0+dW5jb3JlKTsKCkFuZCB0aGlzIGludGVyYWN0
cyBiYWRseSB3aXRoIHRoZSBwbGFuIHRvIHVzZSB3YWl0X2Zvcl9pZGxlLiA6fApTbyBiZSBpdC4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
