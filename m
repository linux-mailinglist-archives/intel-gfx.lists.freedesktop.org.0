Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3E6EC860
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 19:18:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 004C36E2AF;
	Fri,  1 Nov 2019 18:18:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B1CC6E2D1
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 18:18:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19051566-1500050 
 for multiple; Fri, 01 Nov 2019 18:18:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 18:18:20 +0000
Message-Id: <20191101181820.12932-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Reverse a ternary to make sparse
 happy
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

QXZvaWQKCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jOjI0NDI6ODU6IHdhcm5pbmc6
IGR1YmlvdXM6IHggfCAheQoKc2ltcGx5IGJ5IGludmVydGluZyB0aGUgcHJlZGljYXRlIGFuZCBy
ZXZlcnNpbmcgdGhlIHRlcm5hcnkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gubmVy
bGlnZS5yYW1hcHBhQGludGVsLmNvbT4KQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5s
YW5kd2VybGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YyB8IDEwICsrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCA2ZTM1YjkyNTU4ODIuLmFj
ZDY1ZGE1MDY1MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTI0NDEsMTIgKzI0NDEs
MTIgQEAgc3RhdGljIGludCBnZW4xMl9lbmFibGVfbWV0cmljX3NldChzdHJ1Y3QgaTkxNV9wZXJm
X3N0cmVhbSAqc3RyZWFtKQogCQkJICAgX01BU0tFRF9CSVRfRU5BQkxFKEdFTjEyX09BR19PQV9E
RUJVR19ESVNBQkxFX0NMS19SQVRJT19SRVBPUlRTIHwKIAkJCQkJICAgICAgR0VOMTJfT0FHX09B
X0RFQlVHX0lOQ0xVREVfQ0xLX1JBVElPKSB8CiAJCQkgICAvKgotCQkJICAgICogSWYgdGhlIHVz
ZXIgZGlkbid0IHJlcXVpcmUgT0EgcmVwb3J0cywgaW5zdHJ1Y3QgdGhlCi0JCQkgICAgKiBoYXJk
d2FyZSBub3QgdG8gZW1pdCBjdHggc3dpdGNoIHJlcG9ydHMuCisJCQkgICAgKiBJZiB0aGUgdXNl
ciBkaWRuJ3QgcmVxdWlyZSBPQSByZXBvcnRzLCBpbnN0cnVjdAorCQkJICAgICogdGhlIGhhcmR3
YXJlIG5vdCB0byBlbWl0IGN0eCBzd2l0Y2ggcmVwb3J0cy4KIAkJCSAgICAqLwotCQkJICAgIShz
dHJlYW0tPnNhbXBsZV9mbGFncyAmIFNBTVBMRV9PQV9SRVBPUlQpID8KLQkJCSAgIF9NQVNLRURf
QklUX0VOQUJMRShHRU4xMl9PQUdfT0FfREVCVUdfRElTQUJMRV9DVFhfU1dJVENIX1JFUE9SVFMp
IDoKLQkJCSAgIF9NQVNLRURfQklUX0RJU0FCTEUoR0VOMTJfT0FHX09BX0RFQlVHX0RJU0FCTEVf
Q1RYX1NXSVRDSF9SRVBPUlRTKSk7CisJCQkgICAoc3RyZWFtLT5zYW1wbGVfZmxhZ3MgJiBTQU1Q
TEVfT0FfUkVQT1JUKSA/CisJCQkgICBfTUFTS0VEX0JJVF9ESVNBQkxFKEdFTjEyX09BR19PQV9E
RUJVR19ESVNBQkxFX0NUWF9TV0lUQ0hfUkVQT1JUUykgOgorCQkJICAgX01BU0tFRF9CSVRfRU5B
QkxFKEdFTjEyX09BR19PQV9ERUJVR19ESVNBQkxFX0NUWF9TV0lUQ0hfUkVQT1JUUykpOwogCiAJ
aW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgR0VOMTJfT0FHX09BR0xCQ1RYQ1RSTCwgcGVyaW9k
aWMgPwogCQkJICAgKEdFTjEyX09BR19PQUdMQkNUWENUUkxfQ09VTlRFUl9SRVNVTUUgfAotLSAK
Mi4yNC4wLnJjMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
