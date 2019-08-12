Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D63389B86
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 12:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC4226E4CA;
	Mon, 12 Aug 2019 10:32:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BC1F6E4CA;
 Mon, 12 Aug 2019 10:32:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17967360-1500050 
 for multiple; Mon, 12 Aug 2019 11:32:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 11:32:24 +0100
Message-Id: <20190812103224.30163-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib/i915: Trim ring measurement by one
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmUgYSBsaXR0bGUgbW9yZSBjb25zZXJ2YXRpdmUgaW4gb3VyIHJpbmcgbWVhc3VyZW1lbnQgYW5k
IGV4Y2x1ZGUgb25lCmJhdGNoIHRvIGxlYXZlIHJvb20gaW4gY2FzZSBvdXIgdXNlciBuZWVkcyB0
byB3cmFwICh3aGVyZSBhIHJlcXVlc3Qgd2lsbApiZSBleHBhbmRlZCB0byBjb3ZlciB0aGUgdW51
c2VkIHNwYWNlIGF0IHRoZSBlbmQgb2YgdGhlIHJpbmcpLgoKUmVmZXJlbmNlczogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzc0ClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGxpYi9pOTE1L2dl
bV9yaW5nLmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2xpYi9pOTE1L2dlbV9yaW5nLmMgYi9saWIvaTkxNS9n
ZW1fcmluZy5jCmluZGV4IGZkYjlmYzFiMS4uYmY3ZjQzOWUxIDEwMDY0NAotLS0gYS9saWIvaTkx
NS9nZW1fcmluZy5jCisrKyBiL2xpYi9pOTE1L2dlbV9yaW5nLmMKQEAgLTEwMyw3ICsxMDMsNyBA
QCBfX2dlbV9tZWFzdXJlX3JpbmdfaW5mbGlnaHQoaW50IGZkLCB1bnNpZ25lZCBpbnQgZW5naW5l
LCBlbnVtIG1lYXN1cmVfcmluZ19mbGFncwogCX0gd2hpbGUgKDEpOwogCiAJaWd0X2Fzc2VydF9l
cShfX2V4ZWNidWYoZmQsICZleGVjYnVmKSwgLUVJTlRSKTsKLQlpZ3RfYXNzZXJ0KGNvdW50KTsK
KwlpZ3RfYXNzZXJ0KGNvdW50ID4gMSk7CiAKIAltZW1zZXQoJml0diwgMCwgc2l6ZW9mKGl0dikp
OwogCXNldGl0aW1lcihJVElNRVJfUkVBTCwgJml0diwgTlVMTCk7CkBAIC0xMTgsNyArMTE4LDgg
QEAgX19nZW1fbWVhc3VyZV9yaW5nX2luZmxpZ2h0KGludCBmZCwgdW5zaWduZWQgaW50IGVuZ2lu
ZSwgZW51bSBtZWFzdXJlX3JpbmdfZmxhZ3MKIAogCWdlbV9xdWllc2NlbnRfZ3B1KGZkKTsKIAot
CXJldHVybiBjb3VudDsKKwkvKiBCZSBjb25zZXJ2YXRpdmUgaW4gY2FzZSB3ZSBtdXN0IHdyYXAg
bGF0ZXIgKi8KKwlyZXR1cm4gY291bnQgLSAxOwogfQogCiAvKioKLS0gCjIuMjMuMC5yYzEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
