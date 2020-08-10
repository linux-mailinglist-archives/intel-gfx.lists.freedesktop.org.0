Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F8B2403A9
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 10:56:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F736E3AA;
	Mon, 10 Aug 2020 08:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 169226E398;
 Mon, 10 Aug 2020 08:56:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22081672-1500050 for multiple; Mon, 10 Aug 2020 09:56:34 +0100
MIME-Version: 1.0
In-Reply-To: <20200810082242.GH7444@platvala-desk.ger.corp.intel.com>
References: <20200806144529.140512-1-chris@chris-wilson.co.uk>
 <20200810080807.GA3956@zkempczy-mobl2>
 <20200810082242.GH7444@platvala-desk.ger.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Petri Latvala <petri.latvala@intel.com>, Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
Date: Mon, 10 Aug 2020 09:56:34 +0100
Message-ID: <159704979478.6812.5770687018171262759@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Use unsigned gen for
 forward compatible tests
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBQZXRyaSBMYXR2YWxhICgyMDIwLTA4LTEwIDA5OjIyOjQyKQo+IE9uIE1vbiwgQXVn
IDEwLCAyMDIwIGF0IDEwOjA5OjQ2QU0gKzAyMDAsIFpiaWduaWV3IEtlbXBjennFhHNraSB3cm90
ZToKPiA+IE9uIFRodSwgQXVnIDA2LCAyMDIwIGF0IDAzOjQ1OjI5UE0gKzAxMDAsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+ID4gVW5rbm93biwgc28gZnV0dXJlLCBnZW4gYXJlIG1hcmtlZCBhcyAt
MSB3aGljaCB3ZSB3YW50IHRvIHRyZWF0IGFzIC0xdQo+ID4gPiBzbyB0aGF0IGFsd2F5cyBwYXNz
ID49IGdlbiBjaGVja3MuCj4gPiAKPiA+IERvIHdlIHJlYWxseSB3YW50IHRvIGVuYWJsZSB0aGUg
dGVzdHMgd2hlbiBwbGF0Zm9ybSBpcyBub3QgZnVsbHkKPiA+IGVuYWJsZWQgaW4gSUdUPwo+IAo+
IFdoYXQgZG9lcyAiZnVsbHkgZW5hYmxlZCIgbWVhbj8KPiAKPiBJZiB0aGUgdGVzdCBpcyBjaGVj
a2luZyBmb3IganVzdCAiZ2VuID4geCIsIHRoZSB0ZXN0IHNob3VsZCB3b3JrCj4gYWxyZWFkeS4g
SWYgdGhlIHRlc3QgaXMgYWxzbyBjaGVja2luZyBmb3IgImdlbiA8IHkiIHRoZW4gd2UgZ2V0IGEK
PiBzcHVyaW91cyBmYWlsdXJlLCBidXQgZWl0aGVyIHdheSBDSSBpcyBnb2luZyB0byB0ZWxsIHlv
dSB0aGF0Cj4gc29tZXRoaW5nIGlzIG5vdCBwYXNzaW5nLiBXaXRob3V0IHRoaXMgaXQgd2lsbCBi
ZSBhIHNraXAsIGFsb25nIHdpdGgKPiBza2lwcGluZyBpbiB0aGUgY2FzZSB0aGF0IHNob3VsZCBq
dXN0IHdvcmsgYWxyZWFkeSB3aXRob3V0IGFjdHVhbCB0ZXN0Cj4gY2hhbmdlcy4KCkFuZCBmb3Ig
YSB2ZXJ5IGxhcmdlIGZyYWN0aW9uIG9mIHRlc3RzLCB0aGUgYmVoYXZpb3VyIG9mIG5leHQgZ2Vu
CmZvbGxvd3MgY3VycmVudCBnZW4uIFRob3NlIHRoYXQgZG8gbm90IGFyZSB2ZXJ5IGludGVyZXN0
aW5nLCBhbmQgd2lsbCBiZQphIG11Y2ggc21hbGxlciBudW1iZXIgdGhhbiB0aGUgdm9sdW1lIG9m
IHNraXBzIHdlIGhhdmUgdG8gcHJvY2Vzcy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
