Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABFF27FF3
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 16:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00EAD89F07;
	Thu, 23 May 2019 14:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510E789F07
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 14:38:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16656432-1500050 for multiple; Thu, 23 May 2019 15:38:49 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190523143354.9825-1-chris@chris-wilson.co.uk>
References: <20190523143354.9825-1-chris@chris-wilson.co.uk>
Message-ID: <155862232912.28319.5865249883599206898@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 May 2019 15:38:49 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Keep user GGTT alive for a
 minimum of 250ms
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMjMgMTU6MzM6NTQpCj4gK3N0YXRpYyB2b2lk
IF9fdXNlcmZhdWx0X3RpbWVvdXQoc3RydWN0IHRpbWVyX2xpc3QgKnQpCj4gK3sKPiArICAgICAg
IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0KPiArICAgICAgICAgICAgICAgZnJvbV90
aW1lcihpOTE1LCB0LCBtbS51c2VyZmF1bHRfdGltZXIpOwo+ICsKPiArICAgICAgIGludGVsX3J1
bnRpbWVfcG1fcHV0KGk5MTUsIHhjaGcoJmk5MTUtPm1tLnVzZXJmYXVsdF93YWtlcmVmLCAwKSk7
Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHVzZXJmYXVsdF9hdXRvc3VzcGVuZChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiArewo+ICsgICAgICAgaW50ZWxfd2FrZXJlZl90IHdha2Vy
ZWY7Cj4gKwo+ICsgICAgICAgaWYgKCFDT05GSUdfRFJNX0k5MTVfVVNFUkZBVUxUX0FVVE9TVVNQ
RU5EKQo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKwo+ICsgICAgICAgd2FrZXJlZiA9IGlu
dGVsX3J1bnRpbWVfcG1fZ2V0KGk5MTUpOwo+ICsgICAgICAgaWYgKGNtcHhjaGcoJmk5MTUtPm1t
LnVzZXJmYXVsdF93YWtlcmVmLCAwLCB3YWtlcmVmKSkKPiArICAgICAgICAgICAgICAgaW50ZWxf
cnVudGltZV9wbV9wdXQoaTkxNSwgd2FrZXJlZik7Cj4gKwo+ICsgICAgICAgbW9kX3RpbWVyKCZp
OTE1LT5tbS51c2VyZmF1bHRfdGltZXIsCj4gKyAgICAgICAgICAgICAgICAgamlmZmllcyArIG1z
ZWNzX3RvX2ppZmZpZXNfdGltZW91dChDT05GSUdfRFJNX0k5MTVfVVNFUkZBVUxUX0FVVE9TVVNQ
RU5EKSk7CgpUaGlzIGlzIHJhY3kgKHRpbWVyIG1heSBmaXJlIGluIGJldHdlZW4gdGhlIHJwbV9n
ZXQgYW5kIG1vZF90aW1lciksIGJ1dAp3aWxsIGRvIGZvciBub3cgdG8gdGVzdCB3aGV0aGVyIHRo
aXMgaXMgdGhlIGdlbV9tbWFwX2d0dCBpc3N1ZSBvbiBpY2wuCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
