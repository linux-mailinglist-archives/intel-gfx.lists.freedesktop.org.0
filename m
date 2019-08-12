Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 131F88A12D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 16:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B0E6E544;
	Mon, 12 Aug 2019 14:33:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8924C6E544
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 14:33:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17970776-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 15:33:09 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190811142801.2460-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190811142801.2460-1-chris@chris-wilson.co.uk>
Message-ID: <156562038788.2301.6620330569018451959@skylake-alporthouse-com>
Date: Mon, 12 Aug 2019 15:33:07 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Extract GT powermanagement
 interrupt handling
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMTEgMTU6Mjg6MDApCj4gRnJvbTogQW5kaSBT
aHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Cj4gCj4gaTkxNV9pcnEuYyBpcyBsYXJnZS4gSXQg
c2VydmVzIGFzIHRoZSBjZW50cmFsIGRpc3BhdGNoIGFuZCBoYW5kbGVyIGZvcgo+IGFsbCBvZiBv
dXIgZGV2aWNlIGludGVycnVwdHMuIFB1bGwgb3V0IHRoZSBHVCBwbSBpbnRlcnJ1cHQgaGFuZGxp
bmcKPiAobGVhdmluZyB0aGUgY2VudHJhbCBkaXNwYXRjaCkgc28gdGhhdCB3ZSBjYW4gZW5jYXBz
dWxhdGUgdGhlIGxvZ2ljIGEKPiBsaXR0bGUgYmV0dGVyLgo+IAo+IEJhc2VkIG9uIGEgcGF0Y2gg
YnkgQ2hyaXMgV2lsc29uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZGkgU2h5dGkgPGFuZGkuc2h5
dGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
