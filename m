Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 532E57D965
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 12:33:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0CE26E486;
	Thu,  1 Aug 2019 10:33:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FA696E486
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 10:33:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17784315-1500050 for multiple; Thu, 01 Aug 2019 11:33:09 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190801101825.2784-3-tvrtko.ursulin@linux.intel.com>
References: <20190801101825.2784-1-tvrtko.ursulin@linux.intel.com>
 <20190801101825.2784-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <156465558692.2512.16294533985029116986@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 01 Aug 2019 11:33:06 +0100
Subject: Re: [Intel-gfx] [RFC 2/4] drm/i915/pmu: Convert engine sampling to
 uncore mmio
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOC0wMSAxMToxODoyMykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IERyb3BzIG9uZSBtYWNy
byB1c2luZyBpbXBsaWNpdCBkZXZfcHJpdi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BtdS5jIHwgMjMgKysrKysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wbXUuYwo+IGluZGV4IDEyMDA4OTY2YjAwZS4uYmQ5YWQ0ZjJiNGU0IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BtdS5jCj4gQEAgLTE2MiwyOSArMTYyLDMwIEBAIGFkZF9zYW1wbGUoc3Ry
dWN0IGk5MTVfcG11X3NhbXBsZSAqc2FtcGxlLCB1MzIgdmFsKQo+ICB9Cj4gIAo+ICBzdGF0aWMg
dm9pZAo+IC1lbmdpbmVzX3NhbXBsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
IHVuc2lnbmVkIGludCBwZXJpb2RfbnMpCj4gK2VuZ2luZXNfc2FtcGxlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25zKQo+ICB7Cj4gKyAgICAgICBz
dHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+dW5jb3JlOwo+ICAgICAgICAgc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwo+ICAgICAgICAgZW51bSBpbnRlbF9lbmdpbmVf
aWQgaWQ7Cj4gICAgICAgICBpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKPiAgICAgICAgIHVuc2ln
bmVkIGxvbmcgZmxhZ3M7Cj4gIAo+IC0gICAgICAgaWYgKChkZXZfcHJpdi0+cG11LmVuYWJsZSAm
IEVOR0lORV9TQU1QTEVfTUFTSykgPT0gMCkKPiArICAgICAgIGlmICgoaTkxNS0+cG11LmVuYWJs
ZSAmIEVOR0lORV9TQU1QTEVfTUFTSykgPT0gMCkKPiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+
ICAKPiAgICAgICAgIHdha2VyZWYgPSAwOwo+IC0gICAgICAgaWYgKFJFQURfT05DRShkZXZfcHJp
di0+Z3QuYXdha2UpKQo+IC0gICAgICAgICAgICAgICB3YWtlcmVmID0gaW50ZWxfcnVudGltZV9w
bV9nZXRfaWZfaW5fdXNlKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7Cj4gKyAgICAgICBpZiAoUkVB
RF9PTkNFKGk5MTUtPmd0LmF3YWtlKSkKPiArICAgICAgICAgICAgICAgd2FrZXJlZiA9IGludGVs
X3J1bnRpbWVfcG1fZ2V0X2lmX2luX3VzZSgmaTkxNS0+cnVudGltZV9wbSk7Cj4gICAgICAgICBp
ZiAoIXdha2VyZWYpCj4gICAgICAgICAgICAgICAgIHJldHVybjsKPiAgCj4gLSAgICAgICBzcGlu
X2xvY2tfaXJxc2F2ZSgmZGV2X3ByaXYtPnVuY29yZS5sb2NrLCBmbGFncyk7Cj4gLSAgICAgICBm
b3JfZWFjaF9lbmdpbmUoZW5naW5lLCBkZXZfcHJpdiwgaWQpIHsKPiArICAgICAgIHNwaW5fbG9j
a19pcnFzYXZlKCZ1bmNvcmUtPmxvY2ssIGZsYWdzKTsKPiArICAgICAgIGZvcl9lYWNoX2VuZ2lu
ZShlbmdpbmUsIGk5MTUsIGlkKSB7Cj4gICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9lbmdp
bmVfcG11ICpwbXUgPSAmZW5naW5lLT5wbXU7Cj4gICAgICAgICAgICAgICAgIGJvb2wgYnVzeTsK
PiAgICAgICAgICAgICAgICAgdTMyIHZhbDsKPiAgCj4gLSAgICAgICAgICAgICAgIHZhbCA9IEk5
MTVfUkVBRF9GVyhSSU5HX0NUTChlbmdpbmUtPm1taW9fYmFzZSkpOwo+ICsgICAgICAgICAgICAg
ICB2YWwgPSBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIFJJTkdfQ1RMKGVuZ2luZS0+bW1p
b19iYXNlKSk7CgpDb3VsZCB1c2UgRU5HSU5FX1JFQURfRlcoZW5naW5lLCBSSU5HX0NUTCkgPwoK
UmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
