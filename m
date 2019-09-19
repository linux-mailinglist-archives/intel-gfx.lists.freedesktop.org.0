Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A51FB8220
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 22:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56256F54E;
	Thu, 19 Sep 2019 20:05:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 094256F54E
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 20:05:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18550957-1500050 for multiple; Thu, 19 Sep 2019 21:05:12 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>,
 Ramalingam C <ramalingam.c@intel.com>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>
References: <20190919180433.12442-1-ramalingam.c@intel.com>
In-Reply-To: <20190919180433.12442-1-ramalingam.c@intel.com>
Message-ID: <156892350961.1196.1328671197355986285@skylake-alporthouse-com>
Date: Thu, 19 Sep 2019 21:05:09 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Create dumb buffer from LMEM
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

UXVvdGluZyBSYW1hbGluZ2FtIEMgKDIwMTktMDktMTkgMTk6MDQ6MzMpCj4gV2hlbiBMTUVNIGlz
IHN1cHBvcnRlZCwgZHVtYiBidWZmZXIgcHJlZmVycmVkIHRvIGJlIGNyZWF0ZWQgZnJvbSBMTUVN
Lgo+IAo+IFRoaXMgaXMgZGV2ZWxvcGVkIG9uIHRvcCBvZiB2MyBMTUVNIHNlcmllcwo+IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNTY2ODMvLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiBjYzogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jIHwgMTggKysrKysrKysrKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYwo+IGluZGV4IGU0NTg1MDdiMTU1OC4uYzBkZWNiZDAyMGNlIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jCj4gQEAgLTE2MSw3ICsxNjEsNyBAQCBzdGF0aWMgaW50Cj4gIGk5MTVfZ2Vt
X2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4gICAgICAgICAgICAgICAgIHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgICAgICAgICAgICAgICAgdTY0ICpzaXplX3As
Cj4gLSAgICAgICAgICAgICAgIHUzMiAqaGFuZGxlX3ApCj4gKyAgICAgICAgICAgICAgIHUzMiAq
aGFuZGxlX3AsIGVudW0gaW50ZWxfcmVnaW9uX2lkIG1lbV9yZWdpb24pCgpHZW5lcmFsIHBhdHRl
cm4gaXMgdG8ga2VlcCBvdXRwYXJhbXMgbGFzdC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
