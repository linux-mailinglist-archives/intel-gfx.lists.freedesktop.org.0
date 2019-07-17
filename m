Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC2B6B6EF
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 08:48:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65E766E237;
	Wed, 17 Jul 2019 06:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from Galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24CF96E237
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 06:48:43 +0000 (UTC)
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hndjv-00057K-Ao; Wed, 17 Jul 2019 08:48:35 +0200
Date: Wed, 17 Jul 2019 08:48:34 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20190717012805.cdrixoa36pmn7ek5@ldmartin-desk1>
Message-ID: <alpine.DEB.2.21.1907170845470.1767@nanos.tec.linutronix.de>
References: <20190712210238.5622-1-lucas.demarchi@intel.com>
 <alpine.DEB.2.21.1907170046080.1767@nanos.tec.linutronix.de>
 <20190717012805.cdrixoa36pmn7ek5@ldmartin-desk1>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
Subject: Re: [Intel-gfx] [PATCH] x86/gpu: add TGL stolen memory support
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
Cc: Michel Thierry <michel.thierry@intel.com>, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxNiBKdWwgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IE9uIFdlZCwgSnVs
IDE3LCAyMDE5IGF0IDEyOjQ2OjQyQU0gKzAyMDAsIFRob21hcyBHbGVpeG5lciB3cm90ZToKPiA+
IE9uIEZyaSwgMTIgSnVsIDIwMTksIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPiA+IAo+ID4gPiBG
cm9tOiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+ID4gPiAKPiA+
ID4gUmV1c2UgR2VuMTEgc3RvbGVuIG1lbW9yeSBjaGFuZ2VzIHNpbmNlIFRpZ2VyIExha2UgdXNl
cyB0aGUgc2FtZSBCU00KPiA+ID4gcmVnaXN0ZXIgKGFuZCBmb3JtYXQpLgo+ID4gPiAKPiA+ID4g
Q2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgo+ID4gPiBDYzogSW5nbyBN
b2xuYXIgPG1pbmdvQHJlZGhhdC5jb20+Cj4gPiA+IENjOiBCb3Jpc2xhdiBQZXRrb3YgPGJwQGFs
aWVuOC5kZT4KPiA+ID4gQ2M6ICJILiBQZXRlciBBbnZpbiIgPGhwYUB6eXRvci5jb20+Cj4gPiA+
IENjOiB4ODZAa2VybmVsLm9yZwo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoZWwgVGhpZXJyeSA8
bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiA+ID4gUmV2aWV3ZWQtYnk6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBhcmNoL3g4
Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMgfCAxICsKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5lbC9lYXJs
eS1xdWlya3MuYwo+ID4gPiBiL2FyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3MuYwo+ID4gPiBp
bmRleCA2YzRmMDE1NDA4MzMuLjZmNmIxZDA0ZGFkZiAxMDA2NDQKPiA+ID4gLS0tIGEvYXJjaC94
ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jCj4gPiA+ICsrKyBiL2FyY2gveDg2L2tlcm5lbC9lYXJs
eS1xdWlya3MuYwo+ID4gPiBAQCAtNTQ5LDYgKzU0OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cGNpX2RldmljZV9pZCBpbnRlbF9lYXJseV9pZHNbXQo+ID4gPiBfX2luaXRjb25zdCA9IHsKPiA+
ID4gIAlJTlRFTF9DTkxfSURTKCZnZW45X2Vhcmx5X29wcyksCj4gPiA+ICAJSU5URUxfSUNMXzEx
X0lEUygmZ2VuMTFfZWFybHlfb3BzKSwKPiA+ID4gIAlJTlRFTF9FSExfSURTKCZnZW4xMV9lYXJs
eV9vcHMpLAo+ID4gPiArCUlOVEVMX1RHTF8xMl9JRFMoJmdlbjExX2Vhcmx5X29wcyksCj4gPiAK
PiA+IEhvdyBleGFjdGx5IGlzIHRoaXMgc3VwcG9zZWQgdG8gYnVpbGQ/Cj4gPiAKPiAKPiBUaGUg
ZGVmaW5lIGZvciB0aGlzIG5ldyBwbGF0Zm9ybSBpcyBvbiBkcm0taW50ZWwgcmVwb3NpdG9yeS4g
Rm9yCj4gcHJldmlvdXMgcGxhdGZvcm1zIHdlIHdhaXRlZCBmb3IgYW4gYWNrIGFuZCBtZXJnZWQg
dGhyb3VnaCBvdXIgdHJlZS4KPiBJcyB0aGF0IG9rPwoKVGhhdCdzIGZpbmUsIGJ1dCBpbiBmdXR1
cmUgcGxlYXNlIG1lbnRpb24gdGhhdCBpbnN0ZWFkIG9mIHNlbmRpbmcgYSBwYXRjaApzdGFuZCBh
bG9uZSB3aGljaCBsb29rcyBsaWtlIGl0IGNhbiBiZSBhcHBsaWVkIHdpdGhvdXQgcHJlcmVxdWlz
aXRlcy4KClRoYXQgc2FpZCwgdGFrZSBpdCB0aHJvdWdoIERSTSB3aXRoOgoKICAgQWNrZWQtYnk6
IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgoKVGhhbmtzLAoKCXRnbHgKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
