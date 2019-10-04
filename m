Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA8FCBC5C
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 15:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A8D6EB99;
	Fri,  4 Oct 2019 13:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2A4C6EB99;
 Fri,  4 Oct 2019 13:57:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18724236-1500050 for multiple; Fri, 04 Oct 2019 14:57:16 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87lfu0liuu.fsf@gaia.fi.intel.com>
References: <20191002112648.12532-1-chris@chris-wilson.co.uk>
 <87lfu0liuu.fsf@gaia.fi.intel.com>
Message-ID: <157019743404.18712.2696710775642274667@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 04 Oct 2019 14:57:14 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ctx_isolation:
 Bump support for Tigerlake
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTA0IDE0OjUxOjA1KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUaGVyZSdzIHZlcnkg
bGl0dGxlIHZhcmlhdGlvbiBpbiBub24tcHJpdmlsZWdlZCByZWdpc3RlcnMgZm9yIFRpZ2VybGFr
ZSwKPiA+IHNvIHdlIGNhbiBtb3N0bHkgaW5oZXJpdCB0aGUgc2V0IGZyb20gZ2VuMTEuIFRoZXJl
IGlzIG5vIHdoaXRlbGlzdCBhdAo+ID4gcHJlc2VudCwgc28gd2UgZG8gbm90IG5lZWQgdG8gYWRk
IGFueSBzcGVjaWFsIHJlZ2lzdGVycy4KPiA+Cj4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNTk5Cj4gPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gIHRlc3Rz
L2k5MTUvZ2VtX2N0eF9pc29sYXRpb24uYyB8IDExICsrKysrKy0tLS0tCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0
IGEvdGVzdHMvaTkxNS9nZW1fY3R4X2lzb2xhdGlvbi5jIGIvdGVzdHMvaTkxNS9nZW1fY3R4X2lz
b2xhdGlvbi5jCj4gPiBpbmRleCBkZjFkNjU1YWUuLjgxOWRhYWZjMyAxMDA2NDQKPiA+IC0tLSBh
L3Rlc3RzL2k5MTUvZ2VtX2N0eF9pc29sYXRpb24uYwo+ID4gKysrIGIvdGVzdHMvaTkxNS9nZW1f
Y3R4X2lzb2xhdGlvbi5jCj4gPiBAQCAtNTUsMTAgKzU1LDExIEBAIGVudW0gewo+ID4gICNkZWZp
bmUgR0VOOSAoQUxMIDw8IDkpCj4gPiAgI2RlZmluZSBHRU4xMCAoQUxMIDw8IDEwKQo+ID4gICNk
ZWZpbmUgR0VOMTEgKEFMTCA8PCAxMSkKPiA+ICsjZGVmaW5lIEdFTjEyIChBTEwgPDwgMTIpCj4g
PiAgCj4gPiAgI2RlZmluZSBOT0NUWCAwCj4gPiAgCj4gPiAtI2RlZmluZSBMQVNUX0tOT1dOX0dF
TiAxMQo+ID4gKyNkZWZpbmUgTEFTVF9LTk9XTl9HRU4gMTIKPiA+ICAKPiA+ICBzdGF0aWMgY29u
c3Qgc3RydWN0IG5hbWVkX3JlZ2lzdGVyIHsKPiA+ICAgICAgIGNvbnN0IGNoYXIgKm5hbWU7Cj4g
PiBAQCAtMTE2LDkgKzExNyw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbmFtZWRfcmVnaXN0ZXIg
ewo+ID4gICAgICAgeyAiQ2FjaGVfTW9kZV8wIiwgR0VONywgUkNTMCwgMHg3MDAwLCAubWFza2Vk
ID0gdHJ1ZSB9LAo+ID4gICAgICAgeyAiQ2FjaGVfTW9kZV8xIiwgR0VONywgUkNTMCwgMHg3MDA0
LCAubWFza2VkID0gdHJ1ZSB9LAo+ID4gICAgICAgeyAiR1RfTU9ERSIsIEdFTjgsIFJDUzAsIDB4
NzAwOCwgLm1hc2tlZCA9IHRydWUgfSwKPiA+IC0gICAgIHsgIkwzX0NvbmZpZyIsIEdFTjgsIFJD
UzAsIDB4NzAzNCB9LAo+ID4gLSAgICAgeyAiVERfQ1RMIiwgR0VOOCwgUkNTMCwgMHhlNDAwLCAu
d3JpdGVfbWFzayA9IDB4ZmZmZiB9LAo+ID4gLSAgICAgeyAiVERfQ1RMMiIsIEdFTjgsIFJDUzAs
IDB4ZTQwNCB9LAo+ID4gKyAgICAgeyAiTDNfQ29uZmlnIiwgR0VOX1JBTkdFKDgsIDExKSwgUkNT
MCwgMHg3MDM0IH0sCj4gPiArICAgICB7ICJURF9DVEwiLCBHRU5fUkFOR0UoOCwgMTEpLCBSQ1Mw
LCAweGU0MDAsIC53cml0ZV9tYXNrID0gMHhmZmZmIH0sCj4gPiArICAgICB7ICJURF9DVEwyIiwg
R0VOX1JBTkdFKDgsIDExKSwgUkNTMCwgMHhlNDA0IH0sCj4gCj4gVGhlIGlnbm9yZSBsaXN0IG5l
ZWRzIGFuIHVwZGF0ZSB0b28/CgpUaGUgdGltZXN0YW1wcz8gVGhlIGV4dHJhIFZDUyBhcmUgbWFy
a2VkIGFzIEdFTjExKyBhbmQgd2Ugd2VyZW4ndCBjYXVnaHQKb3V0IGJ5IG5vdGljaW5nIHRoZSBj
b3VudGVyIGNoYW5nZSAtLSBzbyBJIHByZXN1bWUgaXQgd2FzIG9rLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
