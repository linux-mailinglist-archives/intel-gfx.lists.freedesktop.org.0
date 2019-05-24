Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C04292C5
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F5E6E02B;
	Fri, 24 May 2019 08:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CAE36E02B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:17:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16664382-1500050 for multiple; Fri, 24 May 2019 09:17:36 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <3806b12a-c2e2-fab4-b038-c8dd33daefd1@linux.intel.com>
References: <20190524064529.20514-1-chris@chris-wilson.co.uk>
 <3806b12a-c2e2-fab4-b038-c8dd33daefd1@linux.intel.com>
Message-ID: <155868585422.28319.13611154637326086125@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 May 2019 09:17:34 +0100
Subject: Re: [Intel-gfx] [BrownBag] drm/i915/gtt: Neuter the deferred unbind
 callback from gen6_ppgtt_cleanup
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yNCAwOToxMzoxNCkKPiAKPiBPbiAyNC8w
NS8yMDE5IDA3OjQ1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBIYXZpbmcgZGVmZXJyZWQgdGhl
IHZtYSBkZXN0cnVjdGlvbiB0byBhIHdvcmtlciB3aGVyZSB3ZSBjYW4gYWNxdWlyZSB0aGUKPiA+
IHN0cnVjdF9tdXRleCwgd2UgaGF2ZSB0byBhdm9pZCBjaGFzaW5nIGJhY2sgaW50byB0aGUgbm93
IGRlc3Ryb3llZAo+ID4gcHBndHQuIFRoZSBwZF92bWEgaXMgc3BlY2lhbCBpbiBoYXZpbmcgYSBj
dXN0b20gdW5iaW5kIGZ1bmN0aW9uIHRvIHNjYW4KPiA+IGZvciB1bnVzZWQgcGFnZXMgZGVzcGl0
ZSB0aGUgVk1BIGl0c2VsZiBiZWluZyBub3Rpb25hbGx5IHBhcnQgb2YgdGhlCj4gPiBHR1RULiBB
cyBzdWNoLCB3ZSBuZWVkIHRvIGRpc2FibGUgdGhhdCBjYWxsYmFjayB0byBhdm9pZCBhCj4gPiB1
c2UtYWZ0ZXItZnJlZS4KPiA+IAo+ID4gVGhpcyB1bmZvcnR1bmF0ZWx5IGJsZXcgdXAgc28gZWFy
bHkgZHVyaW5nIGJvb3QgdGhhdCBDSSBkZWNsYXJlZCB0aGUKPiA+IG1hY2hpbmUgdW5yZWFjaGFi
bGUgYXMgb3Bwb3NlZCB0byBiZWluZyB0aGUgbWFqb3IgZmFpbHVyZSBpdCB3YXMuIE9vcHMuCj4g
PiAKPiA+IEZpeGVzOiBkMzYyMjA5OWM3NmYgKCJkcm0vaTkxNS9ndHQ6IEFsd2F5cyBhY3F1aXJl
IHN0cnVjdF9tdXRleCBmb3IgZ2VuNl9wcGd0dF9jbGVhbnVwIikKPiA+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiBDYzogVG9taSBTYXJ2ZWxhIDx0
b21pLnAuc2FydmVsYUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmMgfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAg
IDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jCj4gPiBpbmRleCA4ZDhhNGIwYWQ0ZDkuLjI2NmJhYTExZGY2NCAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ID4gQEAgLTE4NDcsNiArMTg0
NywzMyBAQCBzdGF0aWMgdm9pZCBnZW42X3BwZ3R0X2NsZWFudXBfd29yayhzdHJ1Y3Qgd29ya19z
dHJ1Y3QgKndyaykKPiA+ICAgICAgIGtmcmVlKHdvcmspOwo+ID4gICB9Cj4gPiAgIAo+ID4gK3N0
YXRpYyBpbnQgbm9wX3NldF9wYWdlcyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiA+ICt7Cj4gPiAr
ICAgICByZXR1cm4gLUVOT0RFVjsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIHZvaWQgbm9wX2Ns
ZWFyX3BhZ2VzKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+ID4gK3sKPiA+ICt9Cj4gPiArCj4gPiAr
c3RhdGljIGludCBub3BfYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKPiA+ICsgICAgICAgICAg
ICAgICAgIGVudW0gaTkxNV9jYWNoZV9sZXZlbCBjYWNoZV9sZXZlbCwKPiA+ICsgICAgICAgICAg
ICAgICAgIHUzMiB1bnVzZWQpCj4gPiArewo+ID4gKyAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gPiAr
fQo+ID4gKwo+ID4gK3N0YXRpYyB2b2lkIG5vcF91bmJpbmQoc3RydWN0IGk5MTVfdm1hICp2bWEp
Cj4gPiArewo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfdm1hX29w
cyBub3Bfdm1hX29wcyA9IHsKPiA+ICsgICAgIC5zZXRfcGFnZXMgPSBub3Bfc2V0X3BhZ2VzLAo+
ID4gKyAgICAgLmNsZWFyX3BhZ2VzID0gbm9wX2NsZWFyX3BhZ2VzLAo+ID4gKyAgICAgLmJpbmRf
dm1hID0gbm9wX2JpbmQsCj4gPiArICAgICAudW5iaW5kX3ZtYSA9IG5vcF91bmJpbmQsCj4gPiAr
fTsKPiA+ICsKPiA+ICAgc3RhdGljIHZvaWQgZ2VuNl9wcGd0dF9jbGVhbnVwKHN0cnVjdCBpOTE1
X2FkZHJlc3Nfc3BhY2UgKnZtKQo+ID4gICB7Cj4gPiAgICAgICBzdHJ1Y3QgZ2VuNl9od19wcGd0
dCAqcHBndHQgPSB0b19nZW42X3BwZ3R0KGk5MTVfdm1fdG9fcHBndHQodm0pKTsKPiA+IEBAIC0x
ODU1LDYgKzE4ODIsNyBAQCBzdGF0aWMgdm9pZCBnZW42X3BwZ3R0X2NsZWFudXAoc3RydWN0IGk5
MTVfYWRkcmVzc19zcGFjZSAqdm0pCj4gPiAgICAgICAvKiBGSVhNRSByZW1vdmUgdGhlIHN0cnVj
dF9tdXRleCB0byBicmluZyB0aGUgbG9ja2luZyB1bmRlciBjb250cm9sICovCj4gPiAgICAgICBJ
TklUX1dPUksoJndvcmstPmJhc2UsIGdlbjZfcHBndHRfY2xlYW51cF93b3JrKTsKPiA+ICAgICAg
IHdvcmstPnZtYSA9IHBwZ3R0LT52bWE7Cj4gPiArICAgICB3b3JrLT52bWEtPm9wcyA9ICZub3Bf
dm1hX29wczsKPiAKPiBDb3VsZCB3ZSB1c2Ugc29tZSBhc3NlcnRzIGJlZm9yZSBvdmVycmlkaW5n
IHRoZSB2bWEgb3BzPyBMaWtlIAo+IEdFTV9CVUdfT04odm1hLT5wYWdlcyk/IEFuZCBzb21ldGhp
bmcgZm9yIHN0aWxsIGJvdW5kPwoKSXQgdGVjaG5pY2FsbHkgc3RpbGwgaXMgYm91bmQgYXMgaXQg
aXMgaW4gdGhlIEdHVFQgYnV0IGN1cnJlbnRseQp1bnBpbm5lZCAtLSB0aGF0IHdpbGwgYmUgY2hl
Y2tlZCBvbiBkZXN0cm95LCBpdCdzIGp1c3Qgd2UgYWxzbyBnZXQgYW4KdW5iaW5kIGNhbGxiYWNr
LiB2bWEtPnBhZ2VzIGRvZXNuJ3QgZXhpc3QgZm9yIHRoaXMgKHNldCB0byBFUlJfUFRSKS4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
