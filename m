Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E996B259
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 01:26:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E2686E1BB;
	Tue, 16 Jul 2019 23:26:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2381 seconds by postgrey-1.36 at gabe;
 Tue, 16 Jul 2019 23:26:31 UTC
Received: from Galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2DF86E1BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 23:26:31 +0000 (UTC)
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hnWDb-0008Eh-6C; Wed, 17 Jul 2019 00:46:43 +0200
Date: Wed, 17 Jul 2019 00:46:42 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20190712210238.5622-1-lucas.demarchi@intel.com>
Message-ID: <alpine.DEB.2.21.1907170046080.1767@nanos.tec.linutronix.de>
References: <20190712210238.5622-1-lucas.demarchi@intel.com>
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

T24gRnJpLCAxMiBKdWwgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgoKPiBGcm9tOiBNaWNo
ZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+IAo+IFJldXNlIEdlbjExIHN0
b2xlbiBtZW1vcnkgY2hhbmdlcyBzaW5jZSBUaWdlciBMYWtlIHVzZXMgdGhlIHNhbWUgQlNNCj4g
cmVnaXN0ZXIgKGFuZCBmb3JtYXQpLgo+IAo+IENjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGlu
dXRyb25peC5kZT4KPiBDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhhdC5jb20+Cj4gQ2M6IEJv
cmlzbGF2IFBldGtvdiA8YnBAYWxpZW44LmRlPgo+IENjOiAiSC4gUGV0ZXIgQW52aW4iIDxocGFA
enl0b3IuY29tPgo+IENjOiB4ODZAa2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IE1pY2hlbCBU
aGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiAtLS0KPiAgYXJjaC94ODYva2VybmVs
L2Vhcmx5LXF1aXJrcy5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+
IAo+IGRpZmYgLS1naXQgYS9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMgYi9hcmNoL3g4
Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMKPiBpbmRleCA2YzRmMDE1NDA4MzMuLjZmNmIxZDA0ZGFk
ZiAxMDA2NDQKPiAtLS0gYS9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMKPiArKysgYi9h
cmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMKPiBAQCAtNTQ5LDYgKzU0OSw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCBpbnRlbF9lYXJseV9pZHNbXSBfX2luaXRjb25z
dCA9IHsKPiAgCUlOVEVMX0NOTF9JRFMoJmdlbjlfZWFybHlfb3BzKSwKPiAgCUlOVEVMX0lDTF8x
MV9JRFMoJmdlbjExX2Vhcmx5X29wcyksCj4gIAlJTlRFTF9FSExfSURTKCZnZW4xMV9lYXJseV9v
cHMpLAo+ICsJSU5URUxfVEdMXzEyX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwKCkhvdyBleGFjdGx5
IGlzIHRoaXMgc3VwcG9zZWQgdG8gYnVpbGQ/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
