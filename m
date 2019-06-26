Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1245701C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 19:58:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8E06E4B5;
	Wed, 26 Jun 2019 17:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC4756E4B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 17:58:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17034897-1500050 for multiple; Wed, 26 Jun 2019 18:58:21 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190624203152.13725-1-daniele.ceraolospurio@intel.com>
 <20190624203152.13725-2-daniele.ceraolospurio@intel.com>
 <156154334639.2637.9988052891636686902@skylake-alporthouse-com>
 <35062553-0982-376a-3b4a-4dcf19524c12@intel.com>
In-Reply-To: <35062553-0982-376a-3b4a-4dcf19524c12@intel.com>
Message-ID: <156157189800.26855.15905781510534161945@skylake-alporthouse-com>
Date: Wed, 26 Jun 2019 18:58:18 +0100
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915: split out uncore_mmio_debug
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTI2IDE4OjM4OjQ1KQo+IAo+
IAo+IE9uIDYvMjYvMTkgMzowMiBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTI0IDIxOjMxOjQ5KQo+ID4+IEBAIC02MDUs
MTggKzYxNCwyMCBAQCB2b2lkIGludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KHN0cnVjdCBpbnRl
bF91bmNvcmUgKnVuY29yZSwKPiA+PiAgIHZvaWQgaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV91c2Vy
X2dldChzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpCj4gPj4gICB7Cj4gPj4gICAgICAgICAg
c3Bpbl9sb2NrX2lycSgmdW5jb3JlLT5sb2NrKTsKPiA+PiArICAgICAgIHNwaW5fbG9jaygmdW5j
b3JlLT5kZWJ1Zy0+bG9jayk7Cj4gPj4gICAgICAgICAgaWYgKCF1bmNvcmUtPnVzZXJfZm9yY2V3
YWtlLmNvdW50KyspIHsKPiA+IAo+ID4gQWZhaWN0LCB1bmNvcmUtPnVzZXJfZm9yY2V3YWtlLmNv
dW50IGlzIG9ubHkgZ3VhcmRlZCBieSB1bmNvcmUtPmxvY2sKPiA+IGFuZCB3ZSBvbmx5IG5lZWQg
dG8gdGFrZSBkZWJ1Zy0+bG9jayBmb3IgdGhlIGRlYnVnLT51bmNsYWltZWRfbW1pb19jaGVjawo+
ID4gbWFuaXB1bGF0aW9uLiBCdXQgdGhlcmUgbmVlZHMgdG8gYmUgYSBzaGFyZWQgdXNhZ2UgY291
bnRlciBhcm91bmQgdGhlCj4gPiBkZWJ1ZyBhcyBpdCBpcyBzaGFyZWQgc3RhdGUuCj4gPiAKPiA+
PiAgICAgICAgICAgICAgICAgIGludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0X19sb2NrZWQodW5j
b3JlLCBGT1JDRVdBS0VfQUxMKTsKPiA+PiAgIAo+ID4+ICAgICAgICAgICAgICAgICAgLyogU2F2
ZSBhbmQgZGlzYWJsZSBtbWlvIGRlYnVnZ2luZyBmb3IgdGhlIHVzZXIgYnlwYXNzICovCj4gPj4g
ICAgICAgICAgICAgICAgICB1bmNvcmUtPnVzZXJfZm9yY2V3YWtlLnNhdmVkX21taW9fY2hlY2sg
PQo+ID4+IC0gICAgICAgICAgICAgICAgICAgICAgIHVuY29yZS0+dW5jbGFpbWVkX21taW9fY2hl
Y2s7Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgdW5jb3JlLT5kZWJ1Zy0+dW5jbGFpbWVk
X21taW9fY2hlY2s7Cj4gPj4gICAgICAgICAgICAgICAgICB1bmNvcmUtPnVzZXJfZm9yY2V3YWtl
LnNhdmVkX21taW9fZGVidWcgPQo+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICBpOTE1X21v
ZHBhcmFtcy5tbWlvX2RlYnVnOwo+ID4gCj4gPiBTb21ldGhpbmcgbW9yZSBsaWtlCj4gPiAKPiA+
IHNwaW5fbG9ja19pcnEoJnVuY29yZS0+bG9jayk7Cj4gPiBpZiAoIXVuY29yZS0+dXNlcl9mb3Jj
ZXdha2VfY291bnQrKykgewo+ID4gICAgICAgc3Bpbl9sb2NrKCZ1bmNvcmUtPmRlYnVnLT5sb2Nr
KTsKPiA+ICAgICAgIGlmICghdW5jb3JlLT5kZWJ1Zy0+dXNhZ2VfY291bnQrKykgewo+ID4gICAg
ICAgICAgICAgICAuLi4KPiA+ICAgICAgIH0KPiA+ICAgICAgIHNwaW5fdW5sb2NrKCZ1bmNvcmUt
PmRlYnVnLT5sb2NrKTsKPiA+IH0KPiA+IC4uLgo+ID4gc3Bpbl91bmxvY2tfaXJxKCZ1bmNvcmUt
PmxvY2spOwo+ID4gPwo+ID4gLUNocmlzCj4gPiAKPiAKPiBJIGRvIHNvbWV0aGluZyBzaW1pbGFy
IGluIHRoZSBuZXh0IHBhdGNoIGluIHRoZSBzZXJpZXMgKHdpdGggdGhlIGxvY2sgCj4gc3RpbGwg
b24gdGhlIG91dHNpZGUgb2YgdGhlIGlmKS4gSSd2ZSBzcGxpdCB0aGF0IG91dCBiZWNhdXNlIEkn
dmUgYWRkZWQgCj4gc29tZSBmdW5jdGlvbmFsIGNoYW5nZXMgdG8gdGhlIGZsb3cuIEkgY2FuIHNx
dWFzaCB0aGUgMiBwYXRjaGVzIGlmIHlvdSAKPiB0aGluZyBpdCBpcyBiZXR0ZXIgdGhhdCB3YXku
CgpZZXMuIExvb2tpbmcgYXQgdGhlIHNlY29uZCBwYXRjaCwgdGhhdCBpcyBjbGVhcmVyIHdydCB3
aGF0IGRhdGEgd2UgYXJlCmd1YXJkaW5nIHdpdGggdGhlIGxvY2tzLgoKRG9uJ3QgZHJvcCB0aGUg
aW50ZWxfIHByZWZpeCBmcm9tIGludGVsX3VuY29yZV9kZWJ1ZyBhcyBpdCBsb29rcyB0bwpzdGls
bCBiZSB2aXNpYmxlIG91dHNpZGUgb2YgaXRzIGVuY2xhdmUgKGl0J3MgZ2V0dGluZyBsb25nLCBi
dXQgaXQgc2hvdWxkCmJlIG1vcmUgb3IgbGVzcyBpbnRlcm5hbCB0byB0aGUgdmFyaW91cyBpbnRl
bF91bmNvcmUgaW1wbGVtZW50YXRpb25zKSBhbmQKc3F1YXNoIHRoZXNlIDIgYXMgSSBmZWVsIG1v
cmUgY29tZm9ydGFibGUgd2l0aCBpbnRlbF91bmNvcmVfZGVidWcgdGFraW5nCmNvbnRyb2wgb2Yg
dGhlIGxvY2tpbmcgYXMgcmVxdWlyZWQgZm9yIHNoYXJpbmcgYW5kIHJldmlld2luZyB0aGUgbG9j
a2luZwp3cnQgdG8gdGhlIHNoYXJlZCBkYXRhLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
