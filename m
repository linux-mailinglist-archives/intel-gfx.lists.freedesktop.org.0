Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B983216F540
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 02:45:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB7F6E09F;
	Wed, 26 Feb 2020 01:45:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B75E66E084
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 01:45:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 17:45:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,486,1574150400"; d="scan'208";a="438261787"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by fmsmga006.fm.intel.com with ESMTP; 25 Feb 2020 17:45:21 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 17:46:01 -0800
Message-Id: <20200226014603.42190-12-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200226014603.42190-1-jose.souza@intel.com>
References: <20200226014603.42190-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 12/14] drm/i915/tgl: Restrict Wa_1408615072
 to GT A0 stepping
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

SXQgaXMgZml4ZWQgaW4gQjAgc3RlcHBpbmcuCgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jIHwgNSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCBlNmQ5ZWMxMjRkYjgu
LjlkZjE1MGY4NzdiMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC02ODM4LDggKzY4Mzgs
OSBAQCBzdGF0aWMgdm9pZCB0Z2xfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogCXVuc2lnbmVkIGludCBpOwogCiAJLyogV2FfMTQwODYxNTA3Mjp0
Z2wgKi8KLQlpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJpdi0+dW5jb3JlLCBVTlNMSUNFX1VOSVRf
TEVWRUxfQ0xLR0FURTIsCi0JCQkgMCwgVlNVTklUX0NMS0dBVEVfRElTX1RHTCk7CisJaWYgKElT
X1RHTF9HVF9SRVZJRChkZXZfcHJpdiwgVEdMX0dUX1JFVklEX0EwLCBUR0xfR1RfUkVWSURfQTAp
KQorCQlpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJpdi0+dW5jb3JlLCBVTlNMSUNFX1VOSVRfTEVW
RUxfQ0xLR0FURTIsCisJCQkJIDAsIFZTVU5JVF9DTEtHQVRFX0RJU19UR0wpOwogCiAJLyogVGhp
cyBpcyBub3QgYSBXQS4gRW5hYmxlIFZEIEhDUCAmIE1GWF9FTkMgcG93ZXJnYXRlICovCiAJZm9y
IChpID0gMDsgaSA8IEk5MTVfTUFYX1ZDUzsgaSsrKSB7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
