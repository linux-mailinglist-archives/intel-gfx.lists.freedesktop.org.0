Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB76F6AED
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Nov 2019 19:58:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68DF16E06B;
	Sun, 10 Nov 2019 18:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 056976E06B
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Nov 2019 18:58:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19151885-1500050 
 for multiple; Sun, 10 Nov 2019 18:58:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 10 Nov 2019 18:57:46 +0000
Message-Id: <20191110185806.17413-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191110185806.17413-1-chris@chris-wilson.co.uk>
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/25] drm/i915/pmu: "Frequency" is reported as
 accumulated cycles
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgcmVwb3J0ICJmcmVxdWVuY2llcyIgKGFjdHVhbC1mcmVxdWVuY3ksIHJlcXVlc3RlZC1mcmVx
dWVuY3kpIGFzIHRoZQpudW1iZXIgb2YgYWNjdW11bGF0ZWQgY3ljbGVzIHNvIHRoYXQgdGhlIGF2
ZXJhZ2UgZnJlcXVlbmN5IG92ZXIgdGhhdApwZXJpb2QgbWF5IGJlIGRldGVybWluZWQgYnkgdGhl
IHVzZXIuIFRoaXMgbWVhbnMgdGhlIHVuaXRzIHdlIHJlcG9ydCB0bwp0aGUgdXNlciBhcmUgTWN5
Y2xlcyAob3IganVzdCBNKSwgbm90IE1Iei4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BtdS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcG11LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCmluZGV4IDQ4MDQ3
NzU2NDRiZi4uOWIwMmJlMGFkNGU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BtdS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKQEAgLTkwOCw4
ICs5MDgsOCBAQCBjcmVhdGVfZXZlbnRfYXR0cmlidXRlcyhzdHJ1Y3QgaTkxNV9wbXUgKnBtdSkK
IAkJY29uc3QgY2hhciAqbmFtZTsKIAkJY29uc3QgY2hhciAqdW5pdDsKIAl9IGV2ZW50c1tdID0g
ewotCQlfX2V2ZW50KEk5MTVfUE1VX0FDVFVBTF9GUkVRVUVOQ1ksICJhY3R1YWwtZnJlcXVlbmN5
IiwgIk1IeiIpLAotCQlfX2V2ZW50KEk5MTVfUE1VX1JFUVVFU1RFRF9GUkVRVUVOQ1ksICJyZXF1
ZXN0ZWQtZnJlcXVlbmN5IiwgIk1IeiIpLAorCQlfX2V2ZW50KEk5MTVfUE1VX0FDVFVBTF9GUkVR
VUVOQ1ksICJhY3R1YWwtZnJlcXVlbmN5IiwgIk0iKSwKKwkJX19ldmVudChJOTE1X1BNVV9SRVFV
RVNURURfRlJFUVVFTkNZLCAicmVxdWVzdGVkLWZyZXF1ZW5jeSIsICJNIiksCiAJCV9fZXZlbnQo
STkxNV9QTVVfSU5URVJSVVBUUywgImludGVycnVwdHMiLCBOVUxMKSwKIAkJX19ldmVudChJOTE1
X1BNVV9SQzZfUkVTSURFTkNZLCAicmM2LXJlc2lkZW5jeSIsICJucyIpLAogCX07Ci0tIAoyLjI0
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
