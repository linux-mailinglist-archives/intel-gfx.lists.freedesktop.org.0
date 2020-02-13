Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FE615C9F6
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 19:07:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A992F6E384;
	Thu, 13 Feb 2020 18:07:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959246E384
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 18:07:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20215498-1500050 for multiple; Thu, 13 Feb 2020 18:07:41 +0000
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200213175756.GH13686@intel.com>
References: <20200213154759.3641671-1-chris@chris-wilson.co.uk>
 <20200213175756.GH13686@intel.com>
Message-ID: <158161725847.4660.9855429032119530045@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 13 Feb 2020 18:07:38 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Ensure 'ENABLE_BOOT_FETCH' is
 enabled before ppGTT
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

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDItMTMgMTc6NTc6NTYpCj4gT24gVGh1LCBG
ZWIgMTMsIDIwMjAgYXQgMDM6NDc6NTlQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
Q3J5cHRpYyBub3RlcyBpbiBic3BlYyBzYXkgdGhhdCAiVGhlIE1CQyBEcml2ZXIgQm9vdCBFbmFi
bGUgYml0IGluIE1CQ1RMCj4gPiByZWdpc3RlciBtdXN0IGJlIHNldCBiZWZvcmUgdGhpcyByZWdp
c3RlciBpcyB3cml0dGVuIHRvIHVwb24gYm9vdCB1cAo+ID4gKGluY2x1ZGluZyBTMyBleGl0KS4i
Cj4gPiAKPiA+IFdlIHRyaWVkIGFkZGluZyBpdCB0byBvdXIgbGlzdCBvZiB2ZXJpZmllZCB3b3Jr
YXJvdW5kcywgYnV0IG91cgo+ID4gc2VsZiBjaGVja3Mgc3BvdCB0aGF0IHRoZSBiaXQgZG9lcyBu
b3Qgc3RpY2suIEl0J3Mgb25seSBtZWFudCB0byBiZQo+ID4gY2xlYXJlZCBhZnRlciBhIEZMUi4g
QXMgaXQgZmFpbHMgb3VyIHZlcmlmaWNhdGlvbiwganVzdCBibGluZGx5IGFwcGx5Cj4gPiB0aGUg
Yml0IHByaW9yIHRvIGxvYWRpbmcgdGhlIHBwR1RULgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IGNjOiBNaWthIEt1b3Bw
YWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jIHwgMyArKysKPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jCj4gPiBpbmRleCBmNzBiOTAzYTk4YmMu
LmU0MWEzMjlkNDM1YSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jpbmdfc3VibWlzc2lvbi5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yaW5nX3N1Ym1pc3Npb24uYwo+ID4gQEAgLTY0Miw2ICs2NDIsOSBAQCBzdGF0aWMgdm9p
ZCBzZXRfcHBfZGlyKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiA+ICAgICAgIGlm
ICh2bSkgewo+ID4gICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQgPSBpOTE1
X3ZtX3RvX3BwZ3R0KHZtKTsKPiA+ICAKPiA+ICsgICAgICAgICAgICAgaW50ZWxfdW5jb3JlX3Jt
dyhlbmdpbmUtPnVuY29yZSwgR0VONl9NQkNUTCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAwLCBHRU42X01CQ1RMX0VOQUJMRV9CT09UX0ZFVENIKQo+IAo+IFdhc24ndCBzZXR0
aW5nIHRoaXMgYml0IGltcGxpY2F0ZWQgaW4gc29tZSByZWdyZXNzaW9ucyBsb25nIGFnbz8KCmNv
bW1pdCAzNDE0Y2FmNjM0MjE3NjJlNTdiMjZhYTk5OWU1MTg3YjQyZWUxNjA2CkF1dGhvcjogSmVz
c2UgQmFybmVzIDxqYmFybmVzQHZpcnR1b3VzZ2Vlay5vcmc+CkRhdGU6ICAgV2VkIEF1ZyAyMSAw
ODowODo1NSAyMDEzIC0wNzAwCgogICAgZHJtL2k5MTU6IGRyb3AgV2FNYmNEcml2ZXJCb290RW5h
YmxlIHdvcmthcm91bmQKCiAgICBUdXJucyBvdXQgdGhlIEJJT1Mgd2lsbCBkbyB0aGlzIGZvciB1
cyBhcyBuZWVkZWQsIGFuZCBpZiB3ZSB0cnkgdG8gZG8gaXQKICAgIGFnYWluIHdlIHJpc2sgaGFu
Z3Mgb3Igb3RoZXIgYmFkIGJlaGF2aW9yLgoKICAgIE5vdGUgdGhhdCB0aGlzIHNlZW1zIHRvIGJy
ZWFrIGxpYnZhIG9uIENocm9tZU9TIGFmdGVyIHJlc3VtZXMgKGJ1dAogICAgc3RyYW5nZWx5IF9u
b3RfIGFmdGVyIGJvb3RpbmcgdXApLgoKICAgIFRoaXMgZXNzZW50aWFsbHkgcmV2ZXJ0cwoKICAg
IGNvbW1pdCBiNGFlM2YyMmQyMzg2MTdjYTExNjEwYjI5ZmRlMTZjZjhjMGJjNmUwCiAgICBBdXRo
b3I6IEplc3NlIEJhcm5lcyA8amJhcm5lc0B2aXJ0dW91c2dlZWsub3JnPgogICAgRGF0ZTogICBU
aHUgSnVuIDE0IDExOjA0OjQ4IDIwMTIgLTA3MDAKCiAgICAgICAgZHJtL2k5MTU6IGxvYWQgYm9v
dCBjb250ZXh0IGF0IGRyaXZlciBpbml0IHRpbWUKCiAgICBhbmQKCiAgICBjb21taXQgYjNiZjA3
NjY5N2E2OGE4NTc3ZjRhNWY3NDA3ZGUwYmIyYjNiNTZhYwogICAgQXV0aG9yOiBQYXVsbyBaYW5v
bmkgPHBhdWxvLnIuemFub25pQGludGVsLmNvbT4KICAgIERhdGU6ICAgVHVlIE5vdiAyMCAxMzoy
Nzo0NCAyMDEyIC0wMjAwCgogICAgICAgIGRybS9pOTE1OiBpbXBsZW1lbnQgV2FNYmNEcml2ZXJC
b290RW5hYmxlIG9uIEhhc3dlbGwKCiAgICBTaWduZWQtb2ZmLWJ5OiBKZXNzZSBCYXJuZXMgPGpi
YXJuZXNAdmlydHVvdXNnZWVrLm9yZz4KICAgIFJlcG9ydGVkLWFuZC1UZXN0ZWQtYnk6IFN0w6lw
aGFuZSBNYXJjaGVzaW4gPG1hcmNoZXVAY2hyb21pdW0ub3JnPgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
