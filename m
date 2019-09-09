Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E9DAD9E7
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 15:22:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D69F389B49;
	Mon,  9 Sep 2019 13:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00A1289B49
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 13:22:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18426878-1500050 
 for multiple; Mon, 09 Sep 2019 14:22:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 14:22:19 +0100
Message-Id: <20190909132219.12090-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Mark the modesetting wq as
 WQ_HIGHPRI
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

V2Ugd2lzaCB0byBhdm9pZCBvdXIgcHJlc2VudGF0aW9uIHdvcmtlciBmcm9tIGJlaW5nIGJsb2Nr
ZWQgYnkgbm9ybWFsCndvcmtsb2FkcyBpZiB3ZSB3YW50IHRvIG1haW50YWluIGFuIGludGVyYWN0
aXZlIGZyYW1lIHVwZGF0ZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KQ2M6IEhlaW5yaWNoIEZpbmsgPGhlaW5yaWNoLmZpbmtAZGFxcmkuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMyArKy0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDRlZTc1MGZhM2Vm
MC4uY2I1NWFiODM0YTA3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwpAQCAtMTYxNDgsNyArMTYxNDgsOCBAQCBpbnQgaW50ZWxfbW9kZXNldF9pbml0
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJc3RydWN0IGludGVsX2NydGMgKmNydGM7CiAJaW50
IHJldDsKIAotCWRldl9wcml2LT5tb2Rlc2V0X3dxID0gYWxsb2Nfb3JkZXJlZF93b3JrcXVldWUo
Imk5MTVfbW9kZXNldCIsIDApOworCWRldl9wcml2LT5tb2Rlc2V0X3dxID0KKwkJYWxsb2Nfb3Jk
ZXJlZF93b3JrcXVldWUoImk5MTVfbW9kZXNldCIsIFdRX0hJR0hQUkkpOwogCiAJZHJtX21vZGVf
Y29uZmlnX2luaXQoZGV2KTsKIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
