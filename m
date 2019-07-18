Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B156CCA5
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 12:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7BE6E373;
	Thu, 18 Jul 2019 10:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B236E373;
 Thu, 18 Jul 2019 10:17:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17395505-1500050 for multiple; Thu, 18 Jul 2019 11:17:05 +0100
MIME-Version: 1.0
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190718101404.17740.2090@emeril.freedesktop.org>
References: <20190718092942.23179-1-chris@chris-wilson.co.uk>
 <20190718101404.17740.2090@emeril.freedesktop.org>
Message-ID: <156344502350.23055.17139109033677331024@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 18 Jul 2019 11:17:03 +0100
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Allocate_non-swappable_memory_for_internal_objects?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBQYXRjaHdvcmsgKDIwMTktMDctMTggMTE6MTQ6MDQpCj4gPT0gU2VyaWVzIERldGFp
bHMgPT0KPiAKPiBTZXJpZXM6IGRybS9pOTE1L2d1YzogQWxsb2NhdGUgbm9uLXN3YXBwYWJsZSBt
ZW1vcnkgZm9yIGludGVybmFsIG9iamVjdHMKPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjM4NzIvCj4gU3RhdGUgOiBmYWlsdXJlCj4gCj4gPT0gU3Vt
bWFyeSA9PQo+IAo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzY1MDMgLT4gUGF0
Y2h3b3JrXzEzNjg0Cj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQo+IAo+IFN1bW1hcnkKPiAtLS0tLS0tCj4gCj4gICAqKkZBSUxVUkUqKgo+IAo+
ICAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzEzNjg0IGFi
c29sdXRlbHkgbmVlZCB0byBiZQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuCj4gICAKPiAgIElmIHlv
dSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUg
Y2hhbmdlcwo+ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTM2ODQsIHBsZWFzZSBub3RpZnkg
eW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtCj4gICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWls
dXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KPiAKPiAg
IEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTM2ODQvCj4gCj4gUG9zc2libGUgbmV3IGlzc3Vlcwo+IC0tLS0tLS0tLS0tLS0t
LS0tLS0KPiAKPiAgIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBi
ZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEzNjg0Ogo+IAo+ICMjIyBJR1QgY2hhbmdlcyAj
IyMKPiAKPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMKPiAKPiAgICogaWd0QGk5MTVf
bW9kdWxlX2xvYWRAcmVsb2FkOgo+ICAgICAtIGZpLWFwbC1ndWM6ICAgICAgICAgW1BBU1NdWzFd
IC0+IFtETUVTRy1GQUlMXVsyXSArMjEgc2ltaWxhciBpc3N1ZXMKPiAgICBbMV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY1MDMvZmktYXBsLWd1Yy9p
Z3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAo+ICAgIFsyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM2ODQvZmktYXBsLWd1Yy9pZ3RA
aTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbAoKQSBmZXcgcGxhY2VzIHJlbHlpbmcgb24gdGhl
IGltcGxpY2l0IGNsZWFyLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
