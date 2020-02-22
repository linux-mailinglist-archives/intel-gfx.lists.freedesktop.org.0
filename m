Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2112C168BF1
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 03:07:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 788536F5AD;
	Sat, 22 Feb 2020 02:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEFB56E393
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 02:07:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 18:07:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="409315537"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.221])
 by orsmga005.jf.intel.com with ESMTP; 21 Feb 2020 18:07:33 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 18:08:12 -0800
Message-Id: <20200222020815.50599-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200222020815.50599-1-jose.souza@intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/tgl: Extend Wa_1606931601 for all
 steppings
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
aW5nIHRvIEJTcGVjLiBXYV8xNjA2OTMxNjAxIGFwcGxpZXMgZm9yIGFsbApUR0wgc3RlcHBpbmdz
LlRoaXMgcGF0Y2ggbW92ZXMgdGhlIFdBIGltcGxlbWVudGF0aW9uCm91dCBvZiBBMCBvbmx5IGJs
b2NrIG9mIHJjc19lbmdpbmVfd2FfaW5pdCgpLgoKVGhlIFdBIGlzIGhhcyBhbHNvIGJlZW4gcmVm
ZXJyZWQgdG8gYnkgYW4gYWx0ZXJuYXRlIG5hbWUKV2FfMTYwNzA5MDk4Mi4KCkJzcGVjOiA0NjA0
NSwgNTI4OTAKCkZpeGVzOiAzODczZmQxYTQzYzcgKCJkcm0vaTkxNTogVXNlIGVuZ2luZSB3YSBs
aXN0IGZvciBXYV8xNjA3MDkwOTgyIikKQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFA
bGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5z
cml2YXRzYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jIHwgOCArKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwppbmRleCBlOTYxOWM0OTNlNmEuLjk3OGE1YjA1MWNlOSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMzY1LDExICsxMzY1LDYgQEAgcmNz
X2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5
MTVfd2FfbGlzdCAqd2FsKQogCQkJICAgIEdFTjdfRkZfVEhSRUFEX01PREUsCiAJCQkgICAgR0VO
MTJfRkZfVEVTU0VMQVRJT05fRE9QX0dBVEVfRElTQUJMRSk7CiAKLQkJLyogV2FfMTYwNjkzMTYw
MTp0Z2wgKi8KLQkJd2FfbWFza2VkX2VuKHdhbCwKLQkJCSAgICAgR0VON19ST1dfQ0hJQ0tFTjIs
Ci0JCQkgICAgIEdFTjEyX0RJU0FCTEVfRUFSTFlfUkVBRCk7Ci0KIAkJLyoKIAkJICogV2FfMTQw
OTA4NTIyNTp0Z2wKIAkJICogV2FfMTQwMTAyMjkyMDY6dGdsCkBAIC0xMzc4LDYgKzEzNzMsOSBA
QCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1
Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJfQogCiAJaWYgKElTX1RJR0VSTEFLRShpOTE1KSkgewor
CQkvKiBXYV8xNjA2OTMxNjAxOnRnbCAqLworCQl3YV9tYXNrZWRfZW4od2FsLCBHRU43X1JPV19D
SElDS0VOMiwgR0VOMTJfRElTQUJMRV9FQVJMWV9SRUFEKTsKKwogCQkvKiBXYV8xNDA5ODA0ODA4
OnRnbCAqLwogCQl3YV9tYXNrZWRfZW4od2FsLCBHRU43X1JPV19DSElDS0VOMiwKIAkJCSAgICAg
R0VOMTJfUFVTSF9DT05TVEFOVF9ERVJFRkVSRU5DRV9IT0xEX0RJU0FCTEUpOwotLSAKMi4yNS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
