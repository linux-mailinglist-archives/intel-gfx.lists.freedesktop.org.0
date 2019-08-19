Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 780F594CFE
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 20:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87306E264;
	Mon, 19 Aug 2019 18:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9064A6E264
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 18:33:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18193326-1500050 for multiple; Mon, 19 Aug 2019 19:33:02 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHOy1=KT-XD96ORmY3Dj1Ex7TroqsaJAFwtCSA-2odKY9w@mail.gmail.com>
References: <20190819164448.22132-1-chris@chris-wilson.co.uk>
 <20190819164448.22132-2-chris@chris-wilson.co.uk>
 <CAM0jSHOy1=KT-XD96ORmY3Dj1Ex7TroqsaJAFwtCSA-2odKY9w@mail.gmail.com>
Message-ID: <156623957978.1374.12561596096681999508@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 19 Aug 2019 19:32:59 +0100
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915: Generalise the clflush
 dma-worker
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMTkgMTk6MTY6MjApCj4gT24gTW9uLCAxOSBB
dWcgMjAxOSBhdCAxNzo0NSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4KPiA+IEV4dHJhY3QgdGhlIGRtYS1mZW5jZSB3b3JrZXIgdXNlZCBieSBjbGZs
dXNoIGZvciB3aWRlciB1c2UsIGFzIHdlCj4gPiBhbnRpY2lwYXRlIHVzaW5nIHdvcmtlcnMgY291
cGxlZCB0byBkbWEtZmVuY2VzIG1vcmUgZnJlcXVlbnRseS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAKPiA8c25pcD4KPiAK
PiA+ICsKPiA+ICtzdGF0aWMgY29uc3QgY2hhciAqZ2V0X3RpbWVsaW5lX25hbWUoc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2UpCj4gPiArewo+ID4gKyAgICAgICByZXR1cm4gIndvcmsiOwo+ID4gK30K
PiAKPiB3b3JrLT5uYW1lLCBvciBub3QgYWxsIHRoYXQgdXNlZnVsIGZvciBkZWJ1Zz8KCkhtbS4g
d29yay0+bmFtZSBmZWVscyBsaWtlIG92ZXJraWxsLiBJZiB3ZSBjb3VsZCAiJXBTIiB3b3JrLT5m
bi4uLgoKVGhhdCB0dXJucyBvdXQgdG8ga2FsbHN5bXNfbG9va3VwKCksIGJ1dCBpdCB0YWtlcyBh
IG5hbWVidWYuCgpXaXRoIHR3byBmdW5jdGlvbiBwb2ludGVycywgSSB3YXMgdGhpbmtpbmcgd2Ug
c2hvdWxkIG1vdmUgdG8gYSBjb25zdAp2ZnVuYyB0YWJsZSwgZ2l2ZW4gdGhlIHZhcmlvdXMgaXNz
dWVzIHdpdGggb3ZlcndyaXRpbmcgZnVuY3Rpb24gcG9pbnRzLgpXZSBjYW4gdGhyb3cgYSBuYW1l
IGluIHRoZXJlLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
