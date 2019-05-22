Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C70266A5
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 17:08:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E6C489B20;
	Wed, 22 May 2019 15:08:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5282A89B20;
 Wed, 22 May 2019 15:08:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16642722-1500050 for multiple; Wed, 22 May 2019 16:08:23 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522150413.27697-1-tvrtko.ursulin@linux.intel.com>
References: <20190522150413.27697-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <155853770228.28319.16250706533744427369@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 16:08:22 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib/i915: Fix pointer cast
 build issue
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMiAxNjowNDoxMykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFVzZSBmcm9tX3VzZXJf
cG9pbnRlciB3aGVuIGNhc3RpbmcgX191NjQgdG8gYSBwb2ludGVyLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IEFuZGkg
U2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgo+IC0tLQo+ICBsaWIvaTkxNS9nZW1fZW5naW5l
X3RvcG9sb2d5LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9saWIvaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5
LmMgYi9saWIvaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5LmMKPiBpbmRleCBkZDI2ZmFlMDA4NTMu
LjdjYTM2MTY2ODdiOSAxMDA2NDQKPiAtLS0gYS9saWIvaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5
LmMKPiArKysgYi9saWIvaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5LmMKPiBAQCAtODEsNyArODEs
NyBAQCBzdGF0aWMgdm9pZCBjdHhfbWFwX2VuZ2luZXMoaW50IGZkLCBzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2RhdGEgKmVkLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX2NvbnRleHRfcGFyYW0gKnBhcmFtKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgaTkxNV9j
b250ZXh0X3BhcmFtX2VuZ2luZXMgKmVuZ2luZXMgPQo+IC0gICAgICAgICAgICAgICAgICAgICAg
IChzdHJ1Y3QgaTkxNV9jb250ZXh0X3BhcmFtX2VuZ2luZXMgKikgcGFyYW0tPnZhbHVlOwo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGZyb21fdXNlcl9wb2ludGVyKHBhcmFtLT52YWx1ZSk7CgpP
bmx5IGEgc2luZ2xlIHRhYiBpbmRlbnQgcmVxdWlyZWQuCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cgo+ICAgICAgICAgaW50IGkgPSAwOwo+ICAK
PiAgICAgICAgIGZvciAodHlwZW9mKGVuZ2luZXMtPmVuZ2luZXNbMF0pICpwID0KCkFuZCBzdHJ1
Y3QgaTkxNV9lbmdpbmVfY2xhc3NfaW5zdGFuY2Ugd2FzIGFkZGVkIHRvIG1ha2UgdGhpcyBmb3Io
KSBsb29wCm5pY2VyLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
