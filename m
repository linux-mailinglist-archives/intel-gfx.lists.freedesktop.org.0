Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CDA1072DD
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 14:14:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1696E89BF4;
	Fri, 22 Nov 2019 13:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42E1E89BF4
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 13:13:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19301208-1500050 for multiple; Fri, 22 Nov 2019 13:13:57 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191122112152.660743-1-chris@chris-wilson.co.uk>
 <20191122112152.660743-2-chris@chris-wilson.co.uk>
 <70521c9b-0118-4d56-22fd-3fe8bea5424c@linux.intel.com>
 <157442814042.2524.14421308033601241707@skylake-alporthouse-com>
In-Reply-To: <157442814042.2524.14421308033601241707@skylake-alporthouse-com>
Message-ID: <157442843457.2524.369151875676223850@skylake-alporthouse-com>
Date: Fri, 22 Nov 2019 13:13:54 +0000
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/selftests: Flush the active
 callbacks
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjIgMTM6MDk6MDApCj4gV2UgY29tcGxldGUg
dGhlIHN5bmMgYmVmb3JlIHRoZSBpbnRlcnJ1cHQgaGFuZGxlcidzIGlycSB3b3JrIGhhcwo+IGZp
bmlzaGVkIGV4ZWN1dGluZyB0aGUgY2FsbGJhY2sgdG8gbWFyayB0aGUgYmFycmllciBhcyBjb21w
bGV0ZWQuCj4gU28gd2hlbiB3ZSBsb29rIGF0IHdoZXRoZXIgdGhlIGVuZ2luZSBpcyBwYXJrZWQg
b3Igbm90LCB3ZSBzZWUgdGhlIHN0YXRlCj4gYmVmb3JlIHRoZSByZXF1ZXN0IGhhcyBmaW5pc2hl
ZCBwcm9jZXNzaW5nIGFuZCBmaW5kIGl0IHN0aWxsIGFjdGl2ZS4KCk5vdGUgdG8gc2VsZiwgaXQg
ZG9lcyBub3QgYmVsb25nIGluc2lkZSBpOTE1X3JlcXVlc3RfcmV0aXJlKCkgYXMgd2UKdGFrZSBh
IHJlZmVyZW5jZSB0byB0aGUgcmVxdWVzdCBpbiB0aGUgYnJlYWRjcnVtYiBoYW5kbGVyLiBJIGhh
dmUgYXNrZWQKbXlzZWxmIHRoYXQgbW9yZSB0aGFuIG9uY2UgYW5kIEkga2VlcCBmb3JnZXR0aW5n
IHRoZSBhbnN3ZXIuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
