Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4333C677C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 02:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37EEA89F27;
	Tue, 13 Jul 2021 00:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66CAF89F01
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 00:34:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="273907689"
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="273907689"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 17:34:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="451584106"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 17:34:48 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jul 2021 17:38:53 -0700
Message-Id: <20210713003854.143197-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210713003854.143197-1-jose.souza@intel.com>
References: <20210713003854.143197-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 5/6] drm/i915: Limit Wa_22010178259 to
 affected platforms
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

VGhpcyB3b3JrYXJvdW5kIGlzIG5vdCBuZWVkZWQgZm9yIHBsYXRmb3JtcyB3aXRoIGRpc3BsYXkg
MTMuCgpDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpSZXZp
ZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCA5ICsr
KysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jCmluZGV4IDI4NTM4MDA3OWFhYjIuLjZmYzc2NmRhNjYwNTQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC01ODIyLDEw
ICs1ODIyLDExIEBAIHN0YXRpYyB2b2lkIHRnbF9id19idWRkeV9pbml0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIAkJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBCV19CVURE
WV9QQUdFX01BU0soaSksCiAJCQkJICAgICAgIHRhYmxlW2NvbmZpZ10ucGFnZV9tYXNrKTsKIAot
CQkJLyogV2FfMjIwMTAxNzgyNTk6dGdsLHJrbCAqLwotCQkJaW50ZWxfZGVfcm13KGRldl9wcml2
LCBCV19CVUREWV9DVEwoaSksCi0JCQkJICAgICBCV19CVUREWV9UTEJfUkVRX1RJTUVSX01BU0ss
Ci0JCQkJICAgICBCV19CVUREWV9UTEJfUkVRX1RJTUVSKDB4OCkpOworCQkJLyogV2FfMjIwMTAx
NzgyNTk6dGdsLGRnMSxya2wsYWRsLXMgKi8KKwkJCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikg
PT0gMTIpCisJCQkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBCV19CVUREWV9DVEwoaSksCisJCQkJ
CSAgICAgQldfQlVERFlfVExCX1JFUV9USU1FUl9NQVNLLAorCQkJCQkgICAgIEJXX0JVRERZX1RM
Ql9SRVFfVElNRVIoMHg4KSk7CiAJCX0KIAl9CiB9Ci0tIAoyLjMyLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
