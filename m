Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9967E1E8BE3
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2020 01:26:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FDD66E988;
	Fri, 29 May 2020 23:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 608976E988
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 23:26:49 +0000 (UTC)
IronPort-SDR: ELwAHXWzNc/unjG6pf4r2xMenU/VrwgRhMLTR4yqQH0VucNhymQqCpyiaIyl8vvRxw5iETPiVw
 AyhPayQfqU1g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 16:26:48 -0700
IronPort-SDR: 64DozeFP1bFKKF5EmDl4qjdrt9RtNlu6sEHcKYkQNh9AfAtMPRRTJGWaXYHyPzrXgG6qBu9Vaq
 2AN67Ed5vxeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,450,1583222400"; d="scan'208";a="302995563"
Received: from kjbenoix-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.186.10])
 by fmsmga002.fm.intel.com with ESMTP; 29 May 2020 16:26:48 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 May 2020 16:27:57 -0700
Message-Id: <20200529232757.37832-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Update TC DP vswing table
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

U21hbGwgdXBkYXRlcyBpbiBka2xfZGVfZW1waGFzaXNfY29udHJvbCBmaWVsZC4KCkJTcGVjOiA0
OTI5MgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwg
NiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggYWEyMjQ2NWJi
NTZlLi5jZDIxMWY0OGM0MDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYwpAQCAtNjM5LDExICs2MzksMTEgQEAgc3RydWN0IHRnbF9ka2xfcGh5X2RkaV9idWZfdHJh
bnMgewogc3RhdGljIGNvbnN0IHN0cnVjdCB0Z2xfZGtsX3BoeV9kZGlfYnVmX3RyYW5zIHRnbF9k
a2xfcGh5X2RwX2RkaV90cmFuc1tdID0gewogCQkJCS8qIFZTCXByZS1lbXAJTm9uLXRyYW5zIG1W
CVByZS1lbXBoIGRCICovCiAJeyAweDcsIDB4MCwgMHgwMCB9LAkvKiAwCTAJNDAwbVYJCTAgZEIg
Ki8KLQl7IDB4NSwgMHgwLCAweDAzIH0sCS8qIDAJMQk0MDBtVgkJMy41IGRCICovCi0JeyAweDIs
IDB4MCwgMHgwYiB9LAkvKiAwCTIJNDAwbVYJCTYgZEIgKi8KKwl7IDB4NSwgMHgwLCAweDA1IH0s
CS8qIDAJMQk0MDBtVgkJMy41IGRCICovCisJeyAweDIsIDB4MCwgMHgwQiB9LAkvKiAwCTIJNDAw
bVYJCTYgZEIgKi8KIAl7IDB4MCwgMHgwLCAweDE5IH0sCS8qIDAJMwk0MDBtVgkJOS41IGRCICov
CiAJeyAweDUsIDB4MCwgMHgwMCB9LAkvKiAxCTAJNjAwbVYJCTAgZEIgKi8KLQl7IDB4MiwgMHgw
LCAweDAzIH0sCS8qIDEJMQk2MDBtVgkJMy41IGRCICovCisJeyAweDIsIDB4MCwgMHgwOCB9LAkv
KiAxCTEJNjAwbVYJCTMuNSBkQiAqLwogCXsgMHgwLCAweDAsIDB4MTQgfSwJLyogMQkyCTYwMG1W
CQk2IGRCICovCiAJeyAweDIsIDB4MCwgMHgwMCB9LAkvKiAyCTAJODAwbVYJCTAgZEIgKi8KIAl7
IDB4MCwgMHgwLCAweDBCIH0sCS8qIDIJMQk4MDBtVgkJMy41IGRCICovCi0tIAoyLjI2LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
