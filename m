Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4A4F10EB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 09:19:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4284B6EC3A;
	Wed,  6 Nov 2019 08:19:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440EC6EC39;
 Wed,  6 Nov 2019 08:19:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19097896-1500050 for multiple; Wed, 06 Nov 2019 08:18:59 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157294526047.9970.6373970441637977552@jlahtine-desk.ger.corp.intel.com>
References: <20191104171330.24821-1-janusz.krzysztofik@linux.intel.com>
 <20191104171330.24821-2-janusz.krzysztofik@linux.intel.com>
 <157294526047.9970.6373970441637977552@jlahtine-desk.ger.corp.intel.com>
Message-ID: <157302833695.18566.5030101389129541587@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 06 Nov 2019 08:18:56 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v5 1/4] lib/i915: Add
 minimum GTT alignment helper
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

UXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMTktMTEtMDUgMDk6MTQ6MjApCj4gUXVvdGluZyBK
YW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTEtMDQgMTk6MTM6MjcpCj4gPiBTb21lIHRlc3RzIGFz
c3VtZSA0a0Igb2Zmc2V0IGFsaWdubWVudCB3aGlsZSB1c2luZyBzb2Z0cGluLiAgVGhhdAo+ID4g
YXNzdW1wdGlvbiBtYXkgYmUgd3Jvbmcgb24gZnV0dXJlIEdFTSBiYWNrZW5kcyB3aXRoIHBvc3Np
Ymx5IGxhcmdlcgo+ID4gbWluaW11bSBwYWdlIHNpemVzLiAgQXMgYSByZXN1bHQsIHRob3NlIHRl
c3RzIG1heSBlaXRoZXIgZmFpbCBvbgo+ID4gc29mdHBpbiBhdCBvZmZzZXRzIHdoaWNoIGFyZSBp
bmNvcnJlY3RseSBhbGlnbmVkLCBtYXkgc2lsZW50bHkgc2tpcAo+ID4gc3VjaCBpbmNvcnJlY3Rs
eSBhbGlnbmVkIGFkZHJlc3NlcyBhc3N1bWluZyB0aGVtIG9jY3VwaWVkIGJ5IG90aGVyCj4gPiB1
c2Vycywgb3IgbWF5IGFsd2F5cyBzdWNjZWVkIHdoZW4gZXhhbWluaW5nIGludmFsaWQgdXNlIHBh
dHRlcm5zLgo+ID4gCj4gPiBQcm92aWRlIGEgaGVscGVyIGZ1bmN0aW9uIHRoYXQgZGV0ZWN0cyBt
aW5pbXVtIEdUVCBhbGlnbm1lbnQuICBUZXN0cwo+ID4gbWF5IHVzZSBpdCB0byBjYWxjdWxhdGUg
c29mdHBpbiBvZmZzZXRzIHZhbGlkIG9uIGFjdHVhbGx5IHVzZWQgYmFja2luZwo+ID4gc3RvcmUu
Cj4gPiAKPiA+IEFsc28gZXhwb3NlIGEgbmV3IG9iamVjdCB2YWxpZGF0aW9uIGhlbHBlciBqdXN0
IGNyZWF0ZWQsIGl0IG1heSBiZQo+ID4gdXNlZnVsIGZvciBjaGVja2luZyBpZiBhIHNoYXJlZCBH
VFQgYWRkcmVzcyBpcyBub3QgcmVzZXJ2ZWQsIGZvcgo+ID4gZXhhbXBsZS4KPiA+IAo+ID4gdjI6
IFJlbmFtZSB0aGUgaGVscGVyLCB1c2UgJ21pbmltdW0gR1RUIGFsaWdubWVudCcgdGVybSBhY3Jv
c3MgdGhlCj4gPiAgICAgY2hhbmdlIChDaHJpcyksCj4gPiAgIC0gdXNlIGVycm9yIG51bWJlcnMg
dG8gZGlzdGluZ3Vpc2ggYmV0d2VlbiBpbnZhbGlkIG9mZnNldHMgYW5kCj4gPiAgICAgYWRkcmVz
c2VzIG9jY3VwaWVkIGJ5IG90aGVyIHVzZXJzLAo+ID4gICAtIHNpbXBsaWZ5IHRoZSBjb2RlIChD
aHJpcykuCj4gPiB2MzogUHV0IHRoZSBjb2RlIHVuZGVyIGxpYi9pOTE1Lywgbm90IGluIGxpYi9p
b2N0bF93cmFwcGVycy5jIChDaHJpcyksCj4gPiAgIC0gdmFsaWRhdGUgb2JqZWN0cyB3aXRoIGFu
IGludmFsaWQgcmVsb2MgYXBwbGllZCBzbyBleGVjYnVmIHJlcXVlc3RzCj4gPiAgICAgY2FsbGVk
IG9ubHkgZm9yIHZhbGlkYXRpb24gcHVycG9zZXMgYXJlIGFjdHVhbGx5IG5vdCBlbWl0dGVkIHRv
IEdQVQo+ID4gICAgIChDaHJpcyksCj4gPiAgIC0gbW92ZSBvYmplY3QgdmFsaWRhdGlvbiBjb2Rl
IHRvIGEgc2VwYXJhdGUgaGVscGVyLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6
eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiA+IENjOiBTdHVh
cnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgo+IAo+IDxTTklQPgo+IAo+ID4g
K2ludCBnZW1fZ3R0X3ZhbGlkYXRlX29iamVjdChpbnQgZmQsIHN0cnVjdCBkcm1faTkxNV9nZW1f
ZXhlY19vYmplY3QyICpvYmopCj4gPiArewo+ID4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X3JlbG9jYXRpb25fZW50cnkgcmVsb2M7Cj4gPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1f
ZXhlY2J1ZmZlcjIgZXhlY2J1ZjsKPiA+ICsgICAgICAgY29uc3QgdWludDMyX3QgYmJlID0gTUlf
QkFUQ0hfQlVGRkVSX0VORDsKPiA+ICsgICAgICAgdWludHB0cl90IG9sZF9yZWxvYzsKPiA+ICsg
ICAgICAgaW50IG9sZF9jb3VudCwgZXJyOwo+ID4gKwo+ID4gKyAgICAgICBtZW1zZXQoJnJlbG9j
LCAwLCBzaXplb2YocmVsb2MpKTsKPiA+ICsgICAgICAgbWVtc2V0KCZleGVjYnVmLCAwLCBzaXpl
b2YoZXhlY2J1ZikpOwo+ID4gKwo+ID4gKyAgICAgICAvKiB1c2UgaW52YWxpZCByZWxvYyB0byBz
YXZlIHJlcXVlc3QgZW1pc3Npb24gKi8KPiA+ICsgICAgICAgb2xkX3JlbG9jID0gb2JqLT5yZWxv
Y3NfcHRyOwo+ID4gKyAgICAgICBvbGRfY291bnQgPSBvYmotPnJlbG9jYXRpb25fY291bnQ7Cj4g
PiArICAgICAgIG9iai0+cmVsb2NzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcigmcmVsb2MpOwo+ID4g
KyAgICAgICBvYmotPnJlbG9jYXRpb25fY291bnQgPSAxOwo+ID4gKyAgICAgICBnZW1fd3JpdGUo
ZmQsIG9iai0+aGFuZGxlLCAwLCAmYmJlLCBzaXplb2YoYmJlKSk7Cj4gCj4gRG9uJ3QgdXNlIHJl
bG9jYXRpb25zIGZvciBhbnl0aGluZyBuZXcuIEFsc28sIGRvbid0IGRlcGVuZCBvbiBzdWNoCj4g
cXVpcmsgYmVoYXZpb3IgYXMgdG8ga2VybmVsIHZhbGlkYXRpbmcgcGFyYW1ldGVycyBpbiBjZXJ0
YWluIG9yZGVyLgoKUmVsb2NhdGlvbnMgY2Fubm90IGhhcHBlbiBiZWZvcmUgcmVzZXJ2YXRpb24u
IEV2ZW4gaWYgeW91IHdlcmUgdG8gZG8gdGhlCmVudGlyZSB0aGluZyBhc3luYywgeW91IHN0aWxs
IGhhdmUgdG8gY29weSB0aGUgcmVsb2NhdGlvbiBhcnJheXMgZnJvbQp1c2Vyc3BhY2UuIChOb3Rl
IHRvdWNoaW5nIHRoZSByZWxvY2F0aW9uIGFycmF5IHdvdWxkIGJlIGEgbm90aWNlYWJsZQpwZXJm
b3JtYW5jZSByZWdyZXNzaW9uLikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
