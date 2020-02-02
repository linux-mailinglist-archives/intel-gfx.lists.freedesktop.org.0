Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED1014FFFA
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 00:10:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1586E14B;
	Sun,  2 Feb 2020 23:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BCB66E14B
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Feb 2020 23:10:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Feb 2020 15:10:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,395,1574150400"; d="scan'208";a="234397165"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 02 Feb 2020 15:10:00 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 01:06:27 +0200
Message-Id: <20200202230630.8975-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200202230630.8975-1-stanislav.lisovskiy@intel.com>
References: <20200202230630.8975-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v17 3/6] drm/i915: Update dbuf slices only with
 full modeset
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

RHVyaW5nIGZ1bGwgbW9kZXNldCwgZ2xvYmFsIHN0YXRlKGkuZSBkZXZfcHJpdikgaXMgcHJvdGVj
dGVkCmJ5IGxvY2tpbmcgdGhlIGNydGNzIGluIHN0YXRlLCBvdGhlcndpc2UgZ2xvYmFsIHN0YXRl
IGlzIG5vdApzZXJpYWxpemVkLiBBbHNvIGlmIGl0IGlzIG5vdCBhIGZ1bGwgbW9kZXNldCwgd2Ug
YW55d2F5CmRvbid0IG5lZWQgdG8gY2hhbmdlIERCdWYgc2xpY2UgY29uZmlndXJhdGlvbiBhcyBQ
aXBlIGNvbmZpZ3VyYXRpb24KZG9lc24ndCBjaGFuZ2UuCgpSZXZpZXdlZC1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogU3Rh
bmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA2ICsrKystLQogMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGQ1NTNkZTJjM2Y1ZS4u
Mjc2MjJlZjA2OWNmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwpAQCAtMTU2OTUsNyArMTU2OTUsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNf
Y29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCWludGVsX2Vu
Y29kZXJzX3VwZGF0ZV9wcmVwYXJlKHN0YXRlKTsKIAogCS8qIEVuYWJsZSBhbGwgbmV3IHNsaWNl
cywgd2UgbWlnaHQgbmVlZCAqLwotCWljbF9kYnVmX3NsaWNlX3ByZV91cGRhdGUoc3RhdGUpOwor
CWlmIChzdGF0ZS0+bW9kZXNldCkKKwkJaWNsX2RidWZfc2xpY2VfcHJlX3VwZGF0ZShzdGF0ZSk7
CiAKIAkvKiBOb3cgZW5hYmxlIHRoZSBjbG9ja3MsIHBsYW5lLCBwaXBlLCBhbmQgY29ubmVjdG9y
cyB0aGF0IHdlIHNldCB1cC4gKi8KIAlkZXZfcHJpdi0+ZGlzcGxheS5jb21taXRfbW9kZXNldF9l
bmFibGVzKHN0YXRlKTsKQEAgLTE1NzUxLDcgKzE1NzUyLDggQEAgc3RhdGljIHZvaWQgaW50ZWxf
YXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCX0K
IAogCS8qIERpc2FibGUgYWxsIHNsaWNlcywgd2UgZG9uJ3QgbmVlZCAqLwotCWljbF9kYnVmX3Ns
aWNlX3Bvc3RfdXBkYXRlKHN0YXRlKTsKKwlpZiAoc3RhdGUtPm1vZGVzZXQpCisJCWljbF9kYnVm
X3NsaWNlX3Bvc3RfdXBkYXRlKHN0YXRlKTsKIAogCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRj
X2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsIGkp
IHsKIAkJaW50ZWxfcG9zdF9wbGFuZV91cGRhdGUoc3RhdGUsIGNydGMpOwotLSAKMi4yNC4xLjQ4
NS5nYWQwNWEzZDhlNQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
