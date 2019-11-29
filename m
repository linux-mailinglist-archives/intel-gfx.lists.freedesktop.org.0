Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D10C10D388
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 10:57:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BDFE6E8A1;
	Fri, 29 Nov 2019 09:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FE8C6E8A1
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 09:57:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19389325-1500050 
 for multiple; Fri, 29 Nov 2019 09:57:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 09:56:59 +0000
Message-Id: <20191129095659.665381-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Always lock the drm_mm
 around insert/remove
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

QmUgcGFyYW5vaWQgYW5kIG1ha2Ugc3VyZSB0aGUgZHJtX21tIGlzIGxvY2tlZCB3aGVuZXZlciB3
ZSBpbnNlcnQvcmVtb3ZlCm91ciBvd24gbm9kZXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkx
NV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0
LmMKaW5kZXggZjdhYTAwMzZkOTAwLi44MGNkZTViZGE5MjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMKQEAgLTExNjYsMTEgKzExNjYsMTMgQEAg
c3RhdGljIGludCBpZ3RfZ2d0dF9wYWdlKHZvaWQgKmFyZykKIAkJZ290byBvdXRfZnJlZTsKIAog
CW1lbXNldCgmdG1wLCAwLCBzaXplb2YodG1wKSk7CisJbXV0ZXhfbG9jaygmZ2d0dC0+dm0ubXV0
ZXgpOwogCWVyciA9IGRybV9tbV9pbnNlcnRfbm9kZV9pbl9yYW5nZSgmZ2d0dC0+dm0ubW0sICZ0
bXAsCiAJCQkJCSAgY291bnQgKiBQQUdFX1NJWkUsIDAsCiAJCQkJCSAgSTkxNV9DT0xPUl9VTkVW
SUNUQUJMRSwKIAkJCQkJICAwLCBnZ3R0LT5tYXBwYWJsZV9lbmQsCiAJCQkJCSAgRFJNX01NX0lO
U0VSVF9MT1cpOworCW11dGV4X3VubG9jaygmZ2d0dC0+dm0ubXV0ZXgpOwogCWlmIChlcnIpCiAJ
CWdvdG8gb3V0X3VucGluOwogCkBAIC0xMjIyLDcgKzEyMjQsOSBAQCBzdGF0aWMgaW50IGlndF9n
Z3R0X3BhZ2Uodm9pZCAqYXJnKQogb3V0X3JlbW92ZToKIAlnZ3R0LT52bS5jbGVhcl9yYW5nZSgm
Z2d0dC0+dm0sIHRtcC5zdGFydCwgdG1wLnNpemUpOwogCWludGVsX3J1bnRpbWVfcG1fcHV0KCZp
OTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKKwltdXRleF9sb2NrKCZnZ3R0LT52bS5tdXRleCk7
CiAJZHJtX21tX3JlbW92ZV9ub2RlKCZ0bXApOworCW11dGV4X3VubG9jaygmZ2d0dC0+dm0ubXV0
ZXgpOwogb3V0X3VucGluOgogCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOwogb3V0
X2ZyZWU6Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
