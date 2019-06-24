Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5BD50122
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 07:43:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A54D1898FD;
	Mon, 24 Jun 2019 05:43:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5716898D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 05:43:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17000404-1500050 
 for multiple; Mon, 24 Jun 2019 06:43:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jun 2019 06:42:57 +0100
Message-Id: <20190624054315.18910-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/19] drm/i915/execlists: Always clear
 ring_pause if we do not submit
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

SW4gdGhlIHVubGlrZWx5IGNhc2UgKHRoYW5rIHlvdSBDSSEpLCB3ZSBtYXkgZmluZCBvdXJzZWx2
ZXMgd2FudGluZyB0bwppc3N1ZSBhIHByZWVtcHRpb24gYnV0IGhhdmluZyBubyBydW5uYWJsZSBy
ZXF1ZXN0cyBsZWZ0LiBJbiB0aGlzIGNhc2UsCndlIHNldCB0aGUgc2VtYXBob3JlIGJlZm9yZSBj
b21wdXRpbmcgdGhlIHByZWVtcHRpb24gYW5kIHNvIG11c3QgdW5zZXQKaXQgYmVmb3JlIGZvcmdl
dHRpbmcgKG9yIGVsc2Ugd2UgbGVhdmUgdGhlIG1hY2hpbmUgYnVzeXdhaXRpbmcgdW50aWwgdGhl
Cm5leHQgcmVxdWVzdCBjb21lcyBhbG9uZyBhbmQgc28gbGlrZWx5IGhhbmcpLgoKU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA5ICsrKysrKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKaW5kZXggYzhhMGM5YjMyNzY0Li5lZmNjYzMxODg3ZGUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yMzMsMTMgKzIzMywxOCBAQCBzdGF0aWMgaW5saW5lIHUz
MiBpbnRlbF9od3NfcHJlZW1wdF9hZGRyZXNzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSkKIHN0YXRpYyBpbmxpbmUgdm9pZAogcmluZ19zZXRfcGF1c2VkKGNvbnN0IHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSwgaW50IHN0YXRlKQogeworCXUzMiAqc2VtYSA9ICZlbmdpbmUt
PnN0YXR1c19wYWdlLmFkZHJbSTkxNV9HRU1fSFdTX1BSRUVNUFRdOworCisJaWYgKCpzZW1hID09
IHN0YXRlKQorCQlyZXR1cm47CisKIAkvKgogCSAqIFdlIGluc3BlY3QgSFdTX1BSRUVNUFQgd2l0
aCBhIHNlbWFwaG9yZSBpbnNpZGUKIAkgKiBlbmdpbmUtPmVtaXRfZmluaV9icmVhZGNydW1iLiBJ
ZiB0aGUgZHdvcmQgaXMgdHJ1ZSwKIAkgKiB0aGUgcmluZyBpcyBwYXVzZWQgYXMgdGhlIHNlbWFw
aG9yZSB3aWxsIGJ1c3l3YWl0CiAJICogdW50aWwgdGhlIGR3b3JkIGlzIGZhbHNlLgogCSAqLwot
CWVuZ2luZS0+c3RhdHVzX3BhZ2UuYWRkcltJOTE1X0dFTV9IV1NfUFJFRU1QVF0gPSBzdGF0ZTsK
Kwkqc2VtYSA9IHN0YXRlOwogCXdtYigpOwogfQogCkBAIC0xMjQzLDYgKzEyNDgsOCBAQCBzdGF0
aWMgdm9pZCBleGVjbGlzdHNfZGVxdWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
CiAJCSpwb3J0ID0gZXhlY2xpc3RzX3NjaGVkdWxlX2luKGxhc3QsIHBvcnQgLSBleGVjbGlzdHMt
PnBlbmRpbmcpOwogCQltZW1zZXQocG9ydCArIDEsIDAsIChsYXN0X3BvcnQgLSBwb3J0KSAqIHNp
emVvZigqcG9ydCkpOwogCQlleGVjbGlzdHNfc3VibWl0X3BvcnRzKGVuZ2luZSk7CisJfSBlbHNl
IHsKKwkJcmluZ19zZXRfcGF1c2VkKGVuZ2luZSwgMCk7CiAJfQogfQogCi0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
