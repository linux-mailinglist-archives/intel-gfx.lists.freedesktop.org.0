Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 627DCDF6C9
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 22:31:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6796E118;
	Mon, 21 Oct 2019 20:31:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36DAC6E118
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 20:31:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18917583-1500050 for multiple; Mon, 21 Oct 2019 21:31:37 +0100
MIME-Version: 1.0
To: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191021135212.GI3257@intel.com>
References: <20191018221450.26247-1-chris@chris-wilson.co.uk>
 <20191018221450.26247-2-chris@chris-wilson.co.uk>
 <20191018232412.GG3257@intel.com>
 <157144081841.13645.16302706306560552799@skylake-alporthouse-com>
 <20191021135212.GI3257@intel.com>
Message-ID: <157168989517.2684.10286377388755378564@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 21 Oct 2019 21:31:35 +0100
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/selftests: Add coverage of
 mocs registers
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBLdW1hciBWYWxzYW4sIFByYXRoYXAgKDIwMTktMTAtMjEgMTQ6NTI6MTIpCj4gT24g
U2F0LCBPY3QgMTksIDIwMTkgYXQgMTI6MjA6MThBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3Rl
Ogo+ID4gUXVvdGluZyBLdW1hciBWYWxzYW4sIFByYXRoYXAgKDIwMTktMTAtMTkgMDA6MjQ6MTMp
Cj4gPiA+IE9uIEZyaSwgT2N0IDE4LCAyMDE5IGF0IDExOjE0OjM5UE0gKzAxMDAsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+ID4gPiArc3RhdGljIGludCBjaGVja19sM2NjX3RhYmxlKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
IGNvbnN0IHN0cnVjdCBkcm1faTkxNV9tb2NzX3RhYmxlICp0YWJsZSwKPiA+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgIGNvbnN0IHUzMiAqdmFkZHIsIGludCAqb2Zmc2V0KQo+ID4gPiA+
ICt7Cj4gPiA+ID4gKyAgICAgdTE2IHVudXNlZF92YWx1ZSA9IHRhYmxlLT50YWJsZVtJOTE1X01P
Q1NfUFRFXS5sM2NjX3ZhbHVlOwo+ID4gPiA+ICsgICAgIHVuc2lnbmVkIGludCBpOwo+ID4gPiA+
ICsgICAgIHUzMiBleHBlY3Q7Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgIGlmICgxKSB7IC8qIFhY
WCBza2lwIE1DUiByZWFkIGJhY2sgKi8KPiA+ID4gPiArICAgICAgICAgICAgICpvZmZzZXQgKz0g
dGFibGUtPm5fZW50cmllcyAvIDI7Cj4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gMDsKPiA+
ID4gPiArICAgICB9Cj4gPiA+IAo+ID4gPiBJIHRoaW5rIGwzY2MgcmVzZXQgdGVzdCBpcyB2YWxp
ZCBvbmx5IGZyb20gR2VuMTIrLiBCZWZvcmUgdGhhdCBzaW5jZSBpdHMKPiA+ID4gbG9hZGVkIGZy
b20gdGhlIGdvbGRlbiBjb250ZXh0LCB0YWJsZSBzdGF5cyB0aGUgc2FtZSBiZXR3ZWVuIHJlc2V0
Lgo+ID4gCj4gPiBUaGF0IGRvZXNuJ3QgYWZmZWN0IHRoZSB2YWxpZGl0eSBvZiBhY3R1YWxseSBj
aGVja2luZyB0aGF0IHRoZSB2YWx1ZXMKPiA+IGRvbid0IGNoYW5nZS4gVGhlIHByb2JsZW0gYXMg
SSB1bmRlcnN0YW5kIGl0IGlzIHRoYXQgdGhleSBsaWUgaW5zaWRlIHRoZQo+ID4gbWFnaWMgMHhi
MDAgcmVnaW9uIHRoYXQgaXMgYnJvYWRjYXN0IGFjcm9zcyB0aGUgc2xpY2VzIGFuZCBub3QKPiA+
IGFjY2Vzc2libGUgZnJvbSBDUywgc2VlIGVuZ2luZV93YV9saXN0X3ZlcmlmeSgpIGFuZCBtY3Jf
cmFuZ2UuIFNhZGx5Cj4gPiB1c2luZyB0aGUgR1BVIGlzIHRoZSBjbGVhbmVzdCB3YXkgdG8gZW11
bGF0ZSB1c2Vyc3BhY2UgaW50ZXJhY3Rpb24gd2l0aAo+ID4gdGhlICpHUFUqLgo+ID4gLUNocmlz
Cj4gSG1tbS4uIEJ1dCBmcm9tIGlndCB0ZXN0IHdlIGFyZSBzdWJtaXRpbmcgYSBzZWN1cmUgQkIg
dG8gcmVhZCB0aGUgTDMKPiBNT0NTLiBOb3QgcXVpdGUgY2xlYXIgaG93IHRoYXQgd29ya3MgdGhl
bi4KClRoZSBzaW1wbGUgYW5zd2VyIGlzIEkgc2VlIHByZWNpc2VseSB0aGUgc2FtZSBmYWlsIGlu
IGdlbV9tb2NzX3NldHRpbmdzCjopCgpUaGUgcmVhbCBxdWVzdGlvbiBpcyB3aHkgQ0kgZG9lcyBu
b3QuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
