Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77919102955
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:26:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE2DF6E99F;
	Tue, 19 Nov 2019 16:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11B26E992
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:26:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19260507-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:26:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 16:25:58 +0000
Message-Id: <20191119162559.3313003-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/gt: Move new timelines to the end of
 active_list
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

V2hlbiBhZGRpbmcgYSBuZXcgYWN0aXZlIHRpbWVsaW5lLCBwbGFjZSBpdCBhdCB0aGUgZW5kIG9m
IHRoZSBsaXN0LiBUaGlzCmFsbG93cyBmb3IgaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzKCkgdG8g
cGljayB1cCB0aGUgbmV3Y29tZXIgbW9yZQpxdWlja2x5IGFuZCBob3BlZnVsbHkgY29tcGxldGUg
dGhlIHJldGlyZW1lbnQgc29vbmVyLiBBIG1pbmlzY3VsZQpvcHRpbWlzYXRpb24uCgpSZWZlcmVu
Y2VzOiA3OTM2YTIyZGQ0NjYgKCJkcm0vaTkxNS9ndDogV2FpdCBmb3IgbmV3IHJlcXVlc3RzIGlu
IGludGVsX2d0X3JldGlyZV9yZXF1ZXN0cygpIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGlu
ZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKaW5kZXggMTZhOWU4OGQ5
M2RlLi4wZTI3NzgzNWFhZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3RpbWVsaW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxp
bmUuYwpAQCAtMzQyLDcgKzM0Miw3IEBAIHZvaWQgaW50ZWxfdGltZWxpbmVfZW50ZXIoc3RydWN0
IGludGVsX3RpbWVsaW5lICp0bCkKIAlHRU1fQlVHX09OKCF0bC0+YWN0aXZlX2NvdW50KTsgLyog
b3ZlcmZsb3c/ICovCiAKIAlzcGluX2xvY2tfaXJxc2F2ZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFn
cyk7Ci0JbGlzdF9hZGQoJnRsLT5saW5rLCAmdGltZWxpbmVzLT5hY3RpdmVfbGlzdCk7CisJbGlz
dF9hZGRfdGFpbCgmdGwtPmxpbmssICZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0KTsKIAlzcGluX3Vu
bG9ja19pcnFyZXN0b3JlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKIH0KIAotLSAKMi4yNC4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
