Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA66D3CC1
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 11:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBBCF6EBFB;
	Fri, 11 Oct 2019 09:52:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E44B6EBFB
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 09:52:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18801296-1500050 for multiple; Fri, 11 Oct 2019 10:52:12 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191010071434.31195-1-chris@chris-wilson.co.uk>
 <20191010071434.31195-6-chris@chris-wilson.co.uk>
 <14c72094-2c4a-cf36-549a-2478cd3343fd@linux.intel.com>
In-Reply-To: <14c72094-2c4a-cf36-549a-2478cd3343fd@linux.intel.com>
Message-ID: <157078752916.31572.12321150630448780325@skylake-alporthouse-com>
Date: Fri, 11 Oct 2019 10:52:09 +0100
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/gt: Introduce barrier pulses
 along engines
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xMSAxMDoxMTo1OCkKPiAKPiBPbiAxMC8x
MC8yMDE5IDA4OjE0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiArI2luY2x1ZGUgImludGVsX2Nv
bnRleHQuaCIKPiA+ICsjaW5jbHVkZSAiaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5oIgo+ID4gKyNp
bmNsdWRlICJpbnRlbF9lbmdpbmVfcG0uaCIKPiA+ICsjaW5jbHVkZSAiaW50ZWxfZW5naW5lLmgi
Cj4gPiArI2luY2x1ZGUgImludGVsX2d0LmgiCj4gPiArCj4gPiArc3RhdGljIHZvaWQgaWRsZV9w
dWxzZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxKQo+ID4gK3sKPiA+ICsgICAgIGVuZ2luZS0+d2FrZXJlZl9zZXJpYWwgPSBSRUFEX09OQ0Uo
ZW5naW5lLT5zZXJpYWwpICsgMTsKPiA+ICsgICAgIGk5MTVfcmVxdWVzdF9hZGRfYWN0aXZlX2Jh
cnJpZXJzKHJxKTsKPiAKPiBXaHkgZG8geW91IG5lZWQgYWN0aXZlIGJhcnJpZXJzIHdpdGggdGhl
IGlkbGUgcHVsc2U/IEp1c3QgYmVjYXVzZSBpdCBpcyAKPiBhIGhhbmR5IHBvaW50IHRvIHJlbGVh
c2UgdGhlIHByZXZpb3VzbHkgcGlubmVkIGNvbnRleHRzPyBCdXQgdGhleSBtYXkgCj4gZ2V0IHJl
dXNlZCBhcyBzb29uIGFzIGlkbGUgcHVsc2UgZmluaXNoZXMsIG5vPwoKWWVzLiBJdCBpcyBhIGtu
b3duIHBvaW50IGluIHRpbWUgd2hlcmUgdGhlIG90aGVyIGNvbnRleHQgaGFzIGZpbmlzaGVkLAph
bmQgd2hlbiB0aGlzIHJlcXVlc3QgcnVucyBoYXMgY29tcGxldGVkIGEgY29udGV4dCBzd2l0Y2gu
CgpSZW1lbWJlciBhbGwgdGhhdCB0aW1lIHdlIHdlcmUgYXJndWluZyBhYm91dCBpZGxlIGJhcnJp
ZXJzIGFuZCBob3cgd2UKbmVlZGVkIHRvIHJ1biB0aGVtIHBlcmlvZGljYWxseSB0byBhbGxvdyB0
aGVtIHRvIGJlIHJlYXBlZCBhbmQgYXZvaWQKaGF2aW5nIHRoZSBlbnRpcmUgYXBlcnR1cmUgcGlu
bmVkIHdpdGggc3RhbGUgY29udGV4dHMgZm9yY2luZyBhIHN0YWxsLgpBbmQgYXZvaWRpbmcgbWFr
aW5nIHRoZSBpZGxlIGJhcnJpZXJzIHRoZW1zZWx2ZXMgYSBnbG9iYWwgc2VyaWFsaXNpbmcKYmFy
cmllci4gOnwKClRoZSBpZGVhIHdlIGhhZCB3YXMgdGhhdCB3ZSB3b3VsZCB0YWtlIGFkdmFudGFn
ZSBvZiBhbnkgZ3VhcmFudGVlZApjb250ZXh0IHN3aXRjaGVzIGFuZCBzZW5kIHJlZ3VsYXIgcHVs
c2VzIGZyb20gdGhlIGtlcm5lbCBjb250ZXh0IHRvIHBpY2sKdXAgc3RyYWdnbGVycy4gU28gd2Ug
Y291bGQgdXNlIGFueSBjb250ZXh0IHN3aXRjaCBhZnRlciB0aGUgd2UgcmV0aXJlCnRoZSBvbGQg
Y29udGV4dCB0byB1bnBpbiBpdCwgYnV0IHRvIGtlZXAgdGhlIGxvY2tpbmcgYW5kIHByZWFsbG9j
YXRpb25zCm9mIHRoZSByYnRyZWUgc2ltcGxlICh5b3UndmUgc2VlbiBpOTE1X2FjdGl2ZSwgc2lt
cGxlIGlzIGFueXRoaW5nIGJ1dCksCkkgbGVmdCBpdCB0byB0aGUgZW5naW5lLT5rZXJuZWxfY29u
dGV4dCB0byBtYW5hZ2UuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
