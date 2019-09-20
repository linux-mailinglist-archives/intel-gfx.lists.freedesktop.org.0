Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5971EB9477
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 17:51:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9611E6FD3F;
	Fri, 20 Sep 2019 15:51:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 997D16FD3F
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 15:51:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18561787-1500050 for multiple; Fri, 20 Sep 2019 16:51:21 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190920083624.4601-1-chris@chris-wilson.co.uk>
 <156899145257.10086.14761802446237119901@skylake-alporthouse-com>
 <baf00b47-396b-fa55-8965-ef02ad5900ff@linux.intel.com>
In-Reply-To: <baf00b47-396b-fa55-8965-ef02ad5900ff@linux.intel.com>
Message-ID: <156899467952.1196.4191279317075947818@skylake-alporthouse-com>
Date: Fri, 20 Sep 2019 16:51:19 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Prevent bonded requests from
 overtaking each other on preemption
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yMCAxNjoxMjoyMykKPiAKPiBPbiAyMC8w
OS8yMDE5IDE1OjU3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIENocmlzIFdpbHNv
biAoMjAxOS0wOS0yMCAwOTozNjoyNCkKPiA+PiBGb3JjZSBib25kZWQgcmVxdWVzdHMgdG8gcnVu
IG9uIGRpc3RpbmN0IGVuZ2luZXMgc28gdGhhdCB0aGV5IGNhbm5vdCBiZQo+ID4+IHNodWZmbGVk
IG9udG8gdGhlIHNhbWUgZW5naW5lIHdoZXJlIHRpbWVzbGljaW5nIHdpbGwgcmV2ZXJzZSB0aGUg
b3JkZXIuCj4gPj4gQSBib25kZWQgcmVxdWVzdCB3aWxsIG9mdGVuIHdhaXQgb24gYSBzZW1hcGhv
cmUgc2lnbmFsZWQgYnkgaXRzIG1hc3RlciwKPiA+PiBjcmVhdGluZyBhbiBpbXBsaWNpdCBkZXBl
bmRlbmN5IC0tIGlmIHdlIGlnbm9yZSB0aGF0IGltcGxpY2l0IGRlcGVuZGVuY3kKPiA+PiBhbmQg
YWxsb3cgdGhlIGJvbmRlZCByZXF1ZXN0IHRvIHJ1biBvbiB0aGUgc2FtZSBlbmdpbmUgYW5kIGJl
Zm9yZSBpdHMKPiA+PiBtYXN0ZXIsIHdlIHdpbGwgY2F1c2UgYSBHUFUgaGFuZy4KPiA+IAo+ID4g
VGhpbmtpbmcgbW9yZSwgaXQgc2hvdWxkIG5vdCBkaXJlY3RseSBjYXVzZSBhIEdQVSBoYW5nLCBh
cyB0aGUgc3R1Y2sgcmVxdWVzdAo+ID4gc2hvdWxkIGJlIHRpbWVzbGljZWQgYXdheSwgYW5kIGVh
Y2ggcHJlZW1wdGlvbiBzaG91bGQgYmUgZW5vdWdoIHRvIGtlZXAKPiA+IGhhbmdjaGVjayBhdCBi
YXkgKHRob3VnaCB3ZSBoYXZlIGV2aWRlbmNlIGl0IG1heSBub3QpLiBTbyBhdCBiZXN0IGl0IHJ1
bnMKPiA+IGF0IGhhbGYtc3BlZWQsIGF0IHdvcnN0IGEgdGhpcmQgKGlmIG15IG1vZGVsIGlzIGNv
cnJlY3QpLgo+IAo+IEJ1dCBJIHRoaW5rIGl0IGlzIHN0aWxsIGNvcnJlY3QgdG8gZG8gc2luY2Ug
d2UgZG9uJ3QgaGF2ZSB0aGUgY291cGxpbmcgCj4gaW5mb3JtYXRpb24gb24gcmUtc3VibWl0LiBI
bS4uIGJ1dCBkb24ndCB3ZSBuZWVkIHRvIHByZXZlbnQgc2xhdmUgZnJvbSAKPiBjaGFuZ2luZyBl
bmdpbmVzIGFzIHdlbGw/CgpZZXMsIGl0IHN0aWxsIGxvb2tzIGxpa2UgYSBzZW5zaWJsZSBlbm91
Z2ggcGF0Y2ggKGV2ZW4gaWYgSSBhbSBiaWFzZWQKYmVjYXVzZSBJIHRoaW5rIGl0IGlzIGN1dGUp
LCBlc3BlY2lhbGx5IGluIGxpZ2h0IG9mIGhvdyB3ZSBvbmx5IHJ1biB0aGUKYm9uZF9leGVjdXRl
IG9uY2UgYW5kIGRvIG5vdCByZWNvbmZpZ3VyZSB0aGUgZXhlY3V0aW9uX21hc2sgb24gdW5zdWJt
aXQuCgpTdGlsbCB3b3JraW5nIG9uIHRoZSB0ZXN0IGNhc2VzIHRvIGV4ZXJjaXNlIHRpbWVzbGlj
aW5nICsKc3VibWl0L2JvbmRpbmcuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
