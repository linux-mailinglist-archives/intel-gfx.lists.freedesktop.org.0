Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A47A03783F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 17:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8771289354;
	Thu,  6 Jun 2019 15:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C279A89354
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 15:38:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16815746-1500050 for multiple; Thu, 06 Jun 2019 16:38:50 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHOs9NQpn6njScJv4UVLOxMRE5_KtnabrWXvNZHEtSwf6w@mail.gmail.com>
References: <20190603174935.23982-1-chris@chris-wilson.co.uk>
 <20190603174935.23982-3-chris@chris-wilson.co.uk>
 <CAM0jSHOs9NQpn6njScJv4UVLOxMRE5_KtnabrWXvNZHEtSwf6w@mail.gmail.com>
Message-ID: <155983552795.19464.5723615692623602273@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 06 Jun 2019 16:38:47 +0100
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Allow page pinning to be in
 the background
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMDUgMTU6MDM6MDMpCj4gT24gTW9uLCAzIEp1
biAyMDE5IGF0IDE4OjQ5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4g
d3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3BhZ2VzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYwo+ID4g
aW5kZXggNzg2OGRkNDhkOTMxLi42ODI2MjIzMWY1NmYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMKPiA+IEBAIC03MiwyMSArNzIsMTggQEAgdm9p
ZCBfX2k5MTVfZ2VtX29iamVjdF9zZXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKPiA+Cj4gPiAgICAgICAgICAgICAgICAgc3Bpbl91bmxvY2soJmk5MTUtPm1tLm9ial9s
b2NrKTsKPiA+ICAgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICBjb21wbGV0ZV9hbGwoJm9iai0+
bW0uY29tcGxldGlvbik7Cj4gPiAgfQo+IAo+IFdvcnRoIGhhdmluZyAgX19pOTE1X2dlbV9vYmpl
Y3Rfc2V0X3BhZ2VzX2Vycm9yKHN0cnVjdAo+IGRybV9pOTE1X2dlbV9vYmplY3QsIGludCBlcnIp
IGF0IHNvbWUgcG9pbnQ/CgpJIGRvbid0IHRoaW5rIGl0J3MgcmVxdWlyZWQsIGluIG15IGN1cnJl
bnQgc2tldGNoLCBhY3R1YWxseSBzZXR0aW5nIHRoZQpvYmotPm1tLnBhZ2VzIGlzIGNlbnRyYWw6
CgpzdGF0aWMgdm9pZApnZXRfcGFnZXNfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVjdCAqX3dvcmsp
CnsKICAgICAgICBzdHJ1Y3QgZ2V0X3BhZ2VzX3dvcmsgKndvcmsgPSBjb250YWluZXJfb2YoX3dv
cmssIHR5cGVvZigqd29yayksIHdvcmspOwogICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmogPSB3b3JrLT5jdHgub2JqZWN0OwogICAgICAgIHN0cnVjdCBzZ190YWJsZSAqcGFn
ZXM7CiAgICAgICAgdW5zaWduZWQgaW50IHNpemVzID0gMDsKCiAgICAgICAgaWYgKCF3b3JrLT5k
bWEuZXJyb3IpIHsKICAgICAgICAgICAgICAgIHBhZ2VzID0gb2JqLT5vcHMtPmdldF9wYWdlcygm
d29yay0+Y3R4LCAmc2l6ZXMpOwoJCWlmICghSVNfRVJSKHBhZ2VzKSkKCQkJX19zZXRfcGFnZXMo
b2JqLCBwYWdlcywgc2l6ZXMpOwoJCWVsc2UKCQkJZG1hX2ZlbmNlX3NldF9lcnJvcigmd29yay0+
ZG1hLCBQVFJfRVJSKHBhZ2VzKSk7CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgIHBh
Z2VzID0gRVJSX1BUUih3b3JrLT5kbWEuZXJyb3IpOwoJfQoKICAgICAgICBvYmotPm1tLnBhZ2Vz
ID0gcGFnZXM7CiAgICAgICAgY29tcGxldGVfYWxsKCZvYmotPm1tLmNvbXBsZXRpb24pOwogICAg
ICAgIGF0b21pY19kZWMoJm9iai0+bW0ucGFnZXNfcGluX2NvdW50KTsKCiAgICAgICAgaTkxNV9n
ZW1fb2JqZWN0X3B1dChvYmopOwogICAgICAgIHB1dF90YXNrX3N0cnVjdCh3b3JrLT5jdHgudGFz
ayk7CgogICAgICAgIGRtYV9mZW5jZV9zaWduYWwoJndvcmstPmRtYSk7CiAgICAgICAgZG1hX2Zl
bmNlX3B1dCgmd29yay0+ZG1hKTsKfQoKVGhhdCBtYXkgYWxsIGNoYW5nZSB3aXRoIGJsaXR0ZXIg
aW50ZWdyYXRpb24gOikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
