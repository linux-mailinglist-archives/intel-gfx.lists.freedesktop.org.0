Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC7B110166
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 16:41:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A236E9DD;
	Tue,  3 Dec 2019 15:41:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3A716E9DD
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 15:41:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19444737-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Dec 2019 15:41:20 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20191203152631.3107653-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191203152631.3107653-1-chris@chris-wilson.co.uk>
Message-ID: <157538768024.7230.16061724206014513396@skylake-alporthouse-com>
Date: Tue, 03 Dec 2019 15:41:20 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Add a couple more
 validity checks to assert_pending()
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTItMDMgMTU6MjY6MzApCj4gQ2hlY2sgdGhlIHBl
bmRpbmcgcmVxdWVzdCBzdWJtaXNzaW9uIGlzIHZhbGlkOiB0aGF0IGl0IGF0IGxlYXN0IGhhcyBh
Cj4gcmVmZXJlbmNlIGZvciB0aGUgc3VibWlzc2lvbiBhbmQgdGhhdCB0aGUgcmVxdWVzdCBpcyBv
biB0aGUgYWN0aXZlIGxpc3QuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
