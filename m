Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A29D1D813C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 22:45:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F6A899D4;
	Tue, 15 Oct 2019 20:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D079899D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 20:44:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18849355-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 21:44:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 21:44:40 +0100
Message-Id: <20191015204451.19372-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 01/12] drm/i915/icl: Wa_1607087056
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpBdm9p
ZCBwb3NzaWJsZSBoYW5nIGluIHRzZyx2ZmUgdW5pdHMgYnkga2VlcGluZwpsMyBjbG9ja3MgcnVu
bmluZ3MuCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lk
LzIwMTkxMDE1MTU0NDExLjk5ODQtMS1taWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbQotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA1ICsrKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgMiArKwogMiBmaWxl
cyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwppbmRleCBiYTY1ZTUwMTg5NzguLjgxZDI5OWIyN2ZiYyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC04OTIsNiArODky
LDExIEBAIGljbF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJd2Ffd3JpdGVfb3Iod2FsLAogCQkgICAg
R0FNVF9DSEtOX0JJVF9SRUcsCiAJCSAgICBHQU1UX0NIS05fRElTQUJMRV9MM19DT0hfUElQRSk7
CisKKwkvKiBXYV8xNjA3MDg3MDU2OmljbCAqLworCXdhX3dyaXRlX29yKHdhbCwKKwkJICAgIFNM
SUNFX1VOSVRfTEVWRUxfQ0xLR0FURSwKKwkJICAgIEwzX0NMS0dBVEVfRElTIHwgTDNfQ1IyWF9D
TEtHQVRFX0RJUyk7CiB9CiAKIHN0YXRpYyB2b2lkCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRl
eCA3ZGQxMjZjYzNhYzMuLjgyMTE1OWM0Y2QzMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBA
IC00MDUwLDYgKzQwNTAsOCBAQCBlbnVtIHsKICNkZWZpbmUgIFNBUkJVTklUX0NMS0dBVEVfRElT
CQkoMSA8PCA1KQogI2RlZmluZSAgUkNDVU5JVF9DTEtHQVRFX0RJUwkJKDEgPDwgNykKICNkZWZp
bmUgIE1TQ1VOSVRfQ0xLR0FURV9ESVMJCSgxIDw8IDEwKQorI2RlZmluZSAgTDNfQ0xLR0FURV9E
SVMJCQlSRUdfQklUKDE2KQorI2RlZmluZSAgTDNfQ1IyWF9DTEtHQVRFX0RJUwkJUkVHX0JJVCgx
NykKIAogI2RlZmluZSBTVUJTTElDRV9VTklUX0xFVkVMX0NMS0dBVEUJX01NSU8oMHg5NTI0KQog
I2RlZmluZSAgR1dVTklUX0NMS0dBVEVfRElTCQkoMSA8PCAxNikKLS0gCjIuMjMuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
