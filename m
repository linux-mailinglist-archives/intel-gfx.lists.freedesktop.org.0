Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5097107FC3
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Nov 2019 19:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBBE96E084;
	Sat, 23 Nov 2019 18:05:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA3646E084
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Nov 2019 18:05:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19313651-1500050 for multiple; Sat, 23 Nov 2019 18:05:33 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191123174946.891350-1-chris@chris-wilson.co.uk>
References: <20191123110330.874616-1-chris@chris-wilson.co.uk>
 <20191123174946.891350-1-chris@chris-wilson.co.uk>
Message-ID: <157453232980.2524.6398502787178296356@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 23 Nov 2019 18:05:29 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Mark the execlists->active as
 the primary volatile access
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjMgMTc6NDk6NDYpCj4gU2luY2Ugd2Ugd2Fu
dCB0byBkbyBhIGxvY2tsZXNzIHJlYWQgb2YgdGhlIGN1cnJlbnQgYWN0aXZlIHJlcXVlc3QsIGFu
ZAo+IHRoYXQgcmVxdWVzdCBpcyB3cml0dGVuIHRvIGJ5IHByb2Nlc3NfY3NiIGFsc28gd2l0aG91
dCBzZXJpYWxpc2F0aW9uLCB3ZQo+IG5lZWQgdG8gaW5zdHJ1Y3QgZ2NjIHRvIHRha2UgY2FyZSBp
biByZWFkaW5nIHRoZSBwb2ludGVyIGl0c2VsZi4KPiAKPiBPdGhlcndpc2UsIHdlIGhhdmUgb2Jz
ZXJ2ZWQgZXhlY2xpc3RzX2FjdGl2ZSgpIHRvIHJlcG9ydCAweDQwLgo+IAo+IFsgMjQwMC43NjAz
ODFdIGlndC9wYXJhLTQwOTggICAgMS4ucy4gMjM3NjQ3OTMwMHVzIDogcHJvY2Vzc19jc2I6IHJj
czAgY3MtaXJxIGhlYWQ9MywgdGFpbD00Cj4gWyAyNDAwLjc2MDgyNl0gaWd0L3BhcmEtNDA5OCAg
ICAxLi5zLiAyMzc2NDc5MzAzdXMgOiBwcm9jZXNzX2NzYjogcmNzMCBjc2JbNF06IHN0YXR1cz0w
eDAwMDAwMDAxOjB4MDAwMDAwMDAKPiBbIDI0MDAuNzYxMjcxXSBpZ3QvcGFyYS00MDk4ICAgIDEu
LnMuIDIzNzY0NzkzMDZ1cyA6IHRyYWNlX3BvcnRzOiByY3MwOiBwcm9tb3RlIHsgYjljNTk6MjYy
MiwgYjljNTU6MjYyNCB9Cj4gWyAyNDAwLjc2MTcyNl0gaWd0L3BhcmEtNDA5NyAgICAwZC4uLiAy
Mzc2NDc5MzExdXMgOiBfX2k5MTVfc2NoZWR1bGU6IHJjczA6IC0yMTQ3NDgzNjQ4LT4zLCBpbmZs
aWdodDowMDAwMDAwMDAwMDAwMDQwLCBycTpmZmZmODg4MjA4YzFlOTQwCj4gCj4gd2hpY2ggaXMg
aW1wb3NzaWJsZSEKPiAKRml4ZXM6IGRmNDAzMDY5MDI5ZCAoImRybS9pOTE1L2V4ZWNsaXN0czog
TGlmdCBwcm9jZXNzX2NzYigpIG91dCBvZiB0aGUgaXJxLW9mZiBzcGlubG9jayIpCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
