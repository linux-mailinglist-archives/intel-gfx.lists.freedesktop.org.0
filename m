Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6891214D3B0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 00:34:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5A406E4F4;
	Wed, 29 Jan 2020 23:34:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7C896E4F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 23:34:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20053481-1500050 for multiple; Wed, 29 Jan 2020 23:34:36 +0000
MIME-Version: 1.0
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200129232345.84512-1-jose.souza@intel.com>
References: <20200129232345.84512-1-jose.souza@intel.com>
Message-ID: <158034087595.14720.5661755284131686497@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 29 Jan 2020 23:34:35 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix preallocated barrier list
 append
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

UXVvdGluZyBKb3PDqSBSb2JlcnRvIGRlIFNvdXphICgyMDIwLTAxLTI5IDIzOjIzOjQ1KQo+IE9u
bHkgdGhlIGZpcnN0IGFuZCB0aGUgbGFzdCBub2RlcyB3ZXJlIGJlaW5nIGFkZGVkIHRvCj4gcmVm
LT5wcmVhbGxvY2F0ZWRfYmFycmllcnMuCj4gCj4gSSdtIG5vdCBmYW1pbGlhciB3aXRoIHRoaXMg
cGFydCBvZiB0aGUgY29kZSBidXQgaWYgdGhhdCBpcyB0aGUKPiBleHBlY3RlZCBiZWhhdmlvciBp
dCBpcyBsZWFraW5nIHRoZSBub2RlcyBpbiBiZXR3ZWVuLgoKRm9ydHVuYXRlbHkgb25seSB1c2Vk
IHdpdGggYSBtYXhpbXVtIG9mIGEgcGFpciBvZiBlbmdpbmVzLgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
