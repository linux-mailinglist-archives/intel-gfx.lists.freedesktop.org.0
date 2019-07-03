Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B7F5E306
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 13:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3CF06E120;
	Wed,  3 Jul 2019 11:44:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F53E6E120
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 11:44:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17113190-1500050 for multiple; Wed, 03 Jul 2019 12:44:45 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <60ca80ce-5187-4666-42c0-1d5838da166e@linux.intel.com>
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
 <20190703091726.11690-5-chris@chris-wilson.co.uk>
 <60ca80ce-5187-4666-42c0-1d5838da166e@linux.intel.com>
Message-ID: <156215428372.20783.6243203396405371454@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 03 Jul 2019 12:44:43 +0100
Subject: Re: [Intel-gfx] [PATCH 05/15] drm/i915/gt: Ignore forcewake
 acquisition for posting_reads
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0wMyAxMjoyNjozNikKPiAKPiBPbiAwMy8w
Ny8yMDE5IDEwOjE3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSBkb24ndCBjYXJlIGFib3V0
IHRoZSByZXN1bHQgb2YgdGhlIHJlYWQsIHNvIGl0IG1heSBiZSBnYXJiYWdlLCB3ZQo+ID4gb25s
eSBjYXJlIHRoYXQgdGhlIG1taW8gaXMgZmx1c2hlZC4gQXMgc3VjaCwgd2UgY2FuIGZvcmdvIHVz
aW5nIGFuCj4gPiBpbmRpdmlkdWFsIGZvcmNld2FrZSBhbmQgbG9jayBhcm91bmQgYW55IHBvc3Rp
bmctcmVhZCBmb3IgYW4gZW5naW5lLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaCB8IDIgKy0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZS5oCj4gPiBpbmRleCA1NTdiMDhiMTNmZWIuLjAzMzFlOWFjMjQ4NSAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaAo+ID4gQEAgLTUxLDcg
KzUxLDcgQEAgc3RydWN0IGRybV9wcmludGVyOwo+ID4gICAjZGVmaW5lIEVOR0lORV9SRUFEMTYo
Li4uKSAgX19FTkdJTkVfUkVBRF9PUChyZWFkMTYsIF9fVkFfQVJHU19fKQo+ID4gICAjZGVmaW5l
IEVOR0lORV9SRUFEKC4uLikgICAgX19FTkdJTkVfUkVBRF9PUChyZWFkLCBfX1ZBX0FSR1NfXykK
PiA+ICAgI2RlZmluZSBFTkdJTkVfUkVBRF9GVyguLi4pIF9fRU5HSU5FX1JFQURfT1AocmVhZF9m
dywgX19WQV9BUkdTX18pCj4gPiAtI2RlZmluZSBFTkdJTkVfUE9TVElOR19SRUFEKC4uLikgX19F
TkdJTkVfUkVBRF9PUChwb3N0aW5nX3JlYWQsIF9fVkFfQVJHU19fKQo+ID4gKyNkZWZpbmUgRU5H
SU5FX1BPU1RJTkdfUkVBRCguLi4pIF9fRU5HSU5FX1JFQURfT1AocG9zdGluZ19yZWFkX2Z3LCBf
X1ZBX0FSR1NfXykKPiA+ICAgI2RlZmluZSBFTkdJTkVfUE9TVElOR19SRUFEMTYoLi4uKSBfX0VO
R0lORV9SRUFEX09QKHBvc3RpbmdfcmVhZDE2LCBfX1ZBX0FSR1NfXykKPiA+ICAgCj4gPiAgICNk
ZWZpbmUgRU5HSU5FX1JFQUQ2NChlbmdpbmVfXywgbG93ZXJfcmVnX18sIHVwcGVyX3JlZ19fKSBc
Cj4gPiAKPiAKPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPiAKPiBDYW4gd2UgYXBwbHkgdGhpcyB0byBhbGwgcG9zdGluZyByZWFkcz8gKGlu
dGVsX3VuY29yZV9wb3N0aW5nX3JlYWQqKQoKSSBicmllZmx5IGNvbnNpZGVyZWQgaXQsIGJ1dCB3
YXMgdG9vIGxhenkgdG8gdGhpbmsgYmV5b25kIHRoZSBjdXJyZW50CnNldC4gV2hhdCBnYXZlIG1l
IHBhdXNlIGZvciBjb25jZXJuIHdhcyBpbnRlbF9ndF9mbHVzaF9nZ3R0X3dyaXRlcygpCndoZXJl
IHdlIGhhdmUgdG8gd29ycnkgYWJvdXQgb3ZlcmxhcHBpbmcgbW1pbyBhY2Nlc3MgY2F1c2luZyBn
ZW43IHRvCmV4cGxvZGUsIGdlbmVyYWxpc2luZyB0aGUgbG9jayBkcm9wIGlzIHRyaWNreS4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
