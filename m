Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A00C18868
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 12:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9CE89B06;
	Thu,  9 May 2019 10:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 497EC89B06
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 10:35:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16500941-1500050 for multiple; Thu, 09 May 2019 11:33:00 +0100
MIME-Version: 1.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190506074553.21464-1-daniel.vetter@ffwll.ch>
References: <20190502141643.21080-1-daniel.vetter@ffwll.ch>
 <20190506074553.21464-1-daniel.vetter@ffwll.ch>
Message-ID: <155739797736.28545.2942646931608459049@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 09 May 2019 11:32:57 +0100
Subject: Re: [Intel-gfx] [PATCH] RFC: console: hack up console_lock more v2
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
Cc: Petr Mladek <pmladek@suse.com>, John Ogness <john.ogness@linutronix.de>,
 Peter Zijlstra <peterz@infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA1LTA2IDA4OjQ1OjUzKQo+ICsvKioKPiArICog
cHJpbnRrX3NhZmVfdXAgLSByZWxlYXNlIHRoZSBzZW1hcGhvcmUgaW4gY29uc29sZV91bmxvY2sK
PiArICogQHNlbTogdGhlIHNlbWFwaG9yZSB0byByZWxlYXNlCj4gKyAqCj4gKyAqIFJlbGVhc2Ug
dGhlIHNlbWFwaG9yZS4gIFVubGlrZSBtdXRleGVzLCB1cCgpIG1heSBiZSBjYWxsZWQgZnJvbSBh
bnkKPiArICogY29udGV4dCBhbmQgZXZlbiBieSB0YXNrcyB3aGljaCBoYXZlIG5ldmVyIGNhbGxl
ZCBkb3duKCkuCj4gKyAqCj4gKyAqIE5PVEU6IFRoaXMgaXMgYSBzcGVjaWFsIHZlcnNpb24gb2Yg
dXAoKSBmb3IgY29uc29sZV91bmxvY2sgb25seS4gSXQgaXMgb25seQo+ICsgKiBzYWZlIGlmIHRo
ZXJlIGFyZSBubyBraWxsYWJsZSwgaW50ZXJydXB0aWJsZSBvciB0aW1pbmcgb3V0IGRvd24oKSBj
YWxscy4KPiArICovCj4gK3ZvaWQgcHJpbnRrX3NhZmVfdXAoc3RydWN0IHNlbWFwaG9yZSAqc2Vt
KQo+ICt7Cj4gKyAgICAgICB1bnNpZ25lZCBsb25nIGZsYWdzOwo+ICsgICAgICAgc3RydWN0IHNl
bWFwaG9yZV93YWl0ZXIgKndhaXRlciA9IE5VTEw7Cj4gKwo+ICsgICAgICAgcmF3X3NwaW5fbG9j
a19pcnFzYXZlKCZzZW0tPmxvY2ssIGZsYWdzKTsKPiArICAgICAgIGlmIChsaWtlbHkobGlzdF9l
bXB0eSgmc2VtLT53YWl0X2xpc3QpKSkgewo+ICsgICAgICAgICAgICAgICBzZW0tPmNvdW50Kys7
Cj4gKyAgICAgICB9IGVsc2Ugewo+ICsgICAgICAgICAgICAgICB3YWl0ZXIgPSBsaXN0X2ZpcnN0
X2VudHJ5KCZzZW0tPndhaXRfbGlzdCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3Qgc2VtYXBob3JlX3dhaXRlciwgbGlzdCk7Cj4gKyAgICAgICAgICAg
ICAgIGxpc3RfZGVsKCZ3YWl0ZXItPmxpc3QpOwo+ICsgICAgICAgICAgICAgICB3YWl0ZXItPnVw
ID0gdHJ1ZTsKPiArICAgICAgIH0KPiArICAgICAgIHJhd19zcGluX3VubG9ja19pcnFyZXN0b3Jl
KCZzZW0tPmxvY2ssIGZsYWdzKTsKPiArCj4gKyAgICAgICBpZiAod2FpdGVyKQo+ICsgICAgICAg
ICAgICAgICB3YWtlX3VwX3Byb2Nlc3Mod2FpdGVyLT50YXNrKTsKCkZyb20gY29tcGFyaW5nIGFn
YWluc3QgX19kb3duX2NvbW1vbigpIHRoZXJlJ3MgYSByaXNrIGhlcmUgdGhhdCBhcyBzb29uCmFz
IHdhaXRlci0+dXAgPT0gdHJ1ZSwgdGhlIHdhaXRlciBtYXkgY29tcGxldGUgYW5kIG1ha2UgdGhl
IG9uc3RhY2sKc3RydWN0IHNlbWFwaG9yZV93YWl0ZXIgaW52YWxpZC4gSWYgeW91IHN0b3JlIHdh
aXRlci0+dGFzayBsb2NhbGx5IHVuZGVyCnRoZSBzcGlubG9jayB0aGF0IHByb2JsZW0gaXMgcmVz
b2x2ZWQuCgpUaGVuIHRoZXJlIGlzIHRoZSBpc3N1ZSBvZiBhbiB1bnByb3RlY3RlZCBkZXJlZmVy
ZW5jZSBvZiB0aGUgdGFzayBpbgp3YWtlX3VwX3Byb2Nlc3MoKSAtLSBJIHRoaW5rIHlvdSBjYW4g
d3JhcCB0aGlzIGZ1bmN0aW9uIHdpdGgKcmN1X3JlYWRfbG9jaygpIHRvIGtlZXAgdGhhdCBzYWZl
LCBhbmQgd2FrZV91cF9wcm9jZXNzKCkgc2hvdWxkIGJlIGEKbm8tb3AgaWYgaXQgcmFjZXMgYWdh
aW5zdCBwcm9jZXNzIHRlcm1pbmF0aW9uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
