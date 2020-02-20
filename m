Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AE01661E6
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 17:09:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52AB76EDC1;
	Thu, 20 Feb 2020 16:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2645A6EDC1;
 Thu, 20 Feb 2020 16:09:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20290635-1500050 for multiple; Thu, 20 Feb 2020 16:09:16 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200220153203.29571-1-janusz.krzysztofik@linux.intel.com>
References: <20200220153203.29571-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <158221495468.8112.473694413094253324@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 20 Feb 2020 16:09:14 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t] lib/i915: Restrict mmap types to
 GTT if no MMAP_OFFSET support
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDItMjAgMTU6MzI6MDMpCj4gQ29tbWl0
IGIwZGE4YmI3MDVjMCAoImxpYi9pOTE1OiBmb3JfZWFjaF9tbWFwX29mZnNldF90eXBlKCkiKQo+
IGludHJvZHVjZWQgYSBtYWNybyB0aGF0IG1ha2VzIGl0IGVhc3kgdG8gcmVwZWF0IGEgdGVzdCBi
b2R5IHdpdGhpbiBhCj4gbG9vcCBmb3IgZWFjaCBtbWFwLW9mZnNldCBtYXBwaW5nIHR5cGUgc3Vw
cG9ydGVkIGJ5IHY0IG9mIGk5MTUgTU1BUF9HVFQKPiBBUEkuIEhvd2V2ZXIsIHdoZW4gcnVuIG9u
IGFuIG9sZGVyIHZlcnNpb24gb2YgdGhlIGRyaXZlciwgdGhvc2UKPiBzdWJ0ZXN0cyBhcmUgYmVs
aWV2ZWQgdG8gYmUgc3RpbGwgcmVwZWF0ZWQgZm9yIGVhY2gga25vd24gbW1hcC1vZmZzZXQKPiBt
YXBwaW5nIHR5cGUgd2hpbGUgZWZmZWN0aXZlbHkgZXhlcmNpc2luZyBHVFQgbWFwcGluZyB0eXBl
IG9ubHkuICBBcwo+IHRoYXQgbWF5IGJlIGNvbmZ1c2luZywgZml4IGl0Lgo+IAo+IEl0IGhhcyBi
ZWVuIGFzc3VtZWQgdGhhdCB0aGUgbW9kaWZpZWQgbWFjcm8gaXMgc3RpbGwgc3VpdGFibGUgZm9y
IHVzZQo+IGluc2lkZSBnZW1fbW1hcF9vZmZzZXQgdGVzdCBpdHNlbGYuICBXb3VsZCB0aGF0IG5v
dCBiZSBjYXNlLAo+IGdlbV9tbWFwX29mZnNldCBjb3VsZCByZWRlZmluZSB0aGUgbWFjcm8gYmFj
ayB0byBpdHMgaW5pdGlhbCBmb3JtIGZvcgo+IGludGVybmFsIHVzZS4KPiAKPiBTdWdnZXN0ZWQt
Ynk6IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5p
bnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IC0tLQo+ICBsaWIvaTkxNS9nZW1fbW1hbi5oICAgICAgICAgIHwgIDUgKysrLS0KPiAgdGVzdHMv
aTkxNS9nZW1fY3R4X3NzZXUuYyAgICB8ICAyICstCj4gIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfcGFy
YW1zLmMgfCAgMiArLQo+ICB0ZXN0cy9pOTE1L2dlbV9tYWR2aXNlLmMgICAgIHwgMTggKysrKysr
KysrKysrKystLS0tCj4gIHRlc3RzL2k5MTUvZ2VtX21tYXBfb2Zmc2V0LmMgfCAxMCArKysrKy0t
LS0tCj4gIHRlc3RzL2k5MTUvaTkxNV9wbV9ycG0uYyAgICAgfCAgMiArLQo+ICA2IGZpbGVzIGNo
YW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9saWIvaTkxNS9nZW1fbW1hbi5oIGIvbGliL2k5MTUvZ2VtX21tYW4uaAo+IGluZGV4IDRmYzZh
MDE4Ni4uNDkxNzY3MDIzIDEwMDY0NAo+IC0tLSBhL2xpYi9pOTE1L2dlbV9tbWFuLmgKPiArKysg
Yi9saWIvaTkxNS9nZW1fbW1hbi5oCj4gQEAgLTEwMSw5ICsxMDEsMTAgQEAgZXh0ZXJuIGNvbnN0
IHN0cnVjdCBtbWFwX29mZnNldCB7Cj4gICAgICAgICB1bnNpZ25lZCBpbnQgZG9tYWluOwo+ICB9
IG1tYXBfb2Zmc2V0X3R5cGVzW107Cj4gIAo+IC0jZGVmaW5lIGZvcl9lYWNoX21tYXBfb2Zmc2V0
X3R5cGUoX190KSBcCj4gKyNkZWZpbmUgZm9yX2VhY2hfbW1hcF9vZmZzZXRfdHlwZShmZCwgX190
KSBcCj4gICAgICAgICBmb3IgKGNvbnN0IHN0cnVjdCBtbWFwX29mZnNldCAqX190ID0gbW1hcF9v
ZmZzZXRfdHlwZXM7IFwKPiAtICAgICAgICAgICAgKF9fdCktPm5hbWU7IFwKPiArICAgICAgICAg
ICAgKF9fdCktPm5hbWUgJiYgKGdlbV9oYXNfbW1hcF9vZmZzZXQoZmQpIHx8IFwKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIChfX3QpLT50eXBlID09IEk5MTVfTU1BUF9PRkZTRVRfR1RU
KTsgXAoKU2lnaC4KCmV4dGVybiBib29sIGdlbV9oYXNfbW1hcF9vZmZzZXRfdHlwZShpbnQgaTkx
NSwgY29uc3Qgc3RydWN0IG1tYXBfb2Zmc2V0ICp0KTsKCiYmIGdlbV9oYXNfbW1hcF9vZmZzZXRf
dHlwZShmZCwgdCkKCmluIGNhc2Ugd2UgbmVlZCB0byBmaXggaXQgYWdhaW4gaW4gZnV0dXJlLgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
