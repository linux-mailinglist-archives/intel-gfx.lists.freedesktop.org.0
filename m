Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3FF104596
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 22:20:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9026E8C8;
	Wed, 20 Nov 2019 21:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61A8F6E8C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 21:19:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19277984-1500050 for multiple; Wed, 20 Nov 2019 21:19:57 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191120211321.88021-1-stuart.summers@intel.com>
In-Reply-To: <20191120211321.88021-1-stuart.summers@intel.com>
Message-ID: <157428479437.24852.2519532273075364177@skylake-alporthouse-com>
Date: Wed, 20 Nov 2019 21:19:54 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use intel_gt_pm_put_async in GuC
 submission path
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0xMS0yMCAyMToxMzoyMSkKPiBHdUMgc3VibWlz
c2lvbiBwYXRoIGNhbiBiZSBjYWxsZWQgZnJvbSBhbiBpbnRlcnJ1cHQgY29udGV4dAo+IGFuZCBz
byBzaG91bGQgdXNlIGEgd29ya2VyIHRvIGF2b2lkIGhvbGRpbmcgYSBtdXRleC4KCkkgY29tcGxl
dGVseSBmb3Jnb3QgdGhlcmUgd2FzIHN0aWxsIHRoZSB2ZXN0aWdpYWwgR3VDIHN1Ym1pc3Npb24g
Y29kZS4uLgpBaCwgSSB3YXMgbG9va2luZyBtb3JlIGNhcmVmdWxseSBmb3IgZW5naW5lX3B1dCBp
biB0aGUgd3JvbmcgY29udGV4dC4KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
