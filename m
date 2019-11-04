Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE925EDB7B
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 10:17:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139596E1EE;
	Mon,  4 Nov 2019 09:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 585816E1E9;
 Mon,  4 Nov 2019 09:17:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19071059-1500050 for multiple; Mon, 04 Nov 2019 09:17:35 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <2117261.1uHUvrbj0G@jkrzyszt-desk.ger.corp.intel.com>
References: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
 <20191031152857.17143-2-janusz.krzysztofik@linux.intel.com>
 <157260256522.17607.15985195702419423317@skylake-alporthouse-com>
 <2117261.1uHUvrbj0G@jkrzyszt-desk.ger.corp.intel.com>
Message-ID: <157285905401.30603.14872515677529624627@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 04 Nov 2019 09:17:34 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v4 1/4] tests/gem_exec_reloc:
 Don't filter out invalid addresses
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
Cc: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTEtMDQgMDk6MTM6MjgpCj4gSGkgQ2hy
aXMsCj4gCj4gT24gRnJpZGF5LCBOb3ZlbWJlciAxLCAyMDE5IDExOjAyOjQ1IEFNIENFVCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIEphbnVzeiBLcnp5c3p0b2ZpayAoMjAxOS0xMC0z
MSAxNToyODo1NCkKPiA+ID4gQ29tbWl0IGEzNTViMmQ2ZWI0MiAoImlndC9nZW1fZXhlY19yZWxv
YzogRmlsdGVyIG91dCB1bmF2YWlsYWJsZQo+ID4gPiBhZGRyZXNzZXMgZm9yICFwcGd0dCIpIGlu
dHJvZHVjZWQgZmlsdGVyaW5nIG9mIGFkZHJlc3NlcyBwb3NzaWJseQo+ID4gPiBvY2N1cGllZCBi
eSBvdGhlciB1c2VycyBvZiBzaGFyZWQgR1RULiAgVW5mb3J0dW5hdGVseSwgdGhhdCBmaWx0ZXJp
bmcKPiA+ID4gZG9lc24ndCBkaXN0aW5ndWlzaCBiZXR3ZWVuIGFjdHVhbGx5IG9jY3VwaWVkIGFk
ZHJlc3NlcyBhbmQgb3RoZXJ3aXNlCj4gPiA+IGludmFsaWQgc29mdHBpbiBvZmZzZXRzLiAgQXMg
c29vbiBhcyBpbmNvcnJlY3QgR1RUIGFsaWdubWVudCBpcyBhc3N1bWVkCj4gPiA+IHdoZW4gcnVu
bmluZyBvbiBmdXR1cmUgYmFja2VuZHMgd2l0aCBwb3NzaWJseSBsYXJnZXIgbWluaW11bSBwYWdl
Cj4gPiA+IHNpemVzLCBhIGhhbGYgb2YgY2FsY3VsYXRlZCBvZmZzZXRzIHRvIGJlIHRlc3RlZCB3
aWxsIGJlIGluY29ycmVjdGx5Cj4gPiA+IGRldGVjdGVkIGFzIG9jY3VwaWVkIGJ5IG90aGVyIHVz
ZXJzIGFuZCBzaWxlbnRseSBza2lwcGVkIGluc3RlYWQgb2YKPiA+ID4gcmVwb3J0ZWQgYXMgYSBw
cm9ibGVtLiAgVGhhdCB3aWxsIHNpZ25pZmljYW50bHkgZGlzdG9ydCB0aGUgaW50ZW5kZWQKPiA+
ID4gdGVzdCBwYXR0ZXJuLgo+ID4gPiAKPiA+ID4gRmlsdGVyIG91dCBmYWlsaW5nIGFkZHJlc3Nl
cyBvbmx5IGlmIG5vdCByZXBvcnRlZCBhcyBpbnZhbGlkLgo+ID4gPiAKPiA+ID4gdjI6IFNraXAg
dW5hdmFpbGFibGUgYWRkcmVzc2VzIG9ubHkgd2hlbiBub3QgcnVubmluZyBvbiBmdWxsIFBQR1RU
Lgo+ID4gPiB2MzogUmVwbGFjZSB0aGUgbm90IG9uIGZ1bGwgUFBHVFQgcmVxdWlyZW1lbnQgZm9y
IHNraXBwaW5nIHdpdGggZXJyb3IKPiA+ID4gICAgIGNvZGUgY2hlY2tpbmcuCj4gPiA+IAo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0Bs
aW51eC5pbnRlbC5jb20+Cj4gPiA+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiA+ID4gLS0tCj4gPiA+ICB0ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMgfCAx
MiArKysrKysrKystLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhl
Y19yZWxvYy5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19yZWxvYy5jCj4gPiA+IGluZGV4IDVmNTlm
ZTk5Li40MjNmZWQ4YiAxMDA2NDQKPiA+ID4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19yZWxv
Yy5jCj4gPiA+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYwo+ID4gPiBAQCAtNTIw
LDcgKzUyMCw3IEBAIHN0YXRpYyB2b2lkIGJhc2ljX3JhbmdlKGludCBmZCwgdW5zaWduZWQgZmxh
Z3MpCj4gPiA+ICAgICAgICAgdWludDY0X3QgZ3R0X3NpemUgPSBnZW1fYXBlcnR1cmVfc2l6ZShm
ZCk7Cj4gPiA+ICAgICAgICAgY29uc3QgdWludDMyX3QgYmJlID0gTUlfQkFUQ0hfQlVGRkVSX0VO
RDsKPiA+ID4gICAgICAgICBpZ3Rfc3Bpbl90ICpzcGluID0gTlVMTDsKPiA+ID4gLSAgICAgICBp
bnQgY291bnQsIG47Cj4gPiA+ICsgICAgICAgaW50IGNvdW50LCBuLCBlcnI7Cj4gPiA+ICAKPiA+
ID4gICAgICAgICBpZ3RfcmVxdWlyZShnZW1faGFzX3NvZnRwaW4oZmQpKTsKPiA+ID4gIAo+ID4g
PiBAQCAtNTQyLDggKzU0MiwxMSBAQCBzdGF0aWMgdm9pZCBiYXNpY19yYW5nZShpbnQgZmQsIHVu
c2lnbmVkIGZsYWdzKQo+ID4gPiAgICAgICAgICAgICAgICAgZ2VtX3dyaXRlKGZkLCBvYmpbbl0u
aGFuZGxlLCAwLCAmYmJlLCBzaXplb2YoYmJlKSk7Cj4gPiA+ICAgICAgICAgICAgICAgICBleGVj
YnVmLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKCZvYmpbbl0pOwo+ID4gPiAgICAgICAg
ICAgICAgICAgZXhlY2J1Zi5idWZmZXJfY291bnQgPSAxOwo+ID4gPiAtICAgICAgICAgICAgICAg
aWYgKF9fZ2VtX2V4ZWNidWYoZmQsICZleGVjYnVmKSkKPiA+ID4gKyAgICAgICAgICAgICAgIGVy
ciA9IF9fZ2VtX2V4ZWNidWYoZmQsICZleGVjYnVmKTsKPiA+ID4gKyAgICAgICAgICAgICAgIGlm
IChlcnIpIHsKPiA+IAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBpZ3RfYXNzZXJ0KGVy
ciAhPSAtRUlOVkFMKTsKPiA+IAo+ID4gSSd2ZSBiZWVuIHRoaW5raW5nIGFib3V0IHRoaXMgYW5k
IEkgdGhpbmsgdGhlIHJpZ2h0IGFwcHJvYWNoIGlzCj4gPiAKPiA+IC8qIElmZiB1c2luZyBhIHNo
YXJlZCBHVFQsIHNvbWUgb2YgaXQgbWF5IGJlIHJlc2VydmVkICovCj4gPiBpZ3RfYXNzZXJ0X2Vx
KGVyciwgLUVOT1NQQyk7Cj4gCj4gVGhhbmtzIGZvciB5b3VyIGhlbHAsIEknbGwgZm9sbG93IHlv
dXIgYXBwcm9hY2guCj4gCj4gU2hvdWxkbid0IHdlIGFsc28gdXNlIHRoZSB0cmljayB3aXRoIGlu
dmFsaWQgcmVsb2MgaGVyZSB0byBzYXZlIHJlcXVlc3QgCj4gZW1pc3Npb24/CgpDb3VsZCBkby4g
SWYgeW91IG1vdmUgdGhlIHdob2xlIHByb2JlIG91dCBvZiBsaW5lIHNvIGl0J3Mgbm90IGVhc2ls
eQpjb25mdXNlZCB3aXRoIHRoZSBjZW50cmFsIHBvaW50IG9mIHRoZSB0ZXN0LCB0aGF0J2xsIGJl
IGdyZWF0LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
