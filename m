Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B55CB16F541
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 02:45:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 178FD6E098;
	Wed, 26 Feb 2020 01:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2799C6E071
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 01:45:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 17:45:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,486,1574150400"; d="scan'208";a="438261763"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by fmsmga006.fm.intel.com with ESMTP; 25 Feb 2020 17:45:19 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 17:45:55 -0800
Message-Id: <20200226014603.42190-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200226014603.42190-1-jose.souza@intel.com>
References: <20200226014603.42190-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/14] drm/i915/tgl: Extend Wa_1606931601 for
 all steppings
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

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQWNjb3Jk
aW5nIHRvIEJTcGVjLiBXYV8xNjA2OTMxNjAxIGFwcGxpZXMgZm9yIGFsbCBUR0wgc3RlcHBpbmdz
LgpUaGlzIHBhdGNoIG1vdmVzIHRoZSBXQSBpbXBsZW1lbnRhdGlvbiBvdXQgb2YgQTAgb25seSBi
bG9jayBvZgpyY3NfZW5naW5lX3dhX2luaXQoKS4KClRoZSBXQSBpcyBoYXMgYWxzbyBiZWVuIHJl
ZmVycmVkIHRvIGJ5IGFuIGFsdGVybmF0ZSBuYW1lCldhXzE2MDcwOTA5ODIuCgpCc3BlYzogNDYw
NDUsIDUyODkwCgpGaXhlczogMzg3M2ZkMWE0M2M3ICgiZHJtL2k5MTU6IFVzZSBlbmdpbmUgd2Eg
bGlzdCBmb3IgV2FfMTYwNzA5MDk4MiIpCkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxh
QGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEu
c3JpdmF0c2FAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYyB8IDggKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMKaW5kZXggMWQxYWEzOTY3YWRkLi5iYzBhZjUyMjU0MmIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTM2NCwxMSArMTM2NCw2IEBAIHJj
c19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBp
OTE1X3dhX2xpc3QgKndhbCkKIAkJCSAgICBHRU43X0ZGX1RIUkVBRF9NT0RFLAogCQkJICAgIEdF
TjEyX0ZGX1RFU1NFTEFUSU9OX0RPUF9HQVRFX0RJU0FCTEUpOwogCi0JCS8qIFdhXzE2MDY5MzE2
MDE6dGdsICovCi0JCXdhX21hc2tlZF9lbih3YWwsCi0JCQkgICAgIEdFTjdfUk9XX0NISUNLRU4y
LAotCQkJICAgICBHRU4xMl9ESVNBQkxFX0VBUkxZX1JFQUQpOwotCiAJCS8qCiAJCSAqIFdhXzE0
MDkwODUyMjU6dGdsCiAJCSAqIFdhXzE0MDEwMjI5MjA2OnRnbApAQCAtMTM3Nyw2ICsxMzcyLDkg
QEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3Ry
dWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCX0KIAogCWlmIChJU19USUdFUkxBS0UoaTkxNSkpIHsK
KwkJLyogV2FfMTYwNjkzMTYwMTp0Z2wgKi8KKwkJd2FfbWFza2VkX2VuKHdhbCwgR0VON19ST1df
Q0hJQ0tFTjIsIEdFTjEyX0RJU0FCTEVfRUFSTFlfUkVBRCk7CisKIAkJLyogV2FfMTQwOTgwNDgw
ODp0Z2wgKi8KIAkJd2FfbWFza2VkX2VuKHdhbCwgR0VON19ST1dfQ0hJQ0tFTjIsCiAJCQkgICAg
IEdFTjEyX1BVU0hfQ09OU1RfREVSRUZfSE9MRF9ESVMpOwotLSAKMi4yNS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
