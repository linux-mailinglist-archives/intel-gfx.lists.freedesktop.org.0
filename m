Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F4E29A3AC
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 05:46:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E85D6EACA;
	Tue, 27 Oct 2020 04:46:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 736EF6EAC9
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 04:46:39 +0000 (UTC)
IronPort-SDR: n8ewORvk41XWQO7JgVuPbIx+jHhTxcgQi3INhEp2fwcwna4Nf1PjlfRW0xlYcmju1IjA4GMOne
 dEeeiuPMS6Nw==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="168126424"
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="168126424"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 21:46:38 -0700
IronPort-SDR: 5xDH5WRGxM8LPFYCKcjpuxcpKKZB5HdJ/3MqynFxoKKobQCGz3Gsv2UNuQZ5jtxMkJfbafeN4B
 5fNmEsYsQooQ==
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="360619885"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 21:46:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Oct 2020 21:46:16 -0700
Message-Id: <20201027044618.719064-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Guard debugfs against invalid
 access without display
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RG8gbm90IGNyZWF0ZSB0aGUgZGlzcGxheSBkZWJ1Z2ZzIGZpbGVzIHdoZW4gd2UgZG9uJ3QgaGF2
ZSBkaXNwbGF5LgoKQmFzZWQgb24gcHJldmlvdXMgcGF0Y2ggYnkgSm9zw6kgU291emEuCgpDYzog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCBkMzIzN2IwZDgyMWQuLmQ2ZTI1
MjEyZDVjMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC02NzEsNyArNjcxLDggQEAgc3Rh
dGljIHZvaWQgaTkxNV9kcml2ZXJfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogCS8qIFJldmVhbCBvdXIgcHJlc2VuY2UgdG8gdXNlcnNwYWNlICovCiAJaWYgKGRy
bV9kZXZfcmVnaXN0ZXIoZGV2LCAwKSA9PSAwKSB7CiAJCWk5MTVfZGVidWdmc19yZWdpc3Rlcihk
ZXZfcHJpdik7Ci0JCWludGVsX2Rpc3BsYXlfZGVidWdmc19yZWdpc3RlcihkZXZfcHJpdik7CisJ
CWlmIChIQVNfRElTUExBWShkZXZfcHJpdikpCisJCQlpbnRlbF9kaXNwbGF5X2RlYnVnZnNfcmVn
aXN0ZXIoZGV2X3ByaXYpOwogCQlpOTE1X3NldHVwX3N5c2ZzKGRldl9wcml2KTsKIAogCQkvKiBE
ZXBlbmRzIG9uIHN5c2ZzIGhhdmluZyBiZWVuIGluaXRpYWxpemVkICovCi0tIAoyLjI5LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
