Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0854271E68
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 10:54:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EE736E140;
	Mon, 21 Sep 2020 08:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B026E140
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 08:54:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22488627-1500050 for multiple; Mon, 21 Sep 2020 09:54:49 +0100
MIME-Version: 1.0
In-Reply-To: <20200921035017.6868-1-zbigniew.kempczynski@intel.com>
References: <20200921035017.6868-1-zbigniew.kempczynski@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 21 Sep 2020 09:54:49 +0100
Message-ID: <160067848967.14092.10373472866122114270@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ensure bo is dirty when WB-mapped
 on !llc in pagefault handler
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

UXVvdGluZyBaYmlnbmlldyBLZW1wY3p5xYRza2kgKDIwMjAtMDktMjEgMDQ6NTA6MTcpCj4gT24g
IWxsYyBwbGF0Zm9ybXMgd2hlbiBidWZmZXIgaXMgbWFwcGVkIHdpdGggV0IgdXNpbmcgR0VNX01N
QVBfT0ZGU0VUCj4gcGFnZWZhdWx0IGhhbmRsZXIgY2xlYXJzIGl0cyBkaXJ0eSBmbGFnLiBUaGlz
IGhhcyBjb25zZXF1ZW5jZXMKPiBidWZmZXIgaXMgbm90IGZsdXNoZWQgb24gZXhlYyBiZWZvcmUg
bW92aW5nIHRvIHJlbmRlciBkb21haW4uCj4gU28gbWFrZSBzdXJlIHdlIGtlZXAgZGlydHkgZmxh
ZyBmb3IgYnVmZmVycyBtYXBwZWQgdG8gd3JpdGUgdW50aWwKPiBpdCBsZWF2ZXMgY3B1IGRvbWFp
bi4KClNvIHRoZSBmYXVsdGhhbmRsZXIgaXMgb25seSB0YW5nZW50aWFsbHkgYXNzb2NpYXRlZCB3
aXRoIGNhY2hlIGRvbWFpbnMuCkluIHRoYXQgYSBmcmVzaCBmYXVsdCBpcyBsaWtlbHkgdG8gaW5k
aWNhdGUgdXRpbGlzYXRpb24gb2YgdGhlIGNwdQpkb21haW4sIGJ1dCBpdCBpcyBub3QgZGVmaW5p
dGl2ZTsgdGhlcmUgbWF5IGVpdGhlciBiZSBubyBmYXVsdCBiZXR3ZWVuCmRvbWFpbiBjaGFuZ2Vz
IG9yIHRoZSBmYXVsdCBkb2VzIG5vdCBpbmN1ciBhbnkuCgpTbyB3ZSBkbyBub3QgdG91Y2ggdGhl
IGRvbWFpbiBkdXJpbmcgdGhlIGZhdWx0LCB0aGF0IGlzIHJlcXVpcmVkIHRvIGJlCnRyYWNrZWQg
Ynkgc2V0LWRvbWFpbiBhcm91bmQgdGhlIGFjY2Vzcy4gVGhpcyBlbnN1cmVzIHRoZSBmYXVsdCBo
YXMgbm8KaW1wbGljaXQgZG9tYWluIGNoYW5nZXMsIHdhaXRzIG9yIGxvY2tzLgoKSW4gcGFydGlj
dWxhciwgdGhlIHBhdGggb2YgaW50ZXJlc3QgaGVyZSBpcyByZWxhdGl2ZWx5IG5ldywgdXNpbmcg
dGhlCm9sZCBtbWFwIGlvY3RsLCB3ZSBkbyBub3Qgc2VlIHRoZSBmYXVsdCBhdCBhbGwuCgpUaGUg
YnVnIHlvdSBhcmUgbG9va2luZyBmb3IgaXMgaW4gc2V0X2RvbWFpbl9pb2N0bC4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
