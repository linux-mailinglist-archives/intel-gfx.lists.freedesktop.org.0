Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 818A2E8BFE
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 16:41:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC7FA6EC36;
	Tue, 29 Oct 2019 15:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E88F6E42D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 15:41:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19008576-1500050 for multiple; Tue, 29 Oct 2019 15:41:20 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191029142826.20014-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20191029142826.20014-1-lionel.g.landwerlin@intel.com>
Message-ID: <157236367838.2489.11008446671306868871@skylake-alporthouse-com>
Date: Tue, 29 Oct 2019 15:41:18 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: ensure selftests select
 valid format
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0yOSAxNDoyODoyNikKPiBHZW4xMiBv
bmx5IHN1cHBvcnQgYSBzaW5nbGUgcmVwb3J0IGZvcm1hdCA6Cj4gSTkxNV9PQV9GT1JNQVRfQTMy
dTQwX0E0dTMyX0I4X0M4Cj4gCj4gU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxp
b25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IEZpeGVzOiAwMGE3ZjBkNzE1NWMgKCJkcm0v
aTkxNS90Z2w6IEFkZCBwZXJmIHN1cHBvcnQgb24gVEdMIikKPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcGVyZi5jIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaTkxNV9wZXJmLmMKPiBpbmRleCBkYzZkNjg5ZTQyNTEuLmFhYmQwN2Y2N2U0
OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9wZXJm
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9wZXJmLmMKPiBA
QCAtMjMsNyArMjMsOCBAQCB0ZXN0X3N0cmVhbShzdHJ1Y3QgaTkxNV9wZXJmICpwZXJmKQo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEk5MTVfRU5H
SU5FX0NMQVNTX1JFTkRFUiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAwKSwKPiAgICAgICAgICAgICAgICAgLnNhbXBsZV9mbGFncyA9IFNBTVBM
RV9PQV9SRVBPUlQsCj4gLSAgICAgICAgICAgICAgIC5vYV9mb3JtYXQgPSBJOTE1X09BX0ZPUk1B
VF9DNF9COCwKPiArICAgICAgICAgICAgICAgLm9hX2Zvcm1hdCA9IElTX0dFTihwZXJmLT5pOTE1
LCAxMikgPwo+ICsgICAgICAgICAgICAgICBJOTE1X09BX0ZPUk1BVF9BMzJ1NDBfQTR1MzJfQjhf
QzggOiBJOTE1X09BX0ZPUk1BVF9DNF9COCwKCk1hdGNoZXMgZ2VuMTJfb2FfZm9ybWF0c1tdLCBt
dXN0IGJlIGdvb2QgOikKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
