Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1519BF67C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 18:13:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61356EDD0;
	Thu, 26 Sep 2019 16:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from Galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB5036EDD0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 16:13:38 +0000 (UTC)
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iDWOc-00031C-Bl; Thu, 26 Sep 2019 18:13:34 +0200
Date: Thu, 26 Sep 2019 18:13:34 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190926161334.mm4opgvjg5qmi6jy@linutronix.de>
References: <20190926142538.9386-1-chris@chris-wilson.co.uk>
 <20190926151308.cl4iokerchlarfya@linutronix.de>
 <156951149939.26462.704766411515323977@skylake-alporthouse-com>
 <20190926153252.r5spqenjqvkhiixe@linutronix.de>
 <156951243438.26462.2512562221056029684@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156951243438.26462.2512562221056029684@skylake-alporthouse-com>
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

T24gMjAxOS0wOS0yNiAxNjo0MDozNCBbKzAxMDBdLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gCj4g
SXQncyBhbGwgZWRnZSBpbnRlcnJ1cHRzIC0tIGFsdGhvdWdoIGZvciBnZW4yLzMgbXkgbWVtb3J5
IGlzIGhhenkuIEJ1dAo+IHRoZSBHUFUgKGNpcmNhIGdlbjYpIGNhbiBnZW5lcmF0ZSBtb3JlIHRo
YW4gZW5vdWdoIGludGVycnVwdHMgdG8gc2F0dXJhdGUKPiBhIENQVS4KCjopCgo+IC1DaHJpcwoK
U2ViYXN0aWFuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
