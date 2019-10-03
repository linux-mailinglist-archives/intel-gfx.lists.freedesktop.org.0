Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 097ECCA01B
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 16:12:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCD286E9E9;
	Thu,  3 Oct 2019 14:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180316E9E9
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 14:12:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18708971-1500050 for multiple; Thu, 03 Oct 2019 15:12:14 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191003140231.24408-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191003140231.24408-1-ville.syrjala@linux.intel.com>
Message-ID: <157011193132.2173.15392278985624990382@skylake-alporthouse-com>
Date: Thu, 03 Oct 2019 15:12:11 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement a better i945gm vblank
 irq vs. C-states workaround
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTEwLTAzIDE1OjAyOjMxKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gVGhlIGN1cnJl
bnQgImRpc2FibGUgQzMrIiB3b3JrYXJvdW5kIGZvciB0aGUgZGVsYXllZCB2YmxhbmsKPiBpcnFz
IG9uIGk5NDVnbSBubyBsb25nZXIgd29ya3MuIEknbSBub3Qgc3VyZSB3aGF0IGNoYW5nZWQsIGJ1
dAo+IG5vdyBJIG5lZWQgdG8gYWxzbyBkaXNhYmxlIEMyLiBJIGFsc28gZ290IG15IGhhbmRzIG9u
IGEgaTkxNWdtCj4gbWFjaGluZSB0aGF0IHN1ZmZlcnMgZnJvbSB0aGUgc2FtZSBpc3N1ZS4KPiAK
PiBBZnRlciBzb21lIGZ1cmlvdXMgcG9raW5nIG9mIHJlZ2lzdGVycyBJIG1hbmFnZWQgdG8gZmlu
ZCBhCj4gYmV0dGVyIHdvcmthcm91bmQ6IFRoZSAiRG8gbm90IFR1cm4gb2ZmIENvcmUgUmVuZGVy
IENsb2NrIGluIEMKPiBzdGF0ZXMiIGJpdC4gV2l0aCB0aGF0IEkgbm8gbG9uZ2VyIGhhdmUgdG8g
ZGlzYWJsZSBhbnkgQy1zdGF0ZXMsCj4gYW5kIGFzIGEgbmljZSBib251cyB0aGUgcG93ZXIgY29z
dCBpcyBvbmx5IH4xLzQgb2YgdGhlCj4gImRpc2FibGUgQzMrIiBtZXRob2QgKHdoaWNoIG1pbmQg
eW91IGRvZXNuJ3QgZXZlbiB3b3JrIGFueW1vcmUsCj4gYW5kIHNvIHdvdWxkIGhhdmUgYW4gZXZl
biBoaWdoZXIgcG93ZXIgY29zdCBpZiB3ZSBtYWRlIGl0IHdvcmsKPiBieSBhbHNvIGRpc2FibGlu
ZyBDMikuCj4gCj4gU28gbGV0J3MgdGhyb3cgb3V0IGFsbCB0aGUgY3B1aWRsZS9xb3MgY3JhcCBh
bmQganVzdCB0b2dnbGUKPiB0aGUgbWFnaWMgYml0IGFzIG5lZWRlZC4gQW5kIHdlIGV4dGVuZCB0
aGUgd29ya2Fyb3VuZCB0byBjb3Zlcgo+IGk5MTVnbSBhcyB3ZWxsLgoKTmljZSBkaXNjb3Zlcnku
IFNjcmF0Y2hQYWQwIHN1Z2dlc3RzIHRoYXQgaXQgbWF5IGhhdmUgYmVlbiBhIGxhdGUKYWRkaXRp
b24sIHRoZXJlIG1pZ2h0IGJlIHNvbWUgY2hpcHMgb3V0IHRoZXJlIHRoYXQgZG9uJ3QgaGF2ZSB0
aGUgbWFnaWMKYml0LiBXb3JraW5nIG9uIG1vc3QgaXMgYmV0dGVyIHRoYW4gYnJva2VuIG9uIGFs
bC4KCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
CgpFbXBpcmljYWwgcmVzdWx0cyBydWxlLCBhbmQgSSBmb3Igb25lIGFtIG11Y2ggaGFwcGllciB3
aXRob3V0IG5lZWRpbmcKcW9zIGRtYV9sYXRlbmN5LApBY2tlZC1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
