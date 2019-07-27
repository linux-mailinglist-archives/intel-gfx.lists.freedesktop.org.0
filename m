Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A23A778B2
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jul 2019 14:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 673366EEA1;
	Sat, 27 Jul 2019 12:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E6306EEA1
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Jul 2019 12:17:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17654851-1500050 
 for multiple; Sat, 27 Jul 2019 13:17:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 27 Jul 2019 13:17:50 +0100
Message-Id: <20190727121750.20882-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] uapi/perf: Squelch compiler warning
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

UmVtb3ZlIGNvcGlvdXMgYW1vdW50cyBvZgouL2luY2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50
Lmg6MTQ3OjU2OiB3YXJuaW5nOiBjYXN0IHRydW5jYXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFs
dWUgKDgwMDAwMDAwMDAwMDAwMDAgYmVjb21lcyAwKQphcyB0aGV5IGFyZSBkcm93bmluZyBvdXQg
b3VyIHdhcm5pbmdzLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci0tLQogaW5jbHVkZS91YXBpL2xpbnV4L3BlcmZfZXZlbnQuaCB8IDIgKy0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2luY2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50LmggYi9pbmNsdWRlL3VhcGkvbGludXgv
cGVyZl9ldmVudC5oCmluZGV4IDcxOThkZGQwYzZiMS4uOWM1Zjk1ODEwNmIwIDEwMDY0NAotLS0g
YS9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5oCisrKyBiL2luY2x1ZGUvdWFwaS9saW51
eC9wZXJmX2V2ZW50LmgKQEAgLTE0NCw4ICsxNDQsOCBAQCBlbnVtIHBlcmZfZXZlbnRfc2FtcGxl
X2Zvcm1hdCB7CiAKIAlQRVJGX1NBTVBMRV9NQVggPSAxVSA8PCAyMCwJCS8qIG5vbi1BQkkgKi8K
IAotCV9fUEVSRl9TQU1QTEVfQ0FMTENIQUlOX0VBUkxZCQk9IDFVTEwgPDwgNjMsIC8qIG5vbi1B
Qkk7IGludGVybmFsIHVzZSAqLwogfTsKKyNkZWZpbmUgX19QRVJGX1NBTVBMRV9DQUxMQ0hBSU5f
RUFSTFkJKDFVTEwgPDwgNjMpIC8qIG5vbi1BQkk7IGludGVybmFsIHVzZSAqLwogCiAvKgogICog
dmFsdWVzIHRvIHByb2dyYW0gaW50byBicmFuY2hfc2FtcGxlX3R5cGUgd2hlbiBQRVJGX1NBTVBM
RV9CUkFOQ0ggaXMgc2V0Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
