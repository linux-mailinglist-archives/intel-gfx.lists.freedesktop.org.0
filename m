Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D60115DA3
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 18:01:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D84F6E1EE;
	Sat,  7 Dec 2019 17:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5274A6E1EE
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 17:01:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19496912-1500050 
 for multiple; Sat, 07 Dec 2019 17:01:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Dec 2019 17:01:10 +0000
Message-Id: <20191207170110.2200142-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/8] HAX: Use aliasing-ppgtt for gen7
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

LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgNCArKy0tCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jCmluZGV4IGJiYTZiNTBlNmJlYi4uZGEzZTliNTc1MmFjIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGNpLmMKQEAgLTQzNiw3ICs0MzYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2Rldmlj
ZV9pbmZvIGludGVsX3NhbmR5YnJpZGdlX21fZ3QyX2luZm8gPSB7CiAJLmhhc19yYzYgPSAxLCBc
CiAJLmhhc19yYzZwID0gMSwgXAogCS5oYXNfcnBzID0gdHJ1ZSwgXAotCS5wcGd0dF90eXBlID0g
SU5URUxfUFBHVFRfRlVMTCwgXAorCS5wcGd0dF90eXBlID0gSU5URUxfUFBHVFRfQUxJQVNJTkcs
IFwKIAkucHBndHRfc2l6ZSA9IDMxLCBcCiAJSVZCX1BJUEVfT0ZGU0VUUywgXAogCUlWQl9DVVJT
T1JfT0ZGU0VUUywgXApAQCAtNDkzLDcgKzQ5Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfZGV2aWNlX2luZm8gaW50ZWxfdmFsbGV5dmlld19pbmZvID0gewogCS5oYXNfcnBzID0gdHJ1
ZSwKIAkuZGlzcGxheS5oYXNfZ21jaCA9IDEsCiAJLmRpc3BsYXkuaGFzX2hvdHBsdWcgPSAxLAot
CS5wcGd0dF90eXBlID0gSU5URUxfUFBHVFRfRlVMTCwKKwkucHBndHRfdHlwZSA9IElOVEVMX1BQ
R1RUX0FMSUFTSU5HLAogCS5wcGd0dF9zaXplID0gMzEsCiAJLmhhc19zbm9vcCA9IHRydWUsCiAJ
Lmhhc19jb2hlcmVudF9nZ3R0ID0gZmFsc2UsCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
