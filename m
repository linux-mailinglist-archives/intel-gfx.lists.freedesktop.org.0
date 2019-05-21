Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A9C24883
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 08:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C611891C2;
	Tue, 21 May 2019 06:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D0C9891C2;
 Tue, 21 May 2019 06:57:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16623319-1500050 for multiple; Tue, 21 May 2019 07:56:58 +0100
MIME-Version: 1.0
To: Dongli Zhang <dongli.zhang@oracle.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <1558413639-22568-1-git-send-email-dongli.zhang@oracle.com>
References: <1558413639-22568-1-git-send-email-dongli.zhang@oracle.com>
Message-ID: <155842181579.23981.15462387194555705539@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 21 May 2019 07:56:55 +0100
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: remove unused IO_TLB_SEGPAGES
 which should be defined by swiotlb
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
Cc: airlied@linux.ie, dongli.zhang@oracle.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEb25nbGkgWmhhbmcgKDIwMTktMDUtMjEgMDU6NDA6MzkpCj4gVGhpcyBwYXRjaCBy
ZW1vdmVzIElPX1RMQl9TRUdQQUdFUyB3aGljaCBpcyBubyBsb25nZXIgdXNlZCBzaW5jZQo+IGNv
bW1pdCA1NTg0ZjFiMWQ3M2UgKCJkcm0vaTkxNTogZml4IGk5MTUgcnVubmluZyBhcyBkb20wIHVu
ZGVyIFhlbiIpLgo+IAo+IEFzIHRoZSBkZWZpbmUgb2YgYm90aCBJT19UTEJfU0VHU0laRSBhbmQg
SU9fVExCX1NISUZUIGFyZSBmcm9tIHN3aW90bGIsCj4gSU9fVExCX1NFR1BBR0VTIHNob3VsZCBi
ZSBkZWZpbmVkIG9uIHN3aW90bGIgc2lkZSBpZiBpdCBpcyByZXF1aXJlZCBpbiB0aGUKPiBmdXR1
cmUuCgpJdCB3b3VsZCBiZSB3aXNlIHRvIHJlZmVyIHRvCgpjb21taXQgNTU4NGYxYjFkNzNlOWNj
OTUwOTI3MzRjMzE2ZTQ2N2M2YzQ0NjhmOQpBdXRob3I6IEp1ZXJnZW4gR3Jvc3MgPGpncm9zc0Bz
dXNlLmNvbT4KRGF0ZTogICBUaHUgRmViIDIgMTA6NDc6MTEgMjAxNyArMDEwMAoKICAgIGRybS9p
OTE1OiBmaXggaTkxNSBydW5uaW5nIGFzIGRvbTAgdW5kZXIgWGVuCgpzbyB0aGUgcmVhZGVyIGNh
biBoYXZlIHRoZSBoaXN0b3J5IHRvIHRyYXdsIHRocm91Z2guCgpSZWZlcmVuY2VzOiA1NTg0ZjFi
MWQ3M2UgKCJkcm0vaTkxNTogZml4IGk5MTUgcnVubmluZyBhcyBkb20wIHVuZGVyIFhlbiIpCj4g
U2lnbmVkLW9mZi1ieTogRG9uZ2xpIFpoYW5nIDxkb25nbGkuemhhbmdAb3JhY2xlLmNvbT4KUmV2
aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
