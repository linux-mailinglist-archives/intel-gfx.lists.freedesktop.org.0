Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A0C26F43
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:57:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F262F89ACD;
	Wed, 22 May 2019 19:56:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D56F89ACD
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:56:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16646129-1500050 for multiple; Wed, 22 May 2019 20:56:51 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522193203.23932-5-michal.wajdeczko@intel.com>
References: <20190522193203.23932-1-michal.wajdeczko@intel.com>
 <20190522193203.23932-5-michal.wajdeczko@intel.com>
Message-ID: <155855501015.28319.13878159456906642250@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 20:56:50 +0100
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915/guc: Rename
 intel_guc_is_alive to intel_guc_is_loaded
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTIyIDIwOjMxOjU4KQo+IFRoaXMgZnVu
Y3Rpb24ganVzdCBjaGVjayBvdXIgc29mdHdhcmUgZmxhZywgd2hpbGUgJ2lzX2FsaXZlJwo+IG1h
eSBzdWdnZXN0IHRoYXQgd2UgYXJlIGNoZWNraW5nIHJ1bnRpbWUgZmlybXdhcmUgc3RhdHVzLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50
ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBD
YzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjLmggICAgICAgICAgICB8
IDEwICsrKysrLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Np
b24uYyB8ICAyICstCj4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWMu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Yy5oCj4gaW5kZXggMjQ5NGU4NDgzMWEy
Li5kNGIwMTVhYjhhMzYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Z3VjLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWMuaAo+IEBAIC05Niwx
MSArOTYsNiBAQCBzdHJ1Y3QgaW50ZWxfZ3VjIHsKPiAgICAgICAgIHZvaWQgKCpub3RpZnkpKHN0
cnVjdCBpbnRlbF9ndWMgKmd1Yyk7Cj4gIH07Cj4gIAo+IC1zdGF0aWMgaW5saW5lIGJvb2wgaW50
ZWxfZ3VjX2lzX2FsaXZlKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiAtewo+IC0gICAgICAgcmV0
dXJuIGludGVsX3VjX2Z3X2lzX2xvYWRlZCgmZ3VjLT5mdyk7Cj4gLX0KPiAtCj4gIHN0YXRpYwo+
ICBpbmxpbmUgaW50IGludGVsX2d1Y19zZW5kKHN0cnVjdCBpbnRlbF9ndWMgKmd1YywgY29uc3Qg
dTMyICphY3Rpb24sIHUzMiBsZW4pCj4gIHsKPiBAQCAtMTc2LDYgKzE3MSwxMSBAQCB1MzIgaW50
ZWxfZ3VjX3Jlc2VydmVkX2d0dF9zaXplKHN0cnVjdCBpbnRlbF9ndWMgKmd1Yyk7Cj4gIGludCBp
bnRlbF9ndWNfcmVzZXJ2ZV9nZ3R0X3RvcChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpOwo+ICB2b2lk
IGludGVsX2d1Y19yZWxlYXNlX2dndHRfdG9wKHN0cnVjdCBpbnRlbF9ndWMgKmd1Yyk7Cj4gIAo+
ICtzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZ3VjX2lzX2xvYWRlZChzdHJ1Y3QgaW50ZWxfZ3Vj
ICpndWMpCj4gK3sKPiArICAgICAgIHJldHVybiBpbnRlbF91Y19md19pc19sb2FkZWQoJmd1Yy0+
ZncpOwo+ICt9CgpBeWUsIGEgYmV0dGVyIHJlZmxlY3Rpb24uCgpSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
