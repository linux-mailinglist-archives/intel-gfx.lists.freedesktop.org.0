Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D590791FF3
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 11:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A396E0D1;
	Mon, 19 Aug 2019 09:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CD286E0D1;
 Mon, 19 Aug 2019 09:20:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18186192-1500050 for multiple; Mon, 19 Aug 2019 10:20:24 +0100
MIME-Version: 1.0
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190819091526.21821.64867@emeril.freedesktop.org>
References: <20190819075835.20065-1-chris@chris-wilson.co.uk>
 <20190819091526.21821.64867@emeril.freedesktop.org>
Message-ID: <156620642179.1374.9891932594428923122@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 19 Aug 2019 10:20:21 +0100
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/18=5D_drm/i915=3A_Always_wrap_the_ring_?=
 =?utf-8?q?offset_before_resetting?=
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

UXVvdGluZyBQYXRjaHdvcmsgKDIwMTktMDgtMTkgMTA6MTU6MjYpCj4gUG9zc2libGUgbmV3IGlz
c3Vlcwo+IC0tLS0tLS0tLS0tLS0tLS0tLS0KPiAKPiAgIEhlcmUgYXJlIHRoZSB1bmtub3duIGNo
YW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0MDc4Ogo+
IAo+ICMjIyBJR1QgY2hhbmdlcyAjIyMKPiAKPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMj
IyMKPiAgICogaWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLWNwdS1ndHQ6Cj4gICAgIC0gZmktc25i
LTI1MjBtOiAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLVdBUk5dWzRdCj4gICAgWzNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NzM0L2ZpLXNuYi0y
NTIwbS9pZ3RAZ2VtX2V4ZWNfcmVsb2NAYmFzaWMtY3B1LWd0dC5odG1sCj4gICAgWzRdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDA3OC9maS1z
bmItMjUyMG0vaWd0QGdlbV9leGVjX3JlbG9jQGJhc2ljLWNwdS1ndHQuaHRtbAoKVGhhdCdzIHRo
ZSBsYWNrIG9mIGxpZnRpbmcgdm1hLT5vcHMtPnNldF9wYWdlcygpLgpQYXJ0aWFsL3JvdGF0ZWQv
cmVtYXBwZWQgcGFnZXMgcmVxdWlyZSBhbGxvY2F0aW9ucy4KCj4gICAqIGlndEBnZW1fcmVuZGVy
X2xpbmVhcl9ibGl0c0BiYXNpYzoKPiAgICAgLSBmaS1id3ItMjE2MDogICAgICAgIFtQQVNTXVsx
NV0gLT4gW0ZBSUxdWzE2XSArNyBzaW1pbGFyIGlzc3Vlcwo+ICAgIFsxNV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MzQvZmktYndyLTIxNjAvaWd0
QGdlbV9yZW5kZXJfbGluZWFyX2JsaXRzQGJhc2ljLmh0bWwKPiAgICBbMTZdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDA3OC9maS1id3ItMjE2
MC9pZ3RAZ2VtX3JlbmRlcl9saW5lYXJfYmxpdHNAYmFzaWMuaHRtbAoKTm90IHN1cmUgd2hhdCdz
IHVwc2V0dGluZyBCcm9hZHdhdGVyLiBIbW0sIHdlIGFyZSByZWFycmFuZ2luZyB0aGUgUFRFCndy
aXRlcyB0byBiZSBhZnRlciB0aGUgZXhlY2J1ZiBjaGlwc2V0L2d0dC1mbHVzaCBub3cuIENvdWxk
IGJlLgoKPiAgICogaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYzoKPiAgICAgLSBm
aS1pdmItMzc3MDogICAgICAgIFtQQVNTXVs2MV0gLT4gW0RNRVNHLVdBUk5dWzYyXQo+ICAgIFs2
MV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY3MzQv
ZmktaXZiLTM3NzAvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCj4gICAg
WzYyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQwNzgvZmktaXZiLTM3NzAvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1s
CgpTaWdoLCBJIHdhcyB0cnlpbmcgdG8gc2F2ZSB0aGUgZGlzcGxheSBjaGFuZ2VzIGZvciBhIGxh
dGVyIHBhdGNoLiBMb29rcwpsaWtlIEkgbWlzc2VkIGEgcGF0aCB0byB2bS0+bXV0ZXggYW5kIHNv
IHRoZXkgbmVlZCBjb252ZXJ0aW5nIGF0IHRoZSBzYW1lIHRpbWUuCi1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
