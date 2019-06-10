Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3BA3AF71
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 09:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A92288FAD;
	Mon, 10 Jun 2019 07:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802CC88FA4
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 07:21:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16848353-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 08:21:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 08:20:58 +0100
Message-Id: <20190610072126.6355-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC] Removing struct_mutex from around requests
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

VGhlIHBhaW50IGlzIG5vdCB5ZXQgZHJ5IG9uIHRoaXMsIGFuZCBJIGRvbid0IGV4cGVjdCBpdCB0
byBwYXNzIEJBVC4KKFRyeWJvdCBoYXMgYmVlbiBkb3duIHNvIHVuYWJsZSB0byBwcmVjaGVjayBm
b3Igc2lsbHkgYnVncy4pIFRoZXJlIGlzCm9uZSByYWNlIGluIGk5MTVfYWN0aXZlLnJldGlyZSB0
aGF0IGVsdWRlcyBtZSAoZW5hYmxpbmcga2FzYW4gYW5kCmZyaWVuZHMgaGlkZXMgdGhlIHJhY2Us
IG1ha2luZyBkZWJ1Z2dpbmcgaGFyZGVyIHRoYW4gaXQgc2hvdWxkIGJlISkgYW5kCkkgYW0gc3Vy
ZSB0aGF0IHRoZXJlIGFyZSBwbGVudHkgbW9yZSBhcyB0aGlzIGlzIG9uZSBzY2FyeSBwYXRjaHNl
dC4KClRoZSBmaXJzdCAxNCBhcmUgcHJldHR5IGJlbmlnbiBhbmQgZGVzcGVyYXRlbHkgd2FudCBy
ZXZpZXcuCi1DaHJpcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
