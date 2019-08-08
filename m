Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3610386735
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 18:36:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D83F6E89F;
	Thu,  8 Aug 2019 16:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 908306E89F
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 16:36:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17933796-1500050 
 for multiple; Thu, 08 Aug 2019 17:36:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 17:36:08 +0100
Message-Id: <20190808163608.28419-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Restore relaxed padding
 (OCL_OOB_SUPPRES_ENABLE) for skl+
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBiaXQgd2FzIGZsaXBlZCBvbiBmb3IgInN5bmNpbmcgZGVwZW5kZW5jaWVzIGJldHdlZW4g
Y2FtZXJhIGFuZApncmFwaGljcyIuIEJTcGVjIGhhcyBubyByZWNvbGxlY3Rpb24gd2h5LCBhbmQg
aXQgaXMgY2F1c2luZwp1bnJlY292ZXJhYmxlIEdQVSBoYW5ncyB3aXRoIFZ1bGthbiBjb21wdXRl
IHdvcmtsb2Fkcy4KCkZyb20gQlNwZWMsIHNldHRpbmcgYml0NSB0byAwIGVuYWJsZXMgcmVsYXhl
ZCBwYWRkaW5nIHJlcXVpcmVtZXRzIGZvcgpidWZmZXJzLCAxRCBhbmQgMkQgbm9uLWFycmF5LCBu
b24tTVNBQSwgbm9uLW1pcC1tYXBwZWQgbGluZWFyIHN1cmZhY2VzOwphbmQgKm11c3QqIGJlIHNl
dCB0byAwaCBvbiBza2wrIHRvIGVuc3VyZSAiT3V0IG9mIEJvdW5kcyIgY2FzZSBpcwpzdXBwcmVz
c2VkLgoKUmVwb3J0ZWQtYnk6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4K
U3VnZ2VzdGVkLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+CkJ1Z3pp
bGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA5OTgK
Rml4ZXM6IDg0MjQxNzFlMTM1YyAoImRybS9pOTE1L2dlbjk6IGgvdyB3L2E6IHN5bmNpbmcgZGVw
ZW5kZW5jaWVzIGJldHdlZW4gY2FtZXJhIGFuZCBncmFwaGljcyIpClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogSmFzb24gRWtzdHJhbmQg
PGphc29uQGpsZWtzdHJhbmQubmV0PgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBs
aW51eC5pbnRlbC5jb20+CkNjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2NC4xKwotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA1IC0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCA3MDRhY2UwMWU3ZjUuLmI5NWMxZDU5YTM0NyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0yOTcsMTEg
KzI5Nyw2IEBAIHN0YXRpYyB2b2lkIGdlbjlfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCQkJICBGTE9XX0NPTlRST0xfRU5BQkxFIHwKIAkJCSAg
UEFSVElBTF9JTlNUUlVDVElPTl9TSE9PVERPV05fRElTQUJMRSk7CiAKLQkvKiBTeW5jaW5nIGRl
cGVuZGVuY2llcyBiZXR3ZWVuIGNhbWVyYSBhbmQgZ3JhcGhpY3M6c2tsLGJ4dCxrYmwgKi8KLQlp
ZiAoIUlTX0NPRkZFRUxBS0UoaTkxNSkpCi0JCVdBX1NFVF9CSVRfTUFTS0VEKEhBTEZfU0xJQ0Vf
Q0hJQ0tFTjMsCi0JCQkJICBHRU45X0RJU0FCTEVfT0NMX09PQl9TVVBQUkVTU19MT0dJQyk7Ci0K
IAkvKiBXYUVuYWJsZVlWMTJCdWdGaXhJbkhhbGZTbGljZUNoaWNrZW43OnNrbCxieHQsa2JsLGds
ayxjZmwgKi8KIAkvKiBXYUVuYWJsZVNhbXBsZXJHUEdQVVByZWVtcHRpb25TdXBwb3J0OnNrbCxi
eHQsa2JsLGNmbCAqLwogCVdBX1NFVF9CSVRfTUFTS0VEKEdFTjlfSEFMRl9TTElDRV9DSElDS0VO
NywKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
