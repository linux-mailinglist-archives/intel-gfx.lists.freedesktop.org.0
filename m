Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6562249F2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 10:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46DB88922A;
	Tue, 21 May 2019 08:14:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2597A89124;
 Tue, 21 May 2019 08:14:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16624137-1500050 for multiple; Tue, 21 May 2019 09:14:17 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190520144739.13111-13-tvrtko.ursulin@linux.intel.com>
References: <20190520144739.13111-1-tvrtko.ursulin@linux.intel.com>
 <20190520144739.13111-13-tvrtko.ursulin@linux.intel.com>
Message-ID: <155842645570.23981.6357853903674807345@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 21 May 2019 09:14:15 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 12/27] gem_wsim: Engine map
 support
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMCAxNTo0NzoyNCkKPiBAQCAtOTk5LDMw
ICsxMDkyLDUzIEBAIHByZXBhcmVfd29ya2xvYWQodW5zaWduZWQgaW50IGlkLCBzdHJ1Y3Qgd29y
a2xvYWQgKndyaywgdW5zaWduZWQgaW50IGZsYWdzKQo+ICAgICAgICAgLyoKPiAgICAgICAgICAq
IElkZW50aWZ5IGlmIGNvbnRleHRzIHRhcmdldCBzcGVjaWZpYyBlbmdpbmUgaW5zdGFuY2VzIGFu
ZCBpZiB0aGV5Cj4gICAgICAgICAgKiB3YW50IHRvIGJlIGJhbGFuY2VkLgo+ICsgICAgICAgICoK
PiArICAgICAgICAqIFRyYW5zZmVyIG92ZXIgZW5naW5lIG1hcCBjb25maWd1cmF0aW9uIGZyb20g
dGhlIHdvcmtsb2FkIHN0ZXAuCj4gICAgICAgICAgKi8KPiAgICAgICAgIGZvciAoaiA9IDA7IGog
PCB3cmstPm5yX2N0eHM7IGogKz0gMikgewo+ICAgICAgICAgICAgICAgICBib29sIHRhcmdldHMg
PSBmYWxzZTsKPiAgICAgICAgICAgICAgICAgYm9vbCBiYWxhbmNlID0gZmFsc2U7Cj4gIAo+ICAg
ICAgICAgICAgICAgICBmb3IgKGkgPSAwLCB3ID0gd3JrLT5zdGVwczsgaSA8IHdyay0+bnJfc3Rl
cHM7IGkrKywgdysrKSB7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgaWYgKHctPnR5cGUgIT0g
QkFUQ0gpCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiAtCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgaWYgKHctPmNvbnRleHQgIT0gKGogLyAyKSkKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICAKPiAtICAgICAgICAgICAg
ICAgICAgICAgICBpZiAody0+ZW5naW5lID09IFZDUykKPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGJhbGFuY2UgPSB0cnVlOwo+IC0gICAgICAgICAgICAgICAgICAgICAgIGVsc2UK
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRhcmdldHMgPSB0cnVlOwo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGlmICh3LT50eXBlID09IEJBVENIKSB7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBpZiAody0+ZW5naW5lID09IFZDUykKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgYmFsYW5jZSA9IHRydWU7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHRhcmdldHMgPSB0cnVlOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIH0gZWxz
ZSBpZiAody0+dHlwZSA9PSBFTkdJTkVfTUFQKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB3cmstPmN0eF9saXN0W2pdLmVuZ2luZV9tYXAgPSB3LT5lbmdpbmVfbWFwOwo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgd3JrLT5jdHhfbGlzdFtqXS5lbmdpbmVfbWFw
X2NvdW50ID0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdy0+ZW5n
aW5lX21hcF9jb3VudDsKPiArICAgICAgICAgICAgICAgICAgICAgICB9Cj4gICAgICAgICAgICAg
ICAgIH0KPiAgCj4gLSAgICAgICAgICAgICAgIGlmIChmbGFncyAmIEk5MTUpIHsKPiAtICAgICAg
ICAgICAgICAgICAgICAgICB3cmstPmN0eF9saXN0W2pdLnRhcmdldHNfaW5zdGFuY2UgPSB0YXJn
ZXRzOwo+ICsgICAgICAgICAgICAgICB3cmstPmN0eF9saXN0W2pdLnRhcmdldHNfaW5zdGFuY2Ug
PSB0YXJnZXRzOwo+ICsgICAgICAgICAgICAgICBpZiAoZmxhZ3MgJiBJOTE1KQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIHdyay0+Y3R4X2xpc3Rbal0ud2FudHNfYmFsYW5jZSA9IGJhbGFuY2U7
Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgLyoKPiArICAgICAgICAqIEVuc3VyZSBWQ1MgaXMg
bm90IGFsbG93ZWQgd2l0aCBlbmdpbmUgbWFwIGNvbnRleHRzLgo+ICsgICAgICAgICovCj4gKyAg
ICAgICBmb3IgKGogPSAwOyBqIDwgd3JrLT5ucl9jdHhzOyBqICs9IDIpIHsKPiArICAgICAgICAg
ICAgICAgZm9yIChpID0gMCwgdyA9IHdyay0+c3RlcHM7IGkgPCB3cmstPm5yX3N0ZXBzOyBpKyss
IHcrKykgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmICh3LT5jb250ZXh0ICE9IChqIC8g
MikpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiArCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgaWYgKHctPnR5cGUgIT0gQkFUQ0gpCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiArCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgaWYgKHdyay0+Y3R4X2xpc3Rbal0uZW5naW5lX21hcCAmJiB3LT5lbmdpbmUgPT0gVkNTKSB7
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3c2ltX2VycigiQmF0Y2hlcyB0YXJn
ZXR0aW5nIGVuZ2luZSBtYXBzIG11c3QgdXNlIGV4cGxpY2l0IGVuZ2luZXMhXG4iKTsKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtMTsKPiArICAgICAgICAgICAgICAg
ICAgICAgICB9Cj4gICAgICAgICAgICAgICAgIH0KPiAgICAgICAgIH0KPiAgCj4gKwpeXl4KCj4g
ICAgICAgICAvKgo+ICAgICAgICAgICogQ3JlYXRlIGFuZCBjb25maWd1cmUgY29udGV4dHMuCj4g
ICAgICAgICAgKi8KCkknbSBoZWxwaW5nIQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
