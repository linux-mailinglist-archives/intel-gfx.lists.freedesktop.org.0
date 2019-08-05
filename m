Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AA7823EE
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 19:26:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCFD589CC4;
	Mon,  5 Aug 2019 17:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FFB089CC4
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 17:26:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17895755-1500050 for multiple; Mon, 05 Aug 2019 18:24:59 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190804195052.31140-5-michal.wajdeczko@intel.com>
References: <20190804195052.31140-1-michal.wajdeczko@intel.com>
 <20190804195052.31140-5-michal.wajdeczko@intel.com>
Message-ID: <156502589749.28464.16867740411855198086@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 05 Aug 2019 18:24:57 +0100
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/uc: Don't fail on HuC early
 init errors
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTA0IDIwOjUwOjUyKQo+IFNpbmNlIGNv
bW1pdCAzMDFlZmU5NmY3NzcgKCJkcm0vaTkxNS91YzogRG9uJ3QgZmFpbCBvbiBIdUMKPiBmaXJt
d2FyZSBmYWlsdXJlIikgd2UgY2FuIGNvbnRpbnVlIGRyaXZlciBsb2FkIGFmdGVyIGVycm9yCj4g
ZHVyaW5nIEh1QyBmaXJtd2FyZSBsb2FkIG9yIGF1dGhlbnRpY2F0aW9uLCBidXQgd2UgY291bGQK
PiBzdGlsbCBmYWlsIG9uIGFueSBlcnJvciBkdXJpbmcgZWFybHkgSHVDIGluaXRpYWxpemF0aW9u
Lgo+IENoYW5nZSB0aGF0IGJ5IGlnbm9yaW5nIEh1QyByZWxhdGVkIGVycm9ycyB1bnRpbCBoYXJk
d2FyZQo+IGluaXRpYWxpemF0aW9uIHBoYXNlIHdoZXJlIHdlIGNhbiBkZWNpZGUgYWJvdXQgbmV4
dCBzdGVwcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2Fq
ZGVjemtvQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CgpTbyB3ZSBqdXN0IGxlYXZlIHRoZSBIdUMgdW5pbml0aWFsaXNlZCBhbmQg
SFVDX1NUQVRVUyBzaG91bGQgdGhlbiByZXBvcnQKbm8gYXV0aGVudGljYXRpb24uIChXZSBkbyBz
Y3J1YiB0aGF0IGF0IHNvbWUgcG9pbnQganVzdCBpbiBjYXNlIHRoZQptaWxsaW9uIHJlc2V0cyBk
aWQgbm90PykKClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
