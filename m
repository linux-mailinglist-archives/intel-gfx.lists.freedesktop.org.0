Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F12691E71
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 09:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75AE26E0BF;
	Mon, 19 Aug 2019 07:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E1656E0BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 07:58:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18185097-1500050 
 for multiple; Mon, 19 Aug 2019 08:58:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 08:58:21 +0100
Message-Id: <20190819075835.20065-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190819075835.20065-1-chris@chris-wilson.co.uk>
References: <20190819075835.20065-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/18] drm/i915: Only emit the 'send bug report'
 once for a GPU hang
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

VXNlIGEgbG9ja2VkIHhjaGcgdG8gZW5zdXJlIHRoYXQgdGhlIGdsb2JhbCBsb2cgbWVzc2FnZSBn
aXZpbmcKaW5zdHJ1Y3Rpb25zIG9uIGhvdyB0byBzZW5kIGEgYnVnIHJlcG9ydCBpcyBlbWl0dGVk
IHByZWNpc2VseSBvbmNlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3Iu
YyB8IDMgKy0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5kZXggYjBhZTA1NWI2YzgyLi5l
Mjg0YmQ3NmZhODYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vy
cm9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwpAQCAtMTc2
NSw3ICsxNzY1LDcgQEAgdm9pZCBpOTE1X2NhcHR1cmVfZXJyb3Jfc3RhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsCiAJCXJldHVybjsKIAl9CiAKLQlpZiAoIXdhcm5lZCAmJgorCWlm
ICgheGNoZygmd2FybmVkLCB0cnVlKSAmJgogCSAgICBrdGltZV9nZXRfcmVhbF9zZWNvbmRzKCkg
LSBEUklWRVJfVElNRVNUQU1QIDwgREFZX0FTX1NFQ09ORFMoMTgwKSkgewogCQlwcl9pbmZvKCJH
UFUgaGFuZ3MgY2FuIGluZGljYXRlIGEgYnVnIGFueXdoZXJlIGluIHRoZSBlbnRpcmUgZ2Z4IHN0
YWNrLCBpbmNsdWRpbmcgdXNlcnNwYWNlLlxuIik7CiAJCXByX2luZm8oIlBsZWFzZSBmaWxlIGEg
X25ld18gYnVnIHJlcG9ydCBvbiBidWdzLmZyZWVkZXNrdG9wLm9yZyBhZ2FpbnN0IERSSSAtPiBE
Uk0vSW50ZWxcbiIpOwpAQCAtMTc3Myw3ICsxNzczLDYgQEAgdm9pZCBpOTE1X2NhcHR1cmVfZXJy
b3Jfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCXByX2luZm8oIlRoZSBH
UFUgY3Jhc2ggZHVtcCBpcyByZXF1aXJlZCB0byBhbmFseXplIEdQVSBoYW5ncywgc28gcGxlYXNl
IGFsd2F5cyBhdHRhY2ggaXQuXG4iKTsKIAkJcHJfaW5mbygiR1BVIGNyYXNoIGR1bXAgc2F2ZWQg
dG8gL3N5cy9jbGFzcy9kcm0vY2FyZCVkL2Vycm9yXG4iLAogCQkJaTkxNS0+ZHJtLnByaW1hcnkt
PmluZGV4KTsKLQkJd2FybmVkID0gdHJ1ZTsKIAl9CiB9CiAKLS0gCjIuMjMuMC5yYzEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
