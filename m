Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D01F19F2E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 16:34:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04FF589339;
	Fri, 10 May 2019 14:34:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 328EB89339
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 14:33:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16517502-1500050 for multiple; Fri, 10 May 2019 15:33:51 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87bm0a8kd3.fsf@gaia.fi.intel.com>
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
 <20190508080704.24223-29-chris@chris-wilson.co.uk>
 <87bm0a8kd3.fsf@gaia.fi.intel.com>
Message-ID: <155749882984.20623.473279952810420187@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 10 May 2019 15:33:49 +0100
Subject: Re: [Intel-gfx] [PATCH 29/40] drm/i915: Move GEM object waiting to
 its own file
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA1LTEwIDE1OjE3OjEyKQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfdXRpbHMuaAo+ID4gaW5kZXggZWRmYzY5YWNkYWFjLi45OTExZjUzMzgyYTUgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmgKPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaAo+ID4gQEAgLTIxOCwxNiArMjE4LDYg
QEAgc3RhdGljIGlubGluZSB1bnNpZ25lZCBsb25nIG1zZWNzX3RvX2ppZmZpZXNfdGltZW91dChj
b25zdCB1bnNpZ25lZCBpbnQgbSkKPiA+ICAgICAgIHJldHVybiBtaW5fdCh1bnNpZ25lZCBsb25n
LCBNQVhfSklGRllfT0ZGU0VULCBqICsgMSk7Cj4gPiAgfQo+ID4gIAo+ID4gLXN0YXRpYyBpbmxp
bmUgdW5zaWduZWQgbG9uZyBuc2Vjc190b19qaWZmaWVzX3RpbWVvdXQoY29uc3QgdTY0IG4pCj4g
PiAtewo+ID4gLSAgICAgLyogbnNlY3NfdG9famlmZmllczY0KCkgZG9lcyBub3QgZ3VhcmQgYWdh
aW5zdCBvdmVyZmxvdyAqLwo+ID4gLSAgICAgaWYgKE5TRUNfUEVSX1NFQyAlIEhaICYmCj4gPiAt
ICAgICAgICAgZGl2X3U2NChuLCBOU0VDX1BFUl9TRUMpID49IE1BWF9KSUZGWV9PRkZTRVQgLyBI
WikKPiA+IC0gICAgICAgICAgICAgcmV0dXJuIE1BWF9KSUZGWV9PRkZTRVQ7Cj4gPiAtCj4gPiAt
ICAgICAgICByZXR1cm4gbWluX3QodTY0LCBNQVhfSklGRllfT0ZGU0VULCBuc2Vjc190b19qaWZm
aWVzNjQobikgKyAxKTsKPiA+IC19Cj4gCj4gU2VlbXMgdGhhdCB0aGUgd2FpdCBzdHVmZiB3YXMg
b25seSB1c2VyIHNvIGppZmZpeWluZyB0aGUgdGltZW91dC4gSnVzdCBsb29rcwo+IGdlbmVyaWMg
Zm9yIG90aGVyIHVzYWdlIHRvby4KCkJ1dCBub3QgZ2VuZXJpYyBlbm91Z2ggdG8gYmUgaW4gamlm
Zmllcy5oIDopCgpJIGRpZG4ndCB3YW50IHRvIGNsdXR0ZXIgYSBjb21tb24gaGVhZGVyIHdpdGgg
YSBvbmUtb2ZmLiBCdXQgaXQgY2FuIGJlCm1vdmVkIGFyb3VuZCBvbiBhIHdoaW0sIHNvIG5vdCB0
b28gY29uY2VybmVkIGlmIHRoaXMgaXMgbm90IGl0cyBmaW5hbApyZXN0aW5nIHBsYWNlLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
