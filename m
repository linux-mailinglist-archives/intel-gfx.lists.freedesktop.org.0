Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19199102C22
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 19:58:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D8036E3B2;
	Tue, 19 Nov 2019 18:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F0B46E3B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 18:58:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19262510-1500050 for multiple; Tue, 19 Nov 2019 18:58:23 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
 <20191118230254.2615942-7-chris@chris-wilson.co.uk>
 <6c06a4a7-7719-c83b-0fa0-ddc47b4d91c9@linux.intel.com>
 <157418045491.12093.7455490803476182400@skylake-alporthouse-com>
 <f8d09a9a-b45a-7960-d584-3315ca0c80f3@linux.intel.com>
 <157418174819.12093.10574958764232498040@skylake-alporthouse-com>
In-Reply-To: <157418174819.12093.10574958764232498040@skylake-alporthouse-com>
Message-ID: <157418990077.12093.10161172805285555258@skylake-alporthouse-com>
Date: Tue, 19 Nov 2019 18:58:20 +0000
Subject: Re: [Intel-gfx] [PATCH 06/19] drm/i915/gt: Schedule request
 retirement when submission idles
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTkgMTY6NDI6MjgpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0xMS0xOSAxNjozMzoxOCkKPiA+IEkgYWxzbyB3b25kZXIgaWYgdGhl
IGN1cnJlbnQgZmx1c2hfc3VibWlzc2lvbiB3YXNuJ3QgdGhlIHJlYXNvbiBmb3IgCj4gPiBwZXJm
b3JtYW5jZSByZWdyZXNzaW9uIHlvdSB3ZXJlIHNlZWluZyB3aXRoIHRoaXM/IEl0IG1ha2VzIHRo
aXMgdGFza2xldCAKPiA+IHdhaXQgZm9yIGFsbCBvdGhlciBlbmdpbmVzLCBpZiB0aGV5IGFyZSBi
dXN5LiBCdXQgbm90IHN1cmUuLiBwZXJoYXBzIGl0IAo+ID4gaXMgd29yayB3aGljaCB3b3VsZCBi
ZSBkb25lIGFueXdheS4KPiAKPiBJIGhhdmVuJ3QgZmluaXNoZWQgeWV0OyBidXQgdGhlIGJhc2Vs
aW5lIHRvb2sgYSBiaWcgbm9zZSBkaXZlIHNvIGl0Cj4gbWlnaHQgYmUgZW5vdWdoIHRvIGhpZGUg
YSBsb3Qgb2YgZXZpbC4KCkVhcmx5IHJlc3VsdHMgeWV0LCBidXQgdGhlIGV4dHJhIHdvcmsgaXMg
ZXhhY2VyYmF0aW5nIHRoZSByZWdyZXNzaW9ucyBpbgpnZW1fd3NpbSwgZW5vdWdoIHRoYXQgdGhp
cyBjYW5ub3QgbGFuZCBhcyBpcyBhbmQgd2UgZG8gbmVlZCB0byBiZQpzbWFydGVyLgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
