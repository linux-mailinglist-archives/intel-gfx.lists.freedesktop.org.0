Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB408105909
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 19:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B19176F4A3;
	Thu, 21 Nov 2019 18:05:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F30FA6F4A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 18:05:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19289954-1500050 for multiple; Thu, 21 Nov 2019 18:05:30 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191121175850.19844-1-michal.wajdeczko@intel.com>
References: <20191121175850.19844-1-michal.wajdeczko@intel.com>
Message-ID: <157435952570.2524.128073657420639188@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 21 Nov 2019 18:05:25 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ggtt: Move ballooning support to
 i915_ggtt
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTExLTIxIDE3OjU4OjUwKQo+IFRvZGF5IFZH
VCBpbXBsZW1lbnRzIEdHVFQgYmFsbG9vbmluZyBvbiBpdHMgb3duLCB1c2luZyBzb21lIHByaXZh
dGUKPiBzdGF0aWMgc3RydWN0dXJlIHRvIGhvbGQgaW5mbyBhYm91dCByZXNlcnZlZCBHR1RUIG5v
ZGVzIGFuZCB0aGVuCj4gbWFudWFsbHkgdXBkYXRlIHZtLnJlc2VydmVkIHNpemUgb3duZWQgYnkg
aTkxNV9nZ3R0Lgo+IAo+IEFzIGk5MTVfZ2d0dCBhbHJlYWR5IG1hbmFnZXMgc29tZSBjdXN0b20g
cmVzZXJ2ZWQgbm9kZXMgKGxpa2UgdWNfZncpCj4gbW92ZSBWR1QgYmFsbG9vbmluZyBzdXBwb3J0
IHRvIGk5MTVfZ2d0dCBhbmQgbWFrZSBpdCBtb3JlIGdlbmVyaWMKPiBmb3IgcG9zc2libGUgZnV0
dXJlIHJldXNlIGluIG90aGVyIHNjZW5hcmlvcy4KPiAKPiBBcyBhIGJvbnVzIHdlIGNhbiBkcm9w
IGFub3RoZXIgcGxhY2UgaW4gZHJpdmVyIHRoYXQgdXNlcyBzdGF0aWMgZGF0YS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4K
PiBDYzogWGlvbmcgWmhhbmcgPHhpb25nLnkuemhhbmdAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMgfCA0NyArKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5oIHwgMTggKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92
Z3B1LmMgICAgfCA3MiArKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAzIGZpbGVzIGNo
YW5nZWQsIDc4IGluc2VydGlvbnMoKyksIDU5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXggNjIzOWE5YWRiZjE0Li5kOGIyMDg0ZGFiN2UgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+IEBAIC0zODI3LDYgKzM4MjcsNTMg
QEAgaW50IGk5MTVfZ2VtX2d0dF9pbnNlcnQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0s
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXJ0LCBlbmQs
IERSTV9NTV9JTlNFUlRfRVZJQ1QpOwo+ICB9Cj4gIAo+ICtpbnQgaTkxNV9nZ3R0X2JhbGxvb25f
c3BhY2Uoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgZW51bSBpOTE1X2dndHRfYmFsbG9vbl9pZCBpZCwKCkRvIHdlIHdhbnQgdG8gdXNlIGEgZml4
ZWQgbnVtYmVyIG9mIHNsb3RzPwoKU28gd2hhdCBleGFjdGx5IGlzIHdyb25nIHdpdGggdGhlIGNs
aWVudHMgcmVzZXJ2aW5nIG5vZGVzIHRoZW1zZWx2ZXM/CgpJJ20gbm90IHNlZWluZyB3aHkgZXhh
Y3RseSB3ZSB3YW50IHRvIG1vdmUgdG8gYSBtdWNoIG1vcmUgY2VudHJhbGlzZWQKc3lzdGVtIGFu
ZCBhcmd1ZSBvdmVyIG93bmVyc2hpcCBvZiBpOTE1X2dndHRfYmFsbG9vbl9pZC4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
