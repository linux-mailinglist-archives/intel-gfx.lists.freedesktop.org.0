Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0334BBEF5F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 12:16:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E246ED19;
	Thu, 26 Sep 2019 10:16:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4EF56ED19
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 10:16:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18624537-1500050 for multiple; Thu, 26 Sep 2019 11:16:02 +0100
MIME-Version: 1.0
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190926100635.9416-3-michal.winiarski@intel.com>
References: <20190926100635.9416-1-michal.winiarski@intel.com>
 <20190926100635.9416-3-michal.winiarski@intel.com>
Message-ID: <156949295958.4979.6865451072911250004@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 26 Sep 2019 11:15:59 +0100
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Adjust length of
 MI_LOAD_REGISTER_REG
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAxOS0wOS0yNiAxMTowNjozMikKPiBEZWZhdWx0
IGxlbmd0aCB2YWx1ZSBvZiBNSV9MT0FEX1JFR0lTVEVSX1JFRyBpcyAxLgo+IEFsc28gbW92ZSBp
dCBvdXQgb2YgY21kLXBhcnNlci1vbmx5IHJlZ2lzdGVycyBzaW5jZSB3ZSdyZSBnb2luZyB0byB1
c2UKPiBpdCBpbiBpOTE1LgoKSG1tLiBTbyB3ZSBkbyBmaW5kX2NtZF9pbl90YWJsZSgpIFtjbWRw
YXJzZXJdIHRoYXQgaWdub3JlcyB0aGUgbGVuZ3RoCmZpZWxkLCB0aGlzIHNob3VsZCBub3QgYWZm
ZWN0IGNtZHBhcnNlci4gVGhpcyBpcyBjaGVja2VkIGJ5CmdlbV9leGVjX3BhcnNlL2xvYWQtcmVn
aXN0ZXItcmVnLiBTbyBsb25nIGFzIGhzdyBkb2Vzbid0IHByb3ZlIG1lIHdyb25nLAoKUmV2aWV3
ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
