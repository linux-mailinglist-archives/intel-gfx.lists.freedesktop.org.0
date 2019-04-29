Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF7AE2FA
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 14:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64FE488EE3;
	Mon, 29 Apr 2019 12:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3E5288EE3
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 12:45:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16395563-1500050 for multiple; Mon, 29 Apr 2019 13:45:12 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <770f5f1c2dd99e4d6a314b70184e71b928a6d362.1556540890.git.jani.nikula@intel.com>
References: <cover.1556540889.git.jani.nikula@intel.com>
 <770f5f1c2dd99e4d6a314b70184e71b928a6d362.1556540890.git.jani.nikula@intel.com>
Message-ID: <155654191148.27886.16635270994402996173@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 29 Apr 2019 13:45:11 +0100
Subject: Re: [Intel-gfx] [PATCH 19/21] drm/i915: move some leftovers to
 intel_pm.h from i915_drv.h
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNC0yOSAxMzoyOTozNykKPiBDb21taXQgNjk2MTcz
YjA2NGM2ICgiZHJtL2k5MTU6IGV4dHJhY3QgaW50ZWxfcG0uaCBmcm9tIGludGVsX2Rydi5oIikK
PiBtaXNzZWQgdGhlIGRlY2xhcmF0aW9ucyBpbiBpOTE1X2Rydi5oLgoKRndpdywgSSB3YW50IHRv
IHB1bGwgdGhlc2UgYWxvbmcgd2l0aCBndCBwb3dlcm1hbmFnZW1lbnQgYW5kIHJwcyBpbnRvCmd0
L2ludGVsX2d0X3BtLmMgYW5kIGEgZmV3IGZyaWVuZHMuCgpEb2Vzbid0IG1ha2UgbXVjaCBkaWZm
ZXJlbmNlIGZvciB0aGlzIHBhdGNoOyBqdXN0IHBsYW5uZWQgb2Jzb2xlc2NlbmNlLgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
