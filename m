Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC40679A9
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 12:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09BFE6E3CB;
	Sat, 13 Jul 2019 10:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5A86E3CB
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 10:25:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17265973-1500050 for multiple; Sat, 13 Jul 2019 11:25:50 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190713100016.8026-6-chris@chris-wilson.co.uk>
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
 <20190713100016.8026-6-chris@chris-wilson.co.uk>
Message-ID: <156301354788.9436.9702053752348942252@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 13 Jul 2019 11:25:47 +0100
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915/uc: move GuC and HuC files
 under gt/uc/
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMTMgMTE6MDA6MTEpCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBC
b3RoIG1pY3JvY29udHJvbGxlcnMgYXJlIHBhcnQgb2YgdGhlIEdUIEhXIGFuZCBhcmUgY2xvc2Vs
eSByZWxhdGVkIHRvCj4gR1Qgb3BlcmF0aW9ucy4gVG8ga2VlcCBhbGwgdGhlIGZpbGVzIGNsZWFu
bHkgdG9nZXRoZXIsIHRoZXkndmUgYmVlbgo+IHBsYWNlZCBpbiB0aGVpciBvd24gc3ViZGlyIGlu
c2lkZSB0aGUgZ3QvIGZvbGRlcgo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpk
ZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBBY2tlZC1ieTogTWljaGFsIFdhamRlY3prbyA8bWlj
aGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gLS0tCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPiBpbmRl
eCA1MjY2ZGJlYWIwMWYuLjUyNDUxNjI1MWE0MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4g
QEAgLTEzOSwxNiArMTM5LDE3IEBAIGk5MTUteSArPSBcCj4gICAgICAgICAgIGludGVsX3dvcGNt
Lm8KPiAgCj4gICMgZ2VuZXJhbC1wdXJwb3NlIG1pY3JvY29udHJvbGxlciAoR3VDKSBzdXBwb3J0
Cj4gLWk5MTUteSArPSBpbnRlbF91Yy5vIFwKPiAtICAgICAgICAgaW50ZWxfdWNfZncubyBcCj4g
LSAgICAgICAgIGludGVsX2d1Yy5vIFwKPiAtICAgICAgICAgaW50ZWxfZ3VjX2Fkcy5vIFwKPiAt
ICAgICAgICAgaW50ZWxfZ3VjX2N0Lm8gXAo+IC0gICAgICAgICBpbnRlbF9ndWNfZncubyBcCj4g
LSAgICAgICAgIGludGVsX2d1Y19sb2cubyBcCj4gLSAgICAgICAgIGludGVsX2d1Y19zdWJtaXNz
aW9uLm8gXAo+IC0gICAgICAgICBpbnRlbF9odWMubyBcCj4gLSAgICAgICAgIGludGVsX2h1Y19m
dy5vCj4gK29iai15ICs9IGd0L3VjLwo+ICtpOTE1LXkgKz0gZ3QvdWMvaW50ZWxfdWMubyBcCj4g
KyAgICAgICAgIGd0L3VjL2ludGVsX3VjX2Z3Lm8gXAo+ICsgICAgICAgICBndC91Yy9pbnRlbF9n
dWMubyBcCj4gKyAgICAgICAgIGd0L3VjL2ludGVsX2d1Y19hZHMubyBcCj4gKyAgICAgICAgIGd0
L3VjL2ludGVsX2d1Y19jdC5vIFwKPiArICAgICAgICAgZ3QvdWMvaW50ZWxfZ3VjX2Z3Lm8gXAo+
ICsgICAgICAgICBndC91Yy9pbnRlbF9ndWNfbG9nLm8gXAo+ICsgICAgICAgICBndC91Yy9pbnRl
bF9ndWNfc3VibWlzc2lvbi5vIFwKPiArICAgICAgICAgZ3QvdWMvaW50ZWxfaHVjLm8gXAo+ICsg
ICAgICAgICBndC91Yy9pbnRlbF9odWNfZncubwoKT2ssIG1vcmUgZm9kZGVyIHRvIHRoZSBuZWVk
IHRvIGFjdHVhbGx5IHVzZSBzdWJkaXJzLCBhbHRob3VnaCBJIHRoaW5rCnRoYXQgZW50YWlscyB1
cyB0byB1c2Ugc3VibW9kdWxlcyB3aXRoIHJlZ3VsYXIgRVhQT1JUX1NZTUJPTC4gTm90IHF1aXRl
CnJlYWR5IGZvciB0aGF0IHlldC4KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
