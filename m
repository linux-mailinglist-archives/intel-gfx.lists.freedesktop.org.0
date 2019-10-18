Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 475A6DD547
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2019 01:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 642AA6E05F;
	Fri, 18 Oct 2019 23:21:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF0F16E05F
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 23:21:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18888154-1500050 for multiple; Sat, 19 Oct 2019 00:20:20 +0100
MIME-Version: 1.0
To: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191018232412.GG3257@intel.com>
References: <20191018221450.26247-1-chris@chris-wilson.co.uk>
 <20191018221450.26247-2-chris@chris-wilson.co.uk>
 <20191018232412.GG3257@intel.com>
Message-ID: <157144081841.13645.16302706306560552799@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 19 Oct 2019 00:20:18 +0100
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

UXVvdGluZyBLdW1hciBWYWxzYW4sIFByYXRoYXAgKDIwMTktMTAtMTkgMDA6MjQ6MTMpCj4gT24g
RnJpLCBPY3QgMTgsIDIwMTkgYXQgMTE6MTQ6MzlQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3Rl
Ogo+ID4gK3N0YXRpYyBpbnQgY2hlY2tfbDNjY190YWJsZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBkcm1f
aTkxNV9tb2NzX3RhYmxlICp0YWJsZSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgY29u
c3QgdTMyICp2YWRkciwgaW50ICpvZmZzZXQpCj4gPiArewo+ID4gKyAgICAgdTE2IHVudXNlZF92
YWx1ZSA9IHRhYmxlLT50YWJsZVtJOTE1X01PQ1NfUFRFXS5sM2NjX3ZhbHVlOwo+ID4gKyAgICAg
dW5zaWduZWQgaW50IGk7Cj4gPiArICAgICB1MzIgZXhwZWN0Owo+ID4gKwo+ID4gKyAgICAgaWYg
KDEpIHsgLyogWFhYIHNraXAgTUNSIHJlYWQgYmFjayAqLwo+ID4gKyAgICAgICAgICAgICAqb2Zm
c2V0ICs9IHRhYmxlLT5uX2VudHJpZXMgLyAyOwo+ID4gKyAgICAgICAgICAgICByZXR1cm4gMDsK
PiA+ICsgICAgIH0KPiAKPiBJIHRoaW5rIGwzY2MgcmVzZXQgdGVzdCBpcyB2YWxpZCBvbmx5IGZy
b20gR2VuMTIrLiBCZWZvcmUgdGhhdCBzaW5jZSBpdHMKPiBsb2FkZWQgZnJvbSB0aGUgZ29sZGVu
IGNvbnRleHQsIHRhYmxlIHN0YXlzIHRoZSBzYW1lIGJldHdlZW4gcmVzZXQuCgpUaGF0IGRvZXNu
J3QgYWZmZWN0IHRoZSB2YWxpZGl0eSBvZiBhY3R1YWxseSBjaGVja2luZyB0aGF0IHRoZSB2YWx1
ZXMKZG9uJ3QgY2hhbmdlLiBUaGUgcHJvYmxlbSBhcyBJIHVuZGVyc3RhbmQgaXQgaXMgdGhhdCB0
aGV5IGxpZSBpbnNpZGUgdGhlCm1hZ2ljIDB4YjAwIHJlZ2lvbiB0aGF0IGlzIGJyb2FkY2FzdCBh
Y3Jvc3MgdGhlIHNsaWNlcyBhbmQgbm90CmFjY2Vzc2libGUgZnJvbSBDUywgc2VlIGVuZ2luZV93
YV9saXN0X3ZlcmlmeSgpIGFuZCBtY3JfcmFuZ2UuIFNhZGx5CnVzaW5nIHRoZSBHUFUgaXMgdGhl
IGNsZWFuZXN0IHdheSB0byBlbXVsYXRlIHVzZXJzcGFjZSBpbnRlcmFjdGlvbiB3aXRoCnRoZSAq
R1BVKi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
