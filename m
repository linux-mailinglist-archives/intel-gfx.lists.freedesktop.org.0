Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B9F150716
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 14:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CB1D6EBF2;
	Mon,  3 Feb 2020 13:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE6E96EBF2
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 13:23:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20100055-1500050 for multiple; Mon, 03 Feb 2020 13:23:20 +0000
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200203131203.GY13686@intel.com>
References: <20200201103159.3596604-1-chris@chris-wilson.co.uk>
 <20200203131203.GY13686@intel.com>
Message-ID: <158073619823.20090.16442076463021483455@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 03 Feb 2020 13:23:18 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Defer application of
 initial chv_phy_control
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDItMDMgMTM6MTI6MDMpCj4gT24gU2F0LCBG
ZWIgMDEsIDIwMjAgYXQgMTA6MzE6NTlBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFdo
YXQgSSBkb24ndCB1bmRlc3RhbmQgaXMgd2hhdCBhY3R1YWxseSBjaGFuZ2VkIHRvIGNhdXNlIHRo
aXM/IERpZCB3ZQo+IHJlb3JnYW5pemUgc29tZXRoaW5nIGluIHRoZSBpbml0L3Jlc3VtZSBzZXF1
ZW5jZSB0aGF0IHByZXZpb3VzbHkgZm9yY2VkCj4gdGhlIGRpc3BsYXkgcG93ZXIgd2VsbCBvbiBi
ZWZvcmUgdGhpcyBwb2ludCwgb3IgZGlkIHdlIHNpbXBseSBub3QgY2hlY2sKPiBmb3IgdGhlIHVu
Y2xhaW1lZCByZWcgYWNjZXNzPwoKSSB3YXMgZXhwZWN0aW5nIGl0IGhhdmUgbGFpbiB1bmRpc3R1
cmJlZCBmb3IgYSBsb25nIHRpbWUuIEJ1dCBpdCdzIG5vdAppbiBDSV9EUk1fNzgzNyBhbmQgdGhl
biBhcHBlYXJzIGluIENJX0RSTV83ODUwLiBXZSBtaXNzIHRoZSBpbnRlcnZlbmluZwpsb2cgZmls
ZXMsIHNvIGNhbid0IHBpbnBvaW50IHRoZSBjb21taXQgZXhhY3RseS4KCiQgZ2l0IGRpZmYgLS1z
dGF0IGludGVsL0NJX0RSTV83ODM3Li5pbnRlbC9DSV9EUk1fNzg1MAogODAgZmlsZXMgY2hhbmdl
ZCwgMTMwNCBpbnNlcnRpb25zKCspLCA0NDkgZGVsZXRpb25zKC0pCgpDb3VsZCBiZSB3b3JzZS4g
Tm90aGluZyBzdGFuZHMgb3V0IHRob3VnaC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
