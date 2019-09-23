Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A391DBB7E1
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 17:28:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C128A6E948;
	Mon, 23 Sep 2019 15:28:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5C456E946
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 15:28:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18588939-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 16:28:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 16:28:44 +0100
Message-Id: <20190923152844.8914-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923152844.8914-1-chris@chris-wilson.co.uk>
References: <20190923152844.8914-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915: Prevent bonded requests from
 overtaking each other on preemption
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

Rm9yY2UgYm9uZGVkIHJlcXVlc3RzIHRvIHJ1biBvbiBkaXN0aW5jdCBlbmdpbmVzIHNvIHRoYXQg
dGhleSBjYW5ub3QgYmUKc2h1ZmZsZWQgb250byB0aGUgc2FtZSBlbmdpbmUgd2hlcmUgdGltZXNs
aWNpbmcgd2lsbCByZXZlcnNlIHRoZSBvcmRlci4KQSBib25kZWQgcmVxdWVzdCB3aWxsIG9mdGVu
IHdhaXQgb24gYSBzZW1hcGhvcmUgc2lnbmFsZWQgYnkgaXRzIG1hc3RlciwKY3JlYXRpbmcgYW4g
aW1wbGljaXQgZGVwZW5kZW5jeSAtLSBpZiB3ZSBpZ25vcmUgdGhhdCBpbXBsaWNpdCBkZXBlbmRl
bmN5CmFuZCBhbGxvdyB0aGUgYm9uZGVkIHJlcXVlc3QgdG8gcnVuIG9uIHRoZSBzYW1lIGVuZ2lu
ZSBhbmQgYmVmb3JlIGl0cwptYXN0ZXIsIHdlIHdpbGwgY2F1c2UgYSBHUFUgaGFuZy4gW1doZXRo
ZXIgaXQgd2lsbCBoYW5nIHRoZSBHUFUgaXMKZGViYXRhYmxlLCB3ZSBzaG91bGQga2VlcCBvbiB0
aW1lc2xpY2luZyBhbmQgZWFjaCB0aW1lc2xpY2Ugc2hvdWxkIGJlCiJhY2NpZGVudGFsbHkiIGNv
dW50ZWQgYXMgZm9yd2FyZCBwcm9ncmVzcywgaW4gd2hpY2ggY2FzZSBpdCBzaG91bGQgcnVuCmJ1
dCBhdCBvbmUtaGFsZiB0byBvbmUtdGhpcmQgc3BlZWQuXQoKV2UgY2FuIHByZXZlbnQgdGhpcyBp
bnZlcnNpb24gYnkgcmVzdHJpY3Rpbmcgd2hpY2ggZW5naW5lcyB3ZSBhbGxvdwpvdXJzZWx2ZXMg
dG8ganVtcCB0byB1cG9uIHByZWVtcHRpb24sIGkuZS4gYmFraW5nIGluIHRoZSBhcnJhbmdlbWVu
dAplc3RhYmxpc2hlZCBhdCBmaXJzdCBleGVjdXRpb24uIChXZSBzaG91bGQgYWxzbyBjb25zaWRl
ciBjYXB0dXJpbmcgdGhlCmltcGxpY2l0IGRlcGVuZGVuY3kgdXNpbmcgaTkxNV9zY2hlZF9hZGRf
ZGVwZW5kZW5jeSgpLCBidXQgZmlyc3Qgd2UgbmVlZAp0byB0aGluayBhYm91dCB0aGUgY29uc3Ry
YWludHMgdGhhdCByZXF1aXJlcyBvbiB0aGUgZXhlY3V0aW9uL3JldGlyZW1lbnQKb3JkZXJpbmcu
KQoKRml4ZXM6IDhlZTM2ZTA0OGM5OCAoImRybS9pOTE1L2V4ZWNsaXN0czogTWluaW1hbGlzdGlj
IHRpbWVzbGljaW5nIikKUmVmZXJlbmNlczogZWUxMTM2OTA4ZTliICgiZHJtL2k5MTUvZXhlY2xp
c3RzOiBWaXJ0dWFsIGVuZ2luZSBib25kaW5nIikKVGVzdGNhc2U6IGlndC9nZW1fZXhlY19iYWxh
bmNlci9ib25kZWQtc2xpY2UKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMjAgKysrKysrKysrKysrLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggMzIyMjg3OTQzZTMzLi42Y2ZkYzBm
OWYyYjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0zODY5LDE4ICszODY5
LDIyIEBAIHN0YXRpYyB2b2lkCiB2aXJ0dWFsX2JvbmRfZXhlY3V0ZShzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSwgc3RydWN0IGRtYV9mZW5jZSAqc2lnbmFsKQogewogCXN0cnVjdCB2aXJ0dWFsX2Vu
Z2luZSAqdmUgPSB0b192aXJ0dWFsX2VuZ2luZShycS0+ZW5naW5lKTsKKwlpbnRlbF9lbmdpbmVf
bWFza190IGFsbG93ZWQsIGV4ZWM7CiAJc3RydWN0IHZlX2JvbmQgKmJvbmQ7CiAKKwlhbGxvd2Vk
ID0gfnRvX3JlcXVlc3Qoc2lnbmFsKS0+ZW5naW5lLT5tYXNrOworCiAJYm9uZCA9IHZpcnR1YWxf
ZmluZF9ib25kKHZlLCB0b19yZXF1ZXN0KHNpZ25hbCktPmVuZ2luZSk7Ci0JaWYgKGJvbmQpIHsK
LQkJaW50ZWxfZW5naW5lX21hc2tfdCBvbGQsIG5ldywgY21wOworCWlmIChib25kKQorCQlhbGxv
d2VkICY9IGJvbmQtPnNpYmxpbmdfbWFzazsKIAotCQljbXAgPSBSRUFEX09OQ0UocnEtPmV4ZWN1
dGlvbl9tYXNrKTsKLQkJZG8gewotCQkJb2xkID0gY21wOwotCQkJbmV3ID0gY21wICYgYm9uZC0+
c2libGluZ19tYXNrOwotCQl9IHdoaWxlICgoY21wID0gY21weGNoZygmcnEtPmV4ZWN1dGlvbl9t
YXNrLCBvbGQsIG5ldykpICE9IG9sZCk7Ci0JfQorCS8qIFJlc3RyaWN0IHRoZSBib25kZWQgcmVx
dWVzdCB0byBydW4gb24gb25seSB0aGUgYXZhaWxhYmxlIGVuZ2luZXMgKi8KKwlleGVjID0gUkVB
RF9PTkNFKHJxLT5leGVjdXRpb25fbWFzayk7CisJd2hpbGUgKCF0cnlfY21weGNoZygmcnEtPmV4
ZWN1dGlvbl9tYXNrLCAmZXhlYywgZXhlYyAmIGFsbG93ZWQpKQorCQk7CisKKwkvKiBQcmV2ZW50
IHRoZSBtYXN0ZXIgZnJvbSBiZWluZyByZS1ydW4gb24gdGhlIGJvbmRlZCBlbmdpbmVzICovCisJ
dG9fcmVxdWVzdChzaWduYWwpLT5leGVjdXRpb25fbWFzayAmPSB+YWxsb3dlZDsKIH0KIAogc3Ry
dWN0IGludGVsX2NvbnRleHQgKgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
