Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE87FC9EA
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 16:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E2E86E351;
	Thu, 14 Nov 2019 15:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DF8A6E351
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 15:28:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 07:28:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="207823035"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 14 Nov 2019 07:28:07 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2019 17:26:21 +0200
Message-Id: <20191114152621.7235-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Restore GT coarse power gating
 workaround
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHdvcmthcm91bmQgdG8gZGlzYWJsZSBjb2Fyc2UgcG93ZXIgZ2F0aW5nIGlzIHN0aWxsIG5l
ZWRlZCBvbiBTS0wKR1QzL0dUNCBtYWNoaW5lcyBhbmQgc2luY2UgdGhlIFJDNiBjb250ZXh0IGNv
cnJ1cHRpb24gd2FzIGRpc2NvdmVyZWQgYnkKdGhlIGhhcmR3YXJlIHRlYW0gYWxzbyBvbiBhbGwg
R0VOOSBtYWNoaW5lcy4gUmVzdG9yZSBhcHBseWluZyB0aGUKd29ya2Fyb3VuZC4KCkZpeGVzOiBj
MTEzMjM2NzE4ZTggKCJkcm0vaTkxNTogRXh0cmFjdCBHVCByZW5kZXIgc2xlZXAgKHJjNikgbWFu
YWdlbWVudCIpClRlc3RjYXNlOiBpZ3QvaW50ZWxfZ3RfcG1fbGF0ZV9zZWxmdGVzdHMvbGl2ZV9y
YzZfY3R4CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEFu
ZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmM2LmMgfCA2ICsrKystLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jCmluZGV4IGY3YzBiYWViMzc5
My4uZGUyZDMwMmU4ZDU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yYzYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYwpAQCAtMTc1
LDggKzE3NSwxMCBAQCBzdGF0aWMgdm9pZCBnZW45X3JjNl9lbmFibGUoc3RydWN0IGludGVsX3Jj
NiAqcmM2KQogCSAgICBHRU42X1JDX0NUTF9SQzZfRU5BQkxFIHwKIAkgICAgcmM2X21vZGUpOwog
Ci0Jc2V0KHVuY29yZSwgR0VOOV9QR19FTkFCTEUsCi0JICAgIEdFTjlfUkVOREVSX1BHX0VOQUJM
RSB8IEdFTjlfTUVESUFfUEdfRU5BQkxFKTsKKwkvKiBXYVJzRGlzYWJsZUNvYXJzZVBvd2VyR2F0
aW5nOnNrbCxjbmwgLSBSZW5kZXIvTWVkaWEgUEcgbmVlZCB0byBiZSBkaXNhYmxlZCB3aXRoIFJD
Ni4gKi8KKwlpZiAoIU5FRURTX1dhUnNEaXNhYmxlQ29hcnNlUG93ZXJHYXRpbmcocmM2X3RvX2k5
MTUocmM2KSkpCisJCXNldCh1bmNvcmUsIEdFTjlfUEdfRU5BQkxFLAorCQkgICAgR0VOOV9SRU5E
RVJfUEdfRU5BQkxFIHwgR0VOOV9NRURJQV9QR19FTkFCTEUpOwogfQogCiBzdGF0aWMgdm9pZCBn
ZW44X3JjNl9lbmFibGUoc3RydWN0IGludGVsX3JjNiAqcmM2KQotLSAKMi4xNy4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
