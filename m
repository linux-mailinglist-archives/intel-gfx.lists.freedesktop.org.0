Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4B6D135E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 17:59:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 145706E9FF;
	Wed,  9 Oct 2019 15:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E42A66E9FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 15:59:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18780085-1500050 for multiple; Wed, 09 Oct 2019 16:59:33 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191009100955.21477-2-chris@chris-wilson.co.uk>
 <20191009102622.32681-1-chris@chris-wilson.co.uk>
 <213d1f40-6199-e51c-2147-0b21d61f94e6@linux.intel.com>
In-Reply-To: <213d1f40-6199-e51c-2147-0b21d61f94e6@linux.intel.com>
Message-ID: <157063677075.18808.5602717852570533021@skylake-alporthouse-com>
Date: Wed, 09 Oct 2019 16:59:30 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: execlists->active is
 serialised by the tasklet
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0wOSAxNjo1Mzo1MykKPiAKPiBPbiAwOS8x
MC8yMDE5IDExOjI2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiArc3RhdGljIGlubGluZSB2b2lk
Cj4gPiArZXhlY2xpc3RzX2FjdGl2ZV9sb2NrKHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3Rz
ICpleGVjbGlzdHMpCj4gPiArewo+ID4gKyAgICAgdGFza2xldF9sb2NrKCZleGVjbGlzdHMtPnRh
c2tsZXQpOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW5saW5lIHZvaWQKPiA+ICtleGVjbGlz
dHNfYWN0aXZlX3VubG9jayhzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3Rz
KQo+ID4gK3sKPiA+ICsgICAgIHRhc2tsZXRfdW5sb2NrKCZleGVjbGlzdHMtPnRhc2tsZXQpOwo+
ID4gK30KPiAKPiBBZnRlciB3ZSBzdG9wIHByZXZlbnRpbmcgdGhlIHRhc2tsZXQgZnJvbSBydW5u
aW5nIHNob3VsZCB3ZSBtYXliZSBraWNrIAo+IGtzb2Z0aXJxZD8gSSBhbSB0aGlua2luZyBpZiBh
IHRhc2tsZXQgZ2V0cyBzY2hlZHVsZWQgYW5kIHJhbiBkdXJpbmcgdXMgCj4gaG9sZGluZyB0aGUg
bG9jayBoZXJlLCBpdCB3b24ndCBsb3NlIHRoZSAic2NoZWR1bGVkIiBzdGF0dXMsIGJ1dCBub3Qg
Cj4gc3VyZSBhdCB3aGF0IG5leHQgb3Bwb3J0dW5pdHkgaXQgd291bGQgZ2V0IHJlLXJ1bi4KCklm
IHdlIGNhbGwgdGFza2xldF9zY2hlZHVsZSgpIHdoaWxlIHdlIGhvbGQgdGFza2xldF9sb2NrLCBr
c29mdGlycWQgKG9uCmFub3RoZXIgdGhyZWFkLCBobW0sIHdlIG5lZWQgbG9jYWxfYmhfZGlzYWJs
ZSgpIHRvIHN0b3Agb3Vyc2VsdmVzCmVudGVyaW5nIHRoZSBzb2Z0aXJxIHByb2Nlc3NpbmcpLCB0
aGVuIHRoYXQgdGFza2xldF9hY3Rpb24gd2lsbCBzcGluIG9uCnRhc2tsZXRfdHJ5bG9jay4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
