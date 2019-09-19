Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE81B7F27
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD4456F7CF;
	Thu, 19 Sep 2019 16:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFF446F7E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:31:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:31:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="178106128"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 19 Sep 2019 09:31:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:31:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:31:04 +0300
Message-Id: <20190919163113.17402-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 12/21] sna: Use memcmp() to
 avoid strict aliasing warns
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCi4u
L3NyYy9zbmEvc25hX2Rpc3BsYXkuYzogSW4gZnVuY3Rpb24g4oCYc25hX2NvdmVyaW5nX2NydGPi
gJk6Ci4uL3NyYy9zbmEvc25hX2Rpc3BsYXkuYzo4MjM1OjM0OiB3YXJuaW5nOiBkZXJlZmVyZW5j
aW5nIHR5cGUtcHVubmVkIHBvaW50ZXIgd2lsbCBicmVhayBzdHJpY3QtYWxpYXNpbmcgcnVsZXMg
Wy1Xc3RyaWN0LWFsaWFzaW5nXQogICBpZiAoKihjb25zdCB1aW50NjRfdCAqKWJveCA9PSAqKHVp
bnQ2NF90ICopJmNydGMtPmJvdW5kcykgewoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBzcmMvc25hL3NuYV9kaXNwbGF5
LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9zcmMvc25hL3NuYV9kaXNwbGF5LmMgYi9zcmMvc25hL3NuYV9kaXNwbGF5
LmMKaW5kZXggNWM1MjIwMTFlMDU2Li41YzM3N2NmMmQ4NmQgMTAwNjQ0Ci0tLSBhL3NyYy9zbmEv
c25hX2Rpc3BsYXkuYworKysgYi9zcmMvc25hL3NuYV9kaXNwbGF5LmMKQEAgLTgyMzIsNyArODIz
Miw3IEBAIHNuYV9jb3ZlcmluZ19jcnRjKHN0cnVjdCBzbmEgKnNuYSwgY29uc3QgQm94UmVjICpi
b3gsIHhmODZDcnRjUHRyIGRlc2lyZWQpCiAJCSAgICAgX19GVU5DVElPTl9fLCBjLAogCQkgICAg
IGNydGMtPmJvdW5kcy54MSwgY3J0Yy0+Ym91bmRzLnkxLAogCQkgICAgIGNydGMtPmJvdW5kcy54
MiwgY3J0Yy0+Ym91bmRzLnkyKSk7Ci0JCWlmICgqKGNvbnN0IHVpbnQ2NF90ICopYm94ID09ICoo
dWludDY0X3QgKikmY3J0Yy0+Ym91bmRzKSB7CisJCWlmICghbWVtY21wKGJveCwgJmNydGMtPmJv
dW5kcywgc2l6ZW9mKCpib3gpKSkgewogCQkJREJHKCgiJXM6IGJveCBleGFjdGx5IG1hdGNoZXMg
Y3J0YyBbJWRdXG4iLAogCQkJICAgICBfX0ZVTkNUSU9OX18sIGMpKTsKIAkJCXJldHVybiBjcnRj
OwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
