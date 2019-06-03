Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1C333763
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 20:00:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3C1892D6;
	Mon,  3 Jun 2019 18:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37704892D6
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 18:00:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16779078-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Jun 2019 19:00:55 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190603174935.23982-1-chris@chris-wilson.co.uk>
 <20190603174935.23982-7-chris@chris-wilson.co.uk>
In-Reply-To: <20190603174935.23982-7-chris@chris-wilson.co.uk>
Message-ID: <155958485160.22493.9407670884150949766@skylake-alporthouse-com>
Date: Mon, 03 Jun 2019 19:00:51 +0100
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Allow vma binding to occur
 asynchronously
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMDMgMTg6NDk6MzUpCj4gSWYgd2UgbGV0IHBh
Z2VzIGJlIGFsbG9jYXRlZCBhc3luY2hyb25vdXNseSwgd2UgYWxzbyB0aGVuIHdhbnQgdG8gcHVz
aAo+IHRoZSBiaW5kaW5nIHByb2Nlc3MgaW50byBhbiBhc3luY2hyb25vdXMgdGFzay4gTWFrZSBp
dCBzbywgdXRpbGlzaW5nIHRoZQo+IHJlY2VudCBpbXByb3ZlbWVudHMgdG8gZmVuY2UgZXJyb3Ig
dHJhY2tpbmcgYW5kIHN0cnVjdF9tdXRleCByZWR1Y3Rpb24uCgpDYXZlYXQgZW1wdG9yLiBEZWZp
bml0ZWx5IG1pc3Npbmcgc29tZXRoaW5nIGhlcmUsIHNvIG1vcmUgZXllcyB0aGUKbWVycmllci4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
