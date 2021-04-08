Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B091D358F55
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 23:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292696E3EC;
	Thu,  8 Apr 2021 21:39:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C59376E3EC
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 21:39:38 +0000 (UTC)
IronPort-SDR: zl/qxJEVEwMmZIp6epUBGDisl5p6Zk0PU4iSjGc8ELbg+MvACVMpHDY5np16stcFjwXoKMhAuN
 hr69c6Gco30Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="193181772"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="193181772"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:39:34 -0700
IronPort-SDR: 9qgKNWv2oCE2bF+OIq/NfAO6UQtQhLW2G8sD5vfyZJHwJaQPG4Xc3IHjD8Dnrk70wGVWVbjthv
 fGCPYdOWsf0w==
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="520030745"
Received: from muweizha-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.2.85])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:39:33 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Apr 2021 14:42:05 -0700
Message-Id: <20210408214205.327704-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Defeature PSR2 for RKL and
 ADL-S
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

UFNSMiBpcyBkZWZlYXR1cmVkIGZvciBSS0wgYW5kIEFETC1TLCBubyBpbXBvcnRhbnQgcG93ZXIg
aW1wYWN0IGFzCnRob3NlIGFyZSBkZXNrdG9wIENQVXMgYW5kIFBTUjIgd2FzIG5vdCBldmVuIGVu
YWJsZWQgYnkgZGVmYXVsdCB5ZXQKaW4gcGxhdGZvcm1zIHdpdGhvdXQgUFNSMiBIVyB0cmFja2lu
Zy4KCkhTREVTOiAxNDAxMTc1MDYzMQpIU0RFUzogMTQwMTE3NDEzMjUKQlNwZWM6IDUzMjczCkNj
OiBDYXogWW9rb3lhbWEgPENhei5Zb2tveWFtYUBpbnRlbC5jb20+CkNjOiBHd2FuLWd5ZW9uZyBN
dW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4
IDMyZDNkNTYyNTljMi4uMjYyN2QwYjU1OGYzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMKQEAgLTczOSw2ICs3MzksMTIgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNy
Ml9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJcmV0dXJuIGZhbHNl
OwogCX0KIAorCS8qIFdhXzE2MDExMTgxMjUwICovCisJaWYgKElTX1JPQ0tFVExBS0UoZGV2X3By
aXYpIHx8IElTX0FMREVSTEFLRV9TKGRldl9wcml2KSkgeworCQlkcm1fZGJnX2ttcygmZGV2X3By
aXYtPmRybSwgIlBTUjIgaXMgZGVmZWF0dXJlZCBmb3IgdGhpcyBwbGF0Zm9ybVxuIik7CisJCXJl
dHVybiBmYWxzZTsKKwl9CisKIAlpZiAoIXRyYW5zY29kZXJfaGFzX3BzcjIoZGV2X3ByaXYsIGNy
dGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSkgewogCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRy
bSwKIAkJCSAgICAiUFNSMiBub3Qgc3VwcG9ydGVkIGluIHRyYW5zY29kZXIgJXNcbiIsCi0tIAoy
LjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
