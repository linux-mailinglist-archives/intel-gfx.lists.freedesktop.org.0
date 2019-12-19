Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E24A6127187
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 00:31:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 517F46EBAE;
	Thu, 19 Dec 2019 23:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 869756EBA8
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 23:31:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 15:31:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,333,1571727600"; d="scan'208";a="416359983"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 19 Dec 2019 15:31:32 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 15:33:05 -0800
Message-Id: <20191219233305.28080-3-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191219233305.28080-1-manasi.d.navare@intel.com>
References: <20191219233305.28080-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/dp: Disable Port sync mode
 correctly on teardown
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

V2hpbGUgY2xlYXJpbmcgdGhlIFBvcnRzIHluYyBtb2RlIGVuYWJsZSBhbmQgbWFzdGVyIHNlbGVj
dCBiaXRzCndlIG5lZWQgdG8gY2xlYXIgdGhlIHJlZ2lzdGVyIGNvbXBsZXRlbHkgaW5zdGVhZCBv
ZiB1c2luZyBkaXNhYmxlIG1hc2tzCgp2MjoKKiBKdXN0IHdyaXRlIDAgdG8gdGhlIHJlZyAoVmls
bGUpCiogUmViYXNlCgpCdWd6aWxsYTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC9pc3N1ZXMvNQpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkZpeGVz
OiA1MTUyOGFmZTdjNWUgKCJkcm0vaTkxNS9kaXNwbGF5L2ljbDogRGlzYWJsZSB0cmFuc2NvZGVy
IHBvcnQgc3luYyBhcyBwYXJ0IG9mIGNydGNfZGlzYWJsZSgpIHNlcXVlbmNlIikKU2lnbmVkLW9m
Zi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNSArLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IGM5YmE3ZDdmMzc4Ny4uYzQ4NGY2ZGY1ZDg3IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTM4NjEsNyArMzg2
MSw2IEBAIHN0YXRpYyB2b2lkIGljbF9kaXNhYmxlX3RyYW5zY29kZXJfcG9ydF9zeW5jKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfCiAJc3RydWN0IGludGVsX2NydGMgKmNydGMg
PSB0b19pbnRlbF9jcnRjKG9sZF9jcnRjX3N0YXRlLT51YXBpLmNydGMpOwogCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwogCWk5MTVf
cmVnX3QgcmVnOwotCXUzMiB0cmFuc19kZGlfZnVuY19jdGwyX3ZhbDsKIAogCWlmIChvbGRfY3J0
Y19zdGF0ZS0+bWFzdGVyX3RyYW5zY29kZXIgPT0gSU5WQUxJRF9UUkFOU0NPREVSKQogCQlyZXR1
cm47CkBAIC0zODcwLDkgKzM4NjksNyBAQCBzdGF0aWMgdm9pZCBpY2xfZGlzYWJsZV90cmFuc2Nv
ZGVyX3BvcnRfc3luYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkXwogCQkgICAg
ICB0cmFuc2NvZGVyX25hbWUob2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSk7CiAKIAly
ZWcgPSBUUkFOU19ERElfRlVOQ19DVEwyKG9sZF9jcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2Rlcik7
Ci0JdHJhbnNfZGRpX2Z1bmNfY3RsMl92YWwgPSB+KFBPUlRfU1lOQ19NT0RFX0VOQUJMRSB8Ci0J
CQkJICAgIFBPUlRfU1lOQ19NT0RFX01BU1RFUl9TRUxFQ1RfTUFTSyk7Ci0JSTkxNV9XUklURShy
ZWcsIHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsKTsKKwlJOTE1X1dSSVRFKHJlZywgMCk7CiB9CiAK
IHN0YXRpYyB2b2lkIGludGVsX2RkaV9wb3N0X2Rpc2FibGUoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsCi0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
