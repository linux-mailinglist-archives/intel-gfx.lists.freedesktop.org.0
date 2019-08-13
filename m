Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDD78C030
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 20:11:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E02956E223;
	Tue, 13 Aug 2019 18:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5084F6E223
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 18:11:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18020224-1500050 for multiple; Tue, 13 Aug 2019 19:11:39 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190813174121.129593-1-stuart.summers@intel.com>
 <20190813174121.129593-3-stuart.summers@intel.com>
 <156571941837.2301.14373914853296807767@skylake-alporthouse-com>
In-Reply-To: <156571941837.2301.14373914853296807767@skylake-alporthouse-com>
Message-ID: <156571989759.2301.9049474294413357004@skylake-alporthouse-com>
Date: Tue, 13 Aug 2019 19:11:37 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Add module parameter to
 remove RCS engine
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMTMgMTk6MDM6MzgpCj4gUXVvdGluZyBTdHVh
cnQgU3VtbWVycyAoMjAxOS0wOC0xMyAxODo0MToyMSkKPiA+IEluIHNvbWUgZGVidWcgc2NlbmFy
aW9zLCBpdCBtaWdodCBiZSBpbnRlcmVzdGluZyB0byBsb2FkCj4gPiBhIHBsYXRmb3JtIHdpdGhv
dXQgc3VwcG9ydCBmb3IgdGhlIHJlbmRlciBjb21tYW5kIHN0cmVhbWVyLgo+ID4gQWRkIGEgbW9k
dWxlIHBhcmFtZXRlciB0byBhbGxvdyB0aGlzIHBsYXRmb3JtIGNvbmZpZ3VyYXRpb24uCj4gPiAK
PiA+IFNpZ25lZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5j
b20+Cj4gCj4gSW50ZXJlc3RpbmcsIGFzaWRlIGZyb20gdGhhdCB3ZSBzaGFsbCBuZXZlciBhZGQg
YSBuZXcgbW9kcGFyYW0gZm9yIHVzZXJzCj4gdG8gYmVhdCB1cyB3aXRoIGV4Y2VwdCB1bmRlciBl
eHRyZW1lIGR1cmVzcywgSSB3b3VsZCBoYXZlIG1hZGUgdGhpcyBhCj4gcmluZ19tYXNrLiBEZWZh
dWx0IHRvIC0xdWxsLCBtYXNrIG9mZiB0aGUgcmluZ3MgeW91IHdpc2ggdG8gZXhjbHVkZS4KCkZv
ciB0aGUgdXNlIEkgaGF2ZSBpbiBtaW5kLCB3ZSB3aWxsIGhhdmUgdG8gdHJlYXQgdGhlIGlkcyBh
cyB1YWJpLiBTbyBpdApjYW4ndCBiZSBhIHNpbXBsZSBjYXNlIG9mIG1hdGNoaW5nIHVwIHRvIG91
ciBpbnRlcm5hbCBtYXNrLiBJIGd1ZXNzIGl0CndpbGwganVzdCBoYXZlIHRvIGJlIGEgbGlzdCBv
ZiBjb3JyZXNwb25kZW5jZXMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
