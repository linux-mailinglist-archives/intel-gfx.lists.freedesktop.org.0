Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A21D61043E3
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 20:05:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE18A6E9E9;
	Wed, 20 Nov 2019 19:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D226E9E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 19:05:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19276953-1500050 for multiple; Wed, 20 Nov 2019 19:05:41 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191120134113.3777499-1-chris@chris-wilson.co.uk>
References: <20191120134113.3777499-1-chris@chris-wilson.co.uk>
Message-ID: <157427673825.13839.208143412992403412@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 20 Nov 2019 19:05:38 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Reduce flush_ggtt() from a
 wait-for-idle to a mere barrier flush
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjAgMTM6NDE6MTMpCj4gU2luY2Ugd2UgdXNl
IGJhcnJpZXJzLCB3ZSBuZWVkIG9ubHkgZXhwbGljaXRseSBmbHVzaCB0aG9zZSBiYXJyaWVycyB0
bwo+IGVuc3VyZSB0aGEgd2UgY2FuIHJlY2xhaW0gdGhlIGF2YWlsYWJsZSBnZ3R0IGZvciBvdXJz
ZWx2ZXMuIFRoZSBiYXJyaWVyCj4gZmx1c2ggd2FzIGltcGxpY2l0IGluc2lkZSB0aGUgaW50ZWxf
Z3Rfd2FpdF9mb3JfaWRsZSgpIC0tIGV4Y2VwdCBiZWNhdXNlCj4gd2UgdXNlIGk5MTVfZ2VtX2V2
aWN0IGZyb20gaW5zaWRlIGFuIGFjdGl2ZSB0aW1lbGluZSBkdXJpbmcgZXhlY2J1Ziwgd2UKPiBj
b3VsZCBlYXNpbHkgZW5kIHVwIHdhaXRpbmcgdXBvbiBvdXJzZWx2ZXMuCj4gCj4gRml4ZXM6IDc5
MzZhMjJkZDQ2NiAoImRybS9pOTE1L2d0OiBXYWl0IGZvciBuZXcgcmVxdWVzdHMgaW4gaW50ZWxf
Z3RfcmV0aXJlX3JlcXVlc3RzKCkiKQo+IEZpeGVzOiBhNDZiZmRjODNmZWUgKCJkcm0vaTkxNS9n
dDogV2FpdCBmb3IgbmV3IHJlcXVlc3RzIGluIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0cygpIikK
PiBUZXN0Y2FzZTogaWd0L2dlbV9leGVjX3JlbG9jL2Jhc2ljLXJhbmdlCj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpJIHRoaW5rIHdlIG1pZ2h0IGFzIHdl
bGwganVzdCByZXZlcnQgNzkzNmEyMmRkNDY2IGFuZCB0YWtlIGFub3RoZXIgbG9vawphdCBob3cg
dG8gcmVwZWF0IHRoZSB3YWl0czsgSSdtIG9wdGltaXN0aWMgdGhhdCB3aXRoCgpjb21taXQgMTY4
M2QyNGMxNDcwZmI0NzcxNmJkM2NjZDRlMDY1NDdlYjBjZTBlZApBdXRob3I6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpEYXRlOiAgIFR1ZSBOb3YgMTkgMTY6MjU6NTgg
MjAxOSArMDAwMAoKICAgIGRybS9pOTE1L2d0OiBNb3ZlIG5ldyB0aW1lbGluZXMgdG8gdGhlIGVu
ZCBvZiBhY3RpdmVfbGlzdAoKdGhlIHByb2JsZW0gKGUuZy4gaWd0L2xpdmVfbGF0ZV9ndF9wbSkg
aGFzIG1vc3RseSBldmFwb3JhdGVkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
