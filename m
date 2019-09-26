Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B35BF414
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 15:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B6C6ED10;
	Thu, 26 Sep 2019 13:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F01C6ECEA
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 13:31:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18627541-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 14:31:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2019 14:31:42 +0100
Message-Id: <20190926133142.2838-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926133142.2838-1-chris@chris-wilson.co.uk>
References: <20190926133142.2838-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915: Adjust length of MI_LOAD_REGISTER_REG
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

RnJvbTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKRGVm
YXVsdCBsZW5ndGggdmFsdWUgb2YgTUlfTE9BRF9SRUdJU1RFUl9SRUcgaXMgMS4KQWxzbyBtb3Zl
IGl0IG91dCBvZiBjbWQtcGFyc2VyLW9ubHkgcmVnaXN0ZXJzIHNpbmNlIHdlJ3JlIGdvaW5nIHRv
IHVzZQppdCBpbiBpOTE1LgoKU2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hh
bC53aW5pYXJza2lAaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oCmluZGV4IGY3OGIxM2Q3NGUxNy4uOTIxMWIxYWQ0
MDFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFu
ZHMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaApA
QCAtMTUyLDYgKzE1Miw3IEBACiAjZGVmaW5lICAgTUlfRkxVU0hfRFdfVVNFX1BQR1RUCQkoMDw8
MikKICNkZWZpbmUgTUlfTE9BRF9SRUdJU1RFUl9NRU0JICAgTUlfSU5TVFIoMHgyOSwgMSkKICNk
ZWZpbmUgTUlfTE9BRF9SRUdJU1RFUl9NRU1fR0VOOCAgTUlfSU5TVFIoMHgyOSwgMikKKyNkZWZp
bmUgTUlfTE9BRF9SRUdJU1RFUl9SRUcgICAgTUlfSU5TVFIoMHgyQSwgMSkKICNkZWZpbmUgTUlf
QkFUQ0hfQlVGRkVSCQlNSV9JTlNUUigweDMwLCAxKQogI2RlZmluZSAgIE1JX0JBVENIX05PTl9T
RUNVUkUJCSgxKQogLyogZm9yIHNuYi9pdmIvdmx2IHRoaXMgYWxzbyBtZWFucyAiYmF0Y2ggaW4g
cHBndHQiIHdoZW4gcHBndHQgaXMgZW5hYmxlZC4gKi8KQEAgLTI1Niw3ICsyNTcsNiBAQAogI2Rl
ZmluZSBNSV9DTEZMVVNIICAgICAgICAgICAgICBNSV9JTlNUUigweDI3LCAwKQogI2RlZmluZSBN
SV9SRVBPUlRfUEVSRl9DT1VOVCAgICBNSV9JTlNUUigweDI4LCAwKQogI2RlZmluZSAgIE1JX1JF
UE9SVF9QRVJGX0NPVU5UX0dHVFQgKDE8PDApCi0jZGVmaW5lIE1JX0xPQURfUkVHSVNURVJfUkVH
ICAgIE1JX0lOU1RSKDB4MkEsIDApCiAjZGVmaW5lIE1JX1JTX1NUT1JFX0RBVEFfSU1NICAgIE1J
X0lOU1RSKDB4MkIsIDApCiAjZGVmaW5lIE1JX0xPQURfVVJCX01FTSAgICAgICAgIE1JX0lOU1RS
KDB4MkMsIDApCiAjZGVmaW5lIE1JX1NUT1JFX1VSQl9NRU0gICAgICAgIE1JX0lOU1RSKDB4MkQs
IDApCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
