Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC82CD8148
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 22:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4491E893AB;
	Tue, 15 Oct 2019 20:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC4B289950
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 20:44:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18849363-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 21:44:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 21:44:48 +0100
Message-Id: <20191015204451.19372-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015204451.19372-1-chris@chris-wilson.co.uk>
References: <20191015204451.19372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 09/12] drm/i915/tgl: Wa_1409600907
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpUbyBh
dm9pZCBwb3NzaWJsZSBoYW5nLCB3ZSBuZWVkIHRvIGFkZCBkZXB0aCBzdGFsbCBpZiB3ZSBmbHVz
aCB0aGUKZGVwdGggY2FjaGUuCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3BhdGNoL21zZ2lkLzIwMTkxMDE1MTU0NDQ5LjEwMzM4LTgtbWlrYS5rdW9wcGFsYUBsaW51eC5p
bnRlbC5jb20KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDQgKysr
KwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKaW5kZXggMDNiOTYxYzYyYjk3Li45NmUyOGEwN2JjNDggMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCkBAIC0zMjA0LDYgKzMyMDQsOCBAQCBzdGF0aWMgaW50IGdlbjEy
X2VtaXRfZmx1c2hfcmVuZGVyKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QsCiAJCWZsYWdz
IHw9IFBJUEVfQ09OVFJPTF9USUxFX0NBQ0hFX0ZMVVNIOwogCQlmbGFncyB8PSBQSVBFX0NPTlRS
T0xfUkVOREVSX1RBUkdFVF9DQUNIRV9GTFVTSDsKIAkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX0RF
UFRIX0NBQ0hFX0ZMVVNIOworCQkvKiBXYV8xNDA5NjAwOTA3OnRnbCAqLworCQlmbGFncyB8PSBQ
SVBFX0NPTlRST0xfREVQVEhfU1RBTEw7CiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9EQ19GTFVT
SF9FTkFCTEU7CiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9GTFVTSF9FTkFCTEU7CiAJCWZsYWdz
IHw9IFBJUEVfQ09OVFJPTF9IRENfUElQRUxJTkVfRkxVU0g7CkBAIC0zNDM2LDYgKzM0MzgsOCBA
QCBnZW4xMl9lbWl0X2ZpbmlfYnJlYWRjcnVtYl9yY3Moc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVx
dWVzdCwgdTMyICpjcykKIAkJCQkgICAgICBQSVBFX0NPTlRST0xfVElMRV9DQUNIRV9GTFVTSCB8
CiAJCQkJICAgICAgUElQRV9DT05UUk9MX1JFTkRFUl9UQVJHRVRfQ0FDSEVfRkxVU0ggfAogCQkJ
CSAgICAgIFBJUEVfQ09OVFJPTF9ERVBUSF9DQUNIRV9GTFVTSCB8CisJCQkJICAgICAgLyogV2Ff
MTQwOTYwMDkwNzp0Z2wgKi8KKwkJCQkgICAgICBQSVBFX0NPTlRST0xfREVQVEhfU1RBTEwgfAog
CQkJCSAgICAgIFBJUEVfQ09OVFJPTF9EQ19GTFVTSF9FTkFCTEUgfAogCQkJCSAgICAgIFBJUEVf
Q09OVFJPTF9GTFVTSF9FTkFCTEUgfAogCQkJCSAgICAgIFBJUEVfQ09OVFJPTF9IRENfUElQRUxJ
TkVfRkxVU0gpOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
