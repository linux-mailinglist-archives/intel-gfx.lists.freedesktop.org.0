Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 298979E4C5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 11:50:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70ACD89168;
	Tue, 27 Aug 2019 09:50:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6240F89168
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 09:49:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18275236-1500050 
 for multiple; Tue, 27 Aug 2019 10:49:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:49:33 +0100
Message-Id: <20190827094933.13778-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Markup impossible error
 pointers
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgd2UgY3JlYXRlIGEgbmV3IGxpdmVfY29udGV4dCgpIHdlIHNob3VsZCBoYXZlIGEgbWFwcGlu
ZyBmb3IgZWFjaAplbmdpbmUuIERvY3VtZW50IHRoYXQgYXNzdW1wdGlvbiB3aXRoIGFuIGFzc2Vy
dGlvbi4KClJlcG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5j
b20+ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIHwgMyArKysKIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IDNhZGI2MGMyZmQx
Zi4uMzdhMTc3ZTM3NjY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAtMzk3LDYgKzM5Nyw3IEBAIHN0YXRpYyBp
bnQgaWd0X2N0eF9leGVjKHZvaWQgKmFyZykKIAkJCX0KIAogCQkJY2UgPSBpOTE1X2dlbV9jb250
ZXh0X2dldF9lbmdpbmUoY3R4LCBlbmdpbmUtPmxlZ2FjeV9pZHgpOworCQkJR0VNX0JVR19PTihJ
U19FUlIoY2UpKTsKIAogCQkJaWYgKCFvYmopIHsKIAkJCQlvYmogPSBjcmVhdGVfdGVzdF9vYmpl
Y3QoY2UtPnZtLCBmaWxlLCAmb2JqZWN0cyk7CkBAIC01MjEsNiArNTIyLDggQEAgc3RhdGljIGlu
dCBpZ3Rfc2hhcmVkX2N0eF9leGVjKHZvaWQgKmFyZykKIAkJCV9fYXNzaWduX3BwZ3R0KGN0eCwg
cGFyZW50LT52bSk7CiAKIAkJCWNlID0gaTkxNV9nZW1fY29udGV4dF9nZXRfZW5naW5lKGN0eCwg
ZW5naW5lLT5sZWdhY3lfaWR4KTsKKwkJCUdFTV9CVUdfT04oSVNfRVJSKGNlKSk7CisKIAkJCWlm
ICghb2JqKSB7CiAJCQkJb2JqID0gY3JlYXRlX3Rlc3Rfb2JqZWN0KHBhcmVudC0+dm0sIGZpbGUs
ICZvYmplY3RzKTsKIAkJCQlpZiAoSVNfRVJSKG9iaikpIHsKLS0gCjIuMjMuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
