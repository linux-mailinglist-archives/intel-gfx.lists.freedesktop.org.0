Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C91D83C677E
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 02:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5913F89F35;
	Tue, 13 Jul 2021 00:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 104D089F01
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 00:34:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="273907690"
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="273907690"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 17:34:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="451584108"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 17:34:48 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jul 2021 17:38:54 -0700
Message-Id: <20210713003854.143197-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210713003854.143197-1-jose.souza@intel.com>
References: <20210713003854.143197-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 6/6] drm/i915/display/xelpd: Extend
 Wa_14011508470
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

VGhpcyB3b3JrYXJvdW5kIGlzIGFsc28gYXBwbGljYWJsZSB0byB4ZWxwZCBkaXNwbGF5IHNvIGV4
dGVuZGluZyBpdC4KCkNjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
YyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlci5jCmluZGV4IDZmYzc2NmRhNjYwNTQuLmQ5MmRiNDcxNDExZTUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC01ODgz
LDggKzU4ODMsOCBAQCBzdGF0aWMgdm9pZCBpY2xfZGlzcGxheV9jb3JlX2luaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWlmIChyZXN1bWUgJiYgaW50ZWxfZG1jX2hhc19w
YXlsb2FkKGRldl9wcml2KSkKIAkJaW50ZWxfZG1jX2xvYWRfcHJvZ3JhbShkZXZfcHJpdik7CiAK
LQkvKiBXYV8xNDAxMTUwODQ3MCAqLwotCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPT0gMTIp
IHsKKwkvKiBXYV8xNDAxMTUwODQ3MDp0Z2wsZGcxLHJrbCxhZGwtcyxhZGwtcCAqLworCWlmIChE
SVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpIHsKIAkJdmFsID0gRENQUl9DTEVBUl9NRU1TVEFU
X0RJUyB8IERDUFJfU0VORF9SRVNQX0lNTSB8CiAJCSAgICAgIERDUFJfTUFTS19MUE1PREUgfCBE
Q1BSX01BU0tfTUFYTEFURU5DWV9NRU1VUF9DTFI7CiAJCWludGVsX3VuY29yZV9ybXcoJmRldl9w
cml2LT51bmNvcmUsIEdFTjExX0NISUNLRU5fRENQUl8yLCAwLCB2YWwpOwotLSAKMi4zMi4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
