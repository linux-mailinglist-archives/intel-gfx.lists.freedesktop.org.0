Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CCDD2CDD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 16:51:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C72D46E373;
	Thu, 10 Oct 2019 14:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F5B6E373
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 14:51:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 07:51:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="187986088"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 10 Oct 2019 07:51:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Oct 2019 17:51:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 17:51:24 +0300
Message-Id: <20191010145127.7487-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
References: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915:
 s/hdcp2_hdmi_msg_data/hdcp2_hdmi_msg_timeout/
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBhcnJheSBpcyB0aGVyZSBvbmx5IGZvciB0aW1lb3V0LCAiZGF0YSIgZG9lc24ndCBtZWFuIGFu
eXRoaW5nCnNvIGxldCdzIHJlbmFtZSB0aGUgdGhpbmcgdG8gYmUgbW9yZSBkZXNjcmlwdGl2ZS4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAx
NCArKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4
IDBhNjg0NmM1YmE5NS4uMTNjNTg4YWU4OGE0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2hkbWkuYwpAQCAtMTUyNywxMyArMTUyNywxMyBAQCBib29sIGludGVsX2hkbWlf
aGRjcF9jaGVja19saW5rKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0
KQogCXJldHVybiB0cnVlOwogfQogCi1zdHJ1Y3QgaGRjcDJfaGRtaV9tc2dfZGF0YSB7CitzdHJ1
Y3QgaGRjcDJfaGRtaV9tc2dfdGltZW91dCB7CiAJdTggbXNnX2lkOwogCXUzMiB0aW1lb3V0Owog
CXUzMiB0aW1lb3V0MjsKIH07CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgaGRjcDJfaGRtaV9tc2df
ZGF0YSBoZGNwMl9tc2dfZGF0YVtdID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBoZGNwMl9oZG1p
X21zZ190aW1lb3V0IGhkY3AyX21zZ190aW1lb3V0W10gPSB7CiAJeyBIRENQXzJfMl9BS0VfSU5J
VCwgMCwgMCB9LAogCXsgSERDUF8yXzJfQUtFX1NFTkRfQ0VSVCwgSERDUF8yXzJfQ0VSVF9USU1F
T1VUX01TLCAwIH0sCiAJeyBIRENQXzJfMl9BS0VfTk9fU1RPUkVEX0tNLCAwLCAwIH0sCkBAIC0x
NTY0LDEyICsxNTY0LDEyIEBAIHN0YXRpYyBpbnQgZ2V0X2hkY3AyX21zZ190aW1lb3V0KHU4IG1z
Z19pZCwgYm9vbCBpc19wYWlyZWQpCiB7CiAJaW50IGk7CiAKLQlmb3IgKGkgPSAwOyBpIDwgQVJS
QVlfU0laRShoZGNwMl9tc2dfZGF0YSk7IGkrKykKLQkJaWYgKGhkY3AyX21zZ19kYXRhW2ldLm1z
Z19pZCA9PSBtc2dfaWQgJiYKKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShoZGNwMl9tc2df
dGltZW91dCk7IGkrKykKKwkJaWYgKGhkY3AyX21zZ190aW1lb3V0W2ldLm1zZ19pZCA9PSBtc2df
aWQgJiYKIAkJICAgIChtc2dfaWQgIT0gSERDUF8yXzJfQUtFX1NFTkRfSFBSSU1FIHx8IGlzX3Bh
aXJlZCkpCi0JCQlyZXR1cm4gaGRjcDJfbXNnX2RhdGFbaV0udGltZW91dDsKLQkJZWxzZSBpZiAo
aGRjcDJfbXNnX2RhdGFbaV0ubXNnX2lkID09IG1zZ19pZCkKLQkJCXJldHVybiBoZGNwMl9tc2df
ZGF0YVtpXS50aW1lb3V0MjsKKwkJCXJldHVybiBoZGNwMl9tc2dfdGltZW91dFtpXS50aW1lb3V0
OworCQllbHNlIGlmIChoZGNwMl9tc2dfdGltZW91dFtpXS5tc2dfaWQgPT0gbXNnX2lkKQorCQkJ
cmV0dXJuIGhkY3AyX21zZ190aW1lb3V0W2ldLnRpbWVvdXQyOwogCiAJcmV0dXJuIC1FSU5WQUw7
CiB9Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
