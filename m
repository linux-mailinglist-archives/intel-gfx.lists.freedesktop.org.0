Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD1E66143
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 23:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185836E265;
	Thu, 11 Jul 2019 21:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3FF76E265
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 21:35:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 14:35:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,480,1557212400"; d="scan'208";a="317805265"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 11 Jul 2019 14:35:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 14:35:17 -0700
Message-Id: <20190711213517.13674-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711205213.GK9024@mdroper-desk.amr.corp.intel.com>
References: <20190711205213.GK9024@mdroper-desk.amr.corp.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: apply Display WA #1178 to fix
 type C dongles
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIHBvcnQgQyB0byB3b3JrYXJvdW5kIHRvIGNvdmVyIFRpZ2VyIExha2UuCgpDYzogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwNzA4MjMxNjI5LjkyOTYtMjItbHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMgfCAxMiArKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgICAgICAgICAgIHwgIDQgKysrLQogMiBmaWxlcyBjaGFuZ2VkLCAxMiBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXggMTJhYTljZTA4ZDk1Li5kMjVm
ZDVhMjUxOTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jCkBAIC00NTMsNiArNDUzLDcgQEAgaWNsX2NvbWJvX3BoeV9hdXhfcG93
ZXJfd2VsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWludCBw
d19pZHggPSBwb3dlcl93ZWxsLT5kZXNjLT5oc3cuaWR4OwogCWVudW0gcGh5IHBoeSA9IElDTF9B
VVhfUFdfVE9fUEhZKHB3X2lkeCk7CiAJdTMyIHZhbDsKKwlpbnQgd2FfaWR4X21heDsKIAogCXZh
bCA9IEk5MTVfUkVBRChyZWdzLT5kcml2ZXIpOwogCUk5MTVfV1JJVEUocmVncy0+ZHJpdmVyLCB2
YWwgfCBIU1dfUFdSX1dFTExfQ1RMX1JFUShwd19pZHgpKTsKQEAgLTQ2Miw5ICs0NjMsMTQgQEAg
aWNsX2NvbWJvX3BoeV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAogCiAJaHN3X3dhaXRfZm9yX3Bvd2VyX3dlbGxfZW5hYmxlKGRldl9wcml2
LCBwb3dlcl93ZWxsKTsKIAotCS8qIERpc3BsYXkgV0EgIzExNzg6IGljbCAqLwotCWlmIChJU19J
Q0VMQUtFKGRldl9wcml2KSAmJgotCSAgICBwd19pZHggPj0gSUNMX1BXX0NUTF9JRFhfQVVYX0Eg
JiYgcHdfaWR4IDw9IElDTF9QV19DVExfSURYX0FVWF9CICYmCisJLyogRGlzcGxheSBXQSAjMTE3
ODogaWNsLCB0Z2wgKi8KKwlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSkKKwkJd2FfaWR4X21h
eCA9IElDTF9QV19DVExfSURYX0FVWF9DOworCWVsc2UKKwkJd2FfaWR4X21heCA9IElDTF9QV19D
VExfSURYX0FVWF9COworCisJaWYgKCFJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYKKwkgICAg
cHdfaWR4ID49IElDTF9QV19DVExfSURYX0FVWF9BICYmIHB3X2lkeCA8PSB3YV9pZHhfbWF4ICYm
CiAJICAgICFpbnRlbF9iaW9zX2lzX3BvcnRfZWRwKGRldl9wcml2LCAoZW51bSBwb3J0KXBoeSkp
IHsKIAkJdmFsID0gSTkxNV9SRUFEKElDTF9BVVhfQU5BT1ZSRDEocHdfaWR4KSk7CiAJCXZhbCB8
PSBJQ0xfQVVYX0FOQU9WUkQxX0VOQUJMRSB8IElDTF9BVVhfQU5BT1ZSRDFfTERPX0JZUEFTUzsK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGIxYTY2MjgxOTllNC4uYThlMmUwNWU3ZDdlIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTkyNzQsOSArOTI3NCwxMSBAQCBlbnVtIHNrbF9w
b3dlcl9nYXRlIHsKICNkZWZpbmUgX0lDTF9BVVhfUkVHX0lEWChwd19pZHgpCSgocHdfaWR4KSAt
IElDTF9QV19DVExfSURYX0FVWF9BKQogI2RlZmluZSBfSUNMX0FVWF9BTkFPVlJEMV9BCQkweDE2
MjM5OAogI2RlZmluZSBfSUNMX0FVWF9BTkFPVlJEMV9CCQkweDZDMzk4CisjZGVmaW5lIF9UR0xf
QVVYX0FOQU9WUkQxX0MJCTB4MTYwMzk4CiAjZGVmaW5lIElDTF9BVVhfQU5BT1ZSRDEocHdfaWR4
KQlfTU1JTyhfUElDSyhfSUNMX0FVWF9SRUdfSURYKHB3X2lkeCksIFwKIAkJCQkJCSAgICBfSUNM
X0FVWF9BTkFPVlJEMV9BLCBcCi0JCQkJCQkgICAgX0lDTF9BVVhfQU5BT1ZSRDFfQikpCisJCQkJ
CQkgICAgX0lDTF9BVVhfQU5BT1ZSRDFfQiwgXAorCQkJCQkJICAgIF9UR0xfQVVYX0FOQU9WUkQx
X0MpKQogI2RlZmluZSAgIElDTF9BVVhfQU5BT1ZSRDFfTERPX0JZUEFTUwkoMSA8PCA3KQogI2Rl
ZmluZSAgIElDTF9BVVhfQU5BT1ZSRDFfRU5BQkxFCSgxIDw8IDApCiAKLS0gCjIuMjEuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
