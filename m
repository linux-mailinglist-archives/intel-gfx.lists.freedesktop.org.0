Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E3B1D796B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 15:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8650989F5F;
	Mon, 18 May 2020 13:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC6C89F5F
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 13:14:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21229926-1500050 for multiple; Mon, 18 May 2020 14:14:16 +0100
MIME-Version: 1.0
In-Reply-To: <20200518121354.20401-1-ville.syrjala@linux.intel.com>
References: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
 <20200518121354.20401-1-ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158980765594.17769.1625000273900850456@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 18 May 2020 14:14:15 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix dbuf slice mask when
 turning off all the pipes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTA1LTE4IDEzOjEzOjU0KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gVGhlIGN1cnJl
bnQgZGJ1ZiBzbGljZSBjb21wdXRhdGlvbiBvbmx5IGhhcHBlbnMgd2hlbiB0aGVyZSBhcmUKPiBh
Y3RpdmUgcGlwZXMuIElmIHdlIGFyZSB0dXJuaW5nIG9mZiBhbGwgdGhlIHBpcGVzIHdlIGp1c3Qg
bGVhdmUKPiB0aGUgZGJ1ZiBzbGljZSBtYXNrIGF0IGl0J3MgcHJldmlvdXMgdmFsdWUsIHdoaWNo
IG1heSBiZSBzb21ldGhpbmcKPiBvdGhlciB0aGF0IEJJVChTMSkuIElmIHJ1bnRpbWUgUE0gd2ls
bCBraWNrIGluIGl0IHdpbGwgaG93ZXZlcgo+IHR1cm4gb2ZmIGV2ZXJ5dGhpbmcgYnV0IFMxLiBU
aGVuIG9uIHRoZSBuZXh0IGF0b21pYyBjb21taXQgKGlmCj4gdGhlIG5ldyBkYnVmIHNsaWNlIG1h
c2sgbWF0Y2hlcyB0aGUgc3RhbGUgdmFsdWUgd2UgbGVmdCBiZWhpbmQpCj4gdGhlIGNvZGUgd2ls
bCBub3QgdHVybiBvbiB0aGUgb3RoZXIgc2xpY2VzIHdlIG5vdyBuZWVkLiBUaGlzIHdpbGwKPiBs
ZWFkIHRvIHVuZGVycnVucyBhcyB0aGUgcGxhbmVzIGFyZSB0cnlpbmcgdG8gdXNlIGEgZGJ1ZiBz
bGljZQo+IHRoYXQncyBub3QgcG93ZXJlZCB1cC4KPiAKPiBUbyB3b3JrIGFyb3VuZCBsZXQncyBq
dXN0IGp1c3QgZXhwbGljaXRseSBzZXQgdGhlIGRidWYgc2xpY2UgbWFzawo+IHRvIEJJVChTMSkg
d2hlbiB3ZSBhcmUgdHVybmluZyBvZmYgYWxsIHRoZSBwaXBlcy4gUmVhbGx5IHRoZSBjb2RlCj4g
c2hvdWxkIGp1c3QgY2FsY3VsYXRlIHRoaXMgc3R1ZmYgdGhlIHNhbWUgd2F5IHJlZ2FyZGxlc3Mg
d2hldGhlcgo+IHRoZSBwaXBlcyBhcmUgb24gb3Igb2ZmLCBidXQgd2UncmUgbm90IHF1aXRlIHRo
ZXJlIHlldCAobmVlZCBhCj4gYml0IG1vcmUgd29yayBvbiB0aGUgZGJ1ZiBzdGF0ZSBmb3IgdGhh
dCkuCj4gCj4gdjI6IExldCdzIG5vdCBwdXQgdGhlIGZpeCBpbnRvIGRlYWQgY29kZQo+IAo+IENj
OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KPiBB
Y2tlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ICN2MQpBY2tl
ZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gRml4ZXM6IDNj
ZjQzY2RjNjNmYiAoImRybS9pOTE1OiBJbnRyb2R1Y2UgcHJvcGVyIGRidWYgc3RhdGUiKQo+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
