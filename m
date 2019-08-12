Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0678A131
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 16:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A01F6E54C;
	Mon, 12 Aug 2019 14:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2416E54C
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 14:33:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17970782-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 15:33:38 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190811142801.2460-2-chris@chris-wilson.co.uk>
 <20190811210633.18417-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190811210633.18417-1-chris@chris-wilson.co.uk>
Message-ID: <156562041655.2301.17706687918174440920@skylake-alporthouse-com>
Date: Mon, 12 Aug 2019 15:33:36 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Extract general GT interrupt
 handlers
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMTEgMjI6MDY6MzMpCj4gRnJvbTogQW5kaSBT
aHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Cj4gCj4gaTkxNV9pcnEuYyBpcyBsYXJnZS4gSXQg
c2VydmVzIGFzIHRoZSBjZW50cmFsIGRpc3BhdGNoIGFuZCBoYW5kbGVyIGZvcgo+IGFsbCBvZiBv
dXIgZGV2aWNlIGludGVycnVwdHMuIExldHMgYnJlYWsgaXQgdXAgYnkgcHVsbGluZyBvdXQgdGhl
IEdUCj4gaW50ZXJydXB0IGhhbmRsZXJzLgo+IAo+IEJhc2VkIG9uIGEgcGF0Y2ggYnkgQ2hyaXMg
V2lsc29uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
