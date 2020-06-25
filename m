Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6663E20A432
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 19:42:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD296EBF4;
	Thu, 25 Jun 2020 17:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 300466EBF4
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 17:42:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21617012-1500050 for multiple; Thu, 25 Jun 2020 18:42:45 +0100
MIME-Version: 1.0
In-Reply-To: <746b10ad-7521-78dd-9a2b-2f44b6594842@amd.com>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <CAPM=9tzY0An5THnH=+KEv35LfX0DGt9q6u=t83id6OPgFsN-LQ@mail.gmail.com>
 <159302990055.4527.16849537545776334660@build.alporthouse.com>
 <de87a30b-3ac2-1bee-4ee0-5a05baef6146@gmail.com>
 <159308931300.4527.14536354033703689604@build.alporthouse.com>
 <6d99c4d9-7294-9ce1-471a-f81de7dc2c4f@amd.com>
 <159309140216.31486.2359580281725596670@build.alporthouse.com>
 <011fe07b-1e2c-7cc2-ade8-2c8b4df80b90@gmail.com>
 <159309782319.31486.530565133539052103@build.alporthouse.com>
 <746b10ad-7521-78dd-9a2b-2f44b6594842@amd.com>
To: Christian König <christian.koenig@amd.com>, Christian König <ckoenig.leichtzumerken@gmail.com>, Dave Airlie <airlied@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159310696106.31486.9034080828697272264@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 25 Jun 2020 18:42:41 +0100
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDIwLTA2LTI1IDE2OjQ3OjA5KQo+IEFtIDI1LjA2
LjIwIHVtIDE3OjEwIHNjaHJpZWIgQ2hyaXMgV2lsc29uOgo+ID4gV2UgaGF2ZSB0aGUgREFHIG9m
IGZlbmNlcywgd2UgY2FuIHVzZSB0aGF0IGluZm9ybWF0aW9uIHRvIGF2b2lkIGFkZGluZwo+ID4g
YW4gaW1wbGljaXQgY291cGxpbmcgYmV0d2VlbiBleGVjdXRpb24gY29udGV4dHMuCj4gCj4gTm8s
IHdlIGNhbid0LiBBbmQgaXQgc291bmRzIGxpa2UgeW91IHN0aWxsIGhhdmUgbm90IHVuZGVyc3Rv
b2QgdGhlIAo+IHVuZGVybHlpbmcgcHJvYmxlbS4KPiAKPiBTZWUgdGhpcyBoYXMgbm90aGluZyB0
byBkbyB3aXRoIHRoZSBmZW5jZXMgaXRzZWxmIG9yIHRoZWlyIERBRy4KPiAKPiBXaGVuIHlvdSBk
ZXBlbmQgb24gdXNlcnNwYWNlIHRvIGRvIGFub3RoZXIgc3VibWlzc2lvbiBzbyB5b3VyIGZlbmNl
IGNhbiAKPiBzdGFydCBwcm9jZXNzaW5nIHlvdSBlbmQgdXAgZGVwZW5kaW5nIG9uIHdoYXRldmVy
IHVzZXJzcGFjZSBkb2VzLgoKSFcgZGVwZW5kZW5jeSBvbiB1c2Vyc3BhY2UgaXMgZXhwbGljaXQg
aW4gdGhlIEFCSSBhbmQgY2xpZW50IEFQSXMsIGFuZAp0aGUgZGlyZWN0IGNvbnRyb2wgdXNlcnNw
YWNlIGhhcyBvdmVyIHRoZSBIVy4KCj4gVGhpcyBpbiB0dXJuIG1lYW5zIHdoZW4gdXNlcnNwYWNl
IGNhbGxzIGEgc3lzdGVtIGNhbGwgKG9yIGRvZXMgcGFnZSAKPiBmYXVsdCkgaXQgaXMgcG9zc2li
bGUgdGhhdCB0aGlzIGVuZHMgdXAgaW4gdGhlIHJlY2xhaW0gY29kZSBwYXRoLgoKV2UgaGF2ZSBi
b3RoIHNhaWQgdGhlIHZlcnkgc2FtZSB0aGluZy4KIAo+IEFuZCB3aGlsZSB3ZSB3YW50IHRvIGF2
b2lkIGl0IGJvdGggRGFuaWVsIGFuZCBJIGFscmVhZHkgZGlzY3Vzc2VkIHRoaXMgCj4gbXVsdGlw
bGUgdGltZXMgYW5kIHdlIGFncmVlIGl0IGlzIHN0aWxsIGEgbXVzdCBoYXZlIHRvIGJlIGFibGUg
dG8gZG8gCj4gZmVuY2Ugd2FpdHMgaW4gdGhlIHJlY2xhaW0gY29kZSBwYXRoLgoKQnV0IGNhbWUg
dG8gdGhlIG9wcG9zaXRlIGNvbmNsdXNpb24uIEZvciBkb2luZyB0aGF0IHdhaXQgaGFybXMgdGhl
CnVucmVsYXRlZCBjYWxsZXIgYW5kIHRoZSByZWNsYWltIGlzIG9wcG9ydHVuaXN0aWMuIFRoZXJl
IGlzIG5vIG5lZWQgZm9yCnRoYXQgY2FsbGVyIHRvIHJlY2xhaW0gdGhhdCBwYWdlLCB3aGVuIGl0
IGNhbiBoYXZlIGFueSBvdGhlci4gV2h5IGRpZCB5b3UKZXZlbiBjaG9vc2UgdGhhdCBwYWdlIHRv
IHJlY2xhaW0/IEluZHVjaW5nIGxhdGVuY3kgaW4gdGhlIGNhbGxlciBpcyBhIGJ1ZywKaGFzIGJl
ZW4gcmVwb3J0ZWQgcHJldmlvdXNseSBhcyBhIGJ1ZywgYW5kIHN0aWxsIGNvbnNpZGVyZWQgYSBi
dWcuIFtCdXQgYXQKdGhlIGVuZCBvZiB0aGUgZGF5LCBpZiB0aGUgc3lzdGVtIGlzIG91dCBvZiBt
ZW1vcnksIHRoZW4geW91IGhhdmUgdG8gcGljawphIHZpY3RpbS5dCgo+IFNvIHdoYXQgaGFwcGVu
cyBpcyB0aGF0IHlvdSBoYXZlIGEgZGVwZW5kZW5jeSBiZXR3ZWVuIGZlbmNlIHN1Ym1pc3Npb24g
Cj4gLT4gdXNlcnNwYWNlIC0+IHJlY2xhaW0gcGF0aCAtPiBmZW5jZSBzdWJtaXNzaW9uLiBBbmQg
dGhhdCBpcyBhIGNpcmNsZSAKPiBkZXBlbmRlbmN5LCBubyBtYXR0ZXIgd2hhdCB5b3VyIERBRyBs
b29rcyBsaWtlLgoKU2lnaC4gV2UgaGF2ZSBib3RoIHNhaWQgdGhlIHZlcnkgc2FtZSB0aGluZy4K
Cj4gSW4gb3RoZXIgd29yZHMgdGhpcyB3aG9sZSBhcHByb2FjaCBkb2VzIG5vdCB3b3JrLCBpcyBh
IGNsZWFyIE5BSyBhbmQgSSAKPiBjYW4gb25seSBhZHZpc2UgRGF2ZSB0byAqbm90KiBtZXJnZSBp
dC4KCklmIHlvdSBhcmUgdGFsa2luZyBhYm91dCB0aGUgcHJveHk/IFRoZW4gaXQgbG9va3MgbGlr
ZSB0aGlzIFtpZiB5b3UKaW5zaXN0IG9uIGhhdmluZyB0aGF0IHdhaXQgaW4gdGhlIHJlY2xhaW1d
CjEuIHVzZXJzcGFjZSBzdWJtaXRzIHJlcXVlc3QsIHdhaXRpbmcgZm9yIHRoZSBmdXR1cmUKMi4g
b3RoZXIgdGhyZWFkIHRoYXQgaXMgZHVlIHRvIHNpZ25hbCwgZW50ZXJzIGtlcm5lbCwgaGl0cyBk
aXJlY3QgcmVjbGFpbSwKd2FpdHMgZm9yIHRoZSBmdXR1cmUgZmVuY2UgW2JlY2F1c2UgeW91IGlu
c2lzdCBvbiB0aGlzIHdoZW4gaXQgaXMgbm90Cm5lY2Vzc2FyeSBhbmQgaXMgYSB1bmJvdW5kZWQg
bGF0ZW5jeSBpc3N1ZSBmb3IgZ2VuZXJhbCBjYXNlc10sCjEuIHRpbWVzIG91dAoKdnMKCjEuIHVz
ZXJzcGFjZSBzdWJtaXRzIHdhaXQtZm9yLXN1Ym1pdDsgYmxvY2tzCjIuIG90aGVyIHRocmVhZCBl
bnRlcnMga2VybmVsIGFuZCB3YWl0cyBmb3IgcmVjbGFpbSBvbiBhbm90aGVyIGFyYml0cmFyeQpm
ZW5jZSwgb3IgYW55dGhpbmcsIGNvdWxkIGV2ZW4gYmUgd2FpdGluZyBmb3IgYSBzaWduYWwgZnJv
bSAxLgoxLiB0aW1lcyBvdXQKCgpVc2Vyc3BhY2UgZGlyZWN0bHkgY29udHJvbHMgZmVuY2Ugc2ln
bmFsaW5nLiBBbnkgd2FpdCB3aGF0c29ldmVyIGNvdWxkCmJlIGEgZGVhZGxvY2sgb24gYSByZXNv
dXJjZSB0aGF0IGlzIG91dHNpZGUgb2Ygb3VyIFtpbW1lZGlhdGVdIGNvbnRyb2wuCkZ1cnRoZXIg
aWYgdGhhdCB3YWl0IGlzIHVuZGVybmVhdGggYSBtdXRleCBvciBvdGhlciBzZW1hcGhvcmUgdGhh
dCBpdApjYW4gY2F1c2UgYW5vdGhlciBjbGllbnQgdG8gY29udGVuZCB3aXRoLCBpdCBpcyBub3cg
YWJsZSB0byBpbmplY3QgaXRzCmRlYWRsb2NrIGludG8gYW4gd2l0dGluZyBwYXJ0bmVyLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
