Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FB547AA7
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 09:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A0AB891AB;
	Mon, 17 Jun 2019 07:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85BCA891A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 07:19:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16923049-1500050 
 for multiple; Mon, 17 Jun 2019 08:19:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 08:19:03 +0100
Message-Id: <20190617071912.20256-13-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617071912.20256-1-chris@chris-wilson.co.uk>
References: <20190617071912.20256-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/22] dma-fence: Always execute signal callbacks
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
Cc: matthew.auld@intel.com, mika.kuoppala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3cgZm9yIHNvbWUgdXNlcnMgdG8gc3VycmVwdGlvdXNseSBpbnNlcnQgbGF6eSBzaWduYWwg
Y2FsbGJhY2tzIHRoYXQKZG8gbm90IGRlcGVuZCBvbiBlbmFibGluZyB0aGUgc2lnbmFsaW5nIG1l
Y2hhbmlzbSBhcm91bmQgZXZlcnkgZmVuY2UuClRoaXMgbWVhbnMgdGhhdCB3ZSBtYXkgaGF2ZSBh
IGNiX2xpc3QgZXZlbiBpZiB0aGUgc2lnbmFsaW5nIGJpdCBpcyBub3QKZW5hYmxlZCwgc28gYWx3
YXlzIG5vdGlmeSB0aGUgY2FsbGJhY2tzLgoKVGhlIGNvc3QgaXMgdGhhdCBkbWFfZmVuY2Vfc2ln
bmFsKCkgbXVzdCBhbHdheXMgYWNxdWlyZSB0aGUgc3BpbmxvY2sgdG8KZW5zdXJlIHRoYXQgdGhl
IGNiX2xpc3QgaXMgZmx1c2hlZC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDgg
KysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS5jCmluZGV4IDAyN2E2YTg5NGFiZC4uYWI0YTQ1NmJiYTA0IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jCkBAIC0xNzAsMTEgKzE3MCw5IEBAIGludCBkbWFfZmVuY2Vfc2lnbmFsKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlKQogCiAJX19kbWFfZmVuY2Vfc2lnbmFsX190aW1lc3RhbXAoZmVu
Y2UsIGt0aW1lX2dldCgpKTsKIAotCWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19FTkFCTEVf
U0lHTkFMX0JJVCwgJmZlbmNlLT5mbGFncykpIHsKLQkJc3Bpbl9sb2NrX2lycXNhdmUoZmVuY2Ut
PmxvY2ssIGZsYWdzKTsKLQkJX19kbWFfZmVuY2Vfc2lnbmFsX19ub3RpZnkoZmVuY2UpOwotCQlz
cGluX3VubG9ja19pcnFyZXN0b3JlKGZlbmNlLT5sb2NrLCBmbGFncyk7Ci0JfQorCXNwaW5fbG9j
a19pcnFzYXZlKGZlbmNlLT5sb2NrLCBmbGFncyk7CisJX19kbWFfZmVuY2Vfc2lnbmFsX19ub3Rp
ZnkoZmVuY2UpOworCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UtPmxvY2ssIGZsYWdzKTsK
IAlyZXR1cm4gMDsKIH0KIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3NpZ25hbCk7Ci0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
