Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9925F1068D8
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 10:30:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 441D86E25F;
	Fri, 22 Nov 2019 09:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 622E96E25F
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 09:29:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19297078-1500050 for multiple; Fri, 22 Nov 2019 09:29:46 +0000
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <35de6d80-6ea2-9228-efec-54ef7cc30b12@linux.intel.com>
References: <20191122040226.15933-1-ramalingam.c@intel.com>
 <20191122040226.15933-2-ramalingam.c@intel.com>
 <35de6d80-6ea2-9228-efec-54ef7cc30b12@linux.intel.com>
Message-ID: <157441498323.2524.12613965179682887118@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 22 Nov 2019 09:29:43 +0000
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yMiAwOToyMTo0NSkKPiAKPiBPbiAyMi8x
MS8yMDE5IDA0OjAyLCBSYW1hbGluZ2FtIEMgd3JvdGU6Cj4gPiBAQCAtNTY4LDkgKzU4MSwyMiBA
QCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLAo+ID4gICBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4gPiAgIHsKPiA+ICsgICAg
IHUzMiB2YWw7Cj4gPiArCj4gPiAgICAgICAvKiBXYV8xNDA5MTQyMjU5OnRnbCAqLwo+ID4gICAg
ICAgV0FfU0VUX0JJVF9NQVNLRUQoR0VOMTFfQ09NTU9OX1NMSUNFX0NISUNLRU4zLAo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgR0VOMTJfRElTQUJMRV9DUFNfQVdBUkVfQ09MT1JfUElQRSk7
Cj4gPiArCj4gPiArICAgICAvKiBXYV8xNjA0NTU1NjA3OnRnbCAqLwo+ID4gKyAgICAgdmFsID0g
aW50ZWxfdW5jb3JlX3JlYWQoZW5naW5lLT51bmNvcmUsIEZGX01PREUyKTsKPiA+ICsgICAgIHZh
bCAmPSB+RkZfTU9ERTJfVERTX1RJTUVSX01BU0s7Cj4gPiArICAgICB2YWwgfD0gRkZfTU9ERTJf
VERTX1RJTUVSXzEyODsKPiA+ICsgICAgIC8qCj4gPiArICAgICAgKiBGSVhNRTogRkZfTU9ERTIg
cmVnaXN0ZXIgaXMgbm90IHJlYWRhYmxlIHRpbGwgVEdMIEIwLiBXZSBjYW4KPiA+ICsgICAgICAq
IGVuYWJsZSB2ZXJpZmljYXRpb24gb2YgV0EgZnJvbSB0aGUgbGF0ZXIgc3RlcHBpbmdzLCB3aGlj
aCBlbmFibGVzCj4gPiArICAgICAgKiB0aGUgcmVhZCBvZiBGRl9NT0RFMi4KPiA+ICsgICAgICAq
Lwo+ID4gKyAgICAgX193YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJf
VERTX1RJTUVSX01BU0ssIHZhbCwgMCk7Cj4gCj4gSWYgSSB3YXMgYSBiZXR0aW5nIG1hbiBJJ2Qg
YmV0IG5vIG9uZSB3aWxsIGV2ZXIgcmVtZW1iZXIgdG8gYWRkIHRoZSAKPiB2ZXJpZmljYXRpb24g
YmFjay4gU28gSSBoYXZlIHRvIHNheSBJIGRpc2FncmVlIHdpdGggTHVjYXMgb24gdGhpcyBwb2lu
dC4gCj4gU29tZW9uZSBkbyBhIGNhc3Rpbmcgdm90ZSBwbGVhc2UuIDopCgpJIHdvdWxkIGdvIHdp
dGggSVNfVEdMX1JFVklEKEEwLCBBMCkgYXMgd2UgZXhwZWN0IGl0IHRvIGJlIHBpY2tlZCB1cCBi
eQp0aGUgc2VsZnRlc3RzIGlmIHdlIGhhdmUgYSBuZXcgc3RlcHBpbmcgdGhhdCBpcyB1bmZpeGVk
IC0tIGFuZCBhIGJsaXAgaW4KQ0kgaXMgYSBtdWNoIGNsZWFyZXIgcmVtaW5kZXIgdG8gY29tZSBi
YWNrIGFuZCByZXZpc2l0IHRoaXMgY29kZS4gV2UKc2hvdWxkIGJlIGFibGUgdG8gZ28gIm9vcHMs
IGxpdmVfd29ya2Fyb3VuZHMgaXMgcmVkLCBmYWlsaW5nIG9uIGN0eDoweGYwMCIKYW5kIGZyb20g
dGhlcmUgZmluZCB0aGlzIGZpeG1lLiBBbmQgc28gdXBkYXRlIGZvciBhIG5ldyBzdGVwcGluZyBp
biB0aGUKY291cnNlIG9mIGEgZGF5IChiZWNhdXNlIHRoYXQncyBob3cgbG9uZyBpdCB0YWtlcyBm
b3IgQ0kgdG8gYXBwcm92ZSBhCnBhdGNoKS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
