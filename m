Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFBF2056E9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 18:17:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42FBF6E9D3;
	Tue, 23 Jun 2020 16:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 075836E0F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 16:17:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21592453-1500050 for multiple; Tue, 23 Jun 2020 17:17:43 +0100
MIME-Version: 1.0
In-Reply-To: <3ea271d6-3101-62e0-8fb6-d433ba78ff17@shipmail.org>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <1712fc5b-9b1e-0632-13c0-e0bc2c1d889d@shipmail.org>
 <e05ef872-8659-2a11-5c89-c42cf080905b@shipmail.org>
 <159292086189.10607.10450244252436195167@build.alporthouse.com>
 <3ea271d6-3101-62e0-8fb6-d433ba78ff17@shipmail.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Thomas Hellström (Intel) <thomas_os@shipmail.org>, intel-gfx@lists.freedesktop.org
Message-ID: <159292905802.3967.14570193627723429860@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 23 Jun 2020 17:17:38 +0100
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA2LTIzIDE2OjA5OjA4KQo+
IFlvdSBjYW4ndCB0YWtlIHRoZSBkbWFfcmVzdl9sb2NrIGluc2lkZSBhIGZlbmNlIGNyaXRpY2Fs
IHNlY3Rpb24uCgpJIG11Y2ggcHJlZmVyIHRoZSBhbHRlcm5hdGl2ZSBpbnRlcnByZXRhdGlvbiwg
eW91IGNhbid0IHdhaXQgaW5zaWRlIGEKZG1hX3Jlc3ZfbG9jay4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
