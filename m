Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9B5EFC51
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 12:27:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98CED6E9DD;
	Tue,  5 Nov 2019 11:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A373D6E9DD
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 11:27:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19086906-1500050 for multiple; Tue, 05 Nov 2019 11:27:03 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191105112115.9060-1-matthew.auld@intel.com>
In-Reply-To: <20191105112115.9060-1-matthew.auld@intel.com>
Message-ID: <157295322286.14950.9033280908987951945@skylake-alporthouse-com>
Date: Tue, 05 Nov 2019 11:27:02 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests/blt: try to be more
 resilient against the GGTT
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTEtMDUgMTE6MjE6MTUpCj4gRm9yIGEgdGlueSBz
aGFyZWQgYWRkcmVzcyBzcGFjZSwgd2hlcmUgcGFydHMgb2YgaXQgbWlnaHQgYWxyZWFkeSBiZQo+
IHJlc2VydmVkLCB3ZSBzaG91bGQgZXhwZWN0IHRvIGhpdCB0aGUgb2NjYXNpb25hbCAtRU5PU1BD
LgoKWWVhaCwgaXQncyBhIGJ1ZyB0aG91Z2guIEl0J3Mgb24gbXkgdG9kbyBsaXN0IHRvIGRlbW9u
c3RyYXRlIHRoZSBidWcKMTAwJSB3aXRoIGp1c3QgYSBidW5jaCBvZiBwYXJhbGxlbCByZXF1ZXN0
cy4gQSBzaW1wbGUgd2F5IHRvIG1ha2UKaXQgbW9yZSBmcmVxdWVudGx5IGFmZmVjdCBsaXZlX2Js
dCBpcyB1c2UgdG8gdGhlIHNhbWUgdm0gd2l0aCBtdWx0aXBsZQpjb250ZXh0cy4KCkknbSBvayB3
aXRoIGxpdmluZyB3aXRoIHRoZSBzcG9yYWRpYyBmYWlsIGFzIGEgcmVtaW5kZXIgdW50aWwgcmVz
ZXJ2YXRpb24KaXMgcmV2YW1wZWQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
