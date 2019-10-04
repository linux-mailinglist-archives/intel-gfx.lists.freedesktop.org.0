Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01104CC1B1
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 19:26:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15ECD6EBFB;
	Fri,  4 Oct 2019 17:26:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9220B6EBFB
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 17:25:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18727106-1500050 for multiple; Fri, 04 Oct 2019 18:25:51 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191004170452.15410-19-matthew.auld@intel.com>
References: <20191004170452.15410-1-matthew.auld@intel.com>
 <20191004170452.15410-19-matthew.auld@intel.com>
Message-ID: <157020994854.18712.12467671723238614981@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 04 Oct 2019 18:25:48 +0100
Subject: Re: [Intel-gfx] [PATCH v3 18/21] drm/i915: Don't try to place HWS
 in non-existing mappable region
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDQgMTg6MDQ6NDkpCj4gRnJvbTogTWljaGFs
IFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gCj4gSFdTIHBsYWNlbWVu
dCByZXN0cmljdGlvbnMgY2FuJ3QganVzdCByZWx5IG9uIEhBU19MTEMgZmxhZy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4g
Q2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwg
MyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3Mu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gaW5kZXggODBm
ZDA3MmFjNzE5Li5mNjc5OWVmOTkxNWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYwo+IEBAIC01MTMsNyArNTEzLDggQEAgc3RhdGljIGludCBwaW5fZ2d0
dF9zdGF0dXNfcGFnZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICAgICAgICB1
bnNpZ25lZCBpbnQgZmxhZ3M7Cj4gIAo+ICAgICAgICAgZmxhZ3MgPSBQSU5fR0xPQkFMOwo+IC0g
ICAgICAgaWYgKCFIQVNfTExDKGVuZ2luZS0+aTkxNSkpCj4gKyAgICAgICBpZiAoIUhBU19MTEMo
ZW5naW5lLT5pOTE1KSAmJgo+ICsgICAgICAgICAgIGk5MTVfZ2d0dF9oYXNfYXBlcnR1cmUoJmVu
Z2luZS0+aTkxNS0+Z2d0dCkpCgplbmdpbmUtPmd0LT5nZ3R0IGlzIHRoZSBwcmVmZXJyZWQgYWJz
dHJhY3RlZCByb3V0ZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
