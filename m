Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1E07D6F0
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 10:08:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A65A6E3C4;
	Thu,  1 Aug 2019 08:08:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59DA16E3C4
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 08:08:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17780257-1500050 for multiple; Thu, 01 Aug 2019 09:08:07 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190731140733.23373-1-lionel.g.landwerlin@intel.com>
 <20190731140733.23373-3-lionel.g.landwerlin@intel.com>
 <156460343987.15787.2880473369100261078@skylake-alporthouse-com>
 <6627af91-1f1c-c0ae-7526-25408ae86811@intel.com>
In-Reply-To: <6627af91-1f1c-c0ae-7526-25408ae86811@intel.com>
Message-ID: <156464688459.2512.18044771787416479897@skylake-alporthouse-com>
Date: Thu, 01 Aug 2019 09:08:04 +0100
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915: add syncobj timeline
 support
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wOC0wMSAwODo0MzoyNCkKPiBPbiAzMS8w
Ny8yMDE5IDIzOjAzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA3LTMxIDE1OjA3OjMzKQo+ID4gSSB0aGluayBJIGhhdmUgY29udmluY2Vk
IG15c2VsZiB0aGF0IHdpdGggdGhlIHNwbGl0IGJldHdlZW4gd2FpdCBiZWZvcmUsCj4gPiBzaWdu
YWwgYWZ0ZXIgY29tYmluZWQgd2l0aCB0aGUgcnVsZSB0aGF0IHNlcW5vIHBvaW50IGFsb25nIHRo
ZSBzeW5jb2JqCj4gPiBhcmUgbW9ub3RvbmljLCB5b3Ugc2hvdWxkIG5vdCBiZSBhYmxlIHRvIGdl
bmVyYXRlIGFuIEFCLUJBIGRlYWRsb2NrCj4gPiBiZXR3ZWVuIGNvbmN1cnJlbnQgY2xpZW50cy4K
PiA+Cj4gPiBFeGNlcHQgdGhhdCB3ZSBuZWVkIHRvIGZpeHVwIGRybV9zeW5jb2JqX2FkZF9wb2lu
dCgpIHRvIGFjdHVhbGx5IGFwcGx5Cj4gPiB0aGF0IHJ1bGUuIFRocm93aW5nIGFuIGVycm9yIGFu
ZCBsZWF2aW5nIHRoZSBjbGllbnQgc3R1Y2sgaXMgbGVzcyB0aGFuCj4gPiBpZGVhbCwgd2UgY2Fu
J3QgZXZlbiByZWNvdmVyIHdpdGggYSBHUFUgcmVzZXQsIGFuZCBhcyB0aGV5IGFyZSBuYXRpdmUK
PiA+IGZlbmNlcyB3ZSBkb24ndCBlbXBsb3kgYSBmYWlsc2FmZSB0aW1lci4KPiAKPiAKPiBVbmZv
cnR1bmF0ZWx5IHdlJ3JlIG5vdCB0aGUgb25seSB1c2VyIG9mIGFkZF9wb2ludCgpIGFuZCBhbWRn
cHUgZG9lc24ndCAKPiB3YW50IGl0IHRvIGZhaWwuCgpJdCdzIGRhbmdlcm91c2x5IGV4cG9zaW5n
IHRoZSBkZWFkbG9jayBmcm9tIGluY29ycmVjdCBzZXFubyBvcmRlcmluZyB0bwp1c2Vyc3BhY2Uu
IFdlIHNob3VsZCBiZSBhYmxlIHRvIGhpdCB0aGF0IERSTV9FUlJPUigpIGluIHRlc3RpbmcsIGFu
ZCBiZQphYmxlIHRvIGRldGVjdCB0aGUgb3V0LW9mLXNlcXVlbmNlIHRpbWVsaW5lLgoKPiBCZXN0
IEkgY2FuIGNvbWUgdXAgd2l0aCBpcyB0YWtlIHRoZSBzeW5jb2JqIGxvY2sgd2hlbiBzaWduYWxp
bmcgaW4gCj4gZ2V0X3RpbWVsaW5lX2ZlbmNlX2FycmF5KCkgZG8gdGhlIGNoZWNrIHRoZXJlLCB1
bmxvY2sgaW4gX19mcmVlX2ZlbmNlX2FycmF5LgoKSSB0aGluayB0aGUgaW50ZXJtZWRpYXRlIHN0
ZXAgaXMgYSAic2FmZSIgdmVyc2lvbiBvZiBhZGRfcG9pbnQgdGhhdApkb2Vzbid0IGxlYXZlIHRo
ZSB0aW1lbGluZSBicm9rZW4uIFRoYXQgc3RpbGwgbGVhdmVzIGEgZ2xpdGNoIHZpc2libGUgdG8K
dXNlcnNwYWNlLCBidXQgaXQgc2hvdWxkIG5vdCBkZWFkbG9jay4KClRoZSB3YXkgSSB3YXMgbG9v
a2luZyBhdCBpdCB3YXMgdG8gcmVzZXJ2ZSBhIHBsYWNlaG9sZGVyIHN5bmNwdCBiZWZvcmUKYnVp
bGRpbmcgdGhlIHJlcXVlc3QgYW5kIGFsbG93IHJlcGxhY2luZyB0aGUgcGxhY2Vob2xkZXIgYWZ0
ZXJ3YXJkcy4KCklmIHdlIGFib3J0IHRoZSBzdWJtaXNzaW9uIHBhcnQgd2F5LCB3ZSBsZWF2ZSB0
aGUgcGxhY2Vob2xkZXIgaW4gdGhlCnRpbWVsaW5lIHRvIGJlIHJlcGxhY2VkIGxhdGVyLCBvciBz
dWJzdW1lZCBieSBhIGxhdGVyIHN5bmNwdC4KCj4gPiBEb2Vzbid0IFdBSVRfRk9SX1NVQk1JVCB0
aHJvdyBhIHNwYW5uZXIgaW4gdGhlIHdvcmtzIGFuZCBhbGxvdyBmb3IKPiA+IGRlYWRsb2Nrcz8K
PiAKPiAKPiBIbS4uLiBJIGNhbid0IHNlZSBob3cuCj4gCj4gVW5sZXNzIHlvdSBtZWFuIGNsaWVu
dHMgY291bGQgZGVhZGxvY2sgdGhlbSB0aGVtc2VsdmVzIHRoZSBzYW1lIHdheSBpdCAKPiB3b3Vs
ZCB1c2luZyAyIHB0aHJlYWRfbXV0ZXggYW5kIGhhdmluZyAyIHRocmVhZHMgdHJ5aW5nIHRvIGxv
Y2sgYm90aCAKPiBtdXRleGVzIGluIG9wcG9zaXRlIG9yZGVyLgoKWWVzLgogCj4gSXMgaXQgdGhh
dCB0aGUga2VybmVsJ3MgcHJvYmxlbT8KCkl0IGJlY29tZXMgYSBwcm9ibGVtIGZvciB1cyBhcyBp
dCB0aWVzIHVwIGtlcm5lbCByZXNvdXJjZXMgdGhhdCB3ZSBjYW4Kbm90IHJlYXAgY3VycmVudGx5
LiBVc2Vyc3BhY2UgaXMgbm90IG1lYW50IHRvIGJlIGFibGUgdG8gYnJlYWsgdGhlCmtlcm5lbCBv
biBhIHdoaW0uICBFdmVuIGZ1dGV4ZXMgYXJlIHJvYnVzdC4gOykKLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
