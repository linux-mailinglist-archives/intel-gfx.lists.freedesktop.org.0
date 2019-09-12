Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 110A2B1242
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 17:35:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC346EDAB;
	Thu, 12 Sep 2019 15:35:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CB8D6EDAB
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 15:35:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18466428-1500050 for multiple; Thu, 12 Sep 2019 16:35:19 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190912133816.1382-1-mika.kuoppala@linux.intel.com>
 <20190912133816.1382-2-mika.kuoppala@linux.intel.com>
 <fd3c4e97-4cb6-23d9-b58f-faeed6bcf2e9@linux.intel.com>
In-Reply-To: <fd3c4e97-4cb6-23d9-b58f-faeed6bcf2e9@linux.intel.com>
Message-ID: <156830251708.4926.17549575347943381945@skylake-alporthouse-com>
Date: Thu, 12 Sep 2019 16:35:17 +0100
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/tgl: s/ss/eu fuse reading
 support
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0xMiAxNjoxODowOCkKPiAKPiBPbiAxMi8w
OS8yMDE5IDE0OjM4LCBNaWthIEt1b3BwYWxhIHdyb3RlOgo+ID4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+ID4g
aW5kZXggNDY5ZGM1MTJjY2EzLi4zMGM1NDIxNDQwMTYgMTAwNjQ0Cj4gPiAtLS0gYS9pbmNsdWRl
L3VhcGkvZHJtL2k5MTVfZHJtLmgKPiA+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0u
aAo+ID4gQEAgLTIwMzMsOCArMjAzMywxMCBAQCBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnkgewo+ID4g
ICAgKiAgICAgICAgICAgKGRhdGFbWCAvIDhdID4+IChYICUgOCkpICYgMQo+ID4gICAgKgo+ID4g
ICAgKiAtIHRoZSBzdWJzbGljZSBtYXNrIGZvciBlYWNoIHNsaWNlIHdpdGggb25lIGJpdCBwZXIg
c3Vic2xpY2UgdGVsbGluZwo+ID4gLSAqICAgd2hldGhlciBhIHN1YnNsaWNlIGlzIGF2YWlsYWJs
ZS4gVGhlIGF2YWlsYWJpbGl0eSBvZiBzdWJzbGljZSBZIGluIHNsaWNlCj4gPiAtICogICBYIGNh
biBiZSBxdWVyaWVkIHdpdGggdGhlIGZvbGxvd2luZyBmb3JtdWxhIDoKPiA+ICsgKiAgIHdoZXRo
ZXIgYSBzdWJzbGljZSBpcyBhdmFpbGFibGUuIEdlbjEyIGhhcyBkdWFsLXN1YnNsaWNlcywgd2hp
Y2ggYXJlCj4gPiArICogICBzaW1pbGFyIHRvIHR3byBnZW4xMSBzdWJzbGljZXMuIEZvciBnZW4x
MiwgdGhpcyBhcnJheSByZXByZXNlbnRzIGR1YWwtCj4gCj4gSXQncyB1Z2x5IGluIHVzZXIgZmFj
aW5nIGRvY3VtZW50YXRpb24gaWYgd2UgY2Fubm90IGRlY2lkZSB3aGV0aGVyIGl0IGlzIAo+IEdl
bjEyIG9yIGdlbjEyLiBHZW4xMiBzcGVjaWFsIGNhc2UgYWxzbyBwcm9iYWJseSB3YXJyYW50cyB0
byBiZSBpbiBpdHMgCj4gb3duIHBhcmFncmFwaC4KCkhlcmUgaXQgd2FzIHVzaW5nIHNlbnRlbmNl
IGNhcGl0YWxpc2F0aW9uLCB3aGljaCBzdWl0cyBpdCBpZiB3ZSBhcmUKdHJlYXRpbmcgaXQgYXMg
YW4gb3JkaW5hcnkgbm91bi4gSWYgd2VudCB3aXRoIGEgcHJvcGVyIG5vdW4sIHRoZW4gR2VuMTIK
dGhyb3VnaG91dC4gSSBtaWdodCBiZSB3cm9uZywgYnV0IG15IGltcHJlc3Npb24gaXMgdGhhdCB3
ZSd2ZQpoaXN0b3JpY2FsbHkgdXNlZCBvcmRpbmFyeSBub3VucyAoZ2VuNS04LCBnZW4xMSwgZXRj
KS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
