Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D4DB566C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 21:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB5D6ED34;
	Tue, 17 Sep 2019 19:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A5AD6ED34
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 19:48:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18524312-1500050 
 for multiple; Tue, 17 Sep 2019 20:47:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 20:47:46 +0100
Message-Id: <20190917194746.26710-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Extend Haswell GT1 PSMI workaround to
 all
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

QSBmZXcgdGltZXMgaW4gQ0ksIHdlIGhhdmUgZGV0ZWN0ZWQgYSBHUFUgaGFuZyBvbiBvdXIgSGFz
d2VsbCBHVDIKc3lzdGVtcyB3aXRoIHRoZSBjaGFyYWN0ZXJpc3RpYyBJUEVIUiBvZiAweDc4MGMw
MDAwLiBXaGVuIHRoZSBQU01JIHcvYQp3YXMgZmlyc3QgaW50cm9kdWN0ZWQsIGl0IHdhcyBhcHBs
aWVkIHRvIGFsbCBIYXN3ZWxsLCBidXQgbGF0ZXIgb24gd2UKZm91bmQgYW4gZXJyYXR1bSB0aGF0
IHN1cHBvc2VkbHkgcmVzdHJpY3RlZCB0aGUgaXNzdWUgdG8gR1QxIGFuZCBzbwpjb25zdHJhaW5l
ZCBpdCBvbmx5IGJlIGFwcGxpZWQgb24gR1QxLiBUaGF0IG1heSBoYXZlIGJlZW4gYSBtaXN0YWtl
Li4uCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTExNjkyCkZpeGVzOiAxNjdiYzc1OWU4MjMgKCJkcm0vaTkxNTogUmVzdHJpY3QgUFNNSSBj
b250ZXh0IGxvYWQgdy9hIHRvIEhhc3dlbGwgR1QxIikKUmVmZXJlbmNlczogMmM1NTAxODM0NzZk
ICgiZHJtL2k5MTU6IERpc2FibGUgUFNNSSBzbGVlcCBtZXNzYWdlcyBvbiBhbGwgcmluZ3MgYXJv
dW5kIGNvbnRleHQgc3dpdGNoZXMiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZm
ZXIuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwppbmRleCBhNzMy
OTZlNmIxM2QuLmEyNWI4NGIxMmVmMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZ2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3JpbmdidWZmZXIuYwpAQCAtMTU3NCw3ICsxNTc0LDcgQEAgc3RhdGljIGlubGluZSBpbnQgbWlf
c2V0X2NvbnRleHQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHUzMiBmbGFncykKIAlzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBycS0+ZW5naW5lOwogCWVudW0gaW50ZWxfZW5naW5l
X2lkIGlkOwogCWNvbnN0IGludCBudW1fZW5naW5lcyA9Ci0JCUlTX0hTV19HVDEoaTkxNSkgPyBS
VU5USU1FX0lORk8oaTkxNSktPm51bV9lbmdpbmVzIC0gMSA6IDA7CisJCUlTX0hBU1dFTEwoaTkx
NSkgPyBSVU5USU1FX0lORk8oaTkxNSktPm51bV9lbmdpbmVzIC0gMSA6IDA7CiAJYm9vbCBmb3Jj
ZV9yZXN0b3JlID0gZmFsc2U7CiAJaW50IGxlbjsKIAl1MzIgKmNzOwotLSAKMi4yMy4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
