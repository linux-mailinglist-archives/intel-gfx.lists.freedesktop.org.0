Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A67A38979C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 09:14:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 209F16E4B3;
	Mon, 12 Aug 2019 07:13:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E68CF6E4B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 07:13:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17964774-1500050 for multiple; Mon, 12 Aug 2019 08:13:28 +0100
MIME-Version: 1.0
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190812071148.GA696@tigerII.localdomain>
References: <20190808172226.18306-1-chris@chris-wilson.co.uk>
 <20190812071148.GA696@tigerII.localdomain>
Message-ID: <156559400671.2301.14424611837808765850@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 12 Aug 2019 08:13:26 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop reconfiguring our shmemfs
 mountpoint
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
Cc: Sedat Dilek <sedat.dilek@gmail.com>, intel-gfx@lists.freedesktop.org,
 Hugh Dickins <hughd@google.com>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTZXJnZXkgU2Vub3poYXRza3kgKDIwMTktMDgtMTIgMDg6MTE6NDgpCj4gT24gKDA4
LzA4LzE5IDE4OjIyKSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFsuLl0KPiA+IEBAIC0yMCwzMSAr
MjAsMTggQEAgaW50IGk5MTVfZ2VtZnNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKPiA+ICAgICAgIGlmICghdHlwZSkKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7
Cj4gWy4uXQo+ID4gKyAgICAgZ2VtZnMgPSBrZXJuX21vdW50KHR5cGUpOwo+ID4gKyAgICAgaWYg
KElTX0VSUihnZW1mcykpCj4gPiArICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKGdlbWZzKTsK
PiA+ICAKPiA+ICAgICAgIGk5MTUtPm1tLmdlbWZzID0gZ2VtZnM7Cj4gCj4gV2Ugc3RpbGwgaGF2
ZSB0byBwdXRfZmlsZXN5c3RlbSgpLiBSaWdodD8KClllcy4gV2Ugc3RpbGwgeW91ciBwYXRjaGVz
IGZvciBFWFBPUlRfU1lNQk9MLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
