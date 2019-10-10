Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A11D2D3D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 17:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E44226E34D;
	Thu, 10 Oct 2019 15:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48B3B6E34D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 15:04:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18792854-1500050 for multiple; Thu, 10 Oct 2019 16:04:17 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191010072752.18495-1-chris@chris-wilson.co.uk>
 <ff929097-6bad-d79b-5180-ea0401aae7db@intel.com>
In-Reply-To: <ff929097-6bad-d79b-5180-ea0401aae7db@intel.com>
Message-ID: <157071985534.29611.8193498608093973532@skylake-alporthouse-com>
Date: Thu, 10 Oct 2019 16:04:15 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/perf: store the associated
 engine of a stream
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0xMCAxNTo1NzozMikKPiBPbiAxMC8x
MC8yMDE5IDEwOjI3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBGcm9tOiBMaW9uZWwgTGFuZHdl
cmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4gPgo+ID4gV2UnbGwgdXNlIHRo
aXMgaW5mb3JtYXRpb24gbGF0ZXIgdG8gdmVyaWZ5IHRoYXQgYSBjbGllbnQgdHJ5aW5nIHRvCj4g
PiByZWNvbmZpZ3VyZSB0aGUgc3RyZWFtIGRvZXMgc28gb24gdGhlIHJpZ2h0IGVuZ2luZS4gRm9y
IG5vdywgd2Ugd2FudCB0bwo+ID4gcHVsbCB0aGUga25vd2xlZGdlIG9mIHdoaWNoIGVuZ2luZSB3
ZSB1c2UgaW50byBhIGNlbnRyYWwgcHJvcGVydHkuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTGlv
bmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IAo+IAo+IFlv
dXIgY2hhbmdlcyBsb29rIGZpbmUgOgo+IAo+IFJldmlld2VkLWJ5OiBMaW9uZWwgTGFuZHdlcmxp
biA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkFuZCB0aGUgcXVldWUgZ3JhZHVhbGx5IHNo
cmlua3MuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
