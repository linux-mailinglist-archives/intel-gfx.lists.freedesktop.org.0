Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF6EAE024
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 23:06:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26FEF89E0C;
	Mon,  9 Sep 2019 21:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A1FE89E0C
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 21:06:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18431280-1500050 for multiple; Mon, 09 Sep 2019 22:06:28 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190909093116.7747-1-lionel.g.landwerlin@intel.com>
 <20190909093116.7747-3-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190909093116.7747-3-lionel.g.landwerlin@intel.com>
Message-ID: <156806318637.28420.3737329524077129939@skylake-alporthouse-com>
Date: Mon, 09 Sep 2019 22:06:26 +0100
Subject: Re: [Intel-gfx] [PATCH v16 02/13] drm/i915: add syncobj timeline
 support
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wOS0wOSAxMDozMTowNSkKPiB2OTogQWZ0
ZXIgZXhwbGFuYXRpb25zIG9uCj4gICAgIGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2Fy
Y2hpdmVzL2RyaS1kZXZlbC8yMDE5LUF1Z3VzdC8yMjkyODcuaHRtbAo+ICAgICBkcm9wIHRoZSBv
cmRlcmluZyBjaGVjayBmcm9tIHY4IChMaW9uZWwpCgpEZXNpZ25pbmcgYW4gaW50ZXJmYWNlIHRv
IGJlIGFudGlyb2J1c3QuIFVzZXJzcGFjZSBzaG9vdGluZyBpdHNlbGYgaW4KdGhlIGZvb3QgaXMg
ZmluZTsgdXNlcnNwYWNlIGJyZWFraW5nIHRoZSBrZXJuZWwgaW4gdGhlIHByb2Nlc3MsIG5vLgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
