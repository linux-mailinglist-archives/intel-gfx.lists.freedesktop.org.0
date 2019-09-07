Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1654AAC627
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 12:51:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F353B89B03;
	Sat,  7 Sep 2019 10:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B441489B03
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 10:51:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18407812-1500050 
 for multiple; Sat, 07 Sep 2019 11:50:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 11:50:46 +0100
Message-Id: <20190907105046.19934-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Remove incorrect BUG_ON for
 schedule-out
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

QXMgd2UgbWF5IHVud2luZCBpbmNvbXBsZXRlIHJlcXVlc3RzIChmb3IgcHJlZW1wdGlvbikgcHJp
b3IgdG8KcHJvY2Vzc2luZyB0aGUgQ1NCIGFuZCB0aGUgc2NoZWR1bGUtb3V0IGV2ZW50cywgd2Ug
bWF5IHVwZGF0ZSBycS0+ZW5naW5lCihyZXNldHRpbmcgaXQgdG8gcG9pbnQgYmFjayB0byB0aGUg
cGFyZW50IHZpcnR1YWwgZW5naW5lKSBwcmlvciB0bwpjYWxsaW5nIGV4ZWNsaXN0c19zY2hlZHVs
ZV9vdXQoKSwgaW52YWxpZGF0aW5nIHRoZSBhc3NlcnRpb24gdGhhdCB0aGUKcmVxdWVzdCBzdGls
bCBwb2ludHMgdG8gdGhlIGluZmxpZ2h0IGVuZ2luZS4gKFRoZSBsaWtlbGlob29kIG9mIHRoaXMg
aXMKaW5jcmVhc2VkIGlmIHRoZSBDU0IgaW50ZXJydXB0IHByb2Nlc3NpbmcgaXMgcHVzaGVkIHRv
IHRoZSBrc29mdGlycWQgZm9yCmJlaW5nIHRvbyBzbG93IGFuZCBkaXJlY3Qgc3VibWlzc2lvbiBv
dmVydGFrZXMgaXQuKQoKUmVwb3J0ZWQtYnk6IFZpbmF5IEJlbGdhdW1rYXIgPHZpbmF5LmJlbGdh
dW1rYXJAaW50ZWwuY29tPgpGaXhlczogZGY0MDMwNjkwMjlkICgiZHJtL2k5MTUvZXhlY2xpc3Rz
OiBMaWZ0IHByb2Nlc3NfY3NiKCkgb3V0IG9mIHRoZSBpcnEtb2ZmIHNwaW5sb2NrIikKU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWth
IEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBWaW5heSBCZWxnYXVta2FyIDx2aW5h
eS5iZWxnYXVta2FyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDNhYWQzNWI1NzBkNC4uMTZmMjI2MzQ5NTI1IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtNjMxLDcgKzYzMSw2IEBAIGV4ZWNsaXN0
c19zY2hlZHVsZV9vdXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqY3VyLCAqb2xkOwogCiAJdHJhY2VfaTkxNV9yZXF1ZXN0X291dChycSk7Ci0JR0VN
X0JVR19PTihpbnRlbF9jb250ZXh0X2luZmxpZ2h0KGNlKSAhPSBycS0+ZW5naW5lKTsKIAogCW9s
ZCA9IFJFQURfT05DRShjZS0+aW5mbGlnaHQpOwogCWRvCi0tIAoyLjIzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
