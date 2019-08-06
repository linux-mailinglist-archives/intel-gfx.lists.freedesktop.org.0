Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 120A682FCB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 12:37:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E996E340;
	Tue,  6 Aug 2019 10:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F38566E340
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 10:37:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17903182-1500050 for multiple; Tue, 06 Aug 2019 11:36:58 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <cover.1565085691.git.jani.nikula@intel.com>
References: <cover.1565085691.git.jani.nikula@intel.com>
Message-ID: <156508781641.2892.9805858219316342@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 06 Aug 2019 11:36:56 +0100
Subject: Re: [Intel-gfx] [PATCH 00/10] drm/i915: some more header juggling
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wOC0wNiAxMTowNzoyMSkKPiBUaGUgYmlnIHRoZW1l
IGhlcmUgaXMgdG8gZW1waGFzaXplIHRoYXQgaW50ZWxfZHJ2LmggaXMgYSBkaXNwbGF5IGhlYWRl
ciwgc28KPiByZW5hbWUgaXQgZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYW5kIHJlZHVj
ZSBpdHMgdXNlIGluIG5vbi1kaXNwbGF5Cj4gY29kZS4gQWxzbyByZWR1Y2UgdGhlIGluY2x1c2lv
biBvZiB0aGF0IGFuZCB0aGUgb3RoZXIgbWVnYSBoZWFkZXIgaTkxNV9kcnYuaAo+IGZyb20gb3Ro
ZXIgaGVhZGVycy4KPiAKPiBCUiwKPiBKYW5pLgo+IAo+IAo+IEphbmkgTmlrdWxhICgxMCk6Cj4g
ICBkcm0vaTkxNTogbW92ZSBpbnRlbF9kaXNwbGF5LmMgZnVuY3Rpb24gZGVjbGFyYXRpb25zCj4g
ICBkcm0vaTkxNS9zcHJpdGU6IHVuLWlubGluZSBpY2xfaXNfaGRyX3BsYW5lKCkKPiAgIGRybS9p
OTE1L2lycTogdW4taW5saW5lIGZ1bmN0aW9ucyB0byBhdm9pZCBpOTE1X2Rydi5oIGluY2x1ZGUK
PiAgIGRybS9pOTE1L2J3OiBtYWtlIGludGVsX2F0b21pY19nZXRfYndfc3RhdGUoKSBzdGF0aWMK
PiAgIGRybS9pOTE1L21zdDogdW4taW5saW5lIGludGVsX2RwX21zdF9lbmNvZGVyX2FjdGl2ZV9s
aW5rcygpCj4gICBkcm0vaTkxNS90YzogdW4taW5saW5lIGludGVsX3RjX3BvcnRfcmVmX2hlbGQo
KQo+ICAgZHJtL2k5MTU6IGF2b2lkIGluY2x1ZGluZyBpbnRlbF9kcnYuaCB2aWEgaTkxNV9kcnYu
aC0+aTkxNV90cmFjZS5oCj4gICBkcm0vaTkxNTogcmVuYW1lIGludGVsX2Rydi5oIHRvIGRpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gICBkcm0vaTkxNTogcmVtb3ZlIHVubmVjZXNzYXJ5
IGluY2x1ZGVzIG9mIGludGVsX2Rpc3BsYXlfdHlwZXMuaCBoZWFkZXIKPiAgIGRybS9pOTE1OiBt
b3ZlIHByb3BlcnR5IGVudW1zIHRvIGludGVsX2Rpc3BsYXlfdHlwZXMuaAoKQSBmZXcgbW9tZW50
cyBvZiBleGFzcGVyYXRpb24gb2YgIndlIHVzZSB0aGF0IHRoZXJlIT8iLCBidXQgbG9va3MgYWxs
CmRhbmR5LiBJIGRpZG4ndCBzcG90IGFueXRoaW5nIG90aGVyIHRoYW4gbWVjaGFuaWNhbCB0cmFu
c2xhdGlvbnMgYW5kIEkKYWdyZWUgd2l0aCB0aGUgZGlyZWN0aW9uLAoKUmV2aWV3ZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
