Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABF9104064
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:12:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 502476E85E;
	Wed, 20 Nov 2019 16:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A77F6E85E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:12:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19274146-1500050 for multiple; Wed, 20 Nov 2019 16:12:45 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191120152150.3853368-1-chris@chris-wilson.co.uk>
 <20191120152150.3853368-2-chris@chris-wilson.co.uk>
 <126971b1-987a-c93b-e222-eee81602bae6@linux.intel.com>
In-Reply-To: <126971b1-987a-c93b-e222-eee81602bae6@linux.intel.com>
Message-ID: <157426636191.13839.5512117664866831406@skylake-alporthouse-com>
Date: Wed, 20 Nov 2019 16:12:41 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Remove the timeline as the
 last step of retiring
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yMCAxNjowNzoxNCkKPiAKPiBPbiAyMC8x
MS8yMDE5IDE1OjIxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBCZWZvcmUgd2UgcmVtb3ZlIGZy
b20gdGhlIHRpbWVsaW5lLCBmaW5pc2ggZmx1c2hpbmcgdGhlIGNvbnRleHQgc3RhdGUuCj4gPiBB
cyB0aGUgdGltZWxpbmUgbWF5IGJlIHBlZWtlZCB1cG9uIGJ5IGFub3RoZXIgQ1BVLCB3ZSBkb24n
dCB3YW50IHRvCj4gPiByZW1vdmUgcmVxdWVzdCBmcm9tIHRoZSB0aW1lbGluZSB1bnRpbCB3ZSBo
YXZlIGZpbmlzaGVkIHdvcmtpbmcgb24gaXQuCj4gCj4gSSBoYXZlIHRvIGFzayB3aHkgSSdtIGFm
cmFpZC4KCkl0J3MgdGhlIGFsdGVybmF0aXZlIGlkZWEgdG8gcGF0Y2ggMS4gSWYgd2UgcmVvcmRl
ciB0aGUgY29kZSBpbiB0aGUKcmV0aXJlLCB0aGUgc2FuaXR5IGNoZWNrcyBpbiBwYXRjaCAxIHdv
bid0IG5vdGljZSB0aGUgaW5jb25zaXN0ZW50CnN0YXRlLiBJIHRoaW5rIHBhdGNoIDEgaXMgdGhl
IGJldHRlciBleHByZXNzaW9uOiBpZiB5b3UgYXJlIGRlcGVuZGVudCBvbgpzZWVpbmcgdGhlIHBv
c3QtcmV0aXJlbWVudCBzdGF0ZSwgeW91IHNob3VsZCB3YWl0IHVudGlsIHRoYXQgYWZ0ZXIKcmV0
aXJpbmcuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
