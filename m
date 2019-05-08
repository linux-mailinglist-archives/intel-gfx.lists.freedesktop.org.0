Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 005251798F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 14:40:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F31B89885;
	Wed,  8 May 2019 12:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBF458987C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 12:40:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16490162-1500050 for multiple; Wed, 08 May 2019 13:40:13 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87ftppdt6x.fsf@gaia.fi.intel.com>
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
 <87ftppdt6x.fsf@gaia.fi.intel.com>
Message-ID: <155731921087.28545.15445835892642603065@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 08 May 2019 13:40:10 +0100
Subject: Re: [Intel-gfx] [PATCH 01/40] drm/i915/hangcheck: Replace
 hangcheck.seqno with RING_HEAD
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA1LTA4IDEzOjMwOjQ2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBBZnRlciByZWFsaXNp
bmcgd2UgbmVlZCB0byBzYW1wbGUgUklOR19TVEFSVCB0byBkZXRlY3QgY29udGV4dCBzd2l0Y2hl
cwo+ID4gZnJvbSBwcmVlbXB0aW9uIGV2ZW50cyB0aGF0IGRvIG5vdCBhbGxvdyBmb3IgdGhlIHNl
cW5vIHRvIGFkdmFuY2UsIHdlCj4gPiBjYW4gYWxzbyByZWFsaXNlIHRoYXQgdGhlIHNlcW5vIGl0
c2VsZiBpcyBqdXN0IGEgZGlzdGFuY2UgYWxvbmcgdGhlIHJpbmcKPiA+IGFuZCBzbyBjYW4gYmUg
cmVwbGFjZWQgYnkgc2FtcGxpbmcgUklOR19IRUFELgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IE1pa2EgS3VvcHBh
bGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgc3RhdGljIGVu
dW0gaW50ZWxfZW5naW5lX2hhbmdjaGVja19hY3Rpb24KPiA+IEBAIC0xNTYsNyArMTU2LDcgQEAg
aGFuZ2NoZWNrX2dldF9hY3Rpb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ID4g
ICAgICAgaWYgKGVuZ2luZS0+aGFuZ2NoZWNrLmxhc3RfcmluZyAhPSBoYy0+cmluZykKPiA+ICAg
ICAgICAgICAgICAgcmV0dXJuIEVOR0lORV9BQ1RJVkVfU0VRTk87Cj4gPiAgCj4gPiAtICAgICBp
ZiAoZW5naW5lLT5oYW5nY2hlY2subGFzdF9zZXFubyAhPSBoYy0+c2Vxbm8pCj4gPiArICAgICBp
ZiAoZW5naW5lLT5oYW5nY2hlY2subGFzdF9oZWFkICE9IGhjLT5oZWFkKQo+ID4gICAgICAgICAg
ICAgICByZXR1cm4gRU5HSU5FX0FDVElWRV9TRVFOTzsKPiAKPiBDaGFuZ2UgdGhlIGVudW0gYWxz
bz8KClBmZmlmbGUuIEFzIGZhciBhcyBoYW5nY2hlY2sgZ29lcyBSSU5HX1NUQVJUOlJJTkdfSEVB
RCBjb21wcmlzZSBpdHMKc2Vxbm8uCgpNYWtlcyBmb3IgYSBnb29kIHRhbGtpbmcgcG9pbnQgaW4g
YSBmZXcgeWVhcnMgdGltZSA6KQoKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4g
PiBpbmRleCBkMWE1NGQyYzNkNWQuLmYxZDYyNzQ2ZTA2NiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gQEAgLTIyNzUsMTIgKzIyNzUsNiBAQCBzdGF0aWMgdTMy
ICpnZW44X2VtaXRfZmluaV9icmVhZGNydW1iKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3Qs
IHUzMiAqY3MpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlcXVlc3QtPnRp
bWVsaW5lLT5od3NwX29mZnNldCwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
MCk7Cj4gPiAgCj4gPiAtICAgICBjcyA9IGdlbjhfZW1pdF9nZ3R0X3dyaXRlKGNzLAo+ID4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF9lbmdpbmVfbmV4dF9oYW5nY2hlY2tf
c2Vxbm8ocmVxdWVzdC0+ZW5naW5lKSwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgSTkxNV9HRU1fSFdTX0hBTkdDSEVDS19BRERSLAo+ID4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBNSV9GTFVTSF9EV19TVE9SRV9JTkRFWCk7Cj4gPiAtCj4gPiAtCj4gPiAgICAg
ICAqY3MrKyA9IE1JX1VTRVJfSU5URVJSVVBUOwo+ID4gICAgICAgKmNzKysgPSBNSV9BUkJfT05f
T0ZGIHwgTUlfQVJCX0VOQUJMRTsKPiA+ICAKPiA+IEBAIC0yMjk3LDE0ICsyMjkxLDExIEBAIHN0
YXRpYyB1MzIgKmdlbjhfZW1pdF9maW5pX2JyZWFkY3J1bWJfcmNzKHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJlcXVlc3QsIHUzMiAqY3MpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICByZXF1ZXN0LT50aW1lbGluZS0+aHdzcF9vZmZzZXQsCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBQSVBFX0NPTlRST0xfUkVOREVSX1RBUkdFVF9DQUNIRV9GTFVT
SCB8Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQSVBFX0NPTlRST0xf
REVQVEhfQ0FDSEVfRkxVU0ggfAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgUElQRV9DT05UUk9MX0RDX0ZMVVNIX0VOQUJMRSB8Cj4gPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBQSVBFX0NPTlRST0xfRkxVU0hfRU5BQkxFIHwKPiA+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJUEVfQ09OVFJPTF9DU19TVEFMTCk7Cj4gCj4g
Pz8/CgpLYWJ5bGFrZSBzZW5kcyB0aGUgaW50ZXJydXB0IHRvbyBlYXJseSBvdGhlcndpc2UuIFRo
ZSBoYW5nY2hlY2sgd3JpdGUKc2F2ZWQgdXMgYnkgcHVyZSBhY2NpZGVudC4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
