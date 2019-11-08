Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48349F4426
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:05:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E61996F8FF;
	Fri,  8 Nov 2019 10:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 801E06F8FF
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:05:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19125732-1500050 for multiple; Fri, 08 Nov 2019 10:05:37 +0000
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAKMK7uFo99g8=6VETC+1_OLtCqU7jwwSxRxTB1TV353d8ZkfGQ@mail.gmail.com>
References: <20191106154810.5843-1-chris@chris-wilson.co.uk>
 <20191106154810.5843-3-chris@chris-wilson.co.uk>
 <CAKMK7uFo99g8=6VETC+1_OLtCqU7jwwSxRxTB1TV353d8ZkfGQ@mail.gmail.com>
Message-ID: <157320753634.9461.1270226561722831537@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 08 Nov 2019 10:05:36 +0000
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gem: Extract transient execbuf
 flags from i915_vma
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTExLTA4IDA5OjUzOjUxKQo+IE9uIFdlZCwgTm92
IDYsIDIwMTkgYXQgNDo0OCBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4gd3JvdGU6Cj4gPiBGb3Igb3VyIGNvbnZlbmllbmNlLCBhbmQgdG8gYXZvaWQgZnJlcXVlbnQg
YWxsb2NhdGlvbnMsIHdlIHBsYWNlZCBzb21lCj4gPiBsaXN0cyB3ZSB1c2UgZm9yIGV4ZWNidWYg
aW5zaWRlIHRoZSBjb21tb24gaTkxNV92bWEgc3RydWN0LiBBcyB3ZSBsb29rCj4gPiB0byBwYXJh
bGxlbGlzZSBleGVjYnVmLCBzdWNoIGZpZWxkcyBndWFyZGVkIGJ5IHRoZSBzdHJ1Y3RfbXV0ZXgg
QktMIG11c3QKPiA+IGJlIHB1bGxlZCB1bmRlciBsb2NhbCBjb250cm9sLiBJbnN0ZWFkIG9mIHVz
aW5nIHRoZSBpOTE1X3ZtYSBhcyBvdXIKPiA+IHByaW1hcnkgbWVhbnMgb2YgdHJhY2tpbmcgdGhl
IHVzZXIncyBsaXN0IG9mIG9iamVjdHMgYW5kIHRoZWlyIHZpcnR1YWwKPiA+IG1hcHBpbmdzLCB3
ZSB1c2UgYSBsb2NhbCBlYl92bWEgd2l0aCB0aGUgc2FtZSBsaXN0cyBhcyBiZWZvcmUgKGp1c3Qg
bm93Cj4gPiBsb2NhbCBub3QgZ2xvYmFsKS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBNYWFydGVuIExhbmtob3Jz
dCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IAo+ICgtLXN1cHJlc3MtY2Mg
PyBBZGRlZCBNYWFydGVuIGZvciByZWFsLCBkaWRuJ3Qgc2VlbSB0byBiZSBvbiBjYyBpbiBteQo+
IGluYm94IGF0IGxlYXN0KQo+IAo+IFdoeSBkbyB3ZSBuZWVkIHRoaXM/CgpCZWNhdXNlIHRoZSBl
eGVjYnVmIHN0YXRlIGlzIG5vdCBjb3ZlcmVkIGJ5IHRoZSBvYmplY3QgbG9ja3MuIFdlIHB1dAp0
aGVtIGluc2lkZSB0aGUgdm1hIGZvciB0aGUgZXhwcmVzcyBwdXJwb3NlIG9mIGF2b2lkaW5nIGFu
IGFsbG9jYXRpb247IGFuCmFsbG9jYXRpb24gd2UgZW5kZWQgdXAgZG9pbmcgYW55d2F5LCB3aGlj
aCB3ZSBjYW4gbm93IHVzZSBmb3IgdGhlIHNvbGUKcHVycG9zZSBvZiB0cmFja2luZyB0aGUgZXhl
Y2J1Zi4KClRoaXMgaXMgX2V4ZWNidWZfIHN0YXRlIHRoYXQgd2UgcmFtbWVkIGludG8gdGhlIGk5
MTVfdm1hLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
