Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B8571B57
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 17:17:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D92DD6E2D8;
	Tue, 23 Jul 2019 15:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CAF46E2D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 15:17:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17537861-1500050 for multiple; Tue, 23 Jul 2019 16:17:25 +0100
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <f59e006c-1485-302c-b80e-d0d70a4309f0@intel.com>
References: <20190723150031.GA16689@mwanda>
 <f59e006c-1485-302c-b80e-d0d70a4309f0@intel.com>
Message-ID: <156389504345.31349.1551781706671162998@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 23 Jul 2019 16:17:23 +0100
Subject: Re: [Intel-gfx] [bug report] drm/i915/uc: prefer intel_gt over i915
 in GuC/HuC paths
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTIzIDE2OjA4OjQ5KQo+IAo+
IAo+IE9uIDcvMjMvMjAxOSA4OjAwIEFNLCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+ID4gSGVsbG8g
RGFuaWVsZSBDZXJhb2xvIFNwdXJpbywKPiA+Cj4gPiBUaGUgcGF0Y2ggODRiMWNhMmYwZTY4OiAi
ZHJtL2k5MTUvdWM6IHByZWZlciBpbnRlbF9ndCBvdmVyIGk5MTUgaW4KPiA+IEd1Qy9IdUMgcGF0
aHMiIGZyb20gSnVsIDEzLCAyMDE5LCBsZWFkcyB0byB0aGUgZm9sbG93aW5nIHN0YXRpYwo+ID4g
Y2hlY2tlciB3YXJuaW5nOgo+ID4KPiA+ICAgICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2h1Yy5jOjE3MyBpbnRlbF9odWNfY2hlY2tfc3RhdHVzKCkKPiA+ICAgICAgIHdhcm46
IG1hc2tpbmcgYSBib29sCj4gPgo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
aHVjLmMKPiA+ICAgICAxNjEgIGludCBpbnRlbF9odWNfY2hlY2tfc3RhdHVzKHN0cnVjdCBpbnRl
bF9odWMgKmh1YykKPiA+ICAgICAxNjIgIHsKPiA+ICAgICAxNjMgICAgICAgICAgc3RydWN0IGlu
dGVsX2d0ICpndCA9IGh1Y190b19ndChodWMpOwo+ID4gICAgIDE2NCAgICAgICAgICBpbnRlbF93
YWtlcmVmX3Qgd2FrZXJlZjsKPiA+ICAgICAxNjUgICAgICAgICAgYm9vbCBzdGF0dXMgPSBmYWxz
ZTsKPiA+ICAgICAgICAgICAgICAgICAgXl5eXl5eXl5eXl5eXl5eXl5eXgo+ID4gICAgIDE2Ngo+
ID4gICAgIDE2NyAgICAgICAgICBpZiAoIWludGVsX3VjX2lzX3VzaW5nX2h1YygmZ3QtPnVjKSkK
PiA+ICAgICAxNjggICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiA+ICAgICAxNjkK
PiA+ICAgICAxNzAgICAgICAgICAgd2l0aF9pbnRlbF9ydW50aW1lX3BtKCZndC0+aTkxNS0+cnVu
dGltZV9wbSwgd2FrZXJlZikKPiA+ICAgICAxNzEgICAgICAgICAgICAgICAgICBzdGF0dXMgPSBp
bnRlbF91bmNvcmVfcmVhZChndC0+dW5jb3JlLCBodWMtPnN0YXR1cy5yZWcpOwo+ID4gICAgIDE3
Mgo+ID4gICAgIDE3MyAgICAgICAgICByZXR1cm4gKHN0YXR1cyAmIGh1Yy0+c3RhdHVzLm1hc2sp
ID09IGh1Yy0+c3RhdHVzLnZhbHVlOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgIF5eXl5e
Xgo+ID4KPiA+IEl0IGRlZmluaXRlbHkgbG9va3MgbGlrZSBzdGF0dXMgc2hvdWxkIGJlIGEgdTMy
IG9yIHNvbWV0aGluZy4KPiAKPiBZZXMsIGRlZmluaXRlbHkgd3JvbmcuIFdpbGwgc2VuZCBhIGZp
eCBzb29uLgo+IFRoaXMgaGlnaGxpZ2h0cyBldmVuIG1vcmUgdGhlIGxhY2sgb2YgdGVzdGluZyB3
ZSBoYXZlIGFyb3VuZCBIdUMuCgpPbiBnZW4xMSwgdGhpcyB3b3JrcyBvdXQgYXMgcmV0dXJuIChz
dGF0dXMgJiB0cnVlKSA9PSB0cnVlOwoKU28gd2hpbGUgZGVmaW5pdGVseSBpbmNvcnJlY3QgY29k
ZSwgaXQganVzdCBoYXBwZW5zIHRvIHdvcmsgc28gbG9uZyBhcwp3ZSBkb24ndCBsb29rIGF0IGdl
bjkuLi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
