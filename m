Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8967F3B5F8
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 15:28:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02E3C89015;
	Mon, 10 Jun 2019 13:28:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3F1289015
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 13:28:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16852856-1500050 for multiple; Mon, 10 Jun 2019 14:28:31 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <58133074-f414-9505-b8f3-239172b3d628@linux.intel.com>
References: <20190610130110.26306-1-tvrtko.ursulin@linux.intel.com>
 <156017191664.383.14001735029510950842@skylake-alporthouse-com>
 <58133074-f414-9505-b8f3-239172b3d628@linux.intel.com>
Message-ID: <156017330990.383.15038349095656216998@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 10 Jun 2019 14:28:29 +0100
Subject: Re: [Intel-gfx] [RFC] drm/i915/hangcheck: Look at instdone for all
 engines
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMCAxNDoxNjozMikKPiAKPiBPbiAxMC8w
Ni8yMDE5IDE0OjA1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA2LTEwIDE0OjAxOjEwKQo+ID4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPj4KPiA+PiBJdCBzZWVtcyBpbnRlbF9lbmdpbmVfZ2V0
X2luc3Rkb25lIGlzIGFibGUgdG8gZ2V0IGluc3Rkb25lIGZvciBhbGwgZW5naW5lcwo+ID4+IGJ1
dCBpbnRlbF9oYW5nY2hlY2suYy9zdWJ1bml0c19zdHVjayBkZWNpZGVzIHRvIGlnbm9yZSBpdCBm
b3Igbm9uIHJlbmRlci4KPiA+Pgo+ID4+IFdlIGNhbiBqdXN0IGRyb3AgdGhlIGNoZWNrIGluIHN1
YnVuaXRzX3N0dWNrIHNpbmNlIHRoZSBjaGVja3Mgb24KPiA+PiB1bmF2YWlsYWJsZSBmaWVsZHMg
d2lsbCBhbHdheXMgcmV0dXJuIHN0dWNrLCB3aGljaCB3aGVuIGJpdHdpc2UgYW5kIHdpdGgKPiA+
PiB0aGUgcG90ZW50aWFsIHVuc3R1Y2sgaW5zdGRvbmUgaXMgaGFybWxlc3MuCj4gPj4KPiA+PiBT
aWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+
ID4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+PiBDYzog
TWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPj4gLS0tCj4g
Pj4gV291bGQgYWN0dWFsbHkgdXNpbmcgdGhlIGF2YWlsYWJsZSBkYXRhIGltcHJvdmUgaGFuZyBk
ZXRlY3Rpb24/Cj4gPiAKPiA+IE5vLCBqdXN0IHByb2xvbmcgaXQgOikKPiAKPiBJIHdhcyB0aGlu
a2luZyBhY3Rpdml0eSBvbiBpbnN0ZG9uZSB3b3VsZCwgYnV0IGNvcnJlY3RseSBzbywgbm8/IElm
IAo+IGZ1bmN0aW9uYWwgYmxvY2tzIGhhdmUgc2hvd24gYSBjaGFuZ2Ugb2Ygc3RhdHVzLCB0aGVu
IHdlIHRyeSBhZ2FpbiB1bnRpbCAKPiB0aGV5IHRvbyBnZXQgc3R1Y2suIFNvbWUgaW1wcm92ZW1l
bnQgaW4gZmFsc2UgcG9zaXRpdmVzLCBidXQgbWFyZ2luYWwgSSAKPiBrbm93IGdpdmVuIHRoZSBo
YW5nY2hlY2sgcGVyaW9kLgoKSXQncyBhIGxvdCBtb3JlIGZ1enp5IHdoZW4geW91IGxvb2sgYXQg
aG93IHdlIE9SIHRvZ2V0aGVyIHRoZSBiaXRzIGZvcgp0aGUgaGlzdG9yeS4gTm90IHRoYXQgeW91
IGFyZSB3cm9uZywganVzdCBiZWluZyBhbiBvbGQgY3VybXVkZ2Vvbi4gSSdtCm5vdCByZWFsbHkg
c29sZCBvbiB3aGV0aGVyIGl0IG1ha2VzIGFueSBzZW5zZSBhdCB0aGUgZ3JhbnVsYXJpdHkgb2Yg
b3VyCmluc3BlY3Rpb24sIGN1cnJlbnRseSBzYW1wbGluZyBldmVyeSB+MS41cy4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
