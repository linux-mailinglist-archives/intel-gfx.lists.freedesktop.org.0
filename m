Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79069582FC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 14:55:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE4C6E245;
	Thu, 27 Jun 2019 12:55:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AEF36E245;
 Thu, 27 Jun 2019 12:55:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17044627-1500050 for multiple; Thu, 27 Jun 2019 13:55:35 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190627122552.10255-1-tvrtko.ursulin@linux.intel.com>
References: <20190627122552.10255-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <156164013297.9225.10934065837156612436@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Jun 2019 13:55:33 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib/i915: Use engine
 discovery in gem_test_engines
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0yNyAxMzoyNTo1MikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IElmIHJlcXVlc3QgaXMg
dG8gdmVyaWZ5IGFsbCBlbmdpbmVzIHdvcmssIHVzZSB0aGUgbmV3IGVuZ2luZSBkaXNjb3Zlcnkg
QVBJCj4gc28gd2UgY2FuIGFjdHVhbGx5IHRlc3QgYWxsLgo+IAo+IFRoZXJlIGlzIGEgc3BvcmFk
aWMgYW5kIG15c3RlcmlvdXMsIHBvc3NpYmx5IG1lbW9yeSBjb3JydXB0aW9uIGlzc3VlCj4gc3Vy
cm9uZGluZyB0aGlzIGFyZWEgc28gbGV0cyBzZWUgaWYgdGhpcyBjaGFuZ2VzIHRoZSBwYXR0ZXJu
LgoKV2hpbGUgSSBkbyBub3QgdGhpbmsgdGhlIHB1cmVseSBvbi1zdGFjayBwYXJhbWV0ZXJzIGhl
cmUgYXJlIHN1YmplY3QgdG8KbWVtb3J5IGNvcnJ1cHRpb24sIG5vciBzaG91bGQgdGhlIHZhbGlk
YXRpb24gcGF0aCBmb3IgdGhlIGV4ZWNidWYKcGFyYW1ldGVycyBiZSBhZmZlY3RlZCBieSBzdXNw
ZW5kLCBpZiB0aGlzIG1ha2VzIHRoZSBwcm9ibGVtIGdvIGF3YXksIEkKY2FuIGJlIGJsaXNzZnVs
bHkgaWdub3JhbnQgYXMgdG8gd2hhdCB3YXMgdGhlIGFjdHVhbCBjYXVzZS4KCj4gSXQgaXMgZWFz
eSB0byBkbyBpbiB0aGlzIGZ1bmN0aW9uIGR1ZSBpdCByZS1vcGVuaW5nIHRoZSBkcml2ZXIgYW5k
Cj4gdGhyb3dpbmcgaXQgYXdheS4gU28gdGhlcmUgYXJlIG5vIGNvbmNlcm5zIHRoYXQgdGhlIG1v
ZGlmaWVkIGRlZmF1bHQKPiBjb250ZXh0IGNhbiBhZmZlY3QgYW55IG90aGVyIHRlc3QuCj4gCj4g
U2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiBSZWZlcmVuY2VzOiBodHRwczovL2J1Z3ppbGxhLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTEwNjY3ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
