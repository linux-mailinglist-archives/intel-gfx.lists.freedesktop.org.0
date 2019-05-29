Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8E82DB63
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 13:07:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E601F6E2C1;
	Wed, 29 May 2019 11:07:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB5356E2C7;
 Wed, 29 May 2019 11:07:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16718579-1500050 for multiple; Wed, 29 May 2019 12:07:00 +0100
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190529110355.GA19119@mwanda>
References: <20190529110355.GA19119@mwanda>
Message-ID: <155912801762.13891.15171740473591714585@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 29 May 2019 12:06:57 +0100
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

UXVvdGluZyBEYW4gQ2FycGVudGVyICgyMDE5LTA1LTI5IDEyOjAzOjU1KQo+IFdlIHNob3VsZCBj
aGVjayAicmVxdWVzdFtuXSIgaW5zdGVhZCBvZiBqdXN0ICJyZXF1ZXN0Ii4KPiAKPiBGaXhlczog
NzhlNDFkZGQyMTk4ICgiZHJtL2k5MTU6IEFwcGx5IGFuIGV4ZWN1dGlvbl9tYXNrIHRvIHRoZSB2
aXJ0dWFsX2VuZ2luZSIpCj4gU2lnbmVkLW9mZi1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBl
bnRlckBvcmFjbGUuY29tPgoKT29wcy4KUmV2aWV3ZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
