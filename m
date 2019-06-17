Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F4F47FE1
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 12:41:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A95BE891B3;
	Mon, 17 Jun 2019 10:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B16D8913B
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 10:41:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16925611-1500050 for multiple; Mon, 17 Jun 2019 11:40:48 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <5fcbdb69-4b40-f433-4977-381bdb4907c3@intel.com>
References: <20190617071912.20256-1-chris@chris-wilson.co.uk>
 <20190617071912.20256-2-chris@chris-wilson.co.uk>
 <5fcbdb69-4b40-f433-4977-381bdb4907c3@intel.com>
Message-ID: <156076804838.7096.1342895464418488618@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 17 Jun 2019 11:40:48 +0100
Subject: Re: [Intel-gfx] [PATCH 02/22] drm/i915/gtt: Serialise both updates
 to PDE and our shadow
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
Cc: mika.kuoppala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMTcgMTE6MzY6MzYpCj4gT24gMTcvMDYvMjAx
OSAwODoxOCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gQ3VycmVudGx5LCB3ZSBwZXJmb3JtIGEg
bG9ja2VkIHVwZGF0ZSBvZiB0aGUgc2hhZG93IGVudHJ5IHdoZW4KPiA+IGFsbG9jYXRpbmcgYSBw
YWdlIGRpcmVjdG9yeSBlbnRyeSBzdWNoIHRoYXQgaWYgdHdvIGNsaWVudHMgYXJlCj4gPiBjb25j
dXJyZW50bHkgYWxsb2NhdGluZyBuZWlnaGJvdXJpbmcgcmFuZ2VzIHdlIG9ubHkgaW5zZXJ0IG9u
ZSBuZXcgZW50cnkKPiA+IGZvciB0aGUgcGFpciBvZiB0aGVtLiBIb3dldmVyLCB3ZSBhbHNvIG5l
ZWQgdG8gc2VyaWFsaXNlIGJvdGggY2xpZW50cwo+ID4gd3J0IHRvIHRoZSBhY3R1YWwgZW50cnkg
aW4gdGhlIEhXIHRhYmxlLCBvciBlbHNlIHdlIG1heSBhbGxvdyBvbmUgY2xpZW50Cj4gPiBvciBl
dmVuIGEgdGhpcmQgY2xpZW50IHRvIHByb2NlZWQgYWhlYWQgb2YgdGhlIEhXIHdyaXRlLiBNeSBo
YW5kd2F2ZQo+ID4gYmVmb3JlIHdhcyB0aGF0IHVuZGVyIHRoZSBfcGF0aG9sb2dpY2FsXyBjb25k
aXRpb24gd2Ugd291bGQgc2VlIHRoZQo+ID4gc2NyYXRjaCBlbnRyeSBpbnN0ZWFkIG9mIHRoZSBl
eHBlY3RlZCBlbnRyeSwgY2F1c2luZyBhIHRlbXBvcmFyeQo+ID4gZ2xpdGNoLiBUaGF0IHN0YXJ2
YXRpb24gY29uZGl0aW9uIHdpbGwgZXZlbnR1YWxseSBzaG93IHVwIGluIHByYWN0aWNlLCBzbwo+
ID4gZml4IGl0Lgo+ID4gCj4gPiBUaGUgcmVhc29uIGZvciB0aGUgcHJldmlvdXMgY2hlYXQgd2Fz
IHRvIGF2b2lkIGhhdmluZyB0byBmcmVlIHRoZSBleHRyYQo+ID4gYWxsb2NhdGlvbiB3aGlsZSB1
bmRlciB0aGUgc3BpbmxvY2suIE5vdywgd2Uga2VlcCB0aGUgZXh0cmEgZW50cnkKPiA+IGFsbG9j
YXRlZCB1bnRpbCB0aGUgZW5kIGluc3RlYWQuCj4gPiAKPiA+IEZpeGVzOiAxZDFiNTQ5MGI5MWMg
KCJkcm0vaTkxNS9ndHQ6IFJlcGxhY2Ugc3RydWN0X211dGV4IHNlcmlhbGlzYXRpb24gZm9yIGFs
bG9jYXRpb24iKQo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
Pgo+ID4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAaW50ZWwuY29tPgo+ID4gLS0t
Cj4gCj4gW3NuaXBdCj4gCj4gPiAgIAo+ID4gICBzdGF0aWMgaW50IGdlbjhfcHJlYWxsb2NhdGVf
dG9wX2xldmVsX3BkcChzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQpCj4gPiBAQCAtMTgxOSwxMSAr
MTgzMSwxMyBAQCBzdGF0aWMgaW50IGdlbjZfYWxsb2NfdmFfcmFuZ2Uoc3RydWN0IGk5MTVfYWRk
cmVzc19zcGFjZSAqdm0sCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHU2NCBzdGFy
dCwgdTY0IGxlbmd0aCkKPiA+ICAgewo+ID4gICAgICAgc3RydWN0IGdlbjZfcHBndHQgKnBwZ3R0
ID0gdG9fZ2VuNl9wcGd0dChpOTE1X3ZtX3RvX3BwZ3R0KHZtKSk7Cj4gPiArICAgICBzdHJ1Y3Qg
aTkxNV9wYWdlX3RhYmxlICphbGxvYyA9IE5VTEw7Cj4gPiAgICAgICBzdHJ1Y3QgaTkxNV9wYWdl
X3RhYmxlICpwdDsKPiA+ICAgICAgIGludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+ID4gICAgICAg
dTY0IGZyb20gPSBzdGFydDsKPiA+ICAgICAgIHVuc2lnbmVkIGludCBwZGU7Cj4gPiAgICAgICBi
b29sIGZsdXNoID0gZmFsc2U7Cj4gPiArICAgICBpbnQgcmV0Owo+IAo+IHJldCA9IDA7CgpZZWFo
LCBvcmlnaW5hbGx5IHRoaXMga2VwdCB0byB0aGUgc2VwYXJhdGUgZXhpdCBwYXRocywgZm9yZ290
IHRvIGZpeAphZnRlciBtZXJnaW5nLgoKPiA+ICAgICAgIHdha2VyZWYgPSBpbnRlbF9ydW50aW1l
X3BtX2dldCgmdm0tPmk5MTUtPnJ1bnRpbWVfcG0pOwo+ID4gICAKPiA+IEBAIC0xODMyLDE5ICsx
ODQ2LDE4IEBAIHN0YXRpYyBpbnQgZ2VuNl9hbGxvY192YV9yYW5nZShzdHJ1Y3QgaTkxNV9hZGRy
ZXNzX3NwYWNlICp2bSwKPiA+ICAgICAgICAgICAgICAgY29uc3QgdW5zaWduZWQgaW50IGNvdW50
ID0gZ2VuNl9wdGVfY291bnQoc3RhcnQsIGxlbmd0aCk7Cj4gPiAgIAo+ID4gICAgICAgICAgICAg
ICBpZiAocHQgPT0gdm0tPnNjcmF0Y2hfcHQpIHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICBz
dHJ1Y3QgaTkxNV9wYWdlX3RhYmxlICpvbGQ7Cj4gPiAtCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgc3Bpbl91bmxvY2soJnBwZ3R0LT5iYXNlLnBkLmxvY2spOwo+ID4gICAKPiA+IC0gICAgICAg
ICAgICAgICAgICAgICBwdCA9IGFsbG9jX3B0KHZtKTsKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICBwdCA9IGFsbG9jOwo+IAo+IFdlIGhhdmUgdG8gcmVzZXQgdGhpcywgbm8/CgpZZXMsIG9idmlv
dXNseSBtaXNzZWQgYWZ0ZXIgZml4aW5nIHRoZSBwYXR0ZXJuIGZvciBnZW42LgoKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICBpZiAoIXB0KQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcHQgPSBhbGxvY19wdCh2bSk7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgaWYgKElTX0VS
UihwdCkpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIHVud2luZF9vdXQ7
Cj4gCj4gcmV0ID0gUFRSX0VSUigpOwoKU2lnaC4KVGhhbmtzLAotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
