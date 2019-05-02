Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A85611A14
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 15:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC6E89491;
	Thu,  2 May 2019 13:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 879FF89491
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 13:22:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16429296-1500050 for multiple; Thu, 02 May 2019 14:22:38 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-5-chris@chris-wilson.co.uk>
 <0161450d-1058-c313-4f31-5adb1e34092f@linux.intel.com>
In-Reply-To: <0161450d-1058-c313-4f31-5adb1e34092f@linux.intel.com>
Message-ID: <155680335685.9023.13728003939061967960@skylake-alporthouse-com>
Date: Thu, 02 May 2019 14:22:36 +0100
Subject: Re: [Intel-gfx] [PATCH 05/14] drm/i915: Remove delay for idle_work
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wMiAxNDoxOTozOCkKPiAKPiBPbiAwMS8w
NS8yMDE5IDEyOjQ1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX3BtLmMKPiA+IGluZGV4IDQ5YjBjZTU5NGYyMC4uYWU5MWFkN2NiMzFlIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fcG0uYwo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fcG0uYwo+ID4gQEAgLTI5LDEyICsyOSwxMiBAQCBzdGF0
aWMgdm9pZCBpOTE1X2dlbV9wYXJrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ID4g
ICBzdGF0aWMgdm9pZCBpZGxlX3dvcmtfaGFuZGxlcihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmsp
Cj4gPiAgIHsKPiA+ICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0KPiA+IC0g
ICAgICAgICAgICAgY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigqaTkxNSksIGdlbS5pZGxlX3dv
cmsud29yayk7Cj4gPiArICAgICAgICAgICAgIGNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKmk5
MTUpLCBnZW0uaWRsZV93b3JrKTsKPiA+ICAgCj4gPiAgICAgICBtdXRleF9sb2NrKCZpOTE1LT5k
cm0uc3RydWN0X211dGV4KTsKPiA+ICAgCj4gPiAgICAgICBpbnRlbF93YWtlcmVmX2xvY2soJmk5
MTUtPmd0Lndha2VyZWYpOwo+ID4gLSAgICAgaWYgKCFpbnRlbF93YWtlcmVmX2FjdGl2ZSgmaTkx
NS0+Z3Qud2FrZXJlZikpCj4gPiArICAgICBpZiAoIWludGVsX3dha2VyZWZfYWN0aXZlKCZpOTE1
LT5ndC53YWtlcmVmKSAmJiAhd29ya19wZW5kaW5nKHdvcmspKQo+IAo+IFdoYXQgaXMgdGhlIHJl
YXNvbiBmb3IgdGhlICF3b3JrX3BlbmRpbmcgY2hlY2s/CgpKdXN0IHRoYXQgd2UgYXJlIGdvaW5n
IHRvIGJlIGNhbGxlZCBhZ2Fpbiwgc28gd2FpdCB1bnRpbCB0aGUgbmV4dCB0aW1lIHRvCnNlZSBp
ZiB3ZSBzdGlsbCBuZWVkIHRvIHBhcmsuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
