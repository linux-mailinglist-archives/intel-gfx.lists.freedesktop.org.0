Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF56A103E31
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 16:22:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F046C6E791;
	Wed, 20 Nov 2019 15:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 266F76E791
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 15:22:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19273468-1500050 
 for multiple; Wed, 20 Nov 2019 15:21:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 15:21:50 +0000
Message-Id: <20191120152150.3853368-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120152150.3853368-1-chris@chris-wilson.co.uk>
References: <20191120152150.3853368-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Remove the timeline as the last
 step of retiring
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

QmVmb3JlIHdlIHJlbW92ZSBmcm9tIHRoZSB0aW1lbGluZSwgZmluaXNoIGZsdXNoaW5nIHRoZSBj
b250ZXh0IHN0YXRlLgpBcyB0aGUgdGltZWxpbmUgbWF5IGJlIHBlZWtlZCB1cG9uIGJ5IGFub3Ro
ZXIgQ1BVLCB3ZSBkb24ndCB3YW50IHRvCnJlbW92ZSByZXF1ZXN0IGZyb20gdGhlIHRpbWVsaW5l
IHVudGlsIHdlIGhhdmUgZmluaXNoZWQgd29ya2luZyBvbiBpdC4KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlcXVlc3QuYyB8IDcgKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
cXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCmluZGV4IDAwMDEx
Zjk1MzNiNi4uMjQ0NWEwNjkzMjg3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpA
QCAtMjY5LDEyICsyNjksMTMgQEAgYm9vbCBpOTE1X3JlcXVlc3RfcmV0aXJlKHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxKQogCUdFTV9CVUdfT04oIWxpc3RfZW1wdHkoJnJxLT5leGVjdXRlX2NiKSk7
CiAJc3Bpbl91bmxvY2tfaXJxKCZycS0+bG9jayk7CiAKLQlyZW1vdmVfZnJvbV9jbGllbnQocnEp
OwotCWxpc3RfZGVsKCZycS0+bGluayk7Ci0KIAlpbnRlbF9jb250ZXh0X2V4aXQocnEtPmh3X2Nv
bnRleHQpOwogCWludGVsX2NvbnRleHRfdW5waW4ocnEtPmh3X2NvbnRleHQpOwogCisJLyogQW5k
IGZpbmFsbHkgYWZ0ZXIgZmx1c2hpbmcgdGhlIHN0YXRlLCByZW1vdmUgZnJvbSBwcnlpbmcgZXll
cy4gKi8KKwlyZW1vdmVfZnJvbV9jbGllbnQocnEpOworCWxpc3RfZGVsKCZycS0+bGluayk7CisK
IAlmcmVlX2NhcHR1cmVfbGlzdChycSk7CiAJaTkxNV9zY2hlZF9ub2RlX2ZpbmkoJnJxLT5zY2hl
ZCk7CiAJaTkxNV9yZXF1ZXN0X3B1dChycSk7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
