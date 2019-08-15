Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C5D8EA86
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 13:43:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 450D16E2D0;
	Thu, 15 Aug 2019 11:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428D06E2D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 11:43:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18150754-1500050 for multiple; Thu, 15 Aug 2019 12:43:31 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190815042031.27750-1-chris@chris-wilson.co.uk>
 <877e7e7jau.fsf@gaia.fi.intel.com>
In-Reply-To: <877e7e7jau.fsf@gaia.fi.intel.com>
Message-ID: <156586940854.5838.6495750696819184177@skylake-alporthouse-com>
Date: Thu, 15 Aug 2019 12:43:28 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move tasklet kicking to
 __i915_request_queue caller
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTE1IDEyOjM1OjM3KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBTaW5jZSBfX2k5MTVf
cmVxdWVzdF9xdWV1ZSgpIG1heSBiZSBjYWxsZWQgZnJvbSBoYXJkaXJxICh0aW1lcikgY29udGV4
dCwKPiA+IHdlIGNhbm5vdCB1c2UgbG9jYWxfYmhfZGlzYWJsZS9lbmFibGUgYXQgdGhlIGxvd2Vy
IGxldmVsLiBBcyB3ZSBkbyB3YW50Cj4gPiB0byBraWNrIHRoZSB0YXNrbGV0IHRvIHNwZWVkIHVw
IGluaXRpYWwgc3VibWlzc2lvbiBvciBwcmVlbXB0aW9uIGZvcgo+ID4gbm9ybWFsIGNsaWVudCBz
dWJtaXNzaW9uLCBsaWZ0IGl0IHRvIHRoZSBub3JtYWwgcHJvY2VzcyBjb250ZXh0Cj4gPiBjYWxs
cGF0aC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jIHwgNCArKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+ID4gaW5kZXgg
NDAyMTMzNGRkMmM1Li44YTJiYzFkMzE3ZTQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZXF1ZXN0LmMKPiA+IEBAIC0xMjAzLDEyICsxMjAzLDEwIEBAIHZvaWQgX19pOTE1X3JlcXVl
c3RfcXVldWUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4gPiAgICAgICAgKiBkZWNpZGUgd2hl
dGhlciB0byBwcmVlbXB0IHRoZSBlbnRpcmUgY2hhaW4gc28gdGhhdCBpdCBpcyByZWFkeSB0bwo+
ID4gICAgICAgICogcnVuIGF0IHRoZSBlYXJsaWVzdCBwb3NzaWJsZSBjb252ZW5pZW5jZS4KPiA+
ICAgICAgICAqLwo+ID4gLSAgICAgbG9jYWxfYmhfZGlzYWJsZSgpOwo+ID4gICAgICAgaTkxNV9z
d19mZW5jZV9jb21taXQoJnJxLT5zZW1hcGhvcmUpOwo+ID4gICAgICAgaWYgKGF0dHIgJiYgcnEt
PmVuZ2luZS0+c2NoZWR1bGUpCj4gPiAgICAgICAgICAgICAgIHJxLT5lbmdpbmUtPnNjaGVkdWxl
KHJxLCBhdHRyKTsKPiA+ICAgICAgIGk5MTVfc3dfZmVuY2VfY29tbWl0KCZycS0+c3VibWl0KTsK
PiA+IC0gICAgIGxvY2FsX2JoX2VuYWJsZSgpOyAvKiBLaWNrIHRoZSBleGVjbGlzdHMgdGFza2xl
dCBpZiBqdXN0IHNjaGVkdWxlZCAqLwo+IAo+IFdhcyB0aGlzIGhlcmUgdG8gb25seSBvcHRpbWl6
ZSB0aGUgbGF0ZW5jeSBmcm9tIHNjaGVkdWxlCj4gdG8gcmVzdWJtaXNzaW9uPwoKSXQncyBvbmx5
IGZvciBsYXRlbmN5IG1pbmltaXNhdGlvbi4gSWYgd2UgZG9uJ3QgZG8gaXQgbm93LCB0aGUKcmFp
c2Vfc29mdGlycSB3aWxsIG5vdCBiZSB1bnRpbCB0aGUgcHJvY2VzcyBoaXRzIHRoZSBzY2hlZHVs
ZXIuCgpGZW5jZSAtPiBiYWNrZW5kIGlzIGFsbCBpcnEtc3BpbmxvY2tzLgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
