Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEC0D7A39
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:44:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C06446E379;
	Tue, 15 Oct 2019 15:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA2D6E379
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:44:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 08:44:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="195316215"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga007.fm.intel.com with ESMTP; 15 Oct 2019 08:44:42 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id CC66084075B; Tue, 15 Oct 2019 18:44:12 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 18:44:11 +0300
Message-Id: <20191015154411.9984-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/icl: Wa_1607087056
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXZvaWQgcG9zc2libGUgaGFuZyBpbiB0c2csdmZlIHVuaXRzIGJ5IGtlZXBpbmcKbDMgY2xvY2tz
IHJ1bm5pbmdzLgoKU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBs
aW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYyB8IDUgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAg
ICAgICAgfCAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IGJhNjVlNTAxODk3OC4u
ODFkMjk5YjI3ZmJjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMKQEAgLTg5Miw2ICs4OTIsMTEgQEAgaWNsX2d0X3dvcmthcm91bmRzX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAl3YV93
cml0ZV9vcih3YWwsCiAJCSAgICBHQU1UX0NIS05fQklUX1JFRywKIAkJICAgIEdBTVRfQ0hLTl9E
SVNBQkxFX0wzX0NPSF9QSVBFKTsKKworCS8qIFdhXzE2MDcwODcwNTY6aWNsICovCisJd2Ffd3Jp
dGVfb3Iod2FsLAorCQkgICAgU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFLAorCQkgICAgTDNfQ0xL
R0FURV9ESVMgfCBMM19DUjJYX0NMS0dBVEVfRElTKTsKIH0KIAogc3RhdGljIHZvaWQKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCmluZGV4IDdkZDEyNmNjM2FjMy4uYmY5MDBiMGQzYmU1IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQwNTAsNiArNDA1MCw4IEBAIGVudW0gewogI2RlZmluZSAg
U0FSQlVOSVRfQ0xLR0FURV9ESVMJCSgxIDw8IDUpCiAjZGVmaW5lICBSQ0NVTklUX0NMS0dBVEVf
RElTCQkoMSA8PCA3KQogI2RlZmluZSAgTVNDVU5JVF9DTEtHQVRFX0RJUwkJKDEgPDwgMTApCisj
ZGVmaW5lICBMM19DTEtHQVRFX0RJUwkJCSgxIDw8IDE2KQorI2RlZmluZSAgTDNfQ1IyWF9DTEtH
QVRFX0RJUwkJKDEgPDwgMTcpCiAKICNkZWZpbmUgU1VCU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRF
CV9NTUlPKDB4OTUyNCkKICNkZWZpbmUgIEdXVU5JVF9DTEtHQVRFX0RJUwkJKDEgPDwgMTYpCi0t
IAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
