Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C46C2F54CB
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 23:05:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63E5E6EC82;
	Wed, 13 Jan 2021 22:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BEEE6EC6F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 22:05:34 +0000 (UTC)
IronPort-SDR: mImRUNZtOMJ3wAaE2yR+7jkA1EQo8doisS5iV1cuVnfRjF5GXCrbkt7JHoeAaHSrITQJ1AB6Ob
 BjgFcvX9iPug==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="165950113"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="165950113"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 14:05:33 -0800
IronPort-SDR: +Qd54C1ncc6FFjkEgNLvPt0T2CzGQiZReJuqIDVLPRWvNHC5TWPQBgOAoZGVA/23/f/HpD2ZIk
 eiCPKf/0SfTQ==
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="400696585"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 13 Jan 2021 14:05:33 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 14:09:33 -0800
Message-Id: <20210113220935.4151-17-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210113220935.4151-1-manasi.d.navare@intel.com>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 16/18] drm/i915: Add vrr state dump
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkR1
bXAgdnJyIHN0YXRlIGFsb25nc2lkZSBldmVyeXRoaW5nIGVsc2UuCgpTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNyArKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBhMWMwMTEwMzM4MDMuLjRlZDI3OWYwMzRiZSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEyMzcx
LDYgKzEyMzcxLDEzIEBAIHN0YXRpYyB2b2lkIGludGVsX2R1bXBfcGlwZV9jb25maWcoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAogCSAgICBpbnRlbF9oZG1pX2lu
Zm9mcmFtZV9lbmFibGUoRFBfU0RQX1ZTQykpCiAJCWludGVsX2R1bXBfZHBfdnNjX3NkcChkZXZf
cHJpdiwgJnBpcGVfY29uZmlnLT5pbmZvZnJhbWVzLnZzYyk7CiAKKwlkcm1fZGJnX2ttcygmZGV2
X3ByaXYtPmRybSwgInZycjogJXMsIHZtaW46ICVkLCB2bWF4OiAlZCwgcGlwZWxpbmUgZnVsbDog
JWQsIGZsaXBsaW5lOiAlZCwgdm1pbiB2Ymxhbms6ICVkLCB2bWF4IHZibGFuazogJWRcbiIsCisJ
CSAgICB5ZXNubyhwaXBlX2NvbmZpZy0+dnJyLmVuYWJsZSksCisJCSAgICBwaXBlX2NvbmZpZy0+
dnJyLnZtaW4sIHBpcGVfY29uZmlnLT52cnIudm1heCwKKwkJICAgIHBpcGVfY29uZmlnLT52cnIu
cGlwZWxpbmVfZnVsbCwgcGlwZV9jb25maWctPnZyci5mbGlwbGluZSwKKwkJICAgIGludGVsX3Zy
cl92bWluX3ZibGFua19zdGFydChwaXBlX2NvbmZpZyksCisJCSAgICBpbnRlbF92cnJfdm1heF92
Ymxhbmtfc3RhcnQocGlwZV9jb25maWcpKTsKKwogCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJt
LCAicmVxdWVzdGVkIG1vZGU6XG4iKTsKIAlkcm1fbW9kZV9kZWJ1Z19wcmludG1vZGVsaW5lKCZw
aXBlX2NvbmZpZy0+aHcubW9kZSk7CiAJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJhZGp1
c3RlZCBtb2RlOlxuIik7Ci0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
