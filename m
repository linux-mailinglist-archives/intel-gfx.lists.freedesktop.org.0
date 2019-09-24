Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F2CBCAD5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 17:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB21189127;
	Tue, 24 Sep 2019 15:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A5B589127
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 15:05:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18601508-1500050 for multiple; Tue, 24 Sep 2019 16:05:00 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190924145950.3011-1-chris@chris-wilson.co.uk>
References: <20190923230209.16480-1-chris@chris-wilson.co.uk>
 <20190924145950.3011-1-chris@chris-wilson.co.uk>
Message-ID: <156933749494.4979.7750282800400668626@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 24 Sep 2019 16:04:54 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Verify the LRC
 register layout between init and HW
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjQgMTU6NTk6NTApCj4gQmVmb3JlIHdlIHN1
Ym1pdCB0aGUgZmlyc3QgY29udGV4dCB0byBIVywgd2UgbmVlZCB0byBjb25zdHJ1Y3QgYSB2YWxp
ZAo+IGltYWdlIG9mIHRoZSByZWdpc3RlciBzdGF0ZS4gVGhpcyBsYXlvdXQgaXMgZGVmaW5lZCBi
eSB0aGUgSFcgYW5kIHNob3VsZAo+IG1hdGNoIHRoZSBsYXlvdXQgZ2VuZXJhdGVkIGJ5IEhXIHdo
ZW4gaXQgc2F2ZXMgdGhlIGNvbnRleHQgaW1hZ2UuCj4gQXNzZXJ0aW5nIHRoYXQgdGhpcyBzaG91
bGQgYmUgZXF1aXZhbGVudCBzaG91bGQgaGVscCBhdm9pZCBhbnkgdW5kZWZpbmVkCj4gYmVoYXZp
b3VyIGFuZCB2ZXJpZnkgdGhhdCB3ZSBoYXZlbid0IG1pc3NlZCBhbnl0aGluZyBpbXBvcnRhbnQh
Cj4gCj4gT2YgY291cnNlLCBoYXZpbmcgaW5zaXN0ZWQgdGhhdCB0aGUgaW5pdGlhbCByZWdpc3Rl
ciBzdGF0ZSB3aXRoaW4gdGhlCj4gTFJDIHNob3VsZCBtYXRjaCB0aGF0IHJldHVybmVkIGJ5IEhX
LCB3ZSBuZWVkIHRvIGVuc3VyZSB0aGF0IGl0IGRvZXMuCj4gCj4gdjI6IERyb3AgdGhlIFJFTEFU
SVZFX01NSU8gZmxhZyBmcm9tIGdlbjExLCB3ZSBpZ25vcmUgaXQgZm9yCj4gY29uc3RydWN0aW5n
IHRoZSBscmMgaW1hZ2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFv
bG9zcHVyaW9AaW50ZWwuY29tPgoKQ2hhdHRpbmcgd2l0aCBNaWthLCBoZSB3YXMgaGFwcHkgZW5v
dWdoIHRvIGdpdmUgYW4gci1iIHdpdGhvdXQgdGhlIGdlbjExCmNodW5rLiBUbyBSRUcxNiBvciBu
b3QgdG8gUkVHMTYgaXMgYSBkZWNpc2lvbiBmb3IgbGF0ZXIsIGl0IHdhcyBub3QgYQpjcml0aWNh
bCBpc3N1ZS4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
