Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB7A1D67FD
	for <lists+intel-gfx@lfdr.de>; Sun, 17 May 2020 14:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D7A989FFD;
	Sun, 17 May 2020 12:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0177A89FFD
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 May 2020 12:49:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21220702-1500050 for multiple; Sun, 17 May 2020 13:49:38 +0100
MIME-Version: 1.0
In-Reply-To: <20200302143943.32676-6-ville.syrjala@linux.intel.com>
References: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
 <20200302143943.32676-6-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158971977642.10809.16745087788965571257@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sun, 17 May 2020 13:49:36 +0100
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/selftests: Make the CS
 timestamp tests work on gen4-snb (sort of)
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAzLTAyIDE0OjM5OjQzKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gT24gcHJlLWl2
YiB0aGUgQ1MgdGltZXN0YW1wIHJlZ2lzdGVyIGlzIG9ubHkgcHJlc2VudCBvbiBSQ1MgKGRlc3Bp
dGUKPiB3aGF0IHNuYiBic3BlYyBjbGFpbXMpLiBMZXQncyB0ZXN0IGl0Lgo+IAo+IEFsc28gb24g
Y3RnL2Vsay9pbGsgdGhlIHVzYWJsZSBwYXJ0IG9mIHRoZSB0aW1lc3RhbXAgaXMgdGhlIFVEVyBz
bwo+IGxldCdzIHJlYWQgdGhhdCBpbnN0ZWFkIG9mIHRoZSBMRFcuIE9uIGN0Zy9lbGsgdGhlIDEw
IG1zYnMgb2YgdGhlIExEVwo+IGRvIGFjdHVhbGx5IHdvcmssIGJ1dCB3ZSBjb25maWd1cmUgY3Nf
dGltZXN0YW1wX2ZyZXF1ZW5jeV9oeiBhcyBpZgo+IHRoZXkgZGlkbid0IHNvICB0aGF0IHdlIGNh
biB0cmVhdCBjdGcvZWxrIHRoZSBzYW1lIGFzIGlsay4KPiAKPiBUT0RPOiBmaWd1cmUgb3V0IHdo
eSB0aGUgcmVzdWx0cyB3ZSBnZXQgYXJlbid0IHJlbGlhYmxlLiBPbiBzb21lCj4gaXRlcmF0aW9u
cyB3ZSBjYW4gZ2V0IHRvdGFsbHkgd3JvbmcgKHRob3VnaCBjb25zaXN0ZW50KSB2YWx1ZXMsCj4g
b24gb3RoZXIgaXRlcmF0aW9ucyB0aGUgdmFsdWVzIGFyZSBjb3JyZWN0LiBBbmQgc29tZWhvdyBj
aGFuZ2luZwo+IHRoZSBvZmZzZXRzIGludG8gdGhlIGh3c3AgYWxzbyBzZWVtcyB0byBhZmZlY3Qg
dGhlIGJlaGF2aW91ci4KPiBNYW51YWxseSByZWFkaW5nIHRoZSByZWdpc3RlciBhbHdheXMgc2Vl
bXMgZmluZSwgc28gZmVlbHMgbGlrZQo+IHRoZSBwcm9ibGVtIGhhcyBzb21ldGhpbmcgdG8gZG8g
d2l0aCB0aGUgc3RvcmUgcmF0aGVyIHRoYW4gdGhlIGFjdHVhbAo+IHJlZ2lzdGVyIHJlYWQuCgpP
biBpOTY1Z20sIEkgZ2V0IGZhaXJseSByYW5kb20gb3V0cHV0IGZyb20gcmVhZGluZyB0aGUgQ1Nf
VElNRVNUQU1QLgoKT25lIHN0ZXAgYXQgYSB0aW1lLCBmaXJzdCBsZXQncyBnZXQgdGhlIHRlc3Qg
cmVzdWx0cyBmb3IgcmVhZGluZwpDU19USU1FU1RBTVAgdnMgdGhlIHVwZGF0ZWQgcmF3Y2xrIGFu
ZCBzZWUgaG93IHdlbGwgd2UgZmFyZSBhY3Jvc3MgdGhlCmZhcm0uIFRoZW4gd2UgbWlnaHQgc2Vl
IGlmIHRoZXJlJ3MgYSBwYXR0ZXJuIGhlcmUuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
