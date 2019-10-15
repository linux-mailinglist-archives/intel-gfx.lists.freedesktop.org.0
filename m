Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAEAD7A91
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E42C6E02A;
	Tue, 15 Oct 2019 15:53:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A17156E02A
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:53:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18846361-1500050 for multiple; Tue, 15 Oct 2019 16:53:23 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191015154411.9984-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191015154411.9984-1-mika.kuoppala@linux.intel.com>
Message-ID: <157115480153.22469.10402309553414846597@skylake-alporthouse-com>
Date: Tue, 15 Oct 2019 16:53:21 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Wa_1607087056
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTE1IDE2OjQ0OjExKQo+IEF2b2lkIHBvc3Np
YmxlIGhhbmcgaW4gdHNnLHZmZSB1bml0cyBieSBrZWVwaW5nCj4gbDMgY2xvY2tzIHJ1bm5pbmdz
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXgu
aW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jIHwgNSArKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAg
ICAgICAgIHwgMiArKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IGluZGV4IGJhNjVl
NTAxODk3OC4uODFkMjk5YjI3ZmJjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTg5Miw2ICs4OTIsMTEgQEAgaWNsX2d0X3dvcmthcm91
bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1X3dhX2xp
c3QgKndhbCkKPiAgICAgICAgIHdhX3dyaXRlX29yKHdhbCwKPiAgICAgICAgICAgICAgICAgICAg
IEdBTVRfQ0hLTl9CSVRfUkVHLAo+ICAgICAgICAgICAgICAgICAgICAgR0FNVF9DSEtOX0RJU0FC
TEVfTDNfQ09IX1BJUEUpOwo+ICsKPiArICAgICAgIC8qIFdhXzE2MDcwODcwNTY6aWNsICovCj4g
KyAgICAgICB3YV93cml0ZV9vcih3YWwsCj4gKyAgICAgICAgICAgICAgICAgICBTTElDRV9VTklU
X0xFVkVMX0NMS0dBVEUsCj4gKyAgICAgICAgICAgICAgICAgICBMM19DTEtHQVRFX0RJUyB8IEwz
X0NSMlhfQ0xLR0FURV9ESVMpOwoKU2VlbXMgdG8gYWxzbyBpbXBhY3QgdGdsPy4KClJldmlld2Vk
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
