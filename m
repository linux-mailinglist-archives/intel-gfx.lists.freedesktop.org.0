Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B8D61FCE
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 15:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F41F989944;
	Mon,  8 Jul 2019 13:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82F0689944
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 13:49:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17170356-1500050 for multiple; Mon, 08 Jul 2019 14:49:26 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190708111944.20095-2-chris@chris-wilson.co.uk>
 <20190708113909.18117-1-chris@chris-wilson.co.uk>
 <9ee10ea0-6f1f-de68-3ff5-7a607a986ac3@linux.intel.com>
 <156258852175.9375.12523322915332431559@skylake-alporthouse-com>
 <156259274575.9375.11752216809720039961@skylake-alporthouse-com>
 <c49d580d-4db5-8d0b-01b6-1392eec32f47@linux.intel.com>
 <156259362594.9375.16872584835598042849@skylake-alporthouse-com>
In-Reply-To: <156259362594.9375.16872584835598042849@skylake-alporthouse-com>
Message-ID: <156259376403.9375.15920420333548640565@skylake-alporthouse-com>
Date: Mon, 08 Jul 2019 14:49:24 +0100
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Add to timeline requires the
 timeline mutex
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMDggMTQ6NDc6MDUpCj4gSSdtIGNvbnNpZGVy
aW5nIGhvdyBiZXN0IHRvIGFkZCBsb2NrZGVwIHRvIGhpZ2hsaWdodCB0aGF0LiBJIHRoaW5rIGlm
IEkKPiBhZGQgYSBzdHJ1Y3QgbXV0ZXggKmxvY2sgdG8gaTkxNV9hY3RpdmVfcmVxdWVzdCwgYW5k
IG1ha2UgaXQgb25seSBleGlzdAo+IHVuZGVyIGRlYnVnPwoKVGhlIHByb2JsZW0gd2l0aCB0aGF0
IGlzIHRoYXQgSSBuZWVkIHRvIGZpbmQgc29tZSB3YXkgdG8gY29tbXVuaWNhdGUKd2hlbiBJJ20g
ZGVsaWJlcmF0ZWx5IGx5aW5nLi4uIChCZWNhdXNlIHdlIGhhdmUgdGhlIGdsb2JhbCBlbmdpbmUt
cG0KYmFycmllcikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
