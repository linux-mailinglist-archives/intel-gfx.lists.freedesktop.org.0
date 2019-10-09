Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3CCD17E6
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 20:57:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFCA26EA3F;
	Wed,  9 Oct 2019 18:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C486EA40
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 18:57:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18782230-1500050 for multiple; Wed, 09 Oct 2019 19:57:35 +0100
MIME-Version: 1.0
To: Sean Paul <seanpaul@chromium.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAOw6vbKE32aewT7agF9hjWzf_sLYXQsAF3pnLZJbUN4io+vVUA@mail.gmail.com>
References: <20190822065917.18988-1-chris@chris-wilson.co.uk>
 <156647232345.11829.12799168742587793498@jlahtine-desk.ger.corp.intel.com>
 <156647264559.20466.5531617090699173011@skylake-alporthouse-com>
 <CAOw6vbKE32aewT7agF9hjWzf_sLYXQsAF3pnLZJbUN4io+vVUA@mail.gmail.com>
Message-ID: <157064745334.18808.8929010738713347779@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 09 Oct 2019 19:57:33 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kill the undead
 i915_gem_batch_pool.c
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTZWFuIFBhdWwgKDIwMTktMTAtMDkgMTk6NTM6MzEpCj4gT24gVGh1LCBBdWcgMjIs
IDIwMTkgYXQgNzoxNyBBTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4g
d3JvdGU6Cj4gPgo+ID4gUXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMTktMDgtMjIgMTI6MTI6
MDMpCj4gPiA+IFF1b3RpbmcgQ2hyaXMgV2lsc29uICgyMDE5LTA4LTIyIDA5OjU5OjE3KQo+ID4g
PiA+IFlvdSBoYXZlIHRvIGN1dCBpdCBvZmYgYXQgdGhlIG5lY2ssIG90aGVyd2lzZSBpdCBqdXN0
IHJlYXBwZWFycyBpbiB0aGUKPiA+ID4gPiBuZXh0IG1lcmdlLCBsaWtlIGNvbW1pdCAzZjg2NjAy
NmYwY2UgKCJNZXJnZSBkcm0vZHJtLW5leHQKPiA+ID4gPiBpbnRvIGRybS1pbnRlbC1uZXh0LXF1
ZXVlZCIpCj4gPiA+ID4KPiA+ID4gPiBSZWZlcmVuY2VzOiAzZjg2NjAyNmYwY2UgKCJNZXJnZSBk
cm0vZHJtLW5leHQgaW50byBkcm0taW50ZWwtbmV4dC1xdWV1ZWQiKQo+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gPiA+IENj
OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gPiA+Cj4gPiA+IEFja2Vk
LWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4g
Pgo+ID4gQW5kIG9uY2UgbW9yZSB0aGUgbmFpbHMgaGF2ZSBiZWVuIHB1dCBiYWNrIGluIHRoZSBj
b2ZmaW4uCj4gCj4gTW9udGhzIGxhdGVyLCBhIGhhbmQgcmVhY2hlcyBvdXQgZnJvbSB0aGUgZ3Jh
dmUgYW5kIHNheXM6Cj4gCj4gRXJyb3I6IENhbm5vdCBvcGVuIGZpbGUgLi4vZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5jCj4gRXJyb3I6IENhbm5vdCBvcGVuIGZpbGUg
Li4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5jCj4gRXJyb3I6IENh
bm5vdCBvcGVuIGZpbGUgLi4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9v
bC5jCgpjb21taXQgYjA0NzQ2M2M4NTIyNzJlZjk5NTZhZDNhNGM3MDZmNzhmOGIwNmMxNwpBdXRo
b3I6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KRGF0
ZTogICBGcmkgQXVnIDMwIDExOjU4OjQ4IDIwMTkgKzAzMDAKCiAgICBkcm0vaTkxNTogUmVtb3Zl
IGxpbmsgdG8gbWlzc2luZyAiQmF0Y2hidWZmZXIgUG9vbHMiIGRvY3VtZW50YXRpb24KCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
