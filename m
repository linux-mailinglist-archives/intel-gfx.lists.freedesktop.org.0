Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A35D5BE68
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 16:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A7D689C03;
	Mon,  1 Jul 2019 14:37:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F039689C03
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 14:37:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17086406-1500050 for multiple; Mon, 01 Jul 2019 15:37:48 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-10-lionel.g.landwerlin@intel.com>
 <156198262577.1583.959905049922494081@skylake-alporthouse-com>
 <603a0f73-e7b1-7f39-e194-439ab5bb6a2a@intel.com>
In-Reply-To: <603a0f73-e7b1-7f39-e194-439ab5bb6a2a@intel.com>
Message-ID: <156199186516.1583.17662429049479365764@skylake-alporthouse-com>
Date: Mon, 01 Jul 2019 15:37:45 +0100
Subject: Re: [Intel-gfx] [PATCH v6 09/11] drm/i915/perf: allow holding
 preemption on filtered ctx
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wMSAxMzoxMDo1MykKPiBPbiAwMS8w
Ny8yMDE5IDE1OjAzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA3LTAxIDEyOjM0OjM1KQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+ID4+IGluZGV4IGY5MmJhY2U5Y2FmZi4uMDEy
ZDZkN2Y1NGUyIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9leGVjYnVmZmVyLmMKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZXhlY2J1ZmZlci5jCj4gPj4gQEAgLTIxMDQsNiArMjEwNCwxNCBAQCBzdGF0aWMgaW50
IGViX29hX2NvbmZpZyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKPiA+PiAgICAgICAgICBp
ZiAoZXJyKQo+ID4+ICAgICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPiA+PiAgIAo+ID4+ICsg
ICAgICAgLyoKPiA+PiArICAgICAgICAqIElmIHRoZSBwZXJmIHN0cmVhbSB3YXMgb3BlbmVkIHdp
dGggaG9sZCBwcmVlbXB0aW9uLCBmbGFnIHRoZQo+ID4+ICsgICAgICAgICogcmVxdWVzdCBwcm9w
ZXJseSBzbyB0aGF0IHRoZSBwcmlvcml0eSBvZiB0aGUgcmVxdWVzdCBpcyBidW1wZWQgb25jZQo+
ID4+ICsgICAgICAgICogaXQgcmVhY2hlcyB0aGUgZXhlY2xpc3QgcG9ydHMuCj4gPj4gKyAgICAg
ICAgKi8KPiA+PiArICAgICAgIGlmIChlYi0+aTkxNS0+cGVyZi5vYS5leGNsdXNpdmVfc3RyZWFt
LT5ob2xkX3ByZWVtcHRpb24pCj4gPj4gKyAgICAgICAgICAgICAgIGViLT5yZXF1ZXN0LT5mbGFn
cyB8PSBJOTE1X1JFUVVFU1RfRkxBR1NfUEVSRjsKPiA+IEp1c3QgdG8gcmVhc3N1cmUgbXlzZWxm
IHRoYXQgdGhpcyBpcyB0aGUgYmVoYXZpb3VyIHlvdToKPiA+Cj4gPiBJZiB0aGUgZXhjbHVzaXZl
X3N0cmVhbSBpcyBjaGFuZ2VkIGJlZm9yZSB0aGUgcmVxdWVzdCBpcyBleGVjdXRlZCwgaXQgaXMK
PiA+IGxpa2VseSB0aGF0IHdlIG5vIGxvbmdlciBub3RpY2UgdGhlIGVhcmxpZXIgcHJlZW1wdGlv
bi1wcm90ZWN0aW9uLiBUaGlzCj4gPiBzaG91bGQgbm90IG1hdHRlciBiZWNhdXNlIHRoZSBsaXN0
ZW5lciBpcyBubyBsb25nZXIgaW50ZXJlc3RlZCBpbiB0aG9zZQo+ID4gZXZlbnRzPwo+ID4gLUNo
cmlzCj4gPgo+IAo+IFllYWgsIGRyb3BwaW5nIHRoZSBwZXJmIHN0cmVhbSBiZWZvcmUgeW91ciBx
dWVyaWVzIGNvbXBsZXRlIGFuZCB5b3UncmUgCj4gaW4gdW5kZWZpbmVkIGJlaGF2aW9yIHRlcnJp
dG9yeS4KClRoZW4gdGhpcyBzaG91bGQgZG8gd2hhdCB5b3Ugd2FudCwgYW5kIGlmIEkgYnJlYWsg
aXQgaW4gZnV0dXJlLCBJIGhhdmUKdG8gZml4IGl0IDspCgpIbW0sIHRoaXMgZGVmaW5pdGVseSBt
ZXJpdHMgc29tZSBzZWxmdGVzdC9pZ3QgYXMgSSBhbSB2ZXJ5IGxpYWJsZSB0bwpicmVhayBpdC4K
ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
