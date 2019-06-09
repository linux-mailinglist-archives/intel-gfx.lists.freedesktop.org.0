Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BF53A4F2
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Jun 2019 13:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90488892BC;
	Sun,  9 Jun 2019 11:00:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC9AE892AA;
 Sun,  9 Jun 2019 11:00:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16842681-1500050 
 for multiple; Sun, 09 Jun 2019 12:00:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  9 Jun 2019 12:00:02 +0100
Message-Id: <20190609110002.31915-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190609101615.31611-1-chris@chris-wilson.co.uk>
References: <20190609101615.31611-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] dma-fence: Signal all callbacks from
 dma_fence_release()
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
Cc: Gustavo Padovan <gustavo.padovan@collabora.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBhbiBpbGxlZ2FsIHNjZW5hcmlvLCB0byBmcmVlIHRoZSBmZW5jZSB3aGlsc3QgdGhl
cmUgYXJlIHBlbmRpbmcKY2FsbGJhY2tzLiBDdXJyZW50bHksIHdlIGVtaXQgYSBXQVJOIGFuZCB0
aGVuIGNhc3QgYXNpZGUgdGhlIGNhbGxiYWNrcwpsZWF2aW5nIHRoZW0gZGFuZ2xpbmcuIEFsdGVy
bmF0aXZlbHksIHdlIGNvdWxkIHNldCBhbiBlcnJvciBvbiB0aGUgZmVuY2UKYW5kIHRoZW4gc2ln
bmFsIGZlbmNlIHNvIHRoYXQgYW55IGRlcGVuZGVuY3kgY2hhaW5zIGZyb20gdGhlIGZlbmNlIGNh
bgpiZSB0aWRpZWQgdXAsIGFuZCBpZiB0aGV5IGNhcmUgdGhleSBjYW4gY2hlY2sgZm9yIHRoZSBl
cnJvci4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgpSZXZpZXdlZC1ieTogR3VzdGF2byBQYWRvdmFuIDxndXN0YXZvLnBhZG92YW5AY29sbGFi
b3JhLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAyMSArKysrKysrKysr
KysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYwppbmRleCAyMjdhMTk0NzZkNTYuLjU5YWM5NmVjN2JhOCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYwpAQCAtMjQ4LDggKzI0OCwyNSBAQCB2b2lkIGRtYV9mZW5jZV9yZWxlYXNl
KHN0cnVjdCBrcmVmICprcmVmKQogCiAJdHJhY2VfZG1hX2ZlbmNlX2Rlc3Ryb3koZmVuY2UpOwog
Ci0JLyogRmFpbGVkIHRvIHNpZ25hbCBiZWZvcmUgcmVsZWFzZSwgY291bGQgYmUgYSByZWZjb3Vu
dGluZyBpc3N1ZSAqLwotCVdBUk5fT04oIWxpc3RfZW1wdHkoJmZlbmNlLT5jYl9saXN0KSk7CisJ
aWYgKFdBUk4oIWxpc3RfZW1wdHkoJmZlbmNlLT5jYl9saXN0KSwKKwkJICJGZW5jZSAlczolczol
bGx4OiVsbHggcmVsZWFzZWQgd2l0aCBwZW5kaW5nIHNpZ25hbHMhXG4iLAorCQkgZmVuY2UtPm9w
cy0+Z2V0X2RyaXZlcl9uYW1lKGZlbmNlKSwKKwkJIGZlbmNlLT5vcHMtPmdldF90aW1lbGluZV9u
YW1lKGZlbmNlKSwKKwkJIGZlbmNlLT5jb250ZXh0LCBmZW5jZS0+c2Vxbm8pKSB7CisJCXVuc2ln
bmVkIGxvbmcgZmxhZ3M7CisKKwkJLyoKKwkJICogRmFpbGVkIHRvIHNpZ25hbCBiZWZvcmUgcmVs
ZWFzZSwgbGlrZWx5IGEgcmVmY291bnRpbmcgaXNzdWUuCisJCSAqCisJCSAqIFRoaXMgc2hvdWxk
IG5ldmVyIGhhcHBlbiwgYnV0IGlmIGl0IGRvZXMgbWFrZSBzdXJlIHRoYXQgd2UKKwkJICogZG9u
J3QgbGVhdmUgY2hhaW5zIGRhbmdsaW5nLiBXZSBzZXQgdGhlIGVycm9yIGZsYWcgZmlyc3QKKwkJ
ICogc28gdGhhdCB0aGUgY2FsbGJhY2tzIGtub3cgdGhpcyBzaWduYWwgaXMgZHVlIHRvIGFuIGVy
cm9yLgorCQkgKi8KKwkJc3Bpbl9sb2NrX2lycXNhdmUoZmVuY2UtPmxvY2ssIGZsYWdzKTsKKwkJ
ZmVuY2UtPmVycm9yID0gLUVERUFETEs7CisJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKGZlbmNl
KTsKKwkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZShmZW5jZS0+bG9jaywgZmxhZ3MpOworCX0KIAog
CWlmIChmZW5jZS0+b3BzLT5yZWxlYXNlKQogCQlmZW5jZS0+b3BzLT5yZWxlYXNlKGZlbmNlKTsK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
