Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CD629FB7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 22:19:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05A46E0D8;
	Fri, 24 May 2019 20:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DBD06E0D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 20:19:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16673569-1500050 for multiple; Fri, 24 May 2019 21:19:36 +0100
MIME-Version: 1.0
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190415141641.29055-1-ville.syrjala@linux.intel.com>
References: <20190415141641.29055-1-ville.syrjala@linux.intel.com>
Message-ID: <155872917483.6190.14417794320415308041@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 May 2019 21:19:34 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable eLLC caching of display
 buffers for SKL+
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA0LTE1IDE1OjE2OjQxKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gU2luY2UgU0tM
IHRoZSBlTExDIGhhcyBiZWVuIHNpdHRpbmcgb24gdGhlIGZhciBzaWRlIG9mIHRoZSBzeXN0ZW0K
PiBhZ2VudCwgbWVhbmluZyB0aGUgZGlzcGxheSBlbmdpbmUgY2FuIHV0aWxpemUgaXQuIExldCdz
IGVuYWJsZSB0aGF0Lgo+IAo+IEkgY2hvc2UgV0IgZm9yIHRoZSBjYWNoaW5nIG1vZGUsIGJlY2F1
c2UgbXkgbnVtYmVycyBhcmUgaW5kaWNhdGluZwo+IHRoYXQgV1QgbWlnaHQgYWN0dWFsbHkgYmUg
V0IgYW5kIFdDIG1pZ2h0IGFjdHVhbGx5IGJlIFVDLiBJJ20gbm90Cj4gMTAwJSBzdXJlIHRoYXQg
aXMgaW5kZWVkIHRoZSBjYXNlIGJ1dCBhdCBsZWFzdCBteSBzaW1wbGUgcmVuZGVyY29weQo+IGJh
c2VkIGJlbmNobWFyayBkaWRuJ3Qgc2VlIGFueSBkaWZmZXJlbmNlIGluIHBlcmZvcm1hbmNlLgo+
IAo+IEFsc28gaWYgSSBjb25maWd1cmUgdGhpbmdzIHRvIGRvIExMQ2VMTEMrV1QgSSBzdGlsbCBn
ZXQgY2FjaGUgZGlydAo+IG9uIG15IHNjcmVlbiwgc3VnZ2VzdGluZyB0aGF0IGlzIGluIGZhY3Qg
b3BlcmF0aW5nIGluIFdCIG1vZGUKPiBhbnl3YXkuIFRoaXMgaXMgYWxzbyB0aGUgcmVhc29uIEkg
aGFkIHRvIGZpeCB0aGUgTU9DUyB0YXJnZXQgY2FjaGUKPiB0byByZWFsbHkgc2F5IFBURSByYXRo
ZXIgdGhhbiBMTEMrZUxMQy4KPiAKPiBDYXZlYXQ6IEkndmUgbm90IGJlbmNobWFya2VkIGFueSBy
ZWFsIHdvcmtsb2Fkcy4gSUlSQyBFZXJvIGRpZAo+IGJlbmNobWFyayBhbiBlYXJsaWVyIHZlcnNp
b24sIGJ1dCB0aGF0IGRpZG4ndCBoYXZlIHRoZSBQVEUgdnMuCj4gTExDK2VMTEMgTU9DUyBmaXgg
c28gaXQgd2Fzbid0IGFjdHVhbGx5IGRvaW5nIHRoZSByaWdodCB0aGluZwo+IG1vc3QgbGlrZWx5
Lgo+IAo+IENjOiBFZXJvIFRhbW1pbmVuIDxlZXJvLnQudGFtbWluZW5AaW50ZWwuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
