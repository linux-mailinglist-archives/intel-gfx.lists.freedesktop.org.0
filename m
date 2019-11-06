Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9C8F1992
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 16:08:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCB296ED94;
	Wed,  6 Nov 2019 15:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DC666ED95
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 15:08:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19103529-1500050 for multiple; Wed, 06 Nov 2019 15:08:16 +0000
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191106134814.GA23187@mwanda>
References: <20191106134814.GA23187@mwanda>
Message-ID: <157305289377.26738.4641408741937503091@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 06 Nov 2019 15:08:13 +0000
Subject: Re: [Intel-gfx] [bug report] drm/i915: Move context management
 under GEM
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

UXVvdGluZyBEYW4gQ2FycGVudGVyICgyMDE5LTExLTA2IDEzOjQ4OjE0KQo+IEhlbGxvIENocmlz
IFdpbHNvbiwKPiAKPiBUaGUgcGF0Y2ggYTRlN2NjZGFjMzhlOiAiZHJtL2k5MTU6IE1vdmUgY29u
dGV4dCBtYW5hZ2VtZW50IHVuZGVyIEdFTSIKPiBmcm9tIE9jdCA0LCAyMDE5LCBsZWFkcyB0byB0
aGUgZm9sbG93aW5nIHN0YXRpYyBjaGVja2VyIHdhcm5pbmc6Cj4gCj4gICAgICAgICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jOjk4MCBzZXRfcHBndHQoKQo+ICAg
ICAgICAgd2FybjogJ2N0eC0+bXV0ZXgnIGJvdGggbG9ja2VkIGFuZCB1bmxvY2tlZC4KPiAKPiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gICAgOTQwICAgICAg
ICAgIHJjdV9yZWFkX3VubG9jaygpOwo+ICAgIDk0MSAgICAgICAgICBpZiAoIXZtKQo+ICAgIDk0
MiAgICAgICAgICAgICAgICAgIHJldHVybiAtRU5PRU5UOwo+ICAgIDk0MyAgCj4gICAgOTQ0ICAg
ICAgICAgIGVyciA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmY3R4LT5tdXRleCk7Cj4gICAg
OTQ1ICAgICAgICAgIGlmIChlcnIpCj4gICAgOTQ2ICAgICAgICAgICAgICAgICAgZ290byBvdXQ7
Cj4gICAgOTQ3ICAKPiAgICA5NDggICAgICAgICAgaWYgKGk5MTVfZ2VtX2NvbnRleHRfaXNfY2xv
c2VkKGN0eCkpIHsKPiAgICA5NDkgICAgICAgICAgICAgICAgICBlcnIgPSAtRU5PRU5UOwo+ICAg
IDk1MCAgICAgICAgICAgICAgICAgIGdvdG8gb3V0Owo+ICAgICAgICAgICAgICAgICAgICAgICAg
IF5eXl5eXl5eCj4gVGhpcyBzaG91bGQgYmUgZ290byB1bmxvY2s/CiAKWWVzLiBNYW55IHRoYW5r
cyBmb3IgdGhlIGJ1ZyByZXBvcnQuCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9w
YXRjaC8zMzkyMTMvP3Nlcmllcz02OTA3MCZyZXY9MQotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
