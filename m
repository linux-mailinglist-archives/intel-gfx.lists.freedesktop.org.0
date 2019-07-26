Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E6F762E9
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 11:59:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F4B66ED0A;
	Fri, 26 Jul 2019 09:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E63B6ED0A
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 09:59:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17623296-1500050 for multiple; Fri, 26 Jul 2019 10:59:35 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190725205106.36148-1-michal.wajdeczko@intel.com>
 <156409104874.30723.3136641710682253705@skylake-alporthouse-com>
 <op.z5ip8pwoxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <156412931748.30723.17647242551624294517@skylake-alporthouse-com>
 <op.z5i365ibxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <op.z5i365ibxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156413517399.30723.8032631074409652423@skylake-alporthouse-com>
Date: Fri, 26 Jul 2019 10:59:34 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Don't sanitize guc_log_level
 modparam
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTI2IDEwOjQ4OjMxKQo+IE9uIEZyaSwg
MjYgSnVsIDIwMTkgMTA6MjE6NTcgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBRdW90aW5nIE1pY2hhbCBXYWpkZWN6a28gKDIw
MTktMDctMjYgMDU6NDc6MDMpCj4gPj4gT24gVGh1LCAyNSBKdWwgMjAxOSAyMzo0NDowOCArMDIw
MCwgQ2hyaXMgV2lsc29uCj4gPj4gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4g
Pj4KPiA+PiA+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAoMjAxOS0wNy0yNSAyMTo1MTowNikK
PiA+PiA+PiBXZSBhcmUgYWxyZWFkeSBzdG9yaW5nIHJ1bnRpbWUgdmFsdWUgb2YgbG9nIGxldmVs
IGluIHByaXZhdGUKPiA+PiA+PiBmaWVsZCwgc28gdGhlcmUgaXMgbm8gbmVlZCB0byBtb2RpZnkg
bW9kcGFyYW0uCj4gPj4gPgo+ID4+ID4gVGhlcmUgaXMgYW4gYXNwZWN0IG9mIGNvbW11bmljYXRp
bmcgdGhlIGNsYW1wZWQgdmFsdWUgYmFjayB0byB0aGUgIAo+ID4+IHVzZXIuCj4gPj4gPiBEb2Vz
IHRoYXQgaGF2ZSBhbnkgdmFsdWUgb3IgYWx0ZXJuYXRpdmU/Cj4gPj4KPiA+PiBBY3R1YWwgKGNs
YW1wZWQgb3IgZGVmYXVsdCkgdmFsdWUgb2YgdGhlIEd1QyBsb2cgbGV2ZWwgaXMgZXhwb3NlZCBp
bgo+ID4+IGk5MTVfZ3VjX2xvZ19sZXZlbCBkZWJ1Z2ZzIGVudHJ5LiBVc2VyIGNhbiBtb2RpZnkg
aXQgZnJvbSB0aGVyZSB0b28uCj4gPgo+ID4gV2h5PyA6KSBJIGZhaWwgdG8gc2VlIHdoeSB3ZSBo
YXZlIHR3byBtZXRob2RzIG9mIHNldHRpbmcgYSB2YXJpYWJsZSwgaWYKPiA+IHdlIHdhbnQgYSBj
YWxsYmFjayBvbiBtb2RwYXJhbSB3ZSBjYW4gc3VwcGx5IGEgcGFyYW1fb3BzLnNldCgpLi4uCj4g
Cj4gU2luZ2xlIG1vZHBhcmFtIHZhbHVlIG1heSBub3Qgd29yayBpbiB0aGUgZnV0dXJlIGFzIHdl
IG1heSBoYXZlIHRvIHN1cHBvcnQKPiBtdWx0aXBsZSBkZXZpY2VzIG9uIHNpbmdsZSBwbGF0Zm9y
bS4gVGhlcmUgd2lsbCBiZSBtb3JlIHNpbWlsYXIgY2hhbmdlcwo+IGFyb3VuZCBvdGhlciBndWMg
bW9kcGFyYW1zIGluIGEgbW9tZW50LgoKRXhhY3RseSwgYW5kIGRlYnVnZnMgZG9lc24ndCBleGlz
dC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
