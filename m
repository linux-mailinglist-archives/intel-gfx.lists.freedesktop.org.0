Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7DDC0919
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 18:04:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D0776E0AF;
	Fri, 27 Sep 2019 16:04:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F9BA6E0AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 16:04:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18642096-1500050 
 for multiple; Fri, 27 Sep 2019 17:03:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 17:03:35 +0100
Message-Id: <20190927160335.10622-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Only unwedge if we can reset first
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
djI6IFB1bGwgaW4gdGhlIHNwZWNpYWwtY2FzZSByZXNldF9jbG9iYmVyc19kaXNwbGF5LCBhbmQg
ZXhwbGFpbiB3aHkgaXQKc2hvdWxkIGJlIHNhZmUgaW4gdGhlIGNvbnRleHQgb2YgdW53ZWRnaW5n
LgoKdjM6IEp1c3QgZm9yZ2V0IGFsbCBhYm91dCByZXNldHMgYmVmb3JlIHVud2VkZ2luZyBpZiBp
dCB3aWxsIGNsb2JiZXIgdGhlCmRpc3BsYXk7IHJpc2sgaXQgYWxsLgoKUmVwb3J0ZWQtYnk6IEph
bnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBK
YW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+CkNj
OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29t
PgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2
aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0Bp
bnRlbC5jb20+ICN2MQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMg
fCA4ICsrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKaW5kZXggZDA4MjI2ZjViZWE1
Li4xMTc4MWE2MjZmNzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpAQCAt
ODA3LDYgKzgwNyw3IEBAIHN0YXRpYyBib29sIF9faW50ZWxfZ3RfdW5zZXRfd2VkZ2VkKHN0cnVj
dCBpbnRlbF9ndCAqZ3QpCiAJc3RydWN0IGludGVsX2d0X3RpbWVsaW5lcyAqdGltZWxpbmVzID0g
Jmd0LT50aW1lbGluZXM7CiAJc3RydWN0IGludGVsX3RpbWVsaW5lICp0bDsKIAl1bnNpZ25lZCBs
b25nIGZsYWdzOworCWJvb2wgb2s7CiAKIAlpZiAoIXRlc3RfYml0KEk5MTVfV0VER0VELCAmZ3Qt
PnJlc2V0LmZsYWdzKSkKIAkJcmV0dXJuIHRydWU7CkBAIC04NTMsNyArODU0LDEyIEBAIHN0YXRp
YyBib29sIF9faW50ZWxfZ3RfdW5zZXRfd2VkZ2VkKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJfQog
CXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnRpbWVsaW5lcy0+bG9jaywgZmxhZ3MpOwogCi0JaW50
ZWxfZ3Rfc2FuaXRpemUoZ3QsIGZhbHNlKTsKKwkvKiBXZSBtdXN0IHJlc2V0IHBlbmRpbmcgR1BV
IGV2ZW50cyBiZWZvcmUgcmVzdG9yaW5nIG91ciBzdWJtaXNzaW9uICovCisJb2sgPSAhSEFTX0VY
RUNMSVNUUyhndC0+aTkxNSk7CisJaWYgKCFJTlRFTF9JTkZPKGd0LT5pOTE1KS0+Z3B1X3Jlc2V0
X2Nsb2JiZXJzX2Rpc3BsYXkpCisJCW9rID0gX19pbnRlbF9ndF9yZXNldChndCwgQUxMX0VOR0lO
RVMpID09IDA7CisJaWYgKCFvaykKKwkJcmV0dXJuIGZhbHNlOwogCiAJLyoKIAkgKiBVbmRvIG5v
cF9zdWJtaXRfcmVxdWVzdC4gV2UgcHJldmVudCBhbGwgbmV3IGk5MTUgcmVxdWVzdHMgZnJvbQot
LSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
