Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E823AEAE83
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 12:13:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 495476EE29;
	Thu, 31 Oct 2019 11:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB7096EE29
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 11:13:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19031255-1500050 
 for multiple; Thu, 31 Oct 2019 11:12:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2019 11:12:55 +0000
Message-Id: <20191031111255.6416-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Drop inspection of execbuf flags
 during evict
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

V2l0aCB0aGUgZ29hbCBvZiByZW1vdmluZyB0aGUgc2VyaWFsaXNhdGlvbiBmcm9tIGFyb3VuZCBl
eGVjYnVmLCB3ZSB3aWxsCm5vIGxvbmdlciBoYXZlIHRoZSBwcml2aWxlZ2Ugb2YgdGhlcmUgYmVp
bmcgYSBzaW5nbGUgZXhlY2J1ZiBpbiBmbGlnaHQKYXQgYW55IHRpbWUgYW5kIHNvIHdpbGwgb25s
eSBiZSBhYmxlIHRvIGluc3BlY3QgdGhlIHVzZXIncyBmbGFncyB3aXRoaW4KdGhlIGNhcmVmdWxs
eSBjb250cm9sbGVkIGV4ZWNidWYgY29udGV4dC4gaTkxNV9nZW1fZXZpY3RfZm9yX25vZGUoKSBp
cwp0aGUgb25seSB1c2VyIG91dHNpZGUgb2YgZXhlY2J1ZiB0aGF0IGN1cnJlbnRseSBwZWVrcyBh
dCB0aGUgZmxhZyB0bwpjb252ZXJ0IGFuIG92ZXJsYXBwaW5nIHNvZnRwaW5uZWQgcmVxdWVzdCBm
cm9tIEVOT1NQQyB0byBFSU5WQUwuIFJldHJhY3QKdGhpcyBuaWNldHkgYW5kIG9ubHkgcmVwb3J0
IEVOT1NQQyBpZiB0aGUgbG9jYXRpb24gaXMgaW4gY3VycmVudCB1c2UsCmVpdGhlciBkdWUgdG8g
dGhpcyBleGVjYnVmIG9yIGFub3RoZXIuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRp
bmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9l
dmljdC5jIHwgMyAtLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2V2aWN0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ldmljdC5jCmluZGV4IDdlNjJjMzEwMjkwZi4uNGU1NTIxZmE2Zjhm
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ldmljdC5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2V2aWN0LmMKQEAgLTMxOCw5ICszMTgsNiBA
QCBpbnQgaTkxNV9nZW1fZXZpY3RfZm9yX25vZGUoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAq
dm0sCiAJCS8qIE92ZXJsYXAgb2Ygb2JqZWN0cyBpbiB0aGUgc2FtZSBiYXRjaD8gKi8KIAkJaWYg
KGk5MTVfdm1hX2lzX3Bpbm5lZCh2bWEpKSB7CiAJCQlyZXQgPSAtRU5PU1BDOwotCQkJaWYgKHZt
YS0+ZXhlY19mbGFncyAmJgotCQkJICAgICp2bWEtPmV4ZWNfZmxhZ3MgJiBFWEVDX09CSkVDVF9Q
SU5ORUQpCi0JCQkJcmV0ID0gLUVJTlZBTDsKIAkJCWJyZWFrOwogCQl9CiAKLS0gCjIuMjQuMC5y
YzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
