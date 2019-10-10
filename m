Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FB7D25C2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 11:04:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B23326E366;
	Thu, 10 Oct 2019 09:04:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E7FE6E366
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 09:04:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18787451-1500050 for multiple; Thu, 10 Oct 2019 10:03:11 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191009230424.6507-2-daniele.ceraolospurio@intel.com>
References: <20191009230424.6507-1-daniele.ceraolospurio@intel.com>
 <20191009230424.6507-2-daniele.ceraolospurio@intel.com>
Message-ID: <157069818895.18808.9746890437608354739@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 10 Oct 2019 10:03:08 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: simplify the lrc register
 list for !RCS
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTEwLTEwIDAwOjA0OjI0KQo+IFRo
ZXJlIGFyZSBzbWFsbCBkaWZmZXJlbmNlcyBiZXR3ZWVuIHRoZSBibGl0dGVyIGFuZCB0aGUgdmlk
ZW8gZW5naW5lcyBpbgo+IHRoZSB4Y3MgY29udGV4dCBpbWFnZSAoZS5nLiByZWdpc3RlcnMgMHgy
MDAgYW5kIDB4MjA0IG9ubHkgZXhpc3Qgb24gdGhlCj4gYmxpdHRlcikuIFNpbmNlIHdlIG5ldmVy
IGV4cGxpY2l0bHkgc2V0IGEgdmFsdWUgZm9yIHRob3NlIHJlZ2lzdGVyIGFuZAo+IGdpdmVuIHRo
YXQgd2UgZG9uJ3QgbmVlZCB0byB1cGRhdGUgdGhlIG9mZnNldHMgaW4gdGhlIGxyYyBpbWFnZSB3
aGVuIHdlCj4gY2hhbmdlIGVuZ2luZSB3aXRoaW4gdGhlIGNsYXNzIGZvciB2aXJ0dWFsIGVuZ2lu
ZSBiZWNhdXNlIHRoZSBIVyBjYW4KPiBoYW5kbGUgdGhhdCwgaW5zdGVhZCBvZiBoYXZpbmcgYSBz
ZXBhcmF0ZSBkZWZpbmUgZm9yIHRoZSBCQ1Mgd2UgY2FuCj4ganVzdCByZXN0cmljdCB0aGUgcHJv
Z3JhbW1pbmcgdG8gdGhlIHBhcnQgd2UncmUgaW50ZXJlc3RlZCBpbiwgd2hpY2ggaXMKPiBjb21t
b24gYWNyb3NzIHRoZSBlbmdpbmVzLgoKWWVhaCwgbXkgdGhpbmtpbmcgd2FzIHRvIGJlIGFzIGNv
bXBsZXRlIGFzIHBvc3NpYmxlIHNvIHRoYXQgaWYgd2UgbmVlZGVkCnRvIGFwcGx5IHJlZ2lzdGVy
IHVwZGF0ZXMsIHdlIGNvdWxkLiBJdCB3YXMgYWxzbyBhIGZhc2NpbmF0aW5nIGluc2lnaHQKaW50
byB3aGF0IHdhcyBzdG9yZWQsIEkgd2FzIHBsYW5uaW5nIG9uIHVzaW5nIGl0IGZvciBkb2luZwpp
c29sYXRpb24gdGVzdGluZyAoYWxiZWl0IHRoYXQncyBhIGJpdCBjaGlja2VuLWFuZC1lZ2cpLgoK
PiBCc3BlYzogNDU1ODQKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBs
aW51eC5pbnRlbC5jb20+Cj4gQ2M6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRl
bC5jb20+CgpObyBxdWFsbXMgYWJvdXQgcmVzdHJpY3Rpbmcgb3Vyc2VsdmVzIHRvIHRoZSBiYXJl
IGVzc2VudGlhbHMgb24gdGhlCmJhc2lzIHRoYXQgdGhlIGNvbnRleHQgaW1hZ2UgaXMgbWVhbnQg
dG8gYmUgcmVsYXRpdmUtYWRkcmVzc2VkLiBJdCBkaWQKbm90IGltcHJvdmUgc3RhYmlsaXR5IG9m
IHRnbC1nZW0gaG93ZXZlci4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
