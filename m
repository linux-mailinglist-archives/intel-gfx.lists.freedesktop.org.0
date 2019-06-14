Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3627F4657B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 19:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D68989B38;
	Fri, 14 Jun 2019 17:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDEC589B38
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 17:17:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16905741-1500050 for multiple; Fri, 14 Jun 2019 18:17:06 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190614164350.30415-1-mika.kuoppala@linux.intel.com>
 <20190614164350.30415-5-mika.kuoppala@linux.intel.com>
In-Reply-To: <20190614164350.30415-5-mika.kuoppala@linux.intel.com>
Message-ID: <156053262416.7796.17254182123351452434@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 18:17:04 +0100
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915/gtt: Generalize alloc_pd
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE0IDE3OjQzOjQ1KQo+IEFsbG9jYXRlIGFs
bCBwYWdlIGRpcmVjdG9yeSB2YXJpYW50cyB3aXRoIGFsbG9jX3BkLiBBcwo+IHRoZSBsdmwzIGFu
ZCBsdmw0IHZhcmlhbnRzIGRpZmZlciBpbiBtYW5pcHVsYXRpb24sIHdlCj4gbmVlZCB0byBjaGVj
ayBmb3IgZXhpc3RlbmNlIG9mIGJhY2tpbmcgcGh5cyBwYWdlIGJlZm9yZSBhY2Nlc3NpbmcKPiBp
dC4KPiAKPiB2MjogdXNlIGVyciBpbiByZXR1cm5zCj4gCj4gU2lnbmVkLW9mZi1ieTogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgODggKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDUyIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXggMjU4MDU5NzFmNzcx
Li5kZTI2NGIzYTAxMDUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+IEBA
IC03MTksMTAgKzcxOSwxNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKmFs
bG9jX3BkKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQo+ICAgICAgICAgcmV0dXJuIHBk
Owo+ICB9Cj4gIAo+ICtzdGF0aWMgaW5saW5lIGJvb2wgcGRfaGFzX3BoeXNfcGFnZShjb25zdCBz
dHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNvbnN0IHBkKQo+ICt7Cj4gKyAgICAgICByZXR1
cm4gcGQtPmJhc2UucGFnZTsKCk9rLiBJIGhhdmUgbm8gYmV0dGVyIG1hZ2ljLgoKUmV2aWV3ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
