Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A84463B1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:13:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E83F8931E;
	Fri, 14 Jun 2019 16:13:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 199908931E
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:13:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16904916-1500050 for multiple; Fri, 14 Jun 2019 17:13:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-4-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190614151731.17608-4-tvrtko.ursulin@linux.intel.com>
Message-ID: <156052878343.7796.10453369434477175494@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 17:13:03 +0100
Subject: Re: [Intel-gfx] [RFC 03/31] drm/i915: Move intel_gt initialization
 to a separate file
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxNjoxNzowMykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEFzIGl0IHdpbGwgZ3Jv
dyBpbiBhIGZvbGxvd2luZyBwYXRjaCBtYWtlIGEgbmV3IGhvbWUgZm9yIGl0Lgo+IAo+IHYyOgo+
ICAqIENvbnZlcnQgbW9ja19nZW1fZGV2aWNlIGFzIHdlbGwuIChDaHJpcykKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgfCAgMSAr
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgICAgICAgICAgICAgICB8IDE1
ICsrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oICAg
ICAgICAgICAgICAgfCAxNCArKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jICAgICAgICAgICAgICAgICAgfCAgNiArKy0tLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jIHwgIDUgKystLS0KPiAgNSBmaWxlcyBj
aGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaAo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01h
a2VmaWxlCj4gaW5kZXggYzBhN2IyOTk0MDc3Li44ZGYxYmYyODU1ZDAgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9NYWtlZmlsZQo+IEBAIC03Myw2ICs3Myw3IEBAIGd0LXkgKz0gXAo+ICAgICAgICAgZ3QvaW50
ZWxfY29udGV4dC5vIFwKPiAgICAgICAgIGd0L2ludGVsX2VuZ2luZV9jcy5vIFwKPiAgICAgICAg
IGd0L2ludGVsX2VuZ2luZV9wbS5vIFwKPiArICAgICAgIGd0L2ludGVsX2d0Lm8gXAo+ICAgICAg
ICAgZ3QvaW50ZWxfZ3RfcG0ubyBcCj4gICAgICAgICBndC9pbnRlbF9oYW5nY2hlY2subyBcCj4g
ICAgICAgICBndC9pbnRlbF9scmMubyBcCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjgwN2M1Zjc0NjExMAo+
IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5j
Cj4gQEAgLTAsMCArMSwxNSBAQAo+ICsvKgo+ICsgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
TUlUCj4gKyAqCj4gKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4gKyAq
Lwo+ICsKPiArI2luY2x1ZGUgImludGVsX2d0LmgiCj4gKwo+ICt2b2lkIGludGVsX2d0X2luaXQo
c3RydWN0IGludGVsX2d0ICpndCkKClBsZWFzZSB1c2UgaW50ZWxfZ3RfaW5pdF9lYXJseSgpIHRv
IGtlZXAgdGhlIHBoYXNlIGtub3duLgoKSG1tLCBJIGRpZCBleHBlY3QgeW91IHRvIHB1bGwgYWNy
b3NzIGk5MTVfZ2VtX2luaXRfaHcoKSBhcyB3ZWxsLCBvciBkaWQKSSBtaXNzIHRoYXQ/Ci1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
