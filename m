Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC2841717
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 23:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41995891D4;
	Tue, 11 Jun 2019 21:46:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7199891D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 21:46:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16869660-1500050 for multiple; Tue, 11 Jun 2019 22:46:19 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
 <20190611172731.19174-8-mika.kuoppala@linux.intel.com>
 <156028260924.2193.9166771181989648192@skylake-alporthouse-com>
In-Reply-To: <156028260924.2193.9166771181989648192@skylake-alporthouse-com>
Message-ID: <156028957812.2193.1199279667440976370@skylake-alporthouse-com>
Date: Tue, 11 Jun 2019 22:46:18 +0100
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/gtt: Make swapping the pd
 entry generic
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTEgMjA6NTA6MDkpCj4gUXVvdGluZyBNaWth
IEt1b3BwYWxhICgyMDE5LTA2LTExIDE4OjI3OjMwKQo+ID4gU3dhcHBpbmcgYSBwZCBlbnRyeSBp
cyBzYW1lIGFjcm9zcyB0aGUgcGFnZSBkaXJlY3RvcmllcywgaWYKPiA+IHdlIHN1Y2NlZWQgd2Ug
bmVlZCB0byBpbmNyZW1lbnQgdGhlIGNvdW50IGFuZCB3cml0ZSB0aGUgcGh5cyBwYWdlCj4gPiBl
bnRyeS4gTWFrZSBhIGNvbW1vbiBmdW5jdGlvbiBmb3IgaXQuCj4gPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0t
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCA0MSArKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCsp
LCAxNCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
PiA+IGluZGV4IGYxZDc4NzQ4MzRlMi4uOWIwZDBhMDc3ZTMxIDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gPiBAQCAtNzUyLDYgKzc1MiwyNyBAQCBzdGF0aWMgdm9p
ZCBfX3NldF9wZF9lbnRyeShzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNvbnN0IHBkLAo+
ID4gICAgICAgICAgICAgICAgICAgICAgICBnZW44X3BkZV9lbmNvZGUocHhfZG1hKHRvKSwgSTkx
NV9DQUNIRV9MTEMpKTsgICAgXAo+ID4gIH0pCj4gPiAgCj4gPiArc3RhdGljIHZvaWQgKl9fc3dh
cF9wZF9lbnRyeShzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNvbnN0IHBkLAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCB1bnNpZ25lZCBzaG9ydCBwZGUsCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKiBjb25zdCBvbGRfdmFsLAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICogY29uc3QgbmV3X3ZhbCwKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgdTY0IGVuY29kZWRfZW50cnkpCj4gCj4gTWFy
ayB0aGlzIGFzIGlubGluZSBhbmQgcGFzcyBpbiB0aGUgZW5jb2RlIGZ1bmN0aW9uLCB0aGUgY29t
cGlsZXIgc2hvdWxkCj4gZG8gdGhlIHJlc3QuCj4gCj4gPiArewo+ID4gKyAgICAgICB2b2lkICog
Y29uc3Qgb2xkID0gY21weGNoZygmcGQtPmVudHJ5W3BkZV0sIG9sZF92YWwsIG5ld192YWwpOwo+
ID4gKwo+ID4gKyAgICAgICBpZiAobGlrZWx5KG9sZCA9PSBvbGRfdmFsKSkgewo+ID4gKyAgICAg
ICAgICAgICAgIGF0b21pY19pbmMoJnBkLT51c2VkKTsKPiAKPiBIbW0sIGxvb2tpbmcgYXQgdGhp
cyBhZ2FpbiwgdGhpcyB3b3VsZCBiZSBzYWZlciBpZiBhdG9taWNfaW5jIHdhcyBiZWZvcmUKPiB0
aGUgY21weGNoZywgd2l0aCBhbiBhdG9taWNfZGVjIG9uIHRoZSBmYWlsIHBhdGguCgpBY3R1YWxs
eSBhbHJlYWR5IHRha2VuIGNhcmUgb2YsIHRoZSBwYXJlbnQgcGlucyB0aGUgY2hpbGQgcGFnZSBk
aXJlY3RvcnkKYmVmb3JlIGVudGVyaW5nLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
