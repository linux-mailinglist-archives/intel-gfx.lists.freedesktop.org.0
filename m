Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C257BE9248
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 22:45:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4E86E78E;
	Tue, 29 Oct 2019 21:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6125A6E78E
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 21:44:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19012618-1500050 for multiple; Tue, 29 Oct 2019 21:44:35 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <4c986074-2364-5815-efde-6134a3ce741d@intel.com>
References: <20191029095856.25431-1-matthew.auld@intel.com>
 <20191029095856.25431-3-matthew.auld@intel.com>
 <4c986074-2364-5815-efde-6134a3ce741d@intel.com>
Message-ID: <157238547307.2489.1734253925833176897@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 29 Oct 2019 21:44:33 +0000
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: set num_fence_regs to 0 if
 there is no aperture
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
Cc: "Vetter,
 Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTEwLTI5IDIxOjIzOjE2KQo+IAo+
IAo+IE9uIDEwLzI5LzE5IDI6NTggQU0sIE1hdHRoZXcgQXVsZCB3cm90ZToKPiA+IEZyb206IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4g
PiAKPiA+IFdlIGNhbid0IGZlbmNlIGFueXRoaW5nIHdpdGhvdXQgYXBlcnR1cmUuCj4gPiAKPiA+
IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3Nw
dXJpb0BpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0
LnN1bW1lcnNAaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0
aGV3LmF1bGRAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2ZlbmNlX3JlZy5jIHwgNiArKysrLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZmVuY2VfcmVnLmMKPiA+IGluZGV4IDMyMTE4OWUxYjBmMi4uNzFlZmNjZmRlMTIy
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVn
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jCj4g
PiBAQCAtODQ2LDggKzg0NiwxMCBAQCB2b2lkIGk5MTVfZ2d0dF9pbml0X2ZlbmNlcyhzdHJ1Y3Qg
aTkxNV9nZ3R0ICpnZ3R0KQo+ID4gICAKPiA+ICAgICAgIGRldGVjdF9iaXRfNl9zd2l6emxlKGdn
dHQpOwo+ID4gICAKPiA+IC0gICAgIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNyAmJgo+ID4gLSAg
ICAgICAgICEoSVNfVkFMTEVZVklFVyhpOTE1KSB8fCBJU19DSEVSUllWSUVXKGk5MTUpKSkKPiA+
ICsgICAgIGlmICghaTkxNV9nZ3R0X2hhc19hcGVydHVyZShnZ3R0KSkKPiAKPiBEYW5pZWwgaGFk
IG1lbnRpb25lZCB0aGF0IHRoZSBmZW5jaW5nIEhXIGhhcyBiZWVuIG5lcmZlZCBpbiBnZW4xMiBh
bmQgCj4gc3VnZ2VzdGVkIHNldHRpbmdzIG51bV9mZW5jZXMgdG8gemVybyBmb3IgYWxsIGdlbjEy
Ky4gU2hvdWxkIHdlIGdvIAo+IGRpcmVjdGx5IHdpdGggdGhhdD8KCkRvIGZlbmNlcyBleGlzdCwg
eWVzL25vPyBJZiB0aGVyZSBhcmUgbGl0ZXJhbGx5IG5vIGZlbmNlcyBmb3JldmVybW9yZS4uLgp0
Z2wgYmVncyB0byBkaWZmZXIgdGhvdWdoLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
