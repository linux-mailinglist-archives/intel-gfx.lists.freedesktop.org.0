Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B5FAE145
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 00:55:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CE5898BF;
	Mon,  9 Sep 2019 22:55:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1ED6898BF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 22:55:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18431742-1500050 
 for multiple; Mon, 09 Sep 2019 23:55:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 23:55:36 +0100
Message-Id: <20190909225536.7037-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909225536.7037-1-chris@chris-wilson.co.uk>
References: <20190909225536.7037-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Only unwedge if we can reset
 first
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

VW53ZWRnaW5nIHRoZSBHUFUgcmVxdWlyZXMgYSBzdWNjZXNzZnVsIEdQVSByZXNldCBiZWZvcmUg
d2UgcmVzdG9yZSB0aGUKZGVmYXVsdCBzdWJtaXNzaW9uLCBvciBlbHNlIHdlIG1heSBzZWUgcmVz
aWR1YWwgY29udGV4dCBzd2l0Y2ggZXZlbnRzCnRoYXQgd2Ugd2VyZSBub3QgZXhwZWN0aW5nLgoK
UmVwb3J0ZWQtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4
LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CkNjOiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51
eC5pbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0
LmMgfCA3ICsrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwppbmRleCBmZTU3Mjk2Yjc5
MGMuLjUyNDI0OTZhODkzYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmVzZXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCkBA
IC04MDksNiArODA5LDcgQEAgc3RhdGljIGJvb2wgX19pbnRlbF9ndF91bnNldF93ZWRnZWQoc3Ry
dWN0IGludGVsX2d0ICpndCkKIAlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGluZXMg
PSAmZ3QtPnRpbWVsaW5lczsKIAlzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsOwogCXVuc2lnbmVk
IGxvbmcgZmxhZ3M7CisJYm9vbCBvazsKIAogCWlmICghdGVzdF9iaXQoSTkxNV9XRURHRUQsICZn
dC0+cmVzZXQuZmxhZ3MpKQogCQlyZXR1cm4gdHJ1ZTsKQEAgLTg1NCw3ICs4NTUsMTEgQEAgc3Rh
dGljIGJvb2wgX19pbnRlbF9ndF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKIAl9
CiAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7CiAKLQlp
bnRlbF9ndF9zYW5pdGl6ZShndCwgZmFsc2UpOworCW9rID0gZmFsc2U7CisJaWYgKCFyZXNldF9j
bG9iYmVyc19kaXNwbGF5KGd0LT5pOTE1KSkKKwkJb2sgPSBfX2ludGVsX2d0X3Jlc2V0KGd0LCBB
TExfRU5HSU5FUykgPT0gMDsKKwlpZiAoIW9rKQorCQlyZXR1cm4gZmFsc2U7CiAKIAkvKgogCSAq
IFVuZG8gbm9wX3N1Ym1pdF9yZXF1ZXN0LiBXZSBwcmV2ZW50IGFsbCBuZXcgaTkxNSByZXF1ZXN0
cyBmcm9tCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
