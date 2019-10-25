Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D0AE4F84
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 16:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 055056EA6D;
	Fri, 25 Oct 2019 14:49:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AF66EA6D
 for <Intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 14:49:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18964209-1500050 for multiple; Fri, 25 Oct 2019 15:49:08 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191025142131.17378-1-tvrtko.ursulin@linux.intel.com>
 <20191025142131.17378-6-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191025142131.17378-6-tvrtko.ursulin@linux.intel.com>
Message-ID: <157201494619.11797.5030029158047722846@skylake-alporthouse-com>
Date: Fri, 25 Oct 2019 15:49:06 +0100
Subject: Re: [Intel-gfx] [RFC 5/5] drm/i915: Add sysfs toggle to enable
 per-client engine stats
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0yNSAxNToyMTozMSkKPiArICAgICAgIHJl
dCA9IGk5MTVfbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZpOTE1LT5kcm0pOwo+ICsgICAgICAg
aWYgKHJldCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArCj4gKyAgICAgICBpZiAo
dmFsICYmICFpOTE1LT5jbGllbnRzLnN0YXRzLmVuYWJsZWQpCj4gKyAgICAgICAgICAgICAgIGVu
YWJsZSA9IHRydWU7Cj4gKyAgICAgICBlbHNlIGlmICghdmFsICYmIGk5MTUtPmNsaWVudHMuc3Rh
dHMuZW5hYmxlZCkKPiArICAgICAgICAgICAgICAgZGlzYWJsZSA9IHRydWU7CgpUaGUgc3RydWN0
X211dGV4IGlzIGp1c3QgZm9yIGF0b21pY2FsbHkgZW5hYmxpbmcvZGlzYWJsaW5nIHN0YXRzLCBy
aWdodD8KT25seSBvbmUgdXNlciBtYXkgdG9nZ2xlIHN0YXR1cyBhdCBhIHRpbWUuCgpJJ2Qgd3Jh
cCBpdCBhIGk5MTUtPnNwaW5sb2NrIGp1c3Qgc28gdGhlIGxvY2tpbmcgaXMgY2xlYXIgZnJvbSB0
aGUKb3V0c2V0LgoKPiArICAgICAgIGlmICghZW5hYmxlICYmICFkaXNhYmxlKQo+ICsgICAgICAg
ICAgICAgICBnb3RvIG91dDsKPiArCj4gKyAgICAgICBmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBp
OTE1LCBpZCkgewoKQSBxdWljayBzL2Zvcl9lYWNoX2VuZ2luZS9mb3JfZWFjaF91YWJpX2VuZ2lu
ZS8KCj4gKyAgICAgICAgICAgICAgIGlmIChlbmFibGUpCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgV0FSTl9PTl9PTkNFKGludGVsX2VuYWJsZV9lbmdpbmVfc3RhdHMoZW5naW5lKSk7Cj4gKyAg
ICAgICAgICAgICAgIGVsc2UgaWYgKGRpc2FibGUpCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
aW50ZWxfZGlzYWJsZV9lbmdpbmVfc3RhdHMoZW5naW5lKTsKPiArICAgICAgIH0KPiArCj4gKyAg
ICAgICBpOTE1LT5jbGllbnRzLnN0YXRzLmVuYWJsZWQgPSB2YWw7CgpOb3cgYXMgZm9yIHdoZXRo
ZXIgd2Ugd2FudCBhIHRvZ2dsZSBhcHByb2FjaCwgb3Igb25seSB3aGlsZSB0aGUgZmlsZSBpcwpv
cGVuIChhbmQgcmVmY291bnQpPwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
