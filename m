Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5A43B7E2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 16:57:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35148914B;
	Mon, 10 Jun 2019 14:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5750B890F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 14:57:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16853821-1500050 for multiple; Mon, 10 Jun 2019 15:57:38 +0100
MIME-Version: 1.0
To: Imre Deak <imre.deak@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190610144013.GE9909@ideak-desk.fi.intel.com>
References: <20190610133413.21460-1-chris@chris-wilson.co.uk>
 <20190610144013.GE9909@ideak-desk.fi.intel.com>
Message-ID: <156017865689.383.7071518798713278526@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 10 Jun 2019 15:57:36 +0100
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/icl: More workaround for
 port F detection due to broken VBTs"
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

UXVvdGluZyBJbXJlIERlYWsgKDIwMTktMDYtMTAgMTU6NDA6MTMpCj4gT24gTW9uLCBKdW4gMTAs
IDIwMTkgYXQgMDI6MzQ6MTNQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gVGhpcyBy
ZXZlcnRzIGNvbW1pdCAxYWEzNzUwODg1ZmJjZWNlNWEwYzllNmJiY2QwMTRhYzUyNmNlYTQxLgo+
ID4gCj4gPiBSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTA4ODIKPiAKPiBIb3cgaXMgaXQgcmVsYXRlZD8gTm9uZSBvZiB0aGUgYWJvdmUg
YnVnIHJlcG9ydHMgYXJlIGFib3V0IGEgMHg4QTVECj4gYm94LiAweDhBNTYgaXMgb25lIGFuZCAw
eDhBNUEgaXMgdGhlIG90aGVyLgoKSnVzdCBjb2luY2lkZWQgd2l0aCB0aGUgcmVncmVzc2lvbi4g
VG9taSBoYXMgcmUtcnVuIENJX0RSTV82MDc3IGFuZCB0aGF0CnJlcHJvZHVjZWQgdGhlIHNhbWUg
ZmFpbHVyZXMgYXMgdGlwLCBzbyB3ZSBoYXZlIHJ1bGVkIG91dCBhIGtlcm5lbApyZWdyZXNzaW9u
IGZvciB0aGUgdGltZSBiZWluZy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
