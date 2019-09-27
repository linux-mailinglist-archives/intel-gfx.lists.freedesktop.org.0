Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF1DC0172
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 10:48:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94AA56EEB8;
	Fri, 27 Sep 2019 08:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from Galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 005D56EEB8
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 08:48:06 +0000 (UTC)
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iDlv2-0006Rz-Ge; Fri, 27 Sep 2019 10:48:04 +0200
Date: Fri, 27 Sep 2019 10:48:04 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190927084804.jgnji4ujava3huqf@linutronix.de>
References: <20190926142538.9386-1-chris@chris-wilson.co.uk>
 <20190926151308.cl4iokerchlarfya@linutronix.de>
 <156951149939.26462.704766411515323977@skylake-alporthouse-com>
 <20190926153252.r5spqenjqvkhiixe@linutronix.de>
 <156951243438.26462.2512562221056029684@skylake-alporthouse-com>
 <156951267358.26462.10383059640355784434@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156951267358.26462.10383059640355784434@skylake-alporthouse-com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Delegate our irq handler to a
 thread
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
Cc: Clark Williams <williams@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOS0yNiAxNjo0NDozMyBbKzAxMDBdLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBJ
dCdzIGFsbCBlZGdlIGludGVycnVwdHMgLS0gYWx0aG91Z2ggZm9yIGdlbjIvMyBteSBtZW1vcnkg
aXMgaGF6eS4gQnV0Cj4gPiB0aGUgR1BVIChjaXJjYSBnZW42KSBjYW4gZ2VuZXJhdGUgbW9yZSB0
aGFuIGVub3VnaCBpbnRlcnJ1cHRzIHRvIHNhdHVyYXRlCj4gPiBhIENQVS4KPiAKPiBTbyBldmVy
eXRoaW5nIG9sZGVyIHRoYW4gZ2VuNSBoYXMgTVNJIGRpc2FibGVkIGl0IGFwcGVhcnMgYW5kIG5l
ZWRzCj4gT05FU0hPVC4KCkFsc28gQUNQSS9QQ0ktcXVpcmtzIG1heSBkZWNpZGUgdGhhdCBNU0kg
aXMgYnJva2VuIG9uIHRoZSBzeXN0ZW0gYW5kCmRpc2FibGUgaXQuCgpJZiB5b3UgZW5kIHVwIHdp
dGggYSBzaGFyZWQgaGFuZGxlciwgeW91IGNhbid0IG1peCBPTkVTSE9UIGFtb25nIHRoZQpoYW5k
bGVycy4gU28gZWl0aGVyIGFsbCBoYXZlIHRoYXQgZmxhZyBzZXQgb3Igbm9uZSBvZiB0aGVtLgpJ
biB0aGF0IGNhc2UgeW91IG5lZWQgdG8gcHJvdmlkZSBhIHRpbnkgcHJpbWFyeSBoYW5kbGVyIHdo
aWNoIGp1c3QKZGlzYWJsZXMgdGhlIElSUSAoaW4gdGhlIEhXKSBhbmQgdGhlIHRocmVhZGVkIGhh
bmRsZXIgaGFzIHRvIGVuYWJsZSBpdAphZ2FpbiAoYXQgdGhlIGVuZCBvZiBpdHMgcm91dGluZSku
Cgo+IC1DaHJpcwoKU2ViYXN0aWFuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
