Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA94AFAC3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 12:48:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EE216EA7F;
	Wed, 11 Sep 2019 10:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 838A16EA7F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 10:48:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18449655-1500050 for multiple; Wed, 11 Sep 2019 11:48:13 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190911101959.13793-1-chris@chris-wilson.co.uk>
References: <20190910073931.GY7482@intel.com>
 <20190911101959.13793-1-chris@chris-wilson.co.uk>
Message-ID: <156819889189.30942.12283117245309848263@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Sep 2019 11:48:11 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Allow clobbering gpu resets
 if the display is off
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMTEgMTE6MTk6NTkpCj4gSWYgdGhlIGRpc3Bs
YXkgaXMgaW5hY3RpdmUsIHdlIG5lZWQgbm90IHdvcnJ5IGFib3V0IHRoZSBncHUgcmVzZXQKPiBj
bG9iYmVyaW5nIHRoZSBkaXNwbGF5ISBUbyBwcmV2ZW50IHRoZSBkaXNwbGF5IGNoYW5naW5nIHN0
YXRlIGJldHdlZW4gdXMKPiBjaGVja2luZyB0aGUgYWN0aXZlIHN0YXRlIGFuZCBkb2luZyB0aGUg
aGFyZCByZXNldCwgd2UgaW50cm9kdWNlIHRoZQo+IGxpZ2h0d2VpZ2h0IHJlc2V0IGxvY2sgdG8g
dGhlIGF0b21pYyBjb21taXQgZm9yIHRoZSBhZmZlY3RlZCAobGVnYWN5KQo+IHBsYXRmb3Jtcy4K
Cj4gKyAgICAgICAvKiBQcmV2ZW50IHN0YXJ0aW5nIGEgR1BVIHJlc2V0IHdoaWxlIHdlIGNoYW5n
ZSBnbG9iYWwgZGlzcGxheSBzdGF0ZSAqLwo+ICsgICAgICAgc3JjdSA9IC1FTk9ERVY7Cj4gKyAg
ICAgICBpZiAoSU5URUxfSU5GTyhkZXZfcHJpdiktPmdwdV9yZXNldF9jbG9iYmVyc19kaXNwbGF5
KQo+ICsgICAgICAgICAgICAgICAvKiBvbmx5IGZhaWxzIGlmIGludGVycnVwdGVkICovCj4gKyAg
ICAgICAgICAgICAgIHNyY3UgPSBpbnRlbF9ndF9yZXNldF90cnlsb2NrKCZkZXZfcHJpdi0+Z3Qp
OwoKVGhpcyBpcyBvdmVya2lsbD8gQmVmb3JlIHN0YXJ0aW5nIHRoZSBHUFUgcmVzZXQsIHdlIHNl
cmlhbGlzZSB3aXRoIHRoZQptb2Rlc2V0LCBkbyB3ZSBub3Q/Ci1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
