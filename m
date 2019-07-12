Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CF966B99
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 13:27:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 838CC6E352;
	Fri, 12 Jul 2019 11:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB586E354
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 11:27:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17245706-1500050 
 for multiple; Fri, 12 Jul 2019 12:27:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 12:27:21 +0100
Message-Id: <20190712112725.2892-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] ppGTT the recursive wars
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

RG9pbmcgbW9yZSB3aXRoIGxlc3MhCgpXZSByZXN0b3JlIGFuZCBzdWNjZXNmdWxseSBnZW5lcmFs
aXNlIGEgcmVjZW50bHkgbG9zdCBvcHRpbWlzYXRpb24gdG8KYXZvaWQgdXBkYXRpbmcgcGFnZSBk
aXJlY3RvcmllcyB0byBiZSByZW1vdmVkLCBhbGwgd2hpbGUgdXNpbmcgbGVzcyBpJAphbmQgaG9w
ZWZ1bGx5IG1vcmUgcHJlZGljdGFibGUgYnJhbmNoZXMuIE1pcmNvcHRpbWlzYXRpb25zLCBidXQg
bGVzcwpjb2RlIGZvciB0aGUgd2luLgoKV2UgZXZlbiBhZGQgc29tZSBkZWJ1ZyB0cmFjZXMgZm9y
IHRoZSBuZXh0IHBvb3Igc291bCB0byBiZSB0cmFwcGVkIGhlcmUuCgpkcml2ZXJzL2dwdS9kcm0v
aTkxNS9LY29uZmlnLmRlYnVnICB8ICAxNSArCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jIHwgNTg2ICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQpkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaCB8ICA5MiArLS0tLS0KMyBmaWxlcyBjaGFuZ2Vk
LCAyNTkgaW5zZXJ0aW9ucygrKSwgNDM0IGRlbGV0aW9ucygtKQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
