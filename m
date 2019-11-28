Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F93610C7EE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 12:31:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCCFD6E7AB;
	Thu, 28 Nov 2019 11:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090AF6E7AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 11:31:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19374193-1500050 for multiple; Thu, 28 Nov 2019 11:31:02 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191128102546.3857140-1-chris@chris-wilson.co.uk>
 <877e3kkzq5.fsf@gaia.fi.intel.com>
In-Reply-To: <877e3kkzq5.fsf@gaia.fi.intel.com>
Message-ID: <157494066021.7216.4125843543287628913@skylake-alporthouse-com>
Date: Thu, 28 Nov 2019 11:31:00 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Try to show where the
 pulse went
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTI4IDExOjI3OjMwKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBXZSBoYXZlIGEgY2Fz
ZSBvZiBhIG15c3RlcmlvdXNseSBhYnNlbnQgcHVsc2UsIHNvIGR1bXAgdGhlIGVuZ2luZQo+ID4g
ZGV0YWlscyB0byBzZWUgaWYgd2UgY2FuIGZpbmQgb3V0IHdoYXQgaGFwcGVuZWQgdG8gaXQuCj4g
Pgo+ID4gUmVmZXJlbmNlczogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTEyNDA1Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9jcy5jICAgICAgICAgICB8IDIgKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9lbmdpbmVfaGVhcnRiZWF0LmMgfCA1ICsrKysrCj4gPiAgMiBmaWxlcyBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfY3MuYwo+ID4gaW5kZXggOGY2ZTM1M2NhYTY2Li5kZjMzNjljM2YzMzAgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiA+IEBAIC0x
NDc5LDYgKzE0NzksOCBAQCB2b2lkIGludGVsX2VuZ2luZV9kdW1wKHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSwKPiA+ICAgICAgICAgICAgICAgZHJtX3ByaW50ZihtLCAiKioqIFdFREdF
RCAqKipcbiIpOwo+ID4gIAo+ID4gICAgICAgZHJtX3ByaW50ZihtLCAiXHRBd2FrZT8gJWRcbiIs
IGF0b21pY19yZWFkKCZlbmdpbmUtPndha2VyZWYuY291bnQpKTsKPiA+ICsgICAgIGRybV9wcmlu
dGYobSwgIlx0QmFycmllcnM/OiAlc1xuIiwKPiA+ICsgICAgICAgICAgICAgICAgeWVzbm8oIWxs
aXN0X2VtcHR5KCZlbmdpbmUtPmJhcnJpZXJfdGFza3MpKSk7Cj4gCj4gQSByYW5kb20gdGhvdWdo
dCBhcmlzZSB3aGVuIHJlYWRpbmcgdGhpcyBhbmQgaXQgd2FzIHRoYXQKPiBzaG91bGQgd2UgZG8g
YSBtZW1vcnkgYmFycmllciBiZWZvcmUgZHVtcC4gQnV0IHRoZXJlCj4gd291bGQgYmUgbm8gcGFp
cmluZyBhbmQgaXQgY291bGQgYWN0dWFsbHkgaGlkZSBzb21ldGhpbmcKPiBtb3JlIHNpbmlzdGVy
LgoKWWVhaCwgZXhhY3RseSB3aG8gZG8gd2Ugd2FudCB0byBzZXJpYWxpc2Ugd2l0aCAtLSBhbmQg
d2Ugd2lsbCBhbHdheXMKbmVlZCBhIHNuYXBzaG90IGp1c3QgaW4gY2FzZSB3ZSBzY3JldyB0aGF0
IHVwIDopCgpJdCdzIGRlYnVnOyBhcyBhc3luYyBhcyB3ZSBjYW4gd2l0aG91dCBvb3BzaW5nLCBh
bmQga2VlcCBvbiBzdGFyaW5nCnVudGlsIGl0IHN0YXJ0cyB0byBtYWtlIHNlbnNlLgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
