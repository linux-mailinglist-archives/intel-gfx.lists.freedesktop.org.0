Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A19FC912
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 15:42:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 875EE6EAFF;
	Thu, 14 Nov 2019 14:42:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FB8D6EAFF
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 14:42:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19202217-1500050 for multiple; Thu, 14 Nov 2019 14:42:03 +0000
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191114140224.21818-1-lionel.g.landwerlin@intel.com>
References: <20191114140224.21818-1-lionel.g.landwerlin@intel.com>
Message-ID: <157374252214.2850.7919606210781837131@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 14 Nov 2019 14:42:02 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Add preemption check while
 waiting for OA
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMS0xNCAxNDowMjoyNCkKPiBXaGlsZSB3
ZSdyZSB3YWl0aW5nIGZvciB0aGUgT0EgY29uZmlndXJhdGlvbiB0byBhcHBseSwgbGV0J3MgZ2l2
ZSBhCj4gY2hhbmNlIHRvIG90aGVyIGNvbnRleHRzIHRoYXQgbWlnaHQgbmVlZCB0byBydW4gb3Ro
ZXIgd29ya2xvYWRzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9u
ZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiBTdWdnZXN0ZWQtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYyB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gaW5kZXggMzFlNDdlZTIzMzU3Li42MDhlNmMzZjNj
MWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+IEBAIC0xNzc3LDYgKzE3NzcsOCBA
QCBzdGF0aWMgaW50IGFsbG9jX25vYV93YWl0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJl
YW0pCj4gICAgICAgICAqY3MrKyA9IE1JX01BVEhfQUREOwo+ICAgICAgICAgKmNzKysgPSBNSV9N
QVRIX1NUT1JFSU5WKE1JX01BVEhfUkVHKEpVTVBfUFJFRElDQVRFKSwgTUlfTUFUSF9SRUdfQ0Yp
Owo+ICAKPiArICAgICAgICpjcysrID0gTUlfQVJCX0NIRUNLOwo+ICsKClRoYXQncyBhcyByZWFz
b25hYmxlIGEgdGltZSB0byBjaGVjay4gSWYgd2UgZ2V0IHByZWVtcHRlZCBqdXN0IGJlZm9yZQp0
aGUgZW5kIG9mIHRoZSB3YWl0IHdlIGRvIG9uZSBtb3JlIGxvb3AgYmVmb3JlIGV4Y2l0aW5nLiBB
bmQgdGhlIGxvb3AgaXMKcXVpY2sgZW5vdWdoIHRoYXQgaXQgZG9lc24ndCBtYXR0ZXIuCgpTbyBw
bGFjZW1lbnQgb2YgTUlfQVJCX0NIRUNLIGlzIGF0IHlvdXIgY29udmVuaWVuY2UgKGp1c3Qgc28g
bG9uZyBhcyBpdAppcyBpbnNpZGUgdGhlIGxvb3AhKQoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
