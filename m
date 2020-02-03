Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 683DF15072E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 14:28:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AD176E9E1;
	Mon,  3 Feb 2020 13:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5AB6E9E1
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 13:28:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20100133-1500050 for multiple; Mon, 03 Feb 2020 13:28:03 +0000
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200203132317.GZ13686@intel.com>
References: <20200201094641.3572295-1-chris@chris-wilson.co.uk>
 <20200203132317.GZ13686@intel.com>
Message-ID: <158073648122.25329.1013159076797873545@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 03 Feb 2020 13:28:01 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: Skip the cdclk modeset if
 no pipes attached
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

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDItMDMgMTM6MjM6MTcpCj4gT24gU2F0LCBG
ZWIgMDEsIDIwMjAgYXQgMDk6NDY6NDFBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
LXN0YXRpYyBpbnQgZ2xrX2ZvcmNlX2F1ZGlvX2NkY2xrX2NvbW1pdChzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwKPiA+ICtzdGF0aWMgaW50IGdsa19mb3JjZV9hdWRpb19jZGNsa19j
b21taXQoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBib29sIGVuYWJsZSkKPiA+ICB7Cj4g
PiAtICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRl
LT5iYXNlLmRldik7Cj4gPiAgICAgICBzdHJ1Y3QgaW50ZWxfY2RjbGtfc3RhdGUgKmNkY2xrX3N0
YXRlOwo+ID4gLSAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGM7Cj4gPiAgICAgICBpbnQgcmV0
Owo+ID4gIAo+ID4gICAgICAgLyogbmVlZCB0byBob2xkIGF0IGxlYXN0IG9uZSBjcnRjIGxvY2sg
Zm9yIHRoZSBnbG9iYWwgc3RhdGUgKi8KPiA+IC0gICAgIGNydGMgPSBpbnRlbF9nZXRfY3J0Y19m
b3JfcGlwZShkZXZfcHJpdiwgUElQRV9BKTsKPiAKPiBXYXMgdGhpbmtpbmcgYSBzaW1wbGUgJ3Jl
dHVybiAwJyB3b3VsZCBkbyB0aGUgdHJpY2ssIGJ1dCBtYXliZSB3ZQo+IGRvbid0IHdhbnQgdG8g
Y2FsbCB0aGlzIGF0IGFsbC4gT1RPSCBub3Qgc3VyZSB3aHkgd2Ugd291bGQgZXZlbgo+IHJlZ2lz
dGVyIHRoZSBhdWRpbyBjb21wb25lbnQgaWYgdGhlcmUgYXJlIG5vIHBpcGVzLiBEb2VzIHRoZSBh
dWRpbwo+IGRyaXZlciBnZXQgY29uZnVzZWQgaWYgd2UgZG9uJ3QgZG8gdGhhdD8KCkkgZXhwZWN0
IHRoYXQgaXMgdGhlIG1vc3QgY29ycmVjdCBhbnN3ZXI6IGRvbid0IHJlZ2lzdGVyIGRpc3BsYXkg
YXVkaW8KaWYgdGhlIGRpc3BsYXkgaW5zaXN0cyBvbiB0aGVyZSBiZWluZyBubyBwaXBlcy4gSSds
bCBsZWF2ZSB0aGF0IHRvIHRoZQppbnRyZXBpZCBvYnNlcnZlcnMgdGhvdWdoIDopCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
