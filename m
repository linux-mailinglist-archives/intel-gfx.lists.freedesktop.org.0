Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 476291D73C8
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 11:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91F8189E47;
	Mon, 18 May 2020 09:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11F1189E47
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 09:19:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21227134-1500050 for multiple; Mon, 18 May 2020 10:18:50 +0100
MIME-Version: 1.0
In-Reply-To: <20200516133102.32167-1-chris@chris-wilson.co.uk>
References: <20200516132444.24007-1-chris@chris-wilson.co.uk>
 <20200516133102.32167-1-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158979352965.17769.6762149584043163933@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 18 May 2020 10:18:49 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Measure CS_TIMESTAMP
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMjAtMDUtMTYgMTQ6MzE6MDIpCj4gQ291bnQgdGhlIG51
bWJlciBvZiBDU19USU1FU1RBTVAgdGlja3MgYW5kIGNoZWNrIHRoYXQgaXQgbWF0Y2hlcyBvdXIK
PiBleHBlY3RhdGlvbnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+CgppbGs6Cjw2PiBbMTk3LjQxMDc0Ml0gcmNzMDogVElNRVNUQU1QIDAg
Y3ljbGVzIFswbnNdIGluIDEwMDEzMjJucyBbMTI1MTcgY3ljbGVzXSwgdXNpbmcgQ1MgY2xvY2sg
ZnJlcXVlbmN5IG9mIDEyNTAwS0h6CgplbGs6Cjw2PiBbMjAzLjI3ODg1OF0gcmNzMDogVElNRVNU
QU1QIDU2MjAzNjczNiBjeWNsZXMgWzMzNzIyMTYzMDE4bnNdIGluIDEwMDEzNjZucyBbMTY2OTAg
Y3ljbGVzXSwgdXNpbmcgQ1MgY2xvY2sgZnJlcXVlbmN5IG9mIDE2NjY2S0h6CgpUaG9zZSB0d28g
ZG8gbG9vayBnaWJiZXJpc2guCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
