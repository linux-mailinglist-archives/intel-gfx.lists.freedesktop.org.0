Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98449C3AAF
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 18:39:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 441416E84B;
	Tue,  1 Oct 2019 16:39:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF2F76E84B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 16:39:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18682934-1500050 for multiple; Tue, 01 Oct 2019 17:39:06 +0100
MIME-Version: 1.0
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191001163555.24356-2-kai.vehmanen@linux.intel.com>
References: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
 <20191001163555.24356-2-kai.vehmanen@linux.intel.com>
Message-ID: <156994794189.1880.8778237636845959313@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 01 Oct 2019 17:39:01 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: extend audio CDCLK>=2*BCLK
 constraint to more platforms
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
Cc: Jani Nikula <jani.nikula@intel.com>, tiwai@suse.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBLYWkgVmVobWFuZW4gKDIwMTktMTAtMDEgMTc6MzU6NTUpCj4gVGhlIENEQ0xLPj0y
KkJDTEsgY29uc3RyYWludCBhcHBsaWVzIHRvIGFsbCBnZW5lcmF0aW9ucyBzaW5jZSBnZW4xMC4K
PiBFeHRlbmQgdGhlIGNvbnN0cmFpbnQgbG9naWMgaW4gYXVkaW8gZ2V0L3B1dF9wb3dlcigpLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEthaSBWZWhtYW5lbiA8a2FpLnZlaG1hbmVuQGxpbnV4LmludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5j
IHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRp
by5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jCj4gaW5kZXgg
YTczMWFmN2FkYTA4Li4wMzFkN2U1M2M3ZmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdWRpby5jCj4gQEAgLTg2MCw3ICs4NjAsNyBAQCBzdGF0aWMgdW5zaWdu
ZWQgbG9uZyBpOTE1X2F1ZGlvX2NvbXBvbmVudF9nZXRfcG93ZXIoc3RydWN0IGRldmljZSAqa2Rl
dikKPiAgICAgICAgICAgICAgICAgfQo+ICAKPiAgICAgICAgICAgICAgICAgLyogRm9yY2UgQ0RD
TEsgdG8gMipCQ0xLIGFzIGxvbmcgYXMgd2UgbmVlZCBhdWRpbyBwb3dlcmVkLiAqLwo+IC0gICAg
ICAgICAgICAgICBpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikgfHwgSVNfR0VNSU5JTEFLRShk
ZXZfcHJpdikpCj4gKyAgICAgICAgICAgICAgIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEw
KQoKZ2xrIGlzIG9ubHkgZ2VuOQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
