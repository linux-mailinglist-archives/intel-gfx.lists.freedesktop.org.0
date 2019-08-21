Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B6C980B9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 18:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A0506E31D;
	Wed, 21 Aug 2019 16:53:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 769146E31D
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 16:53:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18217282-1500050 for multiple; Wed, 21 Aug 2019 17:53:40 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <875zmqv656.fsf@gaia.fi.intel.com>
References: <20190821155728.2839-1-chris@chris-wilson.co.uk>
 <20190821155728.2839-2-chris@chris-wilson.co.uk>
 <875zmqv656.fsf@gaia.fi.intel.com>
Message-ID: <156640641868.20466.14410847904824600440@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 21 Aug 2019 17:53:38 +0100
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/gtt: Add some range asserts
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTIxIDE3OjI0OjA1KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUaGVzZSBzaG91bGQg
aGF2ZSBiZWVuIHZhbGlkYXRlZCBpbiB0aGUgdXBwZXIgbGF5ZXJzLCBidXQgZm9yIHNhbml0eSdz
Cj4gPiBzYWtlLCByZXBlYXQgdGhlbS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMTYgKysrKysrKysrKystLS0tLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gPiBpbmRleCBiMDZkMWQ5MDU0YmEuLjBiODFlMGI2NDM5
MyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ID4gQEAgLTk2NSw4
ICs5NjUsMTAgQEAgc3RhdGljIHU2NCBfX2dlbjhfcHBndHRfY2xlYXIoc3RydWN0IGk5MTVfYWRk
cmVzc19zcGFjZSAqIGNvbnN0IHZtLAo+ID4gICAgICAgY29uc3Qgc3RydWN0IGk5MTVfcGFnZV9z
Y3JhdGNoICogY29uc3Qgc2NyYXRjaCA9ICZ2bS0+c2NyYXRjaFtsdmxdOwo+ID4gICAgICAgdW5z
aWduZWQgaW50IGlkeCwgbGVuOwo+ID4gIAo+ID4gKyAgICAgR0VNX0JVR19PTihlbmQgPiB2bS0+
dG90YWwgPj4gR0VOOF9QVEVfU0hJRlQpOwo+IAo+IEkgYW0gaGF2aW5nIHRob3VnaHRzIHRvIGNs
ZWFuIGFsbCB1bmRlcmx5aW5nIGhhbmRsaW5nIHRvCj4gdXNlIHBhZ2UgaW5kZXhlcyBjb25zaXN0
ZW50bHkuLi4KCkkgd291bGQgYWdyZWUsIHBmbiB0aHJvdWdob3V0IGRvZXMgbWFrZSBhIGNlcnRh
aW4gc2Vuc2UgZm9yIHRoZSBwYWdlCmRpcmVjdG9yeSB0cmVlcy4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
