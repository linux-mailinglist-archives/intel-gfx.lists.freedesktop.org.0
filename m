Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BFE4A87D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 19:34:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC066E160;
	Tue, 18 Jun 2019 17:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3DEE6E160
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 17:34:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16944195-1500050 for multiple; Tue, 18 Jun 2019 18:34:31 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190618161951.28820-1-chris@chris-wilson.co.uk>
 <20190618161951.28820-2-chris@chris-wilson.co.uk>
 <3447e344-dad7-6812-b56f-3d1ea79b380e@linux.intel.com>
In-Reply-To: <3447e344-dad7-6812-b56f-3d1ea79b380e@linux.intel.com>
Message-ID: <156087927178.31375.16808457191405123141@skylake-alporthouse-com>
Date: Tue, 18 Jun 2019 18:34:31 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Don't dereference request if
 it may have been retired
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xOCAxNzo1ODowMikKPiAKPiBPbiAxOC8w
Ni8yMDE5IDE3OjE5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUaGlzIGhhcyBjb3VudCBtZSBv
dXQgb24gY291bnRsZXNzIG9jY2FzaW9ucywgd2hlbiB3ZSByZXRyaWV2ZSBhIHBvaW50ZXIKPiA+
IGZyb20gdGhlIHN1Ym1pc3Npb24vZXhlY2xpc3RzIGJhY2tlbmQsIGl0IGRvZXMgbm90IGNhcnJ5
IGEgcmVmZXJlbmNlIHRvCj4gPiB0aGUgY29udGV4dCBvciByaW5nLiBUaG9zZSBhcmUgb25seSBw
aW5uZWQgd2hpbGUgdGhlIHJxdWVzdCBpcyBhY3RpdmUsCj4gPiBzbyBpZiB3ZSBzZWUgdGhlIHJl
cXVlc3QgaXMgY29tcGxldGVkLCBpdCBtYXkgYmUgaW4gdGhlIHByb2Nlc3Mgb2YgYmVpbmcKPiA+
IHJldGlyZWQgYW5kIHRob3NlIHBvaW50ZXJzIGRlZnVuY3QuCj4gPiAKPiA+IEJ1Z3ppbGxhOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA5MzgKPiA+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpbc25p
cF0KPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KClRoYW5rcyBmb3IgdGhlIHF1aWNrIHJldmlldywgcHVzaGVkIHRvIHNlZSBpZiBDSSB3YWtl
cyB1cCBoYXBweSBpbiB0aGUKbW9ybmluZy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
