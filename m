Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 312AA6C1AB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 21:45:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FAD36E29E;
	Wed, 17 Jul 2019 19:45:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61A176E29E
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 19:45:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17379202-1500050 for multiple; Wed, 17 Jul 2019 20:45:08 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
 <20190717180624.20354-7-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190717180624.20354-7-tvrtko.ursulin@linux.intel.com>
Message-ID: <156339270684.25270.4743966259748741380@skylake-alporthouse-com>
Date: Wed, 17 Jul 2019 20:45:06 +0100
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/icl: Add Wa_1409178092
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNyAxOTowNjoyNCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFdlIHdlcmUgbWlzc2lu
ZyB0aGlzIHdvcmthcm91bmQgd2hpY2ggY2FuIGNhdXNlIGhhbmdzIGlmIGZpbmUgZ3JhaW5lZAo+
IGNvaGVyZW5jeSB3YXMgdXNlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNiArKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCAgICAgICAgICAgICB8IDMgKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCj4gaW5kZXggZmY1MzJmZjVkNTc0Li43MDRhY2UwMWU3ZjUgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBAQCAtMTI5Nyw2ICsxMjk3LDEy
IEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0
cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiAgICAgICAgICAgICAgICAgd2Ffd3JpdGVfb3Iod2Fs
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHRU43X1NBUkNIS01ELAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBHRU43X0RJU0FCTEVfU0FNUExFUl9QUkVGRVRDSCk7Cj4gKwo+
ICsgICAgICAgICAgICAgICAvKiBXYV8xNDA5MTc4MDkyOmljbCAqLwo+ICsgICAgICAgICAgICAg
ICB3YV93cml0ZV9tYXNrZWRfb3Iod2FsLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgR0VOMTFfU0NSQVRDSDIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBHRU4xMV9DT0hFUkVOVF9QQVJUSUFMX1dSSVRFX01FUkdFX0VOQUJMRSwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDApOwoKSXQncyBtZW50aW9uZWQgdGhhdCB0aGlzIGlz
IG9ubHkgZm9yIEhBU19MTEMoKSwgdG8gYXZvaWQgY29taW5nIGJhY2sgdG8KdGhpcyBpbiBmdXR1
cmUsIEknZCBtYXJrIGl0IHVwIG5vdy4KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
