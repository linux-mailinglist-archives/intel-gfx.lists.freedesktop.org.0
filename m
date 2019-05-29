Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7E62DD06
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 14:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6FE36E30B;
	Wed, 29 May 2019 12:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F9DC6E2F6;
 Wed, 29 May 2019 12:28:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16719614-1500050 for multiple; Wed, 29 May 2019 13:28:03 +0100
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <155912801762.13891.15171740473591714585@skylake-alporthouse-com>
References: <20190529110355.GA19119@mwanda>
 <155912801762.13891.15171740473591714585@skylake-alporthouse-com>
Message-ID: <155913288011.13891.1426155673802597558@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 29 May 2019 13:28:00 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: selftest_lrc: Check the correct
 variable
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
Cc: kernel-janitors@vger.kernel.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMjkgMTI6MDY6NTcpCj4gUXVvdGluZyBEYW4g
Q2FycGVudGVyICgyMDE5LTA1LTI5IDEyOjAzOjU1KQo+ID4gV2Ugc2hvdWxkIGNoZWNrICJyZXF1
ZXN0W25dIiBpbnN0ZWFkIG9mIGp1c3QgInJlcXVlc3QiLgo+ID4gCj4gPiBGaXhlczogNzhlNDFk
ZGQyMTk4ICgiZHJtL2k5MTU6IEFwcGx5IGFuIGV4ZWN1dGlvbl9tYXNrIHRvIHRoZSB2aXJ0dWFs
X2VuZ2luZSIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVy
QG9yYWNsZS5jb20+Cj4gCj4gT29wcy4KPiBSZXZpZXdkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KCnMvUmV2aWV3ZC9SZXZpZXdlZC8KQW5kIHB1c2hlZCwgdGhh
bmtzIGZvciB0aGUgZml4LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
