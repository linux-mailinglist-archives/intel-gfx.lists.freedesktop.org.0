Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE1F1036A5
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 10:33:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E8556E127;
	Wed, 20 Nov 2019 09:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B5B6E127
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 09:33:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19267948-1500050 
 for multiple; Wed, 20 Nov 2019 09:33:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 09:32:58 +0000
Message-Id: <20191120093302.3723715-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120093302.3723715-1-chris@chris-wilson.co.uk>
References: <20191120093302.3723715-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/gt: Declare timeline.lock to be
 irq-free
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

Tm93IHRoYXQgd2UgbmV2ZXIgYWxsb3cgdGhlIGludGVsX3dha2VyZWYgY2FsbGJhY2tzIHRvIGJl
IGludm9rZWQgZnJvbQppbnRlcnJ1cHQgY29udGV4dCwgd2UgZG8gbm90IG5lZWQgdGhlIGlycXNh
ZmUgc3BpbmxvY2sgZm9yIHRoZSB0aW1lbGluZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndF9yZXF1ZXN0cy5jIHwgIDkgKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yZXNldC5jICAgICAgIHwgIDkgKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF90aW1lbGluZS5jICAgIHwgMTAgKysrKy0tLS0tLQogMyBmaWxlcyBjaGFuZ2Vk
LCAxMiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYwppbmRleCAxYTAwNWRhOGM1ODguLjRkYzNjYmViMWIz
NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jCkBAIC0z
Myw3ICszMyw2IEBAIGxvbmcgaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzX3RpbWVvdXQoc3RydWN0
IGludGVsX2d0ICpndCwgbG9uZyB0aW1lb3V0KQogewogCXN0cnVjdCBpbnRlbF9ndF90aW1lbGlu
ZXMgKnRpbWVsaW5lcyA9ICZndC0+dGltZWxpbmVzOwogCXN0cnVjdCBpbnRlbF90aW1lbGluZSAq
dGwsICp0bjsKLQl1bnNpZ25lZCBsb25nIGZsYWdzOwogCWJvb2wgaW50ZXJydXB0aWJsZTsKIAlM
SVNUX0hFQUQoZnJlZSk7CiAKQEAgLTQzLDcgKzQyLDcgQEAgbG9uZyBpbnRlbF9ndF9yZXRpcmVf
cmVxdWVzdHNfdGltZW91dChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBsb25nIHRpbWVvdXQpCiAKIAlm
bHVzaF9zdWJtaXNzaW9uKGd0KTsgLyoga2ljayB0aGUga3NvZnRpcnFkIHRhc2tsZXRzICovCiAK
LQlzcGluX2xvY2tfaXJxc2F2ZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7CisJc3Bpbl9sb2Nr
KCZ0aW1lbGluZXMtPmxvY2spOwogCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZSh0bCwgdG4sICZ0
aW1lbGluZXMtPmFjdGl2ZV9saXN0LCBsaW5rKSB7CiAJCWlmICghbXV0ZXhfdHJ5bG9jaygmdGwt
Pm11dGV4KSkKIAkJCWNvbnRpbnVlOwpAQCAtNTEsNyArNTAsNyBAQCBsb25nIGludGVsX2d0X3Jl
dGlyZV9yZXF1ZXN0c190aW1lb3V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGxvbmcgdGltZW91dCkK
IAkJaW50ZWxfdGltZWxpbmVfZ2V0KHRsKTsKIAkJR0VNX0JVR19PTighYXRvbWljX3JlYWQoJnRs
LT5hY3RpdmVfY291bnQpKTsKIAkJYXRvbWljX2luYygmdGwtPmFjdGl2ZV9jb3VudCk7IC8qIHBp
biB0aGUgbGlzdCBlbGVtZW50ICovCi0JCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnRpbWVsaW5l
cy0+bG9jaywgZmxhZ3MpOworCQlzcGluX3VubG9jaygmdGltZWxpbmVzLT5sb2NrKTsKIAogCQlp
ZiAodGltZW91dCA+IDApIHsKIAkJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwpAQCAtNjcsNyAr
NjYsNyBAQCBsb25nIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0c190aW1lb3V0KHN0cnVjdCBpbnRl
bF9ndCAqZ3QsIGxvbmcgdGltZW91dCkKIAogCQlyZXRpcmVfcmVxdWVzdHModGwpOwogCi0JCXNw
aW5fbG9ja19pcnFzYXZlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKKwkJc3Bpbl9sb2NrKCZ0
aW1lbGluZXMtPmxvY2spOwogCiAJCS8qIFJlc3VtZSBpdGVyYXRpb24gYWZ0ZXIgZHJvcHBpbmcg
bG9jayAqLwogCQlsaXN0X3NhZmVfcmVzZXRfbmV4dCh0bCwgdG4sIGxpbmspOwpAQCAtODIsNyAr
ODEsNyBAQCBsb25nIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0c190aW1lb3V0KHN0cnVjdCBpbnRl
bF9ndCAqZ3QsIGxvbmcgdGltZW91dCkKIAkJCWxpc3RfYWRkKCZ0bC0+bGluaywgJmZyZWUpOwog
CQl9CiAJfQotCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnRpbWVsaW5lcy0+bG9jaywgZmxhZ3Mp
OworCXNwaW5fdW5sb2NrKCZ0aW1lbGluZXMtPmxvY2spOwogCiAJbGlzdF9mb3JfZWFjaF9lbnRy
eV9zYWZlKHRsLCB0biwgJmZyZWUsIGxpbmspCiAJCV9faW50ZWxfdGltZWxpbmVfZnJlZSgmdGwt
PmtyZWYpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKaW5kZXggMDM4OGY5Mzc1
MzY2Li4zNjE4OTIzOGUxM2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpA
QCAtODMxLDcgKzgzMSw2IEBAIHN0YXRpYyBib29sIF9faW50ZWxfZ3RfdW5zZXRfd2VkZ2VkKHN0
cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CiAJc3RydWN0IGludGVsX2d0X3RpbWVsaW5lcyAqdGltZWxp
bmVzID0gJmd0LT50aW1lbGluZXM7CiAJc3RydWN0IGludGVsX3RpbWVsaW5lICp0bDsKLQl1bnNp
Z25lZCBsb25nIGZsYWdzOwogCWJvb2wgb2s7CiAKIAlpZiAoIXRlc3RfYml0KEk5MTVfV0VER0VE
LCAmZ3QtPnJlc2V0LmZsYWdzKSkKQEAgLTg1Myw3ICs4NTIsNyBAQCBzdGF0aWMgYm9vbCBfX2lu
dGVsX2d0X3Vuc2V0X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCSAqCiAJICogTm8gbW9y
ZSBjYW4gYmUgc3VibWl0dGVkIHVudGlsIHdlIHJlc2V0IHRoZSB3ZWRnZWQgYml0LgogCSAqLwot
CXNwaW5fbG9ja19pcnFzYXZlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKKwlzcGluX2xvY2so
JnRpbWVsaW5lcy0+bG9jayk7CiAJbGlzdF9mb3JfZWFjaF9lbnRyeSh0bCwgJnRpbWVsaW5lcy0+
YWN0aXZlX2xpc3QsIGxpbmspIHsKIAkJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAKQEAgLTg2
MSw3ICs4NjAsNyBAQCBzdGF0aWMgYm9vbCBfX2ludGVsX2d0X3Vuc2V0X3dlZGdlZChzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0KQogCQlpZiAoIWZlbmNlKQogCQkJY29udGludWU7CiAKLQkJc3Bpbl91bmxv
Y2tfaXJxcmVzdG9yZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7CisJCXNwaW5fdW5sb2NrKCZ0
aW1lbGluZXMtPmxvY2spOwogCiAJCS8qCiAJCSAqIEFsbCBpbnRlcm5hbCBkZXBlbmRlbmNpZXMg
KGk5MTVfcmVxdWVzdHMpIHdpbGwgaGF2ZQpAQCAtODc0LDEwICs4NzMsMTAgQEAgc3RhdGljIGJv
b2wgX19pbnRlbF9ndF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKIAkJZG1hX2Zl
bmNlX3B1dChmZW5jZSk7CiAKIAkJLyogUmVzdGFydCBpdGVyYXRpb24gYWZ0ZXIgZHJvcGluZyBs
b2NrICovCi0JCXNwaW5fbG9ja19pcnFzYXZlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKKwkJ
c3Bpbl9sb2NrKCZ0aW1lbGluZXMtPmxvY2spOwogCQl0bCA9IGxpc3RfZW50cnkoJnRpbWVsaW5l
cy0+YWN0aXZlX2xpc3QsIHR5cGVvZigqdGwpLCBsaW5rKTsKIAl9Ci0Jc3Bpbl91bmxvY2tfaXJx
cmVzdG9yZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7CisJc3Bpbl91bmxvY2soJnRpbWVsaW5l
cy0+bG9jayk7CiAKIAkvKiBXZSBtdXN0IHJlc2V0IHBlbmRpbmcgR1BVIGV2ZW50cyBiZWZvcmUg
cmVzdG9yaW5nIG91ciBzdWJtaXNzaW9uICovCiAJb2sgPSAhSEFTX0VYRUNMSVNUUyhndC0+aTkx
NSk7IC8qIFhYWCBiZXR0ZXIgYWdub3N0aWNpc20gZGVzaXJlZCAqLwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKaW5kZXggYjM1ZjEyNzI5OTgzLi5iMTkwYTVkOWFiMDIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwpAQCAtMzMyLDcgKzMz
Miw2IEBAIGludCBpbnRlbF90aW1lbGluZV9waW4oc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCkK
IHZvaWQgaW50ZWxfdGltZWxpbmVfZW50ZXIoc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCkKIHsK
IAlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGluZXMgPSAmdGwtPmd0LT50aW1lbGlu
ZXM7Ci0JdW5zaWduZWQgbG9uZyBmbGFnczsKIAogCS8qCiAJICogUHJldGVuZCB3ZSBhcmUgc2Vy
aWFsaXNlZCBieSB0aGUgdGltZWxpbmUtPm11dGV4LgpAQCAtMzU4LDE2ICszNTcsMTUgQEAgdm9p
ZCBpbnRlbF90aW1lbGluZV9lbnRlcihzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQogCWlmIChh
dG9taWNfYWRkX3VubGVzcygmdGwtPmFjdGl2ZV9jb3VudCwgMSwgMCkpCiAJCXJldHVybjsKIAot
CXNwaW5fbG9ja19pcnFzYXZlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKKwlzcGluX2xvY2so
JnRpbWVsaW5lcy0+bG9jayk7CiAJaWYgKCFhdG9taWNfZmV0Y2hfaW5jKCZ0bC0+YWN0aXZlX2Nv
dW50KSkKIAkJbGlzdF9hZGRfdGFpbCgmdGwtPmxpbmssICZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0
KTsKLQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKKwlz
cGluX3VubG9jaygmdGltZWxpbmVzLT5sb2NrKTsKIH0KIAogdm9pZCBpbnRlbF90aW1lbGluZV9l
eGl0KHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpCiB7CiAJc3RydWN0IGludGVsX2d0X3RpbWVs
aW5lcyAqdGltZWxpbmVzID0gJnRsLT5ndC0+dGltZWxpbmVzOwotCXVuc2lnbmVkIGxvbmcgZmxh
Z3M7CiAKIAkvKiBTZWUgaW50ZWxfdGltZWxpbmVfZW50ZXIoKSAqLwogCWxvY2tkZXBfYXNzZXJ0
X2hlbGQoJnRsLT5tdXRleCk7CkBAIC0zNzYsMTAgKzM3NCwxMCBAQCB2b2lkIGludGVsX3RpbWVs
aW5lX2V4aXQoc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCkKIAlpZiAoYXRvbWljX2FkZF91bmxl
c3MoJnRsLT5hY3RpdmVfY291bnQsIC0xLCAxKSkKIAkJcmV0dXJuOwogCi0Jc3Bpbl9sb2NrX2ly
cXNhdmUoJnRpbWVsaW5lcy0+bG9jaywgZmxhZ3MpOworCXNwaW5fbG9jaygmdGltZWxpbmVzLT5s
b2NrKTsKIAlpZiAoYXRvbWljX2RlY19hbmRfdGVzdCgmdGwtPmFjdGl2ZV9jb3VudCkpCiAJCWxp
c3RfZGVsKCZ0bC0+bGluayk7Ci0Jc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdGltZWxpbmVzLT5s
b2NrLCBmbGFncyk7CisJc3Bpbl91bmxvY2soJnRpbWVsaW5lcy0+bG9jayk7CiAKIAkvKgogCSAq
IFNpbmNlIHRoaXMgdGltZWxpbmUgaXMgaWRsZSwgYWxsIGJhcmllcnMgdXBvbiB3aGljaCB3ZSB3
ZXJlIHdhaXRpbmcKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
