Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D62E91606
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2019 11:56:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F6696E057;
	Sun, 18 Aug 2019 09:56:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 864816E057
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2019 09:56:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18178824-1500050 for multiple; Sun, 18 Aug 2019 10:56:22 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190818095204.31568-2-michal.wajdeczko@intel.com>
References: <20190818095204.31568-1-michal.wajdeczko@intel.com>
 <20190818095204.31568-2-michal.wajdeczko@intel.com>
Message-ID: <156612218021.25088.9356726227164408122@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 18 Aug 2019 10:56:20 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/guc: Don't open log relay if
 GuC is not running
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTE4IDEwOjUyOjAyKQo+IEFzIHdlIHBs
YW4gdG8gY29udGludWUgZHJpdmVyIGxvYWQgYWZ0ZXIgR3VDIGluaXRpYWxpemF0aW9uCj4gZmFp
bHVyZSwgd2UgY2FuJ3QgYXNzdW1lIHRoYXQgR3VDIGxvZyBkYXRhIHdpbGwgYmUgYXZhaWxhYmxl
Cj4ganVzdCBiZWNhdXNlIEd1QyB3YXMgaW5pdGlhbGx5IGVuYWJsZWQuIFdlIG11c3QgY2hlY2sg
dGhhdAo+IEd1QyBpcyBzdGlsbCBydW5uaW5nIGluc3RlYWQuCj4gCj4gU2lnbmVkLW9mZi1ieTog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmMgfCAgNCArKysrCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICB8IDE3ICsrKysrKysrKy0tLS0tLS0t
Cj4gIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jCj4gaW5kZXggNTk3
MDJlYmM2OGY2Li4zNjMzMjA2NGRlOWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjX2xvZy5jCj4gQEAgLTM3Miw2ICszNzIsNyBAQCBzdGF0aWMgaW50IGd1Y19s
b2dfcmVsYXlfY3JlYXRlKHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cpCj4gICAgICAgICBpbnQg
cmV0Owo+ICAKPiAgICAgICAgIGxvY2tkZXBfYXNzZXJ0X2hlbGQoJmxvZy0+cmVsYXkubG9jayk7
Cj4gKyAgICAgICBHRU1fQlVHX09OKCFsb2ctPnZtYSk7Cj4gIAo+ICAgICAgICAgIC8qIEtlZXAg
dGhlIHNpemUgb2Ygc3ViIGJ1ZmZlcnMgc2FtZSBhcyBzaGFyZWQgbG9nIGJ1ZmZlciAqLwo+ICAg
ICAgICAgc3ViYnVmX3NpemUgPSBsb2ctPnZtYS0+c2l6ZTsKPiBAQCAtNTU0LDYgKzU1NSw5IEBA
IGludCBpbnRlbF9ndWNfbG9nX3JlbGF5X29wZW4oc3RydWN0IGludGVsX2d1Y19sb2cgKmxvZykK
PiAgewo+ICAgICAgICAgaW50IHJldDsKPiAgCj4gKyAgICAgICBpZiAoIWxvZy0+dm1hKQo+ICsg
ICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKCk9rLCB0aGlzIGlzIGNhbGxlZCBmcm9tIGRl
YnVnZnMgc28gYWZ0ZXIgcmVnaXN0cmF0aW9uIHdoZW4gdGhlIHByZXNlbmNlCm9yIG5vdCBvZiB0
aGUgbG9nLT52bWEgaXMgc3RhdGljLgoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
