Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5715D100F24
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 00:03:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F1436E637;
	Mon, 18 Nov 2019 23:03:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F306E072
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 23:03:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19248369-1500050 
 for multiple; Mon, 18 Nov 2019 23:02:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 23:02:48 +0000
Message-Id: <20191118230254.2615942-14-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/19] drm/i915/gt: Move new timelines to the
 end of active_list
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
dGhlIHJldGlyZW1lbnQgc29vbmVyLgoKUmVmZXJlbmNlczogNzkzNmEyMmRkNDY2ICgiZHJtL2k5
MTUvZ3Q6IFdhaXQgZm9yIG5ldyByZXF1ZXN0cyBpbiBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMo
KSIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3RpbWVsaW5lLmMKaW5kZXggYmQ5NzNkOTUwMDY0Li5iMTkwYTVkOWFiMDIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwpAQCAtMzU5LDcgKzM1OSw3IEBA
IHZvaWQgaW50ZWxfdGltZWxpbmVfZW50ZXIoc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCkKIAog
CXNwaW5fbG9jaygmdGltZWxpbmVzLT5sb2NrKTsKIAlpZiAoIWF0b21pY19mZXRjaF9pbmMoJnRs
LT5hY3RpdmVfY291bnQpKQotCQlsaXN0X2FkZCgmdGwtPmxpbmssICZ0aW1lbGluZXMtPmFjdGl2
ZV9saXN0KTsKKwkJbGlzdF9hZGRfdGFpbCgmdGwtPmxpbmssICZ0aW1lbGluZXMtPmFjdGl2ZV9s
aXN0KTsKIAlzcGluX3VubG9jaygmdGltZWxpbmVzLT5sb2NrKTsKIH0KIAotLSAKMi4yNC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
