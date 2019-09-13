Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD94B1B59
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 12:07:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 409DB6EF03;
	Fri, 13 Sep 2019 10:06:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C0206EF03;
 Fri, 13 Sep 2019 10:06:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18474602-1500050 for multiple; Fri, 13 Sep 2019 11:06:54 +0100
MIME-Version: 1.0
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190913093506.32426.57772@emeril.freedesktop.org>
References: <20190913074720.7718-1-chris@chris-wilson.co.uk>
 <20190913093506.32426.57772@emeril.freedesktop.org>
Message-ID: <156836921183.18832.4022649864544921630@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 13 Sep 2019 11:06:51 +0100
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Only_unwedge_if_we_can_reset_first?=
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

UXVvdGluZyBQYXRjaHdvcmsgKDIwMTktMDktMTMgMTA6MzU6MDYpCj4gPT0gU2VyaWVzIERldGFp
bHMgPT0KPiAKPiBTZXJpZXM6IGRybS9pOTE1L2d0OiBPbmx5IHVud2VkZ2UgaWYgd2UgY2FuIHJl
c2V0IGZpcnN0Cj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzY2NjM3Lwo+IFN0YXRlIDogZmFpbHVyZQo+IAo+ID09IFN1bW1hcnkgPT0KPiAKPiBDSSBC
dWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82ODg3IC0+IFBhdGNod29ya18xNDM5NQo+ID09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiAKPiBT
dW1tYXJ5Cj4gLS0tLS0tLQo+IAo+ICAgKipGQUlMVVJFKioKPiAKPiAgIFNlcmlvdXMgdW5rbm93
biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDM5NSBhYnNvbHV0ZWx5IG5lZWQgdG8g
YmUKPiAgIHZlcmlmaWVkIG1hbnVhbGx5Lgo+ICAgCj4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9y
dGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKPiAgIGludHJv
ZHVjZWQgaW4gUGF0Y2h3b3JrXzE0Mzk1LCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8g
YWxsb3cgdGhlbQo+ICAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3
aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuCj4gCj4gICBFeHRlcm5hbCBVUkw6IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Mzk1Lwo+
IAo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMKPiAtLS0tLS0tLS0tLS0tLS0tLS0tCj4gCj4gICBIZXJl
IGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGlu
IFBhdGNod29ya18xNDM5NToKPiAKPiAjIyMgSUdUIGNoYW5nZXMgIyMjCj4gCj4gIyMjIyBQb3Nz
aWJsZSByZWdyZXNzaW9ucyAjIyMjCj4gCj4gICAqIGlndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9h
ZC13aXRoLWZhdWx0LWluamVjdGlvbjoKPiAgICAgLSBmaS1ibGItZTY4NTA6ICAgICAgIE5PVFJV
TiAtPiBbRE1FU0ctV0FSTl1bMV0KPiAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Mzk1L2ZpLWJsYi1lNjg1MC9pZ3RAaTkxNV9tb2R1
bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAo+ICAgICAtIGZpLWJ3ci0y
MTYwOiAgICAgICAgW1BBU1NdWzJdIC0+IFtETUVTRy1XQVJOXVszXQo+ICAgIFsyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjg4Ny9maS1id3ItMjE2
MC9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAo+
ICAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQzOTUvZmktYndyLTIxNjAvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1
bHQtaW5qZWN0aW9uLmh0bWwKPiAgICAgLSBmaS1wbnYtZDUxMDogICAgICAgIFtQQVNTXVs0XSAt
PiBbRE1FU0ctV0FSTl1bNV0KPiAgICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzY4ODcvZmktcG52LWQ1MTAvaWd0QGk5MTVfbW9kdWxlX2xvYWRA
cmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uLmh0bWwKPiAgICBbNV06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0Mzk1L2ZpLXBudi1kNTEwL2ln
dEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC13aXRoLWZhdWx0LWluamVjdGlvbi5odG1sCj4gICAg
IC0gZmktZ2RnLTU1MTogICAgICAgICBbUEFTU11bNl0gLT4gW0RNRVNHLVdBUk5dWzddCj4gICAg
WzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82ODg3
L2ZpLWdkZy01NTEvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0
aW9uLmh0bWwKPiAgICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE0Mzk1L2ZpLWdkZy01NTEvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2Fk
LXdpdGgtZmF1bHQtaW5qZWN0aW9uLmh0bWwKCkhvdyB0byBydWluIHRoZSBwYXJ0eSEKLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
