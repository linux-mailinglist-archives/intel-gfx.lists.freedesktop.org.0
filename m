Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 403BD23161
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 12:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87DC688A36;
	Mon, 20 May 2019 10:33:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9B7088A36
 for <Intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 10:33:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16613385-1500050 for multiple; Mon, 20 May 2019 11:33:18 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190520101816.20016-2-tvrtko.ursulin@linux.intel.com>
References: <20190520101816.20016-1-tvrtko.ursulin@linux.intel.com>
 <20190520101816.20016-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <155834839714.6928.11896599395714621899@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 20 May 2019 11:33:17 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/icl: Add
 WaDisableBankHangMode
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMCAxMToxODoxNikKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBpbmRleCA0Njg5MjhjZDhmYjMu
LjFhNzMwNDI0ZWJhNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYwo+IEBAIC01MjgsNiArNTI4LDEyIEBAIHN0YXRpYyB2b2lkIGljbF9jdHhfd29y
a2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiAg
ewo+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBlbmdpbmUtPmk5MTU7
Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBpOTE1Owo+ICsK
PiArICAgICAgIC8qIFdhRGlzYWJsZUJhbmtIYW5nTW9kZTppY2wgKi8KPiArICAgICAgIHdhX3dy
aXRlKHdhbCwKPiArICAgICAgICAgICAgICAgIEdFTjhfTDNDTlRMUkVHLAo+ICsgICAgICAgICAg
ICAgICAgSTkxNV9SRUFEKEdFTjhfTDNDTlRMUkVHKSB8IEdFTjhfRVJSREVUQkNUUkwpOwoKT2gs
IHdlIGNvbnZlcnRlZCBpbnRlbF93b3JrYXJvdW5kcyB0byBpbnRlbF91bmNvcmVfcmVhZCgpIGFs
cmVhZHkuCgppbnRlbF91bmNvcmVfcmVhZChlbmdpbmUtPnVuY29yZSwgR0VOOF9MM0NOVExSRUcp
IHwgR0VOOF9FUlJERVRCQ1RSTAotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
