Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47551AFE33
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 15:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D0B6EB11;
	Wed, 11 Sep 2019 13:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B75C36EB0F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 13:59:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18452282-1500050 for multiple; Wed, 11 Sep 2019 14:59:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190911135000.23272-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190911135000.23272-1-ville.syrjala@linux.intel.com>
Message-ID: <156821036908.3439.5160277708812427100@skylake-alporthouse-com>
Date: Wed, 11 Sep 2019 14:59:29 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DRM_I915_DEBUG IOMMU stuff
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA5LTExIDE0OjUwOjAwKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gV2UgbmVlZCB0
byBzZWxlY3QgSU9NTVVfU1VQUE9SVCBhcyB3ZWxsLCBvdGhlcndpc2Ugd2UgY2FuIGJlIGxlZnQK
PiB3aXRoOgo+ICBDT05GSUdfSU9NTVVfSU9WQT1tCj4gICMgQ09ORklHX0lPTU1VX1NVUFBPUlQg
aXMgbm90IHNldAo+ICBDT05GSUdfSU5URUxfSU9NTVU9eQo+IAo+IHdoaWNoIGNvbXBsYWluczoK
PiAiV0FSTklORzogdW5tZXQgZGlyZWN0IGRlcGVuZGVuY2llcyBkZXRlY3RlZCBmb3IgSU5URUxf
SU9NTVUiCj4gCj4gYW5kIGZhaWxzIHRvIGxpbms6Cj4gbGQ6IGRyaXZlcnMvaW9tbXUvaW50ZWwt
aW9tbXUubzogaW4gZnVuY3Rpb24gYGZyZWVfYWxsX2NwdV9jYWNoZWRfaW92YXMnOgo+IC9ob21l
L3ZzeXJqYWxhL3NyYy9saW51eC9idWlsZF9za2wvLi4vZHJpdmVycy9pb21tdS9pbnRlbC1pb21t
dS5jOjQ0NjY6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGZyZWVfY3B1X2NhY2hlZF9pb3ZhcycK
PiAuLi4KPiAKPiBPciBkbyB3ZSBtYXliZSB3YW50IHNvbWV0aGluZyBsaWtlOgo+ICBzZWxlY3Qg
PGlvbW11IHRoaW5nPiBpZiBJT01NVV9TVVBQT1JUCj4gaW5zdGVhZD8KCkhtbS4gTXkgZ29hbCBm
b3IgRFJNX0k5MTVfREVCVUcgd2FzIGJhc2ljYWxseSB0byBkaWN0YXRlIHRoZQpjb25maWd1cmF0
aW9uIG9wdGlvbnMgZm9yIENJLiBOb3cgQ0kgaGFzIGVudGVyZWQgYSBuZXcgZXJhIG9mIGdpdApp
dHNlbGYsIHRoaXMgY291bGQgYmUgcmVpbmVkIGJhY2sgaW4gSSBndWVzcy4gQnV0IEkgc3RpbGwg
bGlrZSBoYXZpbmcgYQpzaW5nbGUgb3B0aW9uIHRoYXQgZW5hYmxlcyBhIGdvb2Qgc2V0IG9mIGRl
YnVnIG9wdGlvbnMgKHRoYXQgbWF0Y2ggd2hhdApDSSBkb2VzIGZvciBjb252ZW5pZW5jZSkuCgo+
IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBGaXhlczogMDIy
MjlhY2IzOTI2ICgiZHJtL2k5MTU6IEZvcmNlIGNvbXBpbGF0aW9uIHdpdGggaW50ZWwtaW9tbXUg
Zm9yIENJIHZhbGlkYXRpb24iKQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L0tjb25maWcuZGVidWcgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCj4gaW5kZXggYzVjMDBjYWQ2YmExLi5kOTQw
MjgwZGY2YjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1
Zwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcKPiBAQCAtMjIsNiAr
MjIsNyBAQCBjb25maWcgRFJNX0k5MTVfREVCVUcKPiAgICAgICAgICBkZXBlbmRzIG9uIERSTV9J
OTE1Cj4gICAgICAgICBzZWxlY3QgUENJX01TSQo+ICAgICAgICAgc2VsZWN0IElPTU1VX0FQSQo+
ICsgICAgICAgc2VsZWN0IElPTU1VX1NVUFBPUlQKCkFscmVhZHkgaW4gdGhlIHVwZGF0ZWQKNDFk
ZmQ1ZjY3YWU0ICgiZHJtL2k5MTU6IEZvcmNlIGNvbXBpbGF0aW9uIHdpdGggaW50ZWwtaW9tbXUg
Zm9yIENJIHZhbGlkYXRpb24iKQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
