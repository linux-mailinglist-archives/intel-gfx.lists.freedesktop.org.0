Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB37436F7
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE37789AA2;
	Thu, 13 Jun 2019 13:54:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80C3C89A8B;
 Thu, 13 Jun 2019 13:54:00 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 33518283E73
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Date: Thu, 13 Jun 2019 14:53:22 +0100
Message-Id: <737b847e6518b74fe57de3e309b5a4ede719ea72.1560433744.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1560433744.git.guillaume.tucker@collabora.com>
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 4/4] tests/sw_sync: use atomic_*
 instead of __sync_*
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVwbGFjZSBjYWxscyB0byB0aGUgb2xkZXIgX19zeW5jXyogZnVuY3Rpb25zIHdpdGggdGhlIG5l
dyBhdG9taWNfKgpzdGFuZGFyZCBvbmVzIHRvIGJlIGNvbnNpc3RlbnQgd2l0aCBvdGhlciB0ZXN0
cyBhbmQgaW1wcm92ZQpwb3J0YWJpbGl0eSBhY3Jvc3MgQ1BVIGFyY2hpdGVjdHVyZXMuICBBZGQg
ZGVwZW5kZW5jeSBvZiBzd19zeW5jIG9uCmxpYmF0b21pYy4KClNpZ25lZC1vZmYtYnk6IEd1aWxs
YXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJAY29sbGFib3JhLmNvbT4KLS0tCiB0ZXN0cy9N
YWtlZmlsZS5hbSB8ICAxICsKIHRlc3RzL21lc29uLmJ1aWxkIHwgIDggKysrKysrKy0KIHRlc3Rz
L3N3X3N5bmMuYyAgIHwgMTIgKysrKysrLS0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDE0IGluc2Vy
dGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvTWFrZWZpbGUuYW0g
Yi90ZXN0cy9NYWtlZmlsZS5hbQppbmRleCBiYmQzODZjOWMyZGIuLjdkNzFkZjhjN2EyZSAxMDA2
NDQKLS0tIGEvdGVzdHMvTWFrZWZpbGUuYW0KKysrIGIvdGVzdHMvTWFrZWZpbGUuYW0KQEAgLTEy
Miw2ICsxMjIsNyBAQCBwcmltZV9zZWxmX2ltcG9ydF9MREFERCA9ICQoTERBREQpIC1scHRocmVh
ZAogZ2VtX3VzZXJwdHJfYmxpdHNfQ0ZMQUdTID0gJChBTV9DRkxBR1MpICQoVEhSRUFEX0NGTEFH
UykKIGdlbV91c2VycHRyX2JsaXRzX0xEQUREID0gJChMREFERCkgLWxwdGhyZWFkCiBwZXJmX3Bt
dV9MREFERCA9ICQoTERBREQpICQodG9wX2J1aWxkZGlyKS9saWIvbGliaWd0X3BlcmYubGEKK3N3
X3N5bmNfTERBREQgPSAkKExEQUREKSAtbGF0b21pYwogCiBrbXNfZmxpcF9MREFERCA9ICQoTERB
REQpIC1scHRocmVhZAogCmRpZmYgLS1naXQgYS90ZXN0cy9tZXNvbi5idWlsZCBiL3Rlc3RzL21l
c29uLmJ1aWxkCmluZGV4IGZmZDQzMmQzODE5My4uMzRhNzQwMjVhNTM3IDEwMDY0NAotLS0gYS90
ZXN0cy9tZXNvbi5idWlsZAorKysgYi90ZXN0cy9tZXNvbi5idWlsZApAQCAtNzYsNyArNzYsNiBA
QCB0ZXN0X3Byb2dzID0gWwogCSdwcmltZV9zZWxmX2ltcG9ydCcsCiAJJ3ByaW1lX3VkbCcsCiAJ
J3ByaW1lX3ZnZW0nLAotCSdzd19zeW5jJywKIAknc3luY29ial9iYXNpYycsCiAJJ3N5bmNvYmpf
d2FpdCcsCiAJJ3RlbXBsYXRlJywKQEAgLTMyOSw2ICszMjgsMTMgQEAgZXhlY3V0YWJsZSgndGVz
dGRpc3BsYXknLCBbJ3Rlc3RkaXNwbGF5LmMnLCAndGVzdGRpc3BsYXlfaG90cGx1Zy5jJ10sCiAJ
ICAgaW5zdGFsbCA6IHRydWUpCiB0ZXN0X2xpc3QgKz0gJ3Rlc3RkaXNwbGF5JwogCit0ZXN0X2V4
ZWN1dGFibGVzICs9IGV4ZWN1dGFibGUoJ3N3X3N5bmMnLCAnc3dfc3luYy5jJywKKwkgICBkZXBl
bmRlbmNpZXMgOiB0ZXN0X2RlcHMgKyBbIGxpYmF0b21pYyBdLAorCSAgIGluc3RhbGxfZGlyIDog
bGliZXhlY2RpciwKKwkgICBpbnN0YWxsX3JwYXRoIDogbGliZXhlY2Rpcl9ycGF0aGRpciwKKwkg
ICBpbnN0YWxsIDogdHJ1ZSkKK3Rlc3RfbGlzdCArPSAnc3dfc3luYycKKwogc3ViZGlyKCdhbWRn
cHUnKQogCiBnZW5fdGVzdGxpc3QgPSBmaW5kX3Byb2dyYW0oJ2dlbmVyYXRlX3Rlc3RsaXN0LnNo
JykKZGlmZiAtLWdpdCBhL3Rlc3RzL3N3X3N5bmMuYyBiL3Rlc3RzL3N3X3N5bmMuYwppbmRleCA5
NTBiOGI2MTQ3NTkuLjYyZDFkMTdjYWI0NSAxMDA2NDQKLS0tIGEvdGVzdHMvc3dfc3luYy5jCisr
KyBiL3Rlc3RzL3N3X3N5bmMuYwpAQCAtMjYsNiArMjYsNyBAQAogCiAjaW5jbHVkZSA8cHRocmVh
ZC5oPgogI2luY2x1ZGUgPHNlbWFwaG9yZS5oPgorI2luY2x1ZGUgPHN0ZGF0b21pYy5oPgogI2lu
Y2x1ZGUgPHN0ZGludC5oPgogI2luY2x1ZGUgPHN5cy9zb2NrZXQuaD4KICNpbmNsdWRlIDxzeXMv
dHlwZXMuaD4KQEAgLTQzLDcgKzQ0LDcgQEAgSUdUX1RFU1RfREVTQ1JJUFRJT04oIlRlc3QgU1cg
U3luYyBGcmFtZXdvcmsiKTsKIHR5cGVkZWYgc3RydWN0IHsKIAlpbnQgdGltZWxpbmU7CiAJdWlu
dDMyX3QgdGhyZWFkX2lkOwotCXVpbnQzMl90ICpjb3VudGVyOworCV9BdG9taWModWludDMyX3Qp
ICpjb3VudGVyOwogCXNlbV90ICpzZW07CiB9IGRhdGFfdDsKIApAQCAtNDg5LDcgKzQ5MCw3IEBA
IHN0YXRpYyB2b2lkIHRlc3Rfc3luY19tdWx0aV9jb25zdW1lcih2b2lkKQogCXB0aHJlYWRfdCB0
aHJlYWRfYXJyW01VTFRJX0NPTlNVTUVSX1RIUkVBRFNdOwogCXNlbV90IHNlbTsKIAlpbnQgdGlt
ZWxpbmU7Ci0JdWludDMyX3QgY291bnRlciA9IDA7CisJX0F0b21pYyh1aW50MzJfdCkgY291bnRl
ciA9IDA7CiAJdWludHB0cl90IHRocmVhZF9yZXQgPSAwOwogCWRhdGFfdCBkYXRhOwogCWludCBp
LCByZXQ7CkBAIC01MTcsNyArNTE4LDcgQEAgc3RhdGljIHZvaWQgdGVzdF9zeW5jX211bHRpX2Nv
bnN1bWVyKHZvaWQpCiAJewogCQlzZW1fd2FpdCgmc2VtKTsKIAotCQlfX3N5bmNfZmV0Y2hfYW5k
X2FkZCgmY291bnRlciwgMSk7CisJCWF0b21pY19mZXRjaF9hZGQoJmNvdW50ZXIsIDEpOwogCQlz
d19zeW5jX3RpbWVsaW5lX2luYyh0aW1lbGluZSwgMSk7CiAJfQogCkBAIC01NTQsNyArNTU1LDcg
QEAgc3RhdGljIHZvaWQgKiB0ZXN0X3N5bmNfbXVsdGlfY29uc3VtZXJfcHJvZHVjZXJfdGhyZWFk
KHZvaWQgKmFyZykKIAkJaWYgKHN5bmNfZmVuY2Vfd2FpdChmZW5jZSwgMTAwMCkgPCAwKQogCQkJ
cmV0dXJuICh2b2lkICopIDE7CiAKLQkJaWYgKF9fc3luY19mZXRjaF9hbmRfYWRkKGRhdGEtPmNv
dW50ZXIsIDEpICE9IG5leHRfcG9pbnQpCisJCWlmIChhdG9taWNfZmV0Y2hfYWRkKGRhdGEtPmNv
dW50ZXIsIDEpICE9IG5leHRfcG9pbnQpCiAJCQlyZXR1cm4gKHZvaWQgKikgMTsKIAogCQkvKiBL
aWNrIG9mZiB0aGUgbmV4dCB0aHJlYWQuICovCkBAIC01NzAsNyArNTcxLDcgQEAgc3RhdGljIHZv
aWQgdGVzdF9zeW5jX211bHRpX2NvbnN1bWVyX3Byb2R1Y2VyKHZvaWQpCiAJZGF0YV90IGRhdGFf
YXJyW01VTFRJX0NPTlNVTUVSX1BST0RVQ0VSX1RIUkVBRFNdOwogCXB0aHJlYWRfdCB0aHJlYWRf
YXJyW01VTFRJX0NPTlNVTUVSX1BST0RVQ0VSX1RIUkVBRFNdOwogCWludCB0aW1lbGluZTsKLQl1
aW50MzJfdCBjb3VudGVyID0gMDsKKwlfQXRvbWljKHVpbnQzMl90KSBjb3VudGVyID0gMDsKIAl1
aW50cHRyX3QgdGhyZWFkX3JldCA9IDA7CiAJZGF0YV90IGRhdGE7CiAJaW50IGksIHJldDsKQEAg
LTkwMCw0ICs5MDEsMyBAQCBpZ3RfbWFpbgogCWlndF9zdWJ0ZXN0KCJzeW5jX3JhbmRvbV9tZXJn
ZSIpCiAJCXRlc3Rfc3luY19yYW5kb21fbWVyZ2UoKTsKIH0KLQotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
