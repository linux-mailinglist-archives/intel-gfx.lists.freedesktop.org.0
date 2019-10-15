Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8654D8142
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 22:45:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DA386E3DB;
	Tue, 15 Oct 2019 20:45:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 471A56E098
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 20:45:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18849362-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 21:44:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 21:44:47 +0100
Message-Id: <20191015204451.19372-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015204451.19372-1-chris@chris-wilson.co.uk>
References: <20191015204451.19372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 08/12] drm/i915/tgl: Wa_1409170338
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
LzIwMTkxMDE1MTU0NDQ5LjEwMzM4LTctbWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNiArKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCA3ZmVhNjFiMDBiOTkuLjRmOWJlMmVlZTEzMiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC05MDcs
NiArOTA3LDEyIEBAIHRnbF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJCXdhX3dyaXRlX29yKHdhbCwK
IAkJCSAgICBTVUJTTElDRV9VTklUX0xFVkVMX0NMS0dBVEUyLAogCQkJICAgIENQU1NVTklUX0NM
S0dBVEVfRElTKTsKKworCS8qIFdhXzE0MDkxODAzMzg6dGdsICovCisJaWYgKElTX1RHTF9SRVZJ
RChpOTE1LCBUR0xfUkVWSURfQTAsIFRHTF9SRVZJRF9BMCkpCisJCXdhX3dyaXRlX29yKHdhbCwK
KwkJCSAgICBTTElDRV9VTklUX0xFVkVMX0NMS0dBVEUsCisJCQkgICAgTDNfQ0xLR0FURV9ESVMg
fCBMM19DUjJYX0NMS0dBVEVfRElTKTsKIH0KIAogc3RhdGljIHZvaWQKLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
