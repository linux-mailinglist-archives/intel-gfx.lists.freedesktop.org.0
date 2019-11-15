Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D7DFDEE8
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 14:28:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 027EA6E5F3;
	Fri, 15 Nov 2019 13:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97A626E5F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 13:28:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19212947-1500050 for multiple; Fri, 15 Nov 2019 13:28:45 +0000
MIME-Version: 1.0
To: Imre Deak <imre.deak@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157382412443.11997.4083022821574405859@skylake-alporthouse-com>
References: <20191115122343.821331-1-chris@chris-wilson.co.uk>
 <20191115131143.GC22793@ideak-desk.fi.intel.com>
 <20191115131530.GD22793@ideak-desk.fi.intel.com>
 <157382412443.11997.4083022821574405859@skylake-alporthouse-com>
Message-ID: <157382452276.11997.129957794077128939@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 15 Nov 2019 13:28:42 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Mention which device failed
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTUgMTM6MjI6MDQpCj4gUXVvdGluZyBJbXJl
IERlYWsgKDIwMTktMTEtMTUgMTM6MTU6MzApCj4gPiBPbiBGcmksIE5vdiAxNSwgMjAxOSBhdCAw
MzoxMTo0M1BNICswMjAwLCBJbXJlIERlYWsgd3JvdGU6Cj4gPiA+IE9uIEZyaSwgTm92IDE1LCAy
MDE5IGF0IDEyOjIzOjQzUE0gKzAwMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+ID4gPiBXaGVu
IHRlbGxpbmcgdGhlIHVzZXIgdGhhdCBkZXZpY2UgcG93ZXIgbWFuYWdlbWVudCBpcyBkaXNhYmxl
ZCwgaXQgaXMKPiA+ID4gPiBoZWxwZnVsIHRvIHNheSB3aGljaCBkZXZpY2UgdGhhdCB3YXMuIEF0
IHRoZSBzYW1lIHRpbWUsIHdoaWxlIGl0IGlzIGEKPiA+ID4gPiBtZXJlIGluY29udmVuaWVuY2Ug
dG8gdGhlIHVzZXIsIGl0IGlzIGRldmFzdGF0aW5nIHRvIENJIGFzIHRoaXMgYW5kCj4gPiA+ID4g
ZnV0dXJlIHRlc3RzIG1heSBmYWlsIG91dCBvZiB0aGUgYmx1ZS4KPiA+ID4gPiAKPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+
ID4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29t
Pgo+ID4gPiA+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gPiA+IAo+ID4g
PiBSZXZpZXdlZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+ID4gCj4gPiBB
bHRob3VnaCB3ZSB3b3VsZCBuZWVkIGEgd2F5IHRvIHRlc3QgcmVjb3ZlcnkgLSB3aGljaCB3ZSBh
IGhhdmUgYQo+ID4gdGVzdGNhc2UgZm9yIC0gc28gdGFpbnRpbmcgZm9yIHRoYXQgY2FzZSBpcyBu
b3Qgb2suCj4gCj4gWW91IHB1dCB0aGF0IHRlc3QgYXQgdGhlIGVuZCBvZiB0aGUgcXVldWUuIEZ3
aXcsIHdlIGRvbid0IHNlZW0gdG8gc2VlCj4gdGhlIGNvcnJ1cHQgc3RhdGUgYWNyb3NzIGEgbW9k
dWxlIHJlbG9hZDsgZWl0aGVyIHRoYXQgb3IgSSBhbSBibGluZC4KCkkgZ3Vlc3MgeW91IHdvdWxk
IHByZWZlciBhIGRlYnVnZnMuLi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
