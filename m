Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A593C0D08
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 23:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F2B6E267;
	Fri, 27 Sep 2019 21:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E3C6E266
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 21:09:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18644724-1500050 for multiple; Fri, 27 Sep 2019 22:09:48 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927191443.14126-1-chris@chris-wilson.co.uk>
References: <20190927191443.14126-1-chris@chris-wilson.co.uk>
Message-ID: <156961858232.1880.8773088794707715892@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 22:09:42 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Provide a mock GPU
 reset routine
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjcgMjA6MTQ6NDIpCj4gLXN0YXRpYyByZXNl
dF9mdW5jIGludGVsX2dldF9ncHVfcmVzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
Cj4gK3N0YXRpYyByZXNldF9mdW5jIGludGVsX2dldF9ncHVfcmVzZXQoY29uc3Qgc3RydWN0IGlu
dGVsX2d0ICpndCkKPiAgewo+IC0gICAgICAgaWYgKElOVEVMX0dFTihpOTE1KSA+PSA4KQo+ICsg
ICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKPiArCj4gKyAg
ICAgICBpZiAoaXNfbW9ja19ndChndCkpCgpBY3R1YWxseSB0aGlzIGhpZ2hsaWdodHMgYW4gaXNz
dWUgd2l0aCB1c2luZyBndC0+YXdha2UgPT0gLTEgYXMgb3VyCmluZGljYXRvci4KCkhtbS4gSSB3
b25kZXIuLi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
