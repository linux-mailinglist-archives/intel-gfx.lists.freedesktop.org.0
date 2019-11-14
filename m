Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE363FCA22
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 16:43:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586866E366;
	Thu, 14 Nov 2019 15:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DC126E366
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 15:43:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19202859-1500050 for multiple; Thu, 14 Nov 2019 15:43:08 +0000
MIME-Version: 1.0
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191114152621.7235-1-imre.deak@intel.com>
References: <20191114152621.7235-1-imre.deak@intel.com>
Message-ID: <157374618729.6809.14253763679058335383@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 14 Nov 2019 15:43:07 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Restore GT coarse power gating
 workaround
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

UXVvdGluZyBJbXJlIERlYWsgKDIwMTktMTEtMTQgMTU6MjY6MjEpCj4gVGhlIHdvcmthcm91bmQg
dG8gZGlzYWJsZSBjb2Fyc2UgcG93ZXIgZ2F0aW5nIGlzIHN0aWxsIG5lZWRlZCBvbiBTS0wKPiBH
VDMvR1Q0IG1hY2hpbmVzIGFuZCBzaW5jZSB0aGUgUkM2IGNvbnRleHQgY29ycnVwdGlvbiB3YXMg
ZGlzY292ZXJlZCBieQo+IHRoZSBoYXJkd2FyZSB0ZWFtIGFsc28gb24gYWxsIEdFTjkgbWFjaGlu
ZXMuIFJlc3RvcmUgYXBwbHlpbmcgdGhlCj4gd29ya2Fyb3VuZC4KPiAKPiBGaXhlczogYzExMzIz
NjcxOGU4ICgiZHJtL2k5MTU6IEV4dHJhY3QgR1QgcmVuZGVyIHNsZWVwIChyYzYpIG1hbmFnZW1l
bnQiKQo+IFRlc3RjYXNlOiBpZ3QvaW50ZWxfZ3RfcG1fbGF0ZV9zZWxmdGVzdHMvbGl2ZV9yYzZf
Y3R4Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBB
bmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3JjNi5jIHwgNiArKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmM2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYwo+IGlu
ZGV4IGY3YzBiYWViMzc5My4uZGUyZDMwMmU4ZDU1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmM2LmMKPiBAQCAtMTc1LDggKzE3NSwxMCBAQCBzdGF0aWMgdm9pZCBnZW45X3JjNl9l
bmFibGUoc3RydWN0IGludGVsX3JjNiAqcmM2KQo+ICAgICAgICAgICAgIEdFTjZfUkNfQ1RMX1JD
Nl9FTkFCTEUgfAo+ICAgICAgICAgICAgIHJjNl9tb2RlKTsKPiAgCj4gLSAgICAgICBzZXQodW5j
b3JlLCBHRU45X1BHX0VOQUJMRSwKPiAtICAgICAgICAgICBHRU45X1JFTkRFUl9QR19FTkFCTEUg
fCBHRU45X01FRElBX1BHX0VOQUJMRSk7Cj4gKyAgICAgICAvKiBXYVJzRGlzYWJsZUNvYXJzZVBv
d2VyR2F0aW5nOnNrbCxjbmwgLSBSZW5kZXIvTWVkaWEgUEcgbmVlZCB0byBiZSBkaXNhYmxlZCB3
aXRoIFJDNi4gKi8KPiArICAgICAgIGlmICghTkVFRFNfV2FSc0Rpc2FibGVDb2Fyc2VQb3dlckdh
dGluZyhyYzZfdG9faTkxNShyYzYpKSkKPiArICAgICAgICAgICAgICAgc2V0KHVuY29yZSwgR0VO
OV9QR19FTkFCTEUsCj4gKyAgICAgICAgICAgICAgICAgICBHRU45X1JFTkRFUl9QR19FTkFCTEUg
fCBHRU45X01FRElBX1BHX0VOQUJMRSk7CgpFZWVrLCBJIGRvbid0IGV2ZW4gcmVjYWxsIG5vdGlj
aW5nIGl0IGdvdCBkcm9wcGVkLgoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgoKSXQgbWlnaHQgYmUgbW9yZSBzZW5zaWJsZSBhcyBpZiAoMCkgc2lu
Y2UgZ2VuOSBpcyBmb3JldmVyIGJhcnJlZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
