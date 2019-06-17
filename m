Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D4947BB9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 09:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E85589145;
	Mon, 17 Jun 2019 07:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34A7A89145
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 07:56:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16923363-1500050 for multiple; Mon, 17 Jun 2019 08:56:33 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190617071912.20256-1-chris@chris-wilson.co.uk>
References: <20190617071912.20256-1-chris@chris-wilson.co.uk>
Message-ID: <156075819334.7096.3892065645319738291@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 17 Jun 2019 08:56:33 +0100
Subject: Re: [Intel-gfx] [PATCH 01/22] drm/i915: Restore
 -Wunused-but-set-variable
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
Cc: matthew.auld@intel.com, mika.kuoppala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTcgMDg6MTg6NTEpCj4gV2UgYXBwZWFyIHRv
IGJlIGNsZWFyIG9mIHRoaXMgd2FybmluZywgc28gdGltZSB0byByZS1lbmFibGUgdGhlIGdjYyBl
cnJvcgo+IGNoZWNraW5nLgoKU2NyYXRjaCB0aGF0LCBpdCBpcyBvbmx5IHNob3dpbmcgdXAgdW5k
ZXIgVz0xLiBIbW0uCgpJIGZvcmdldCBpdCBpcyB0byBjb3ZlciB0aGUgdm9sdW1pbm91cyBhdG9t
aWMgbWFjcm9zLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
