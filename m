Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0037F10FC85
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 12:31:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54BC96E484;
	Tue,  3 Dec 2019 11:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF3AF6E484
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 11:31:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19440463-1500050 
 for multiple; Tue, 03 Dec 2019 11:31:38 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Dec 2019 11:31:39 +0000
Message-Id: <20191203113139.2876291-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Add a couple more validity
 checks to assert_pending()
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

Q2hlY2sgdGhlIHBlbmRpbmcgcmVxdWVzdCBzdWJtaXNzaW9uIGlzIHZhbGlkOiB0aGF0IGl0IGF0
IGxlYXN0IGhhcyBhCnJlZmVyZW5jZSBmb3IgdGhlIHN1Ym1pc3Npb24gYW5kIHRoYXQgdGhlIHJl
cXVlc3QgaXMgb24gdGhlIGFjdGl2ZSBsaXN0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggZmVmNGI3ZTgyM2Y1Li45MGUyYjQ0MzE1
NDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0xMzAzLDYgKzEzMDMsOSBA
QCBhc3NlcnRfcGVuZGluZ192YWxpZChjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0
cyAqZXhlY2xpc3RzLAogCQl1bnNpZ25lZCBsb25nIGZsYWdzOwogCQlib29sIG9rID0gdHJ1ZTsK
IAorCQlHRU1fQlVHX09OKCFrcmVmX3JlYWQoJnJxLT5mZW5jZS5yZWYpKTsKKwkJR0VNX0JVR19P
TighaTkxNV9yZXF1ZXN0X2lzX2FjdGl2ZShycSkpOworCiAJCWlmIChjZSA9PSBycS0+aHdfY29u
dGV4dCkgewogCQkJR0VNX1RSQUNFX0VSUigiRHVwIGNvbnRleHQ6JWxseCBpbiBwZW5kaW5nWyV6
ZF1cbiIsCiAJCQkJICAgICAgY2UtPnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0LAotLSAKMi4yNC4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
