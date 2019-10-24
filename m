Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 866CBE2A88
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 08:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED52C6E0F2;
	Thu, 24 Oct 2019 06:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65B346E0F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 06:48:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18944680-1500050 for multiple; Thu, 24 Oct 2019 07:48:56 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Tapani_P=C3=A4lli?= <tapani.palli@intel.com>,
 Patchwork <patchwork@emeril.freedesktop.org>, intel-gfx@lists.freedesktop.org
References: <20191023120618.5344-1-tapani.palli@intel.com>
 <20191023212049.3024.58866@emeril.freedesktop.org>
 <157186736210.18893.5084077737330719082@skylake-alporthouse-com>
 <a74a177f-f9b4-554a-44e2-b06c42f08d62@intel.com>
In-Reply-To: <a74a177f-f9b4-554a-44e2-b06c42f08d62@intel.com>
Message-ID: <157189973459.18724.16922227615897742145@skylake-alporthouse-com>
Date: Thu, 24 Oct 2019 07:48:54 +0100
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_whitelist_PS=5F=28DEPTH=7CINVOCATION=29=5FCOUNT?=
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

UXVvdGluZyBUYXBhbmkgUMOkbGxpICgyMDE5LTEwLTI0IDA3OjM5OjUwKQo+IAo+IAo+IE9uIDEw
LzI0LzE5IDEyOjQ5IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFBhdGNod29y
ayAoMjAxOS0xMC0yMyAyMjoyMDo0OSkKPiA+PiAgICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVf
d29ya2Fyb3VuZHM6Cj4gPj4gICAgICAtIHtmaS10Z2wtdX06ICAgICAgICAgW1BBU1NdWzNdIC0+
IFtETUVTRy1GQUlMXVs0XQo+ID4+ICAgICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzcxNjUvZmktdGdsLXUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZV93b3JrYXJvdW5kcy5odG1sCj4gPj4gICAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ5NDcvZmktdGdsLXUvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV93b3JrYXJvdW5kcy5odG1sCj4gPiAKPiA+IFRoYXQgZG9lcyBzZWVtIHRvIGJlIGdl
bnVpbmUgYW5kIHdvcnRoIGZvbGxvd2luZyB1cCB3aXRoLgo+ID4gLUNocmlzCj4gPiAKPiAKPiBZ
ZXMsIEkndmUgcmVwcm9kdWNlZCB0aGlzIGxvY2FsbHkuIEFueSBpZGVhcyBhcHByZWNpYXRlZCBo
ZXJlIC4uCgpUaGVyZSBhcmUgdHdvIHRoaW5ncyB0aGUgdGVzdCBjYW4gdGFrZSBjYXJlIG9mLCBz
dHJpcHBpbmcgdGhlIGhpZ2ggYml0CmFuZCByZXBsaWNhdGluZyB0aGUgZnV6emluZyBhY3Jvc3Mg
dGhlIGVudGlyZSByYW5nZS4gU3RyaXBwaW5nIHRoZSBoaWdoCmJpdCBpcyAvbGlrZWx5LyBlbm91
Z2ggdG8gY2lyY3VtdmVudCB0aGUgaXNzdWUgKGRlcGVuZGluZyBvbiByb290IGNhdXNlCm9mIHRo
ZSBpc3N1ZSkuIEJ1dCB0aGUgR1BVIGlzIG5vdCBtZWFudCB0byBoYW5nIG9uIGJvZ3VzIExSSTsg
dGhlIEhXCnZhbGlkYXRvciBpcyBtZWFudCB0byBuby1vcCB0aGVtLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
