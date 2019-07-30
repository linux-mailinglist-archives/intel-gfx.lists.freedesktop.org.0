Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EE67B1D9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 20:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75CA96E5CE;
	Tue, 30 Jul 2019 18:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FB3D6E5CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 18:23:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17737822-1500050 for multiple; Tue, 30 Jul 2019 19:23:22 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190730181903.17820-4-michal.wajdeczko@intel.com>
References: <20190730181903.17820-1-michal.wajdeczko@intel.com>
 <20190730181903.17820-4-michal.wajdeczko@intel.com>
Message-ID: <156451100107.6373.6432960079841559038@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Jul 2019 19:23:21 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/uc: Stop sanitizing enable_guc
 modparam
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTMwIDE5OjE5OjAzKQo+IEFzIHdlIGFs
cmVhZHkgdHJhY2sgR3VDL0h1QyB1c2VzIGJ5IG90aGVyIG1lYW5zIHRoYW4gbW9kcGFyYW0KPiB0
aGVyZSBpcyBubyBwb2ludCBpbiBzYW5pdGl6aW5nIGl0LiBKdXN0IHNjYW4gbW9kcGFyYW0gZm9y
Cj4gbWFqb3IgZGlzY3JlcGFuY2llcyBiZXR3ZWVuIHdoYXQgd2FzIHJlcXVlc3RlZCB2cyBhY3R1
YWwuCgpOb3RlIHRoYXQgaWd0IGlzIHVzaW5nIHRoaXMgbW9kcGFyYW0gdG8gZGlzY292ZXIgaWYg
Z3VjIHN1Ym1pc3Npb24gaXMKYWN0aXZlLiA6fAoKRm9ydHVuYXRlbHksIGl0IGFwcGVhcnMgdGhh
dCBubyBvbmUgaXMgdXNpbmcgdGhhdCBmYWNpbGl0eSBzbyBxdWlja2x5CnJlbW92ZSBpdCEKLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
