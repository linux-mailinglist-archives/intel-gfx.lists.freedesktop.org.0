Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DA016487C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 16:26:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E593889F75;
	Wed, 19 Feb 2020 15:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16E3289F75
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 15:26:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20277405-1500050 for multiple; Wed, 19 Feb 2020 15:25:43 +0000
MIME-Version: 1.0
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200219150804.27158-1-michal.winiarski@intel.com>
References: <20200219150804.27158-1-michal.winiarski@intel.com>
Message-ID: <158212594298.8112.18024639793150286735@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 19 Feb 2020 15:25:43 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Avoid using globals for
 per-device state
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAyMC0wMi0xOSAxNTowODowNCkKPiBBdHRlbXB0
aW5nIHRvIGJpbmQgLyB1bmJpbmQgbW9kdWxlIGZyb20gZGV2aWNlcyB3aGVyZSB3ZSBoYXZlIGJv
dGgKPiBpbnRlZ3JhdGVkIGFuZCBkaXNjcmVldGUgR1BVIGhhbmRlZCBieSBpOTE1IG1heSBsZWFk
IHRvIGludGVyZXN0aW5nCj4gcmVzdWx0cyB3aGVyZSB3ZSdyZSBrZWVwaW5nIHBlci1kZXZpY2Ug
c3RhdGUgaW4gcGVyLW1vZHVsZSBnbG9iYWxzLgo+IAo+IEZpeGVzOiAwNTQ4ODY3M2E0ZDQgKCJk
cm0vaTkxNS9wbXU6IFN1cHBvcnQgbXVsdGlwbGUgR1BVcyIpCj4gU2lnbmVkLW9mZi1ieTogTWlj
aGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWljaGFsIFdhamRlY3prbyA8
bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gLSAgICAgICBpOTE1X3BtdV9ldmVudHNfYXR0cl9n
cm91cC5hdHRycyA9IGNyZWF0ZV9ldmVudF9hdHRyaWJ1dGVzKHBtdSk7Cj4gLSAgICAgICBpZiAo
IWk5MTVfcG11X2V2ZW50c19hdHRyX2dyb3VwLmF0dHJzKQo+ICsgICAgICAgcG11LT5ldmVudHNf
YXR0cl9ncm91cC5uYW1lID0gImV2ZW50cyI7Cj4gKyAgICAgICBwbXUtPmV2ZW50c19hdHRyX2dy
b3VwLmF0dHJzID0gY3JlYXRlX2V2ZW50X2F0dHJpYnV0ZXMocG11KTsKPiArICAgICAgIGlmICgh
cG11LT5ldmVudHNfYXR0cl9ncm91cC5hdHRycykKPiAgICAgICAgICAgICAgICAgZ290byBlcnJf
bmFtZTsKPiAgCj4gLSAgICAgICBwbXUtPmJhc2UuYXR0cl9ncm91cHMgICA9IGk5MTVfcG11X2F0
dHJfZ3JvdXBzOwo+ICsgICAgICAgcG11LT5iYXNlLmF0dHJfZ3JvdXBzID0ga2NhbGxvYyhBUlJB
WV9TSVpFKGF0dHJfZ3JvdXBzKSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgc2l6ZW9mKCphdHRyX2dyb3VwcyksCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIEdGUF9LRVJORUwpOwo+ICsgICAgICAgaWYgKCFwbXUtPmJhc2UuYXR0cl9n
cm91cHMpCj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyX2F0dHI7Cj4gKyAgICAgICBtZW1jcHko
YXR0cl9ncm91cHMsIHBtdS0+YmFzZS5hdHRyX2dyb3VwcywKPiArICAgICAgICAgICAgICBBUlJB
WV9TSVpFKGF0dHJfZ3JvdXBzKSAqIHNpemVvZigqYXR0cl9ncm91cHMpKTsKCmttZW1kdXAoYXR0
cl9ncm91cHMsIHNpemVvZihhdHRyX2dyb3VwcykpOwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wbXUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmgK
PiBpbmRleCA2YzE2NDdjNWRhZjIuLmRjMTM2MWU4ZTI3YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wbXUuaAo+IEBAIC00Miw2ICs0MiwxMCBAQCBzdHJ1Y3QgaTkxNV9wbXUgewo+ICAgICAgICAg
ICogQG5vZGU6IExpc3Qgbm9kZSBmb3IgQ1BVIGhvdHBsdWcgaGFuZGxpbmcuCj4gICAgICAgICAg
Ki8KPiAgICAgICAgIHN0cnVjdCBobGlzdF9ub2RlIG5vZGU7Cj4gKyAgICAgICAvKioKPiArICAg
ICAgICAqIEBjcHVocF9zbG90OiBTdGF0ZSBmb3IgQ1BVIGhvdHBsdWcgaGFuZGxpbmcuCj4gKyAg
ICAgICAgKi8KPiArICAgICAgIGVudW0gY3B1aHBfc3RhdGUgY3B1aHBfc2xvdDsKClBlcmhhcHMg
c3RydWN0IHsKCQlzdHJ1Y3QgaGxpc3Rfbm9kZSBub2RlOwoJCWVudW0gY3B1aHBfc3RhdGUgc2xv
dDsKCX0gY3B1aHA7CgpGd2l3LCBzZXBhcmF0ZSB0aGlzIGludG8gYSBzZXBhcmF0ZSBwYXRjaCwg
c28gd2UgaGF2ZSBvbmUgdG8gZGVnbG9iYWwKY3B1aHAgYW5kIG9uZSBmb3IgZXZlbnQgZ3JvdXBz
LgoKSnVzdCBncmltYWNpbmcgb3ZlciB0aGUgd2FzdGVkIHN0cmluZ3MgdGhhdCB3ZSBjb3VsZCBp
bnRlcm4gZm9yIGFjdHVhbAphdHRyLgoKQnV0IHRoZSBlc3NlbmNlIG9mIHRoZSBwYXRjaCBpcyBj
b3JyZWN0LCBzaW5jZSB0aGUgZXZlbnRzIGdyb3VwIGlzCmNyZWF0ZWQgYXQgcnVudGltZSBmcm9t
IHByb2JpbmcgdGhlIGRldmljZSwgaXQgaXMgbm90IGdsb2JhbC4KClJldmlld2VkLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
