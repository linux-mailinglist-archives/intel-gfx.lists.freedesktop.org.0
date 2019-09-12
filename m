Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C72B0948
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 09:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C736EBE5;
	Thu, 12 Sep 2019 07:09:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5429E6EBE5
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 07:09:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18459539-1500050 
 for multiple; Thu, 12 Sep 2019 08:09:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 08:09:24 +0100
Message-Id: <20190912070925.11526-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Add a paranoid flush of
 the CSB pointers upon reset
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

QWZ0ZXIgYSBHUFUgcmVzZXQsIHdlIG5lZWQgdG8gZHJhaW4gYWxsIHRoZSBDUyBldmVudHMgc28g
dGhhdCB3ZSBoYXZlIGFuCmFjY3VyYXRlIHBpY3R1cmUgb2YgdGhlIGV4ZWNsaXN0cyBzdGF0ZSBh
dCB0aGUgdGltZSBvZiB0aGUgcmVzZXQuIEJlCnBhcmFub2lkIGFuZCBmb3JjZSBhIHJlYWQgb2Yg
dGhlIENTQiB3cml0ZSBwb2ludGVyIGZyb20gbWVtb3J5LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWth
Lmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggM2Q4M2M3ZTBkOWRlLi42MWEzOGE0Y2Ni
Y2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yODM2LDYgKzI4MzYsMTAg
QEAgc3RhdGljIHZvaWQgX19leGVjbGlzdHNfcmVzZXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lLCBib29sIHN0YWxsZWQpCiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAJdTMyICpy
ZWdzOwogCisJbWIoKTsgLyogcGFyYW5vaWE6IHJlYWQgdGhlIENTQiBwb2ludGVycyBmcm9tIGFm
dGVyIHRoZSByZXNldCAqLworCWNsZmx1c2goZXhlY2xpc3RzLT5jc2Jfd3JpdGUpOworCW1iKCk7
CisKIAlwcm9jZXNzX2NzYihlbmdpbmUpOyAvKiBkcmFpbiBwcmVlbXB0aW9uIGV2ZW50cyAqLwog
CiAJLyogRm9sbG93aW5nIHRoZSByZXNldCwgd2UgbmVlZCB0byByZWxvYWQgdGhlIENTQiByZWFk
L3dyaXRlIHBvaW50ZXJzICovCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
